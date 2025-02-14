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


class JournalEntry(NamedTuple):
    stage: int
    text: str
    is_finished: bool


class Quest(NamedTuple):
    id: str
    name: str
    journals: list[JournalEntry]


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
            f.write(f"\n    VERTICES[{ix+1}],")
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
"""
        )
        f.write("return {graph = GRAPH}\n")


# Tribunal alters some quest records to add quest names and "finished" marks
def parse_quests_objectives(dumps: list[list[any]]):
    raw_quests: dict[str, dict[str, dict[str, any]]] = {}

    # go through all ESMs (e.g. Morrowind and Tribunal) and
    # assemble a map of quests and their DialogueInfos, overriding IDs

    for dump in dumps:
        current_quest_id: str | None = None
        for entry in dump:
            if current_quest_id is not None:
                if (
                    entry["type"] != "DialogueInfo"
                    or entry["data"]["dialogue_type"] != "Journal"
                ):
                    current_quest_id = None
                else:
                    raw_quests[current_quest_id] = raw_quests.get(current_quest_id, {})
                    raw_quests[current_quest_id][entry["id"]] = entry

            if entry["type"] == "Dialogue" and entry["dialogue_type"] == "Journal":
                current_quest_id = entry["id"]

    # Parse the quests

    quests: list[Quest] = []

    for quest_id, quest_entries in raw_quests.items():
        quest_name: str | None = None
        journal_entries: list[JournalEntry] = []

        current_entry = [e for e in quest_entries.values() if e["prev_id"] == ""][0]
        while True:
            if current_entry.get("quest_state", {}).get("type") == "Name":
                quest_name = current_entry["text"]
            else:
                parsed_entry = JournalEntry(
                    stage=current_entry["data"]["disposition"],
                    text=current_entry["text"],
                    is_finished=current_entry.get("quest_state", {}).get("type") == "Finished",
                )
                journal_entries.append(parsed_entry)

            if current_entry["next_id"] == "":
                break
            current_entry = quest_entries[current_entry["next_id"]]

        if not quest_name:
            print(f"skipping {quest_id} (name not found)")
            continue

        quests.append(
            Quest(id=quest_id, name=quest_name, journals=journal_entries)
        )

    return quests


def indent(levels: int, per_level: int) -> str:
    return " " * (levels * per_level)


def quote(text: str) -> str:
    return '"' + text.replace('"', '\\"') + '"'


def emit_quest(quest: Quest, indent_levels: int, indent_per_level: int) -> str:
    i = indent_levels
    p = indent_per_level
    result = indent(i, p) + "{\n"

    result += indent(i + 1, p) + f'name = "{quest.name}",\n'
    result += indent(i + 1, p) + f'id = "{quest.id}",\n'
    result += indent(i + 1, p) + f"objectives = {{\n"

    for stage in quest.journals:
        result += indent(i + 2, p) + f"{{\n"

        result += indent(i + 3, p) + f"text = {quote(stage.text)},\n"
        result += (
            indent(i + 3, p)
            + f'condition = {{ name = "Journal", stage = {stage.stage} }},\n'
        )
        result += indent(i + 3, p) + f"pointer = nil,\n"
        result += indent(i + 3, p) + f"completesQuest = {'true' if stage.is_finished else 'false'},\n"
        result += indent(i + 2, p) + f"}},\n"
    result += indent(i + 1, p) + "},\n"
    result += indent(i, p) + "},\n"

    return result


def emit_quests(quests: list[Quest]) -> str:
    result = "{\n"
    for quest in quests:
        result += emit_quest(quest, 1, 4)
    result += "}\n"

    return result


def emit_quest_module(quests: list[Quest]) -> str:
    result = """local T = require("scripts.markers.types")

local questLine: {T.Quest} = """
    result += emit_quests(quests)

    result += """

return { questLine = questLine }
"""
    return result


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

with open("./Tribunal.esm.json") as f:
    tribunal = json.load(f)

QUESTS = parse_quests_objectives([raw_graph, tribunal])
QUESTS = sorted(QUESTS, key=lambda q: q.id)

import itertools

{
    prefix: [q.id for q in quests]
    for prefix, quests in itertools.groupby(
        sorted(QUESTS, key=lambda q: q.id.split("_")[0]),
        key=lambda q: q.id.split("_")[0],
    )
}


MAIN_QUEST = [
    "A1_1_FindSpymaster",
    "A1_2_AntabolisInformant",
    "A1_4_MuzgobInformant",
    "A1_6_AddhiranirrInformant",
    "A1_7HuleeyaInformant",
    "A1_V_VivecInformants",
    "A1_10_MehraMilo",
    "A1_11_ZainsubaniGift",
    "A1_11_ZainsubaniInformant",
    "A1_Dreams",
    "A1_SleeperDreamer02",
    "A1_SleepersAwake",
    "A1_Sleepers_Alvura",
    "A1_Sleepers_Assi",
    "A1_Sleepers_Daynasa",
    "A1_Sleepers_Dralas",
    "A1_Sleepers_Drarayne",
    "A1_Sleepers_Dravasa",
    "A1_Sleepers_Endris",
    "A1_Sleepers_Eralane",
    "A1_Sleepers_Llandras",
    "A1_Sleepers_Neldris",
    "A1_Sleepers_Nelmil",
    "A1_Sleepers_Rararyn",
    "A1_Sleepers_Relur",
    "A1_Sleepers_Vireveri",
    "A1_Sleepers_Vivyne",
    "A2_1_MeetSulMatuul",
    "A2_1_Supplies",
    "A2_1_Supplies2",
    "A2_1_Kurapli_Zallay",
    "A2_2_6thHouse",
    "A2_3_CorprusCure",
    "A2_3_CorprusKiller",
    "A2_3_CorprusSafe",
    "A2_3_Corprus_Vistha",
    "A2_4_MiloCaiusGone",
    "A2_4_MiloGone",
    "A2_4_MiloGone_books",
    "A2_4_MiloPrisonSafe",
    "A2_4_Milo_hola_go",
    "A2_6_Ane_Teria",
    "A2_6_Conoon",
    "A2_6_Erur-Dan",
    "A2_6_Hort-Ledd",
    "A2_6_Idrenie",
    "A2_6_Incarnate",
    "A2_6_Peakstar",
    "B1_UnifyUrshilaku",
    "B1_UrshilakuKill",
    "B2_AhemmusaKill",
    "B2_AhemmusaSafe",
    "B2_AhemmusaWalk",
    "B2a_Kausi",
    "B2b_Dutadalk",
    "B2c_Yenammu",
    "B3_ZainabBride",
    "B3_ZainabKill",
    "B4_ErabenimsunKill",
    "B4_HeartFire",
    "B4_KillWarLovers",
    "B4_Robe",
    "B4_WarAxe",
    "B4_WarLoverKill",
    "B5_ArobarHort",
    "B5_LlethriHort",
    "B5_MorvaynHort",
    "B5_RamoranHort",
    "B5_RedoranBook",
    "B5_RedoranHort",
    "B5_SarethiHort",
    "B5_VenimHort",
    "B6_BeroHort",
    "B6_CurioHort",
    "B6_DrenHortator",
    "B6_HlaaluBook",
    "B6_HlaaluHort",
    "B6_OmaniHort",
    "B6_UlesHort",
    "B6_YnglingHort",
    "B7_AryonHort",
    "B7_BaladasHort",
    "B7_DrathaHort",
    "B7_GothrenHort",
    "B7_NelothHort",
    "B7_TelvanniBook",
    "B7_TelvanniHort",
    "B7_TheranaHort",
    "B8_All_Hortator",
    "B8_All_Nerevarine",
    "B8_BackDoor1",
    "B8_BackDoor2",
    "B8_BackDoor3",
    "B8_BackDoor4",
    "B8_BackDoor5",
    "B8_BackDoor6",
    "B8_Failed_Nerevarine",
    "B8_MeetVivec",
    "B8_Nibani_2_Vivec",
    "C0_Act_C",
    "C0_Act_C_Expo",
    "C2_Sunder",
    "C3_DestroyDagoth",
    "CX_BackPath",
]

DAEDRIC_QUESTS = [
    "DA_Azura",
    "DA_Boethiah",
    "DA_Malacath",
    "DA_Mehrunes",
    "DA_Mephala",
    "DA_MolagBal",
    "DA_Sheogorath",
]


FIGHTERS_GUILD = [
    "FG_AlofsFarm",
    "FG_BeneranBounty",
    "FG_BigBosses",
    "FG_CorprusStalker",
    "FG_DebtOrc",
    "FG_DebtStoine",
    "FG_DeseleDebt",
    "FG_DissaplaMine",
    "FG_DuniraiSupply",
    "FG_Egg_Poachers",
    "FG_ElithPalSupply",
    "FG_EngaerBounty",
    "FG_FindPudai",
    "FG_HungerLoose",
    "FG_KhajiitBounty",
    "FG_KillBosses",
    "FG_KillCronies",
    "FG_KillHardHeart",
    "FG_Nchurdamz",
    "FG_OrcBounty",
    "FG_RatHunt",
    "FG_Sanit",
    "FG_SilenceMagistrate",
    "FG_SilenceTaxgirl",
    "FG_Sottilde",
    "FG_SuranBandits",
    "FG_Telasero",
    "FG_Telvanni_agents",
    "FG_TenimBounty",
    "FG_TongueToad",
    "FG_Vas",
    "FG_VerethiGang",
]


HOUSE_HLAALU = [
    "HH_AshlanderEbony",
    "HH_BankCourier",
    "HH_BankFraud",
    "HH_BeroSupport",
    "HH_BuriedTreasure",
    "HH_CaptureSpy",
    "HH_Crassius",
    "HH_DestroyIndarysManor",
    "HH_DestroyTelUvirith",
    "HH_DisguisedArmor",
    "HH_EbonyDelivery",
    "HH_EggMine",
    "HH_EscortMerchant",
    "HH_GuardMerchant",
    "HH_IndEsp1",
    "HH_IndEsp2",
    "HH_IndEsp3",
    "HH_IndEsp4",
    "HH_LiteracyCampaign",
    "HH_NordSmugglers",
    "HH_Odirniran",
    "HH_RentCollector",
    "HH_ReplaceDocs",
    "HH_Retaliation",
    "HH_Stronghold",
    "HH_SunkenTreasure",
    "HH_TheExterminator",
    "HH_TwinLamps1",
    "HH_TwinLamps3",
    "HH_WinCamonna",
    "HH_WinSaryoni",
]

HOUSE_REDORAN = [
    "HR_Archmaster",
    "HR_ArobarKidnap",
    "HR_AshimanuMine",
    "HR_AttackRethan",
    "HR_AttackUvirith",
    "HR_BillCollect",
    "HR_CalderaCorrupt",
    "HR_CalderaDisrupt",
    "HR_ClearSarethi",
    "HR_Courier",
    "HR_CowardDisgrace",
    "HR_CultElimination",
    "HR_DagothTanis",
    "HR_FindDalobar",
    "HR_FindGiladren",
    "HR_FindTharen",
    "HR_FoundersHelm",
    "HR_GuardGuarHerds",
    "HR_GuardManor",
    "HR_GuardSarethi",
    "HR_HlaanoSlanders",
    "HR_HonorChallenge",
    "HR_Kagouti",
    "HR_KoalCave",
    "HR_LostBanner",
    "HR_MadMilk",
    "HR_MorvaynManor",
    "HR_MudcrabNest",
    "HR_OldBlueFin",
    "HR_OldFlame",
    "HR_OrethiSisters",
    "HR_RansomMandas",
    "HR_RedasTomb",
    "HR_RescueSarethi",
    "HR_ShishiReport",
    "HR_Shurinbaal",
    "HR_SixthHouseBase",
    "HR_Stronghold",
    "HR_TaxCollector",
]

HOUSE_TELVANNI = [
    "HT_Archmagister",
    "HT_AttackIndarys",
    "HT_AttackRethan",
    "HT_AurielBow",
    "HT_BaladasAlly",
    "HT_BlackJinx",
    "HT_ChroniclesNchuleft",
    "HT_CureBlight",
    "HT_DaedraSkin",
    "HT_DahrkMezalf",
    "HT_DrakePride",
    "HT_DwemerLaw",
    "HT_EddieAmulet",
    "HT_EddieRing",
    "HT_FireAndFaith",
    "HT_FleshAmulet",
    "HT_FyrMessage",
    "HT_KillNeloth",
    "HT_MineCure",
    "HT_Monopoly",
    "HT_Muck",
    "HT_NchuleftKey",
    "HT_Odirniran",
    "HT_RecruitEddie",
    "HT_Shishi",
    "HT_SilverDawn",
    "HT_SlaveRebellion",
    "HT_SloadSoap",
    "HT_SpyBaladas",
    "HT_Stronghold",
    "HT_TheranaClothes",
    "HT_WizardSpells",
]


IMPERIAL_CULT = [
    "IC_8_Nord_alms",
    "IC_8_Nord_alms_not",
    "IC_guide",
    "IC0_Akatosh_token",
    "IC0_ImperialCult",
    "IC0_Maran_token",
    "IC0_Septim_token",
    "IC0_Stendarr_token",
    "IC1_marshmerrow",
    "IC1_marshmerrow_not",
    "IC10_Hoki",
    "IC10_Lirielle",
    "IC10_Tongue",
    "IC10_aengoth",
    "IC10_baradras",
    "IC10_buckmoth_alms",
    "IC10_buckmoth_not",
    "IC10_cienne",
    "IC10_codus",
    "IC10_dular",
    "IC10_edwinna",
    "IC10_erranil",
    "IC10_estoril",
    "IC10_galthragoth",
    "IC10_malpenix",
    "IC10_manis",
    "IC10_merthierry",
    "IC10_persius",
    "IC10_tauryon",
    "IC10_yak",
    "IC11_shirt",
    "IC11_shirt_not",
    "IC12_Bacola",
    "IC12_Banor",
    "IC12_Benunius",
    "IC12_Dulnea",
    "IC12_dinner",
    "IC12_dinner_not",
    "IC13_fight",
    "IC13_rich",
    "IC13_rich_not",
    "IC13_rumor",
    "IC13_slave",
    "IC14_Delay",
    "IC14_Demand",
    "IC14_Flacassia",
    "IC14_Mossanon",
    "IC14_NotTell",
    "IC14_Okan",
    "IC14_Ponius",
    "IC14_Ponius_not",
    "IC14_Promise",
    "IC14_Shazgob",
    "IC14_Sinyaramen",
    "IC14_Tell",
    "IC15_Missing_Limeware",
    "IC15_Missing_not",
    "IC16_Haunting",
    "IC16_Haunting_not",
    "IC17_Witch",
    "IC17_Witch_not",
    "IC18_Silver_Staff",
    "IC18_Silver_not",
    "IC19_Restless_Spirit",
    "IC19_Restless_not",
    "IC2_Muck",
    "IC2_Muck_not",
    "IC24_OracleQuest",
    "IC25_JonHawker",
    "IC25_JonHawker_free",
    "IC26_AmaNin",
    "IC26_AmaNin_free",
    "IC27_Oracle",
    "IC27_Oracle_A",
    "IC28_Urjorad",
    "IC29_Crusher",
    "IC3_willow",
    "IC3_willow_not",
    "IC30_Imperial_veteran",
    "IC4_scrib",
    "IC4_scrib_A",
    "IC4_scrib_not",
    "IC5_corkbulb",
    "IC5_corkbulb_not",
    "IC6_Rat",
    "IC6_Rat_not",
    "IC7_netch",
    "IC7_netch_not",
    "IC8_Bedraflod",
    "IC8_Briring",
    "IC8_Eiruki",
    "IC8_Heidmir",
    "IC8_Ingokning",
    "IC9_Argonian_alms",
    "IC9_Argonian_not",
    "IC9_slave_hiding",
]


IMPERIAL_LEGION = [
    "IL_Blueprints",
    "IL_Courtesy",
    "IL_Damsel",
    "IL_FalseOrdinator",
    "IL_GiantNetch",
    "IL_GnisisBlight",
    "IL_Grandmaster",
    "IL_KnightShield",
    "IL_MaidenToken",
    "IL_Necromancer",
    "IL_ProtectEntius",
    "IL_RescueHermit",
    "IL_RescueKnight",
    "IL_RescuePilgrim",
    "IL_RescueRagash",
    "IL_ScrapMetal",
    "IL_Smuggler",
    "IL_TalosTreason",
    "IL_TaxesBaladas",
    "IL_TraitorCoven",
    "IL_TraitorWarrior",
    "IL_WidowLand",
]

MAGES_GUILD = [
    "MG_Advancement",
    "MG_Apprentice",
    "MG_BCShrooms",
    "MG_Bethamez",
    "MG_Bowl",
    "MG_Dwarves",
    "MG_EscortScholar1",
    "MG_EscortScholar2",
    "MG_Excavation",
    "MG_Flowers",
    "MG_Guildmaster",
    "MG_JoinUs",
    "MG_KillNecro1",
    "MG_KillNecro2",
    "MG_KillTelvanni",
    "MG_Mzuleft",
    "MG_NchuleftBook",
    "MG_PayDues",
    "MG_Potion",
    "MG_ReturnBook",
    "MG_Sabotage",
    "MG_Science",
    "MG_Sharn_Necro",
    "MG_SoulGem2",
    "MG_SpyCatch",
    "MG_StaffMagnus",
    "MG_StealBook",
    "MG_StolenReport",
    "MG_StopCompetition",
    "MG_Telvanni",
    "MG_VampVol2",
    "MG_VampireCure",
    "MG_WarlocksRing",
    "MG_WiseWoman",
]


MORAG_TONG = [
    "MT_DB_AldSotha",
    "MT_DB_Assernerairan",
    "MT_DB_Carecalmo",
    "MT_DB_Contact",
    "MT_DB_Darys",
    "MT_Grandmaster",
    "MT_S_BalancedArmor",
    "MT_S_DeepBiting",
    "MT_S_Denial",
    "MT_S_Fleetness",
    "MT_S_FluidEvasion",
    "MT_S_GlibSpeech",
    "MT_S_Golden",
    "MT_S_Green",
    "MT_S_Hewing",
    "MT_S_HornyFist",
    "MT_S_Impaling",
    "MT_S_Leaping",
    "MT_S_MartialCraft",
    "MT_S_NimbleArmor",
    "MT_S_Red",
    "MT_S_Safekeeping",
    "MT_S_Silver",
    "MT_S_Smiting",
    "MT_S_Stalking",
    "MT_S_StolidArmor",
    "MT_S_Sublime",
    "MT_S_Sureflight",
    "MT_S_Swiftblade",
    "MT_S_Transcendent",
    "MT_S_Transfiguring",
    "MT_S_Unseen",
    "MT_WritBaladas",
    "MT_WritBelvayn",
    "MT_WritBemis",
    "MT_WritBero",
    "MT_WritBrilnosu",
    "MT_WritGalasa",
    "MT_WritGuril",
    "MT_WritMavon",
    "MT_WritNavil",
    "MT_WritNeloth",
    "MT_WritOran",
    "MT_WritSadus",
    "MT_WritSaren",
    "MT_WritTherana",
    "MT_WritVarro",
    "MT_WritVendu",
    "MT_WritYasalmibaal",
]


MISC_QUESTS = [
    "DwarvenMystery",
    "EB_Actor",
    "EB_Bone",
    "EB_Clients",
    "EB_DeadMen",
    "EB_Deed",
    "EB_Express",
    "EB_False",
    "EB_Invisible",
    "EB_Pest",
    "EB_Shipment",
    "EB_TradeSpy",
    "EB_Unrequited",
    "Hospitality_Papers",
    "MS_Apologies",
    "MS_ArenimTomb",
    "MS_BarbarianBooks",
    "MS_FargothRing",
    "MS_Gold_kanet_flower",
    "MS_Hannat",
    "MS_HatandSkirt",
    "MS_HentusPants",
    "MS_JobashaAbolitionist",
    "MS_Liar",
    "MS_Lookout",
    "MS_Nord_burial",
    "MS_Nuccius",
    "MS_Piernette",
    "MS_RaGruzgob",
    "MS_Trerayna_bounty",
    "MS_Umbra",
    "MS_VampireCure",
    "MS_VassirDidanat",
    "MS_WhiteGuar",
    "MS_propylon",
    "MV_3_Charming",
    "MV_AbusedHealer",
    "MV_AngryTrader",
    "MV_BanditVictim",
    "MV_Bastard",
    "MV_BountyHunter",
    "MV_Bugrol",
    "MV_CultistVictim",
    "MV_DeadTaxman",
    "MV_FakeSlave",
    "MV_InnocentAshlanders",
    "MV_LostRing",
    "MV_MissingCompanion",
    "MV_MonsterDisease",
    "MV_OutcastAshlanders",
    "MV_ParalyzedBarbarian",
    "MV_PoorPilgrim",
    "MV_RecoverWidowmaker",
    "MV_RichPilgrim",
    "MV_RichTrader",
    "MV_RunawaySlave",
    "MV_SkoomaCorpse",
    "MV_SlaveMule",
    "MV_StrayedPilgrim",
    "MV_ThiefTrader",
    "MV_TraderAbandoned",
    "MV_TraderLate",
    "MV_TraderMissed",
    "MV_VictimRomance",
    "MV_WanderingPilgrim",
    "Romance_Ahnassi",
]


THIEVES_GUILD = [
    "TG_AldruhnDefenses",
    "TG_BadGandosa",
    "TG_BalmoraDefenses",
    "TG_BitterBribe",
    "TG_BrotherBragor",
    "TG_BrotherThief",
    "TG_CookbookAlchemy",
    "TG_DartsJudgement",
    "TG_Diamonds",
    "TG_EbonyStaff",
    "TG_EnemyParley",
    "TG_GrandmasterRetort",
    "TG_Hostage",
    "TG_KillHardHeart",
    "TG_KillIenith",
    "TG_LootAldruhnMG",
    "TG_ManorKey",
    "TG_MasterHelm",
    "TG_MissionReport",
    "TG_OverduePayments",
    "TG_RedoranCookbook",
    "TG_SS_ChurchPolice",
    "TG_SS_Enamor",
    "TG_SS_Generosity1",
    "TG_SS_Generosity2",
    "TG_SS_GreedySlaver",
    "TG_SS_Plutocrats",
    "TG_SS_Yngling",
    "TG_SadrithMoraDefenses",
    "TG_VintageBrandy",
    "TG_Withershins",
    "Town_Ald_Bevene",
    "Town_Ald_Bivale",
    "Town_Ald_Daynes",
    "Town_Ald_Llethri",
    "Town_Ald_Tiras",
    "Town_Aldruhn",
    "town_Sadrith",
    "town_Tel_Vos",
    "town_Tel_Vos_ashur",
    "town_Tel_Vos_he",
    "town_Tel_Vos_she",
    "town_Tel_Vos_wise",
    "town_Vivec",
    "town_ald_ienas",
    "town_balmora",
    "town_sadrith_expert",
]

TRIBUNAL_TEMPLE = [
    "TT_AldDaedroth",
    "TT_AldSotha",
    "TT_Assarnibibi",
    "TT_BalUr",
    "TT_Compassion",
    "TT_CuringTouch",
    "TT_DagonFel",
    "TT_DiseaseCarrier",
    "TT_FalseIncarnate",
    "TT_FelmsCleaver",
    "TT_FieldsKummu",
    "TT_GalomDeus",
    "TT_Ghostgate",
    "TT_HairShirt",
    "TT_Hassour",
    "TT_LlothisCrosier",
    "TT_MaarGan",
    "TT_MaskVivec",
    "TT_Mawia",
    "TT_MinistryHeathen",
    "TT_MountKand",
    "TT_PalaceVivec",
    "TT_PilgrimsPath",
    "TT_PuzzleCanal",
    "TT_RilmsShoes",
    "TT_RuddyMan",
    "TT_SanctusShrine",
    "TT_SevenGraces",
    "TT_StAralor",
    "TT_StopMoon",
    "TT_SupplyMonk",
]

VAMPIRE = [
    "VA_Rimintil",
    "VA_Shashev",
    "VA_VampAmulet",
    "VA_VampBlood",
    "VA_VampBlood2",
    "VA_VampChild",
    "VA_VampCountess",
    "VA_VampCult",
    "VA_VampCurse",
    "VA_VampDust",
    "VA_VampHunter",
    "VA_VampMarara",
    "VA_VampRich",
]


QUESTLINES = {
    "main_quest": MAIN_QUEST,
    "daedric": DAEDRIC_QUESTS,
    "fighters_guild": FIGHTERS_GUILD,
    "house_hlaalu": HOUSE_HLAALU,
    "house_redoran": HOUSE_REDORAN,
    "house_telvanni": HOUSE_TELVANNI,
    "imperial_cult": IMPERIAL_CULT,
    "imperial_legion": IMPERIAL_LEGION,
    "mages_guild": MAGES_GUILD,
    "morag_tong": MORAG_TONG,
    "miscellaneous": MISC_QUESTS,
    "thieves_guild": THIEVES_GUILD,
    "tribunal_temple": TRIBUNAL_TEMPLE,
    "vampire": VAMPIRE,
}

QUESTS_BY_ID = {q.id: q for q in QUESTS}


for name, quests in QUESTLINES.items():
    with open(f"./src/scripts/markers/quests/modules/{name}.tl", "w") as f:
        quest_structs: list[Quest] = []
        for quest_id in quests:
            if quest_id not in QUESTS_BY_ID:
                print(f"skipping {quest_id}, not found")
            else:
                quest_structs.append(QUESTS_BY_ID[quest_id])
            
        f.write(emit_quest_module(quest_structs))


print("local questLines = {")
for name in QUESTLINES.keys():
    print(f'    require("scripts.markers.quests.modules.{name}").questLine,')
print("}")
