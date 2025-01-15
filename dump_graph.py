import json
from collections import defaultdict
from typing import NamedTuple

Location = tuple[tuple[float, float, float], str | None]


class CellCluster(NamedTuple):
    cell_ids: set[str]
    entry_exit_vertices: set[Location]


class Graph(NamedTuple):
    vertices: list[Location]
    travel_npc_vertices: list[Location]
    # add type of edge later?
    edges: dict[Location, list[tuple[Location, float]]]

    cell_clusters: list[CellCluster]
    cell_cluster_map: dict[str, int]


def build_graph(cells: list[any], npcs: list[any]) -> Graph:
    vertices: set[Location] = set()
    edges: defaultdict[Location, list[tuple[Location, float]]] = defaultdict(list)

    travel_npcs: dict[str, list[Location]] = {}
    for npc in npcs:
        if npc["travel_destinations"]:
            target_locations: list[Location] = []
            for destination in npc["travel_destinations"]:
                target_location = (
                    tuple(destination["translation"]),
                    destination["cell"] if destination["cell"] else None,
                )
                target_locations.append(target_location)
            travel_npcs[npc["id"]] = target_locations

    travel_npc_vertices: list[Location] = []

    for cell in cells:
        for ref in cell["references"]:
            # Add doors
            if "destination" in ref:
                source_location = (
                    tuple(ref["translation"]),
                    (
                        cell["name"]
                        if cell["name"] and "IS_INTERIOR" in cell["data"]["flags"]
                        else None
                    ),
                )
                target_location = (
                    tuple(ref["destination"]["translation"]),
                    ref["destination"]["cell"] if ref["destination"]["cell"] else None,
                )
                vertices.add(source_location)
                vertices.add(target_location)
                edges[source_location].append((target_location, 0))
            if ref["id"] in travel_npcs:
                source_location = (
                    tuple(ref["translation"]),
                    (
                        cell["name"]
                        if cell["name"] and "IS_INTERIOR" in cell["data"]["flags"]
                        else None
                    ),
                )
                travel_npc_vertices.append(source_location)
                vertices.add(source_location)
                for tl in travel_npcs[ref["id"]]:
                    edges[source_location].append((tl, 0))
                    vertices.add(tl)

    edges = dict(edges)
    clusters, cell_cluster_map = get_cell_clusters(vertices, edges)

    return Graph(list(vertices), travel_npc_vertices, edges, clusters, cell_cluster_map)


def get_cell_clusters(
    vertices: set[Location], edges: dict[Location, list[tuple[Location, float]]]
) -> tuple[list[CellCluster], dict[str, int]]:
    to_visit = vertices.copy()
    clusters: list[CellCluster] = []
    visited: set[Location] = set()

    while to_visit:
        vertex = to_visit.pop()
        if vertex in visited:
            continue

        queue: list[Location] = [vertex]
        new_cluster: set[str] = set()

        # Exterior vertices where the doors from this cell group lead
        entry_exit_vertices: set[Location] = set()

        while queue:
            vertex = queue.pop()
            if vertex[1] is None:
                continue

            new_cluster.add(vertex[1])
            for vertex_in_cell in to_visit:
                if vertex_in_cell in visited:
                    continue
                if vertex_in_cell[1] == vertex[1]:
                    queue.append(vertex_in_cell)
                    visited.add(vertex_in_cell)

            for destination_vertex, _ in edges.get(vertex, []):
                # TODO if it's none, we've found the exit and need to note that
                if destination_vertex in visited:
                    continue
                if destination_vertex[1] is not None:
                    queue.append(destination_vertex)
                    visited.add(destination_vertex)
                else:
                    entry_exit_vertices.add(destination_vertex)

        if new_cluster:
            clusters.append(CellCluster(new_cluster, entry_exit_vertices))

    cell_cluster_map: dict[str, int] = {
        cn: ci for ci, cns in enumerate(clusters) for cn in cns.cell_ids
    }

    # Add exterior door coordinates that lead to each cell
    for vertex, destinations in edges.items():
        if vertex[1] is not None:
            continue
        for destination, _ in destinations:
            if destination[1] is not None:
                clusters[cell_cluster_map[destination[1]]].entry_exit_vertices.add(
                    vertex
                )

    return clusters, cell_cluster_map


def emit_cell(cell: str | None) -> str:
    return f'"{cell}"' if cell else "nil"


def dump_graph(graph: Graph):
    with open("./src/scripts/markers/graph.tl", "w") as f:
        f.write("-- Automatically generated by dump_graph.py, do not edit --\n\n")
        f.write("local util = require('openmw.util')\n\n")
        f.write("local T = require('scripts.markers.types')\n")

        f.write("global VERTICES: {T.CellCoords} = {")
        for v_pos, v_cell in graph.vertices:
            f.write(
                f"\n    {{coords=util.vector3({v_pos[0]},{v_pos[1]},{v_pos[2]}),cellId={emit_cell(v_cell)}}},"
            )
        f.write("\n};\n\n")

        f.write("global TRAVEL_NPC_VERTICES: {T.CellCoords} = {")
        for vertex in graph.travel_npc_vertices:
            ix = graph.vertices.index(vertex)
            f.write(
                f"\n    VERTICES[{ix+1}],"
            )
        f.write("\n};\n\n")

        f.write("global EDGES: {T.CellCoords:{T.Edge}} = {}\n")
        for vertex, vertex_edges in graph.edges.items():
            ix_src = graph.vertices.index(vertex)
            f.write(f"EDGES[VERTICES[{ix_src + 1}]] = {{")
            for dst_vertex, cost in vertex_edges:
                ix_dest = graph.vertices.index(dst_vertex)
                f.write(f"{{ vertex=VERTICES[{ix_dest + 1}], cost={cost} }},")
            f.write("}\n")
        f.write("\n\n")

        f.write("global CELL_CLUSTERS: {T.CellCluster} = {")
        for cluster in graph.cell_clusters:
            f.write("\n    {cellIds={")
            for cell_id in cluster.cell_ids:
                f.write(emit_cell(cell_id) + ", ")
            f.write("}, entryExitVertices={")
            for ee_vertex in cluster.entry_exit_vertices:
                ix = graph.vertices.index(ee_vertex)
                f.write(f"VERTICES[{ix + 1}], ")
            f.write("}},")
        f.write("\n};\n\n")

        f.write("global CELL_CLUSTER_MAP: {string:T.CellCluster} = {}\n")
        for cell_id, cluster_ix in graph.cell_cluster_map.items():
            f.write(
                f"CELL_CLUSTER_MAP[{emit_cell(cell_id)}] = CELL_CLUSTERS[{cluster_ix + 1}]\n"
            )

        f.write(
            """
global GRAPH: T.RoutingGraph = {
    vertices = VERTICES,
    travelNPCVertices = TRAVEL_NPC_VERTICES,
    edges = EDGES,
    cellClusters = CELL_CLUSTERS,
    cellClusterMap = CELL_CLUSTER_MAP
}
""")
        f.write("return {graph = GRAPH}\n")


with open("./Morrowind.esm.json") as f:
    raw_graph = json.load(f)
cells = [g for g in raw_graph if g["type"] == "Cell"]
npcs = [g for g in raw_graph if g["type"] == "Npc"]
graph = build_graph(cells, npcs)
dump_graph(graph)


surrogate_edges = 0
for v1 in graph.vertices:
    for v2 in graph.vertices:
        if v1 != v2 and v1[1] == v2[1]:
            surrogate_edges += 1
