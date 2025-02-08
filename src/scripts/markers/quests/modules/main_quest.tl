local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Report to Caius Cosades",
        id = "A1_1_FindSpymaster",
        objectives = {
            {
                text = "Go to South Wall Cornerclub",
                condition = {
                    name = "Journal",
                    stage = 5
                },
                pointer = {
                    name = "InteriorCluster",
                    cellId = "Balmora, South Wall Cornerclub"
                },
                completesQuest = false
            },
            {
                text = "Speak with Bacola Closcius",
                condition = {
                    name = "Journal",
                    stage = 10
                },
                pointer = {
                    name = "NPC",
                    id = "bacola closcius"
                },
                completesQuest = false
            },
            {
                text = "Speak with Caius Cosades",
                condition = {
                    name = "Journal",
                    stage = 14
                },
                pointer = {
                    name = "NPC",
                    id = "caius cosades"
                },
                completesQuest = true
            },
        }
    },
    {
        name = "Antabolis Informant",
        id = "A1_2_AntabolisInformant",
        objectives = {
            {
                text = "Speak with Caius Cosades when you're ready",
                condition = {
                    name = "Journal",
                    stage = 1
                },
                pointer = {
                    name = "NPC",
                    cellId = "caius cosades"
                },
                completesQuest = false
            },
            {
                text = "Speak with Hasphat Antabolis",
                condition = {
                    name = "Journal",
                    stage = 5
                },
                pointer = {
                    name = "NPC",
                    id = "hasphat antabolis"
                },
                completesQuest = false
            },
        }
    },
}

return { questLine = questLine }