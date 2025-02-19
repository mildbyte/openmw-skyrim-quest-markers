local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Report to Caius Cosades",
        id = "A1_1_FindSpymaster",
        objectives = {
            {
                text = "Go to South Wall Cornerclub",
                condition = { name = "Journal", stage = 5 },
                pointer = { name = "InteriorCluster", cellId = "Balmora, South Wall Cornerclub" },
                completesQuest = false,
            },
            {
                text = "Speak with Bacola Closcius",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "NPC", id = "bacola closcius" },
                completesQuest = false,
            },
            {
                text = "Speak with Caius Cosades",
                condition = { name = "Journal", stage = 14 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = true
            },
        },
    },
    {
        name = "Antabolis Informant",
        id = "A1_2_AntabolisInformant",
        objectives = {
            {
                text = "Speak with Caius Cosades when you're ready",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", cellId = "caius cosades" },
                completesQuest = false
            },
            {
                text = "Speak with Hasphat Antabolis",
                condition = { name = "Journal", stage = 5 },
                pointer = { name = "NPC", id = "hasphat antabolis" },
                completesQuest = false
            },
            {
                text = "Find the Dwemer puzzle box in Arkngthand",
                condition = { name = "Journal", stage = 7 },
                pointer = { name = "InteriorCluster", cellId = "Arkngthand, Cells of Hollow Hand" },
                completesQuest = false
            },
            {
                text = "Bring the Dwemer puzzle box to Hasphat Antabolis",
                condition = { name = "Journal", stage = 15 },
                pointer = { name = "NPC", id = "hasphat antabolis" },
                completesQuest = false
            },
            {
                text = "Bring Hasphat's notes to Caius Cosades",
                condition = { name = "Journal", stage = 20, },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = true
            },
        }
    },
    {
        name = "Gra-Muzgob Informant",
        id = "A1_4_MuzgobInformant",
        objectives = {
            {
                text = "Speak with Sharn gra-Muzgob at the Balmora Mages Guild",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "NPC", id = "sharn gra-muzgob" },
                completesQuest = false,
            },
            -- TODO: point to the tomb
            {
                text = "Find the skull of Llevule Andrano and bring it to Sharn gra-Muzgob",
                condition = { name = "Journal", stage = 20 },
                pointer = { name = "NPC", id = "sharn gra-muzgob" },
                completesQuest = false,
            },
            {
                text = "Bring the notes back to Caius",
                condition = { name = "Journal", stage = 25 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Addhiranirr Informant",
        id = "A1_6_AddhiranirrInformant",
        objectives = {
            {
                text = "Ask around in Vivec about Addhiranirr",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Locate Addhiranirr in the St. Olms Underworks",
                condition = { name = "Journal", stage = 12 },
                pointer = { name = "NPC", id = "addhiranirr" },
                completesQuest = false,
            },
            {
                text = "Get rid of the Census and Excise agent",
                condition = { name = "Journal", stage = 15 },
                pointer = { name = "NPC", id = "duvianus platorius" },
                completesQuest = false,
            },
            -- TODO there's a 53 - 56 - 60 line if we rat Addhiranirr out
            {
                text = "Return to Addhiranirr",
                condition = { name = "Journal", stage = 45 },
                pointer = { name = "NPC", id = "addhiranirr" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Huleeya Informant",
        id = "A1_7HuleeyaInformant",
        objectives = {
            {
                text = "Find Huleeya at the Black Shalk Cornerclub",
                condition = { name = "Journal", stage = 2 },
                pointer = { name = "NPC", id = "huleeya" },
                completesQuest = false,
            },
            {
                text = "Deal with the Dunmer bothering Huleeya",
                condition = { name = "Journal", stage = 15 },
                pointer = { name = "NPC", id = "ethys savil" },
                completesQuest = false,
            },
            {
                text = "Speak with Huleeya",
                condition = { name = "Journal", stage = 18 },
                pointer = { name = "NPC", id = "huleeya" },
                completesQuest = false,
            },
            {
                text = "Take Huleeya to Jobasha's rare books",
                condition = { name = "Journal", stage = 20 },
                pointer = { name = "NPC", id = "jobasha" },
                completesQuest = false,
            },
            {
                text = "Ask Huleeya about the Sixth House and the Nerevarine cult",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "huleeya" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Vivec Informants",
        id = "A1_V_VivecInformants",
        objectives = {
            {
                text = "Return back to Caius when you've spoken with all informants",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Meet Mehra Milo",
        id = "A1_10_MehraMilo",
        objectives = {
            {
                text = "Speak with Mehra Milo",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "NPC", id = "mehra milo" },
                completesQuest = false,
            },
            -- TODO add objective to get the book (actually required)
            {
                text = "Speak with Mehra again when you're not being watched",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "mehra milo" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Zainsubani Informant",
        id = "A1_11_ZainsubaniInformant",
        objectives = {
            {
                text = "Speak with Caius",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = false,
            },
            {
                text = "Ask around about Hassour Zainsubani at the Ald Skar Inn",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "InteriorCluster", cellId = "Ald-ruhn, Ald Skar Inn" },
                completesQuest = false,
            },
            {
                text = "Speak with Hassour Zainsubani",
                condition = { name = "Journal", stage = 20 },
                pointer = { name = "NPC", id = "hassour zainsubani" },
                completesQuest = false,
            },
            {
                text = "Bring a book to Hassour Zainsubani as a gift",
                condition = { name = "Journal", stage = 31 },
                pointer = { name = "NPC", id = "hassour zainsubani" },
                completesQuest = false,
            },
            {
                text = "Speak with Hassour Zainsubani about the Ashlanders and the Nerevarine Cult",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "hassour zainsubani" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Strange Man at Gindrala Hleran's House",
        id = "A1_SleeperDreamer02",
        objectives = {
            -- TODO add objective to kill the Dreamer
            {
                text = "Kill the strange man at Gindrala Hleran's house",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "InteriorCluster", cellId = "Ald-ruhn, Gindrala Hleran's House" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Sleepers Awake",
        id = "A1_SleepersAwake",
        objectives = {
            {
                text = "Report the Sleeper attack to Caius",
                condition = { name = "Journal", stage = 5 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = false,
            },
            -- TODO should this even be an objective
            {
                text = "Deal with Sleeper bases or with Dagoth Ur altogether",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Meet Sul-Matuul",
        id = "A2_1_MeetSulMatuul",
        objectives = {
            -- TODO the Zainsubani quest doesn't end with returning to Caius
            {
                text = "Speak with Caius",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = false,
            },
            -- TODO: stages for Urshilaku ashlander killings?
            -- TODO: ashlander yurt doors are offset by a lot

            -- TODO: any person in the camp?
            {
                text = "Travel to Urshilaku camp and seek an audience with Sul-Matuul",
                condition = { name = "Journal", stage = 20 },
                pointer = { name = "NPC", id = "tussurradad" },
                completesQuest = false,
            },
            {
                text = "Persuade Zabamund to allow you to speak to Sul-Matuul",
                condition = { name = "Journal", stage = 35 },
                pointer = { name = "NPC", id = "zabamund" },
                completesQuest = false,
            },
            {
                text = "Speak with Sul-Matuul",
                condition = { name = "Journal", stage = 40 },
                pointer = { name = "NPC", id = "sul-matuul" },
                completesQuest = false,
            },
            -- TODO: bring it back to Sul-Matuul
            {
                text = "Find Sul-Senipul's Bonebiter Bow in the Urshilaku Burial Caverns",
                condition = { name = "Journal", stage = 45 },
                pointer = { name = "InteriorCluster", cellId = "Urshilaku, Juno Burial" },
                completesQuest = false,
            },
            {
                text = "Speak with Nibani Maesa about the Nerevarine Prophecies",
                condition = { name = "Journal", stage = 60 },
                pointer = { name = "NPC", id = "nibani maesa" },
                completesQuest = true,
            },
        },
    },
    {
        -- TODO
        name = "Kurapli Seeks Justice",
        id = "A2_1_Kurapli_Zallay",
        objectives = {
            {
                text = "Kurapli, an Urshilaku trader, says an outcast ashlander named Zallay Subaddamael betrayed Urshilaku hospitality and killed her husband. Kurapli promised that if I can find Zallay Subaddamael, kill him, and bring her the justice of his death, she will give me as reward her husband's enchanted Spirit Spear.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Kurapli says the outcast ashlander Zallay Subaddamael may be found in Aharasaplit camp on the island of Sheogorad, the large island north of Vvardenfell. Kurapli says I might find information about Zallay Subaddamael or Aharasaplit camp in the fishing village of Dagon Fel on Sheogorad Island.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have given personal vengeance to the Urshilaku trader Kurapli by killing the murderer of her husband, Airan-Ahhe. As a reward, she gave me her husband's enchanted Spirit spear, and has asked only that I remember her husband's name when using it.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Sixth House Base",
        id = "A2_2_6thHouse",
        objectives = {
            {
                text = "Speak to Caius",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = false,
            },
            {
                text = "Speak to Caius when you're better prepared for your mission",
                condition = { name = "Journal", stage = 7 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = false,
            },
            {
                text = "Speak with Raesa Pullia in Fort Buckmoth",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "NPC", id = "raesa pullia" },
                completesQuest = false,
            },
            {
                text = "Ask around in Gnaar Mok about Ilunibi",
                condition = { name = "Journal", stage = 20 },
                -- TODO: pointer to Gnaar Mok?
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Find Dagoth Gares in Ilunibi",
                condition = { name = "Journal", stage = 40 },
                pointer = { name = "NPC", id = "dagoth gares" },
                completesQuest = false,
            },
            {
                text = "Kill Dagoth Gares",
                condition = { name = "Journal", stage = 50 },
                -- TODO: is this an NPC or a creature?
                pointer = { name = "NPC", id = "dagoth gares" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Corprus Cure",
        id = "A2_3_CorprusCure",
        objectives = {
            {
                text = "Speak with Caius",
                condition = { name = "Journal", stage = 5 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = false,
            },
            {
                text = "Find Divayth Fyr in Tel Fyr",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "NPC", id = "divayth fyr" },
                completesQuest = false,
            },
            {
                text = "Give the Dwemer Artifact to Divayth Fyr",
                condition = { name = "Journal", stage = 15 },
                pointer = { name = "NPC", id = "divayth fyr" },
                completesQuest = false,
            },
            {
                text = "Speak with Divayth Fyr about the corprus cure",
                condition = { name = "Journal", stage = 25 },
                pointer = { name = "NPC", id = "divayth fyr" },
                completesQuest = false,
            },
            -- same with him being a creature, not an NPC
            {
                text = "Get the Dwemer boots from Yagrum Bagarn",
                condition = { name = "Journal", stage = 40 },
                pointer = { name = "NPC", id = "yagrum bagarn" },
                completesQuest = false,
            },
            {
                text = "Bring the Dwemer boots back to Divayth Fyr",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "divayth fyr" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Mehra Milo and the Lost Prophecies",
        id = "A2_4_MiloGone",
        objectives = {
            {
                text = "Speak with Caius",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "caius cosades" },
                completesQuest = false,
            },
            {
                text = "Speak with Mehra Milo in her quarters",
                condition = { name = "Journal", stage = 10 },
                -- TODO pointer to Mehra's room
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Bring a Divine Intervention scroll to Mehra Milo",
                condition = { name = "Journal", stage = 20 },
                pointer = { name = "NPC", id = "mehra milo" },
                completesQuest = false,
            },
            -- TODO: speak with Blatta Hatteria
            -- TODO: also, she's always active even when the quest isn't running
            -- so we need to delete her from the graph
            {
                text = "Go to Holamayan",
                condition = { name = "Journal", stage = 22 },
                pointer = { name = "NPC", id = "vevrana aryon" },
                completesQuest = false,
            },
            {
                text = "Gain entry to Holamayan and speak with Gilvas Barelo",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "gilvas barelo" },
                completesQuest = true,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Incarnate",
        objectives = {
            {
                text = "Speak with Nibani Maesa",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "nibani maesa" },
                completesQuest = false,
            },
            {
                text = "Wait for one day for Nibani Maesa to think about what you discussed",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Return to Nibani Maesa",
                condition = { name = "Journal", stage = 5 },
                pointer = { name = "NPC", id = "nibani maesa" },
                completesQuest = false,
            },
            {
                text = "Speak with Sul-Matuul",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "NPC", id = "sul-matuul" },
                completesQuest = false,
            },
            -- TODO pointer to them
            {
                text = "Find some Corprus Weepings, the Shadow Shield and a House Dagoth cup in Kogoruhn and bring them to Sul-Matuul",
                condition = { name = "Journal", stage = 15 },
                pointer = { name = "NPC", id = "sul-matuul" },
                completesQuest = false,
            },
            {
                text = "Speak with Ashlanders to decode the riddle",
                condition = { name = "Journal", stage = 28 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Go to the Cavern of the Incarnate",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "InteriorCluster", cellId = "Cavern of the Incarnate" },
                completesQuest = true,
            },
        },
    },
    -- TODO: Bx_XXXKill quests?
    {
        name = "Urshilaku Nerevarine",
        id = "B1_UnifyUrshilaku",
        objectives = {
            {
                text = "Speak with Sul-Matuul",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "sul-matuul" },
                completesQuest = false,
            },
            {
                text = "Get Sul-Matuul to name you Urshilaku Nerevarine",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "sul-matuul" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Ahemmusa Nerevarine",
        id = "B2_AhemmusaSafe",
        objectives = {
            {
                text = "Speak to the wise woman of the Ahemmusa Ashlanders",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "sinnammu mirpal" },
                completesQuest = false,
            },
            -- TODO also passes if everyone is killed; we don't even need to do anything,
            -- can just take her there
            {
                text = "Make Ald Daedroth safe for the Ahemmusa Ashlanders",
                condition = { name = "Journal", stage = 20 },
                pointer = { name = "InteriorCluster", cellId = "Ald Daedroth" },
                completesQuest = false,
            },
            {
                text = "Bring Sinnammu Mirpal to Ald Daedroth",
                condition = { name = "Journal", stage = 40 },
                pointer = { name = "InteriorCluster", cellId = "Ald Daedroth" },
                completesQuest = false,
            },
            {
                text = "Speak with Sinnammu Mirpal and get her to name you Ahemmusa Nerevarine",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "sinnammu mirpal" },
                completesQuest = true,
            },
        },
    },
    -- TODO there's a bunch of other quests here that randomly tell the player to speak
    -- with Sinnammu, also the B2_AhemmusaWalk
    {
        name = "Zainab Nerevarine",
        id = "B3_ZainabBride",
        objectives = {
            {
                text = "Speak with Kaushad, Ashkhan of the Zainab Tribe",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "Ashkhan Kaushad" },
                completesQuest = false,
            },
            {
                text = "Speak to the Zainab Ashlanders to find out how to get the Askhan to speak with you",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = false,
            },
            -- TODO couldn't trigger this
            {
                text = "Give Ashkhan Kaushad a pair of exquisite shoes",
                condition = { name = "Journal", stage = 4 },
                pointer = { name = "NPC", id = "Ashkhan Kaushad" },
                completesQuest = false,
            },
            {
                text = "Speak with Ashkhan Kaushad",
                condition = { name = "Journal", stage = 5 },
                pointer = { name = "NPC", id = "Ashkhan Kaushad" },
                completesQuest = false,
            },
            -- TODO pointer still points at him when dead
            {
                text = "Kill Calvario in Nerano Ancestral Tomb and return back to Ashkhan Kaushad",
                condition = { name = "Journal", stage = 20 },
                pointer = { name = "NPC", id = "calvario" },
                completesQuest = false,
            },
            {
                text = "Speak with Zainab Ashlanders to find out how to get a Telvanni bride for the Ashkhan",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Speak with Savile Imayn and buy a slave for Ashkhan Kaushad",
                condition = { name = "Journal", stage = 30 },
                pointer = { name = "NPC", id = "savile imayn"},
                completesQuest = false,
            },
            {
                text = "Find an exquisite shirt, skirt and shoes for Savile Imayn",
                condition = { name = "Journal", stage = 35 },
                pointer = { name = "NPC", id = "savile imayn"},
                completesQuest = false,
            },
            {
                text = "Bring Telvanni Bug Musk to Savile Imayn",
                condition = { name = "Journal", stage = 40 },
                pointer = { name = "NPC", id = "savile imayn"},
                completesQuest = false,
            },
            {
                text = "Speak with Falura Llervu",
                condition = { name = "Journal", stage = 45 },
                pointer = { name = "NPC", id = "falura llervu" },
                completesQuest = false,
            },
            {
                text = "Take Falura Llervu to Ashkhan Kaushad",
                condition = { name = "Journal", stage = 47 },
                pointer = { name = "NPC", id = "Ashkhan Kaushad" },
                completesQuest = false,
            },
            {
                text = "Speak with Kaushad",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "Ashkhan Kaushad" },
                completesQuest = true,
            },
        },
    },
    {
        name = "Erabenimsun Nerevarine",
        id = "B4_HeartFire",
        objectives = {
            {
                text = "I gave Han-Ammu the Sanit-Kil's Heart of Fire and made a little speech about courage and symbols and responsibility. I believe he has taken the lesson to heart, and will consider accepting his responsibilities as ashkhan, and consider naming me Nerevarine. But he said he didn't need the amulet, and he let me keep it.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have given Han-Ammu the Sanit-Kil's Heart of Fire and made a little speech about courage and symbols and responsibility. I believe he has taken the lesson to heart, and will consider accepting his responsibilities as ashkhan, and consider naming me Nerevarine.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Erabenimsun Nerevarine",
        id = "B4_KillWarLovers",
        objectives = {
            {
                text = "Speak with Ashkhan Ulath-Pal of the Erabenimsun",
                condition = { name = "Journal", stage = 1 },
                pointer = { name = "NPC", id = "ulath-pal" },
                completesQuest = false,
            },
            {
                text = "Speak with the Erabenimsun Wise Woman",
                condition = { name = "Journal", stage = 5 },
                pointer = { name = "NPC", id = "manirai" },
                completesQuest = false,
            },
            {
                text = "Kill Ashkhan Ulath-Pal and his supporters, then return to Manirai",
                condition = { name = "Journal", stage = 10 },
                pointer = { name = "NPC", id = "ulath-pal" },
                completesQuest = false,
            },
            {
                text = "Convince Han-Ammu to become Ashkhan",
                condition = { name = "Journal", stage = 35 },
                pointer = { name = "NPC", id = "Han-Ammu" },
                completesQuest = false,
            },
            {
                text = "Ask Han-Ammu to name you Erabenimsun Nerevarine",
                condition = { name = "Journal", stage = 50 },
                pointer = { name = "NPC", id = "Han-Ammu" },
                completesQuest = false,
            },
            {
                text = "Get Seizing of the Erabenimsun from Manirai",
                condition = { name = "Journal", stage = 55 },
                pointer = { name = "NPC", id = "manirai" },
                completesQuest = true,
            },
        },
    },

    -- TODO
    {
        name = "Redoran Hortator",
        id = "B5_ArobarHort",
        objectives = {
            {
                text = "Since I have killed a Redoran councilor, Arobar says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Since I have murdered a Redoran councilor, Arobar says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Miner Arobar to name me Hortator. My story interested him, but he was concerned about rumors he heard about me from the Temple. He has agreed to consider the matter further, and to consult with his other colleagues on the council.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sarethi's influence has persuaded Miner Arobar. He has agreed to confirm me as Hortator of House Redoran.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Miner Arobar to name me Hortator. My story, my proofs, and the Moon-and-Star ring impressed him. He was concerned about granting such a title and authority to an outlander. But since I am a member of House Redoran, he agreed to confirm me as Hortator of House Redoran.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Redoran Hortator",
        id = "B5_LlethriHort",
        objectives = {
            {
                text = "Since I have killed a Redoran counselor, Llethri says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Since I have murdered a Redoran counselor, Llethri says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Garisa Llethri doesn't believe my story and doesn't know much about me. He's going to talk with the other councilors before he makes his decision.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Garisa Llethri is making me his choice for Hortator of House Redoran. He was persuaded by Athyn Sarethi's testimony",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Garisa Llethri to name me Hortator. He was skeptical when he heard my story, and though he thinks that prophecies and reborn heroes are just superstitious nonsense, he approves of my skills and accomplishments. Since I am a member of House Redoran, he decided to confirm me as the Redoran Hortator.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Redoran Hortator",
        id = "B5_MorvaynHort",
        objectives = {
            {
                text = "Since I have killed a Redoran counselor, Morvayn says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Since I have murdered a Redoran counselor, Morvayn says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Morvayn was troubled by my story, but seemed to believe it. But she doesn't know me or trust me. She said she would consider my request and share her concerns with the other councilors.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After speaking with Athyn Sarethi, Councilor Morvayn has agreed to name me Hortator of House Redoran.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Brara Morvayn to name me Hortator. She found my story troubling, but she accepted the Moon-and-Star ring as proof I was indeed the Nerevarine, and, since I am a member of House Redoran, she quickly agreed to confirm me as Hortator of House Redoran.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Redoran Hortator",
        id = "B5_RamoranHort",
        objectives = {
            {
                text = "Since I have killed a Redoran counselor, Ramoran says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Since I have murdered a Redoran counselor, Ramoran says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ramoran was impressed by my story and my ring. But I'm an outsider, and he doesn't trust me. He said he'd think about my request and talk to the other counselors.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Thanks to Sarethi's influence, Hlaren Ramoran has agreed to name me Hortator.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Hlaren Ramoran to name me Hortator. He accepted my story and my proofs, and, since I am a member of House Redoran, he agreed to confirm me as Hortator of House Redoran.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Redoran Hortator",
        id = "B5_RedoranBook",
        objectives = {
            {
                text = "I have been given a recent edition of the Red Book of Great House Redoran which lists the names and residences of the current Redoran councilors.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Redoran Hortator",
        id = "B5_RedoranHort",
        objectives = {
            {
                text = "I have been named Hortator of House Redoran by Redoran's councilors. When I have been declared Hortator of all three Houses, Redoran, Hlaalu, and Telvanni, I will have fulfilled the Fourth Trial of the Seven Visions of Seven Trials of the Incarnate.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "When Athyn Sarethi named me Redoran Hortator, he gave me an enchanted ring, a token of my office called the \"Ring of the Hortator.\" By this ring others shall know me as House Redoran's chosen champion.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Athyn Sarethi showed me a public notice revealing that I am an Imperial agent. He did not ask for an explanation. He said he was satisfied that I was sincere. But he said others might not be so understanding.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Redoran Hortator",
        id = "B5_SarethiHort",
        objectives = {
            {
                text = "Since I have killed a Redoran counselor, Sarethi says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Since I have murdered a Redoran counselor, Sarethi says the other councilors will never consent to making me Hortator.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Athyn Sarethi has agreed to name me Hortator of House Redoran. He says he will use his influence to persuade the other councilors to support me, but that Bolvyn Venim will never support an outlander as Hortator of House Redoran. If I have the support of the rest of the Redoran Council, perhaps Venim will agree to an honorable duel.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Redoran Hortator",
        id = "B5_VenimHort",
        objectives = {
            {
                text = "I have murdered Bolvyn Venim. The murder of a Redoran councilor is a serious crime and offense to honor. Now I can expect little cooperation or sympathy from House Redoran.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Bolvyn Venim to name me Hortator. He was indignant, and refused to hear my story or consider my proof. He was quite clear... he will never consent to my being chosen as Hortator of House Redoran.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Bolvyn Venim has challenged me to a duel at the Arena in Vivec.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I killed Bolvyn Venim in a duel. It is unfortunate, but there was no alternative. I should speak with Athyn Sarethi again to be named Hortator.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_BeroHort",
        objectives = {
            {
                text = "When I asked if he would support my selection as Hortator for House Hlaalu, Dram Bero mentioned that he'd heard that I'd been involved in the death of a Hlaalu councilor. He said that would make it impossible for him to support me as Hlaalu Hortator.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dram Bero was impressed that I had found his home. He agreed to name me Hortator, and gave me some advice. Yngling Half-Troll can be bribed or killed, and Crassius Curio might be manipulated. But Velanda Omani and Nevena Ules will not support me as Hortator without Orvas Dren's approval.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_CurioHort",
        objectives = {
            {
                text = "Crassius Curio said that there were some hard feelings in House Hlaalu about the circumstances surrounding the death of a Hlaalu councilor. He expressed deep sorrow that he could not support me for Hortator without jeopardizing his own standing in House Hlaalu.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After I gave him a present of 500 gold, Crassius Curio gave me his vote for Hortator of House Hlaalu.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After I gave him a kiss, Crassius Curio gave me his vote for Hortator of House Hlaalu.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Upon receiving 1000 gold to cover expenses, Curio gave me his vote for Hortator of House Hlaalu.",
                condition = { name = "Journal", stage = 65 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_DrenHortator",
        objectives = {
            {
                text = "Orvas Dren agreed to use his influence with Nevena Ules and Velanda Omani to have me named Hlaalu Hortator.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_HlaaluBook",
        objectives = {
            {
                text = "I have been given a recent edition of the Yellow Book of Great House Hlaalu. It lists the current Hlaalu councilors and their residences.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nileno Dorvayn told me that I should speak with Crassius Curio at his manor in Vivec City. He is the most likely to consider my requests, whatever they may be.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_HlaaluHort",
        objectives = {
            {
                text = "Crassius Curio gave me the Belt of the Hortator, a token that shows I have been named Hortator of House Hlaalu by Hlaalu's councilors. When I have been declared Hortator of all three Houses, Redoran, Hlaalu, and Telvanni, I will have fulfilled the Fourth Trial of the Seven Visions of Seven Trials of the Incarnate.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_OmaniHort",
        objectives = {
            {
                text = "Velanda Omani expressed great concern that she heard that I'd been involved in the death of a Hlaalu councilor. Under the circumstances, she could see no chance of my being confirmed as Hortator.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Velanda Omani told me she would not name me Hortator without the approval of Orvas Dren.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I asked that Velanda Omani name me Hortator of House Hlaalu, she agreed immediately. She seemed very anxious to please me. Now I have her vote for Hlaalu Hortator.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_UlesHort",
        objectives = {
            {
                text = "Nevena Ules mentioned the unfortunate coincidence of my request to be named Hortator of House Hlaalu and my implication in the untimely death of a Hlaalu councilor. Her opinion was that consideration of my request would be postponed indefinitely.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nevena Ules did not seem to understand what I was asking. She told me I should meet with one of her advisors, Orvas Dren.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nevena Ules seemed very nervous when I asked her to confirm me as Hortator of House Hlaalu. She agreed immediately, and seemed very anxious to please me. Now I have her vote for Hlaalu Hortator.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hlaalu Hortator",
        id = "B6_YnglingHort",
        objectives = {
            {
                text = "Yngling Half-Troll laughed when I asked him if he would support me for Hortator of House Redoran. He seemed to feel that killing a Hlaalu councilor ruined my chances.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Yngling Half-Troll told me that he wouldn't name me Hortator without a bribe of 1000 gold.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Yngling Half-Troll told me that he wouldn't name me Hortator without a bribe of 2000 gold.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After a hefty bribe, Yngling Half-Troll gave me his vote for Hortator of House Hlaalu.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed the Hlaalu councilor Yngling Half-Troll.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_AryonHort",
        objectives = {
            {
                text = "I asked Galos Mathendis if Master Aryon would vote for me as Hortator of House Telvanni. Mathendis said I would have to speak directly to Aryon on a matter of such importance.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon told me that Archmagister Gothren never directly refuses requests, but delays indefinitely, never giving an answer. Master Aryon advised killing Gothren, which is how political disputes are resolved in House Telvanni.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After hearing my story, Master Aryon agreed to make me the Telvanni Hortator. He said the other councilors might need some persuading. Master Neloth is ill-tempered, and Mistress Therana is losing her mind. Dratha will like me since I'm female. Master Aryon told me that Archmagister Gothren would delay my request indefinitely. He advised me to kill Archmagister Gothren.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After hearing my story, Master Aryon agreed to make me the Telvanni Hortator. He said the other councilors might need some persuading. Master Neloth is ill-tempered, Mistress Therana is losing her mind, and Mistress Dratha has a problem with men. Master Aryon told me that Archmagister Gothren would delay my request indefinitely. He advised me to kill Archmagister Gothren.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_BaladasHort",
        objectives = {
            {
                text = "I asked Mouth Edras if Master Baladas would vote for me as Hortator of House Telvanni. Edras said I would have to speak directly to Baladas on a matter of such importance.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Master Baladas if he would vote for me as Hortator of House Telvanni. He declined, saying he felt I had treated him disrespectfully.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Master Baladas if he would vote for me as Hortator of House Telvanni. He said he had found me, on the whole, an agreeable colleague, and thought I was a suitable candidate for Hortator.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_DrathaHort",
        objectives = {
            {
                text = "I asked Mouth Raven Omayn if Mistress Dratha would vote for me as Hortator of House Telvanni. Omayn said I would have to speak directly to Dratha on a matter of such importance.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Mouth Raven Omayn if Mistress Dratha would vote for me as Hortator of House Telvanni. Omayn said that might be a problem, since Dratha hates men. Omayn suggested I do everything possible to improve her disposition before I asked her.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Mistress Dratha if she would vote for me as Hortator of House Telvanni. She wouldn't even listen to my story. I hope I can find some way to improve her disposition before I try again.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Mistress Dratha if she would vote for me as Hortator of House Telvanni. After hearing my story, she agreed without hesitation to give me her vote.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Once I got Mistress Dratha to listen to my story, she was more than willing to name me Hortator of House Telvanni.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_GothrenHort",
        objectives = {
            {
                text = "I asked Mouth Mallam Ryon if Archmagister Gothren would vote for me as Hortator of House Telvanni. Ryon said I would have to speak directly to Gothren on a matter of such importance.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Archmagister Gothren if he would vote for me as Hortator of House Telvanni. He listened to my story carefully, and said he found my proofs persuasive. He said, however, that it was a very grave responsibility to make such a decision, and that he would need some time to reflect and consider, and to confer with other councilors.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "It was very difficult, but I managed to get Archmagister to admit that he had no intention of naming me Hortator of House Telvanni. He said it was not in Telvanni interests to name an unknown and unreliable outlander and outsider to such an important position.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "It was very difficult, but I managed to get Archmagister to admit that he had no intention of naming me Hortator of House Telvanni. He said I clearly was attempting to use the office of Hortator as a means of advancing my own interests. He refuses to discuss the subject further, and threatened to kill me if I continued to annoy him.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_NelothHort",
        objectives = {
            {
                text = "I asked Mouth Arara Uvulas if Master Neloth would vote for me as Hortator of House Telvanni. Uvulas said I would have to speak directly to Neloth on a matter of such importance.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Master Neloth if he would vote for me as Hortator of House Telvanni. Neloth is a cranky, ill-tempered old wizard, impatient and quick to anger. He shouted at me for interrupting him with such nonsense. Perhaps I can find some way to improve his disposition before I try again.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I finally got Master Neloth to listen to me, he casually gave his vote for me as Hortator. It was clear that he didn't care one way or the other.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_TelvanniBook",
        objectives = {
            {
                text = "I have been given a recent edition of the Brown Book of Great House Telvanni. It lists the current Telvanni councilors and their residences.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_TelvanniHort",
        objectives = {
            {
                text = "I have been named Hortator of House Telvanni by the surviving councilors of that house. When I have been declared Hortator of all three Houses, Redoran, Hlaalu, and Telvanni, I will have fulfilled the Fourth Trial of the Seven Visions of Seven Trials of the Incarnate.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "As the sole surviving councilor of House Telvanni, I have declared myself Hortator of House Telvanni. When I have been declared Hortator of all three Houses, Redoran, Hlaalu, and Telvanni, I will have fulfilled the Fourth Trial of the Seven Visions of Seven Trials of the Incarnate.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Master Aryon gave me the Robe of the Hortator, an heirloom token of my status as Telvanni Hortator.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Telvanni Hortator",
        id = "B7_TheranaHort",
        objectives = {
            {
                text = "I asked Mouth Felisa Ulessen if Mistress Therana would vote for me as Hortator of House Telvanni. Ulessen said I would have to speak directly to Therana on a matter of such importance. Ulessen warned me that Therana was very eccentric, and it may be hard to get and keep her attention long enough to ask the question. She also suggested I rely on keeping her happy rather than annoy her with details and arguments.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I tried to ask Mistress Therana if she would vote for me as Hortator of House Telvanni, but it was impossible to get her attention. She's easily distracted. Maybe if I concentrate on being charming and entertaining, I'll be able to focus her attention on me.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I managed to catch Mistress Therana's attention, it was easy to get her to agree to vote for me. I'm not sure she knew what she was voting for, or why. But when I asked, \"Will you vote for me as Hortator,\" she said, quite clearly, \"You want to be a Hortator? Certainly. Go right ahead.\"",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_All_Hortator",
        objectives = {
            {
                text = "I have been named Hortator of all three Great Houses, Redoran, Hlaalu, and Telvanni. Of the Seven Visions of Seven Trials of the Incarnate, I have now fulfilled the Fourth Trial.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_All_Nerevarine",
        objectives = {
            {
                text = "I have been named Nerevarine by all four tribes of the Vvardenfell Ashlanders -- Urshilaku, Ahemmusa, Zainab, and Erabenimsun. Of the Seven Visions of Seven Trials of the Incarnate, I have now fulfilled the Fifth Trial.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_BackDoor1",
        objectives = {
            {
                text = "Athyn Sarethi was concerned that I had not fulfilled the Nerevarine prophecies. He says that Archcanon Saryoni hopes I will come speak with him at the High Fane in Vivec City.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_BackDoor2",
        objectives = {
            {
                text = "Crassius Curio seemed concerned that I had not fulfilled the Nerevarine prophecies. He says that Archcanon Saryoni hopes I will come speak with him at the High Fane in Vivec City.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_BackDoor3",
        objectives = {
            {
                text = "Divayth Fyr was surprised and disappointed that I had not fulfilled the Nerevarine prophecies. He says he has heard rumors that Archcanon Saryoni hopes I will come speak with him at the High Fane in Vivec City.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_BackDoor4",
        objectives = {
            {
                text = "Mehra Milo was concerned that I had not fulfilled the Nerevarine prophecies. She says that Archcanon Tholer Saryoni, the high priest of the Temple, is desperate, and that he asks that I come speak with him at the High Fane in Vivec City. She begged me to go to Saryoni.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_BackDoor5",
        objectives = {
            {
                text = "Gilvas Barelo was concerned that I had not fulfilled the Nerevarine prophecies. He says that Archcanon Tholer Saryoni, the high priest of the Temple, is desperate. Barelo asked me to go speak with Saryoni at the High Fane in Vivec City.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_BackDoor6",
        objectives = {
            {
                text = "Nibani Maesa was concerned that I had not fulfilled the Nerevarine prophecies. She says she hears that a man named Tholer Saryoni, the leader of the Temple, is desperate. Nibani Maesa asked me to go speak with Saryoni at the High Fane in Vivec City.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_Failed_Nerevarine",
        objectives = {
            {
                text = "I have killed one of the leaders of the Ashlander tribes. Now there is no possibility that I could be accepted by the Ashlander tribes as the Nerevarine of prophecy.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_MeetVivec",
        objectives = {
            {
                text = "To defeat Dagoth Ur, Vivec says I must go to Red Mountain to recover the artifact hammer Sunder from Gate Citadel Vemynal, then the artifact blade Keening from Gate Citadel Odrosal. Then, with these artifacts and Wraithguard, if I destroy the enchantments on the Heart of Lorkhan in Dagoth Ur's citadel, Dagoth Ur will be destroyed, and the Blight ended. Vivec gave me 'The Plan to Defeat Dagoth Ur' to explain the details.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I accepted Wraithguard from Lord Vivec, and I swore my oath, before all gods and men, before all spirits visible and invisible, before my honor and Vivec's honor, to dedicate myself and Wraithguard to the defeat and destruction of Dagoth Ur, and the preservation of Morrowind and its people. Vivec somehow taught me how to use Wraithguard. He then offered to give some explanations, or to let me go immediately, as I wished.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Lord Vivec wouldn't accept a 'maybe' in answer to his demand that I swear an oath to dedicate myself and Wraithguard to the defeat and destruction of Dagoth Ur, and the preservation of Morrowind and its people. He said I would not find Wraithguard useful, because without my oath, he wouldn't teach me its use. He dismissed me, but told me to come back if I changed my mind.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I refused to swear my oath, before all gods and men, before all spirits visible and invisible, before my honor and Vivec's honor, to dedicate myself and Wraithguard to the defeat and destruction of Dagoth Ur, and the preservation of Morrowind and its people. Vivec said I would not find Wraithguard useful, because without my oath, he wouldn't teach me its use. He dismissed me, but told me to come back if I changed my mind.",
                condition = { name = "Journal", stage = 38 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Lord Vivec asked me if I would accept Wraithguard, and he would not accept my answer of 'maybe.' He dismissed me, but told me to come back if I changed my mind.",
                condition = { name = "Journal", stage = 36 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I refused to accept Wraithguard from Lord Vivec. He dismissed me, but told me to come back if I changed my mind.",
                condition = { name = "Journal", stage = 34 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Archcanon Saryoni has suggested that the Temple's policy concerning the Nerevarine might change, and has arranged a private meeting with Lord Vivec. He gave me two keys: one to the private back entrance to his quarters, the other to a locked entrance to Lord Vivec's palace. He says the Ordinators are not under his control, and asks that I avoid them. Lord Vivec is expecting me, and perhaps I shouldn't keep him waiting.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Archcanon Saryoni accepted my apology for killing the Ordinator guard at the High Fane. He said it was time to risk trusting one another.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Ordinators guarding the High Fane know that I have come to meet with Saryoni. They warned me not to break the law, or they will take swift action.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The archcanon is in his private quarters, and he wants to speak with me, but I must avoid confrontations with the Ordinators at all costs, because spilling the blood of faithful servants of the Temple will make a reconciliation more difficult. The archcanon has spoken with the High Fane Ordinators, but if I am a wanted criminal, they may try to arrest me.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Athyn Sarethi gave me a sealed package containing a message sent on behalf of Archcanon Saryoni, High Archcanon of Vivec. In the event that I become both Hortator of the three Great Houses and Nerevarine of the four Ashlander tribes, Saryoni invites me to a private meeting to consider my claims. Once I am Hortator and Nerevarine, I should speak with the healer of the High Fane of Vivec, Danso Indules, to arrange the meeting.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Hortator and Nerevarine",
        id = "B8_Nibani_2_Vivec",
        objectives = {
            {
                text = "Nibani Maesa says I must go to Vivec's high priest, Saryoni, and demand to speak with the false god Vivec. She says Kagrenac's tools are the keys to the riddle of the Sixth and Seventh Trials, and that I must get them from Vivec.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Citadels of the Sixth House",
        id = "C0_Act_C",
        objectives = {
            {
                text = "In Citadel Vemynal I discovered an enchanted hammer called Sunder. It appears to be one of the enchanted tools created by the Dwemer Craftlord Kagrenac. But I can handle it without injury when I don't have Wraithguard equipped, and that seems very wrong.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Vemynal I discovered the artifact hammer Sunder, one of the enchanted tools created by the Dwemer Craftlord Kagrenac.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Odrosal I discovered the artifact blade Keening, one of the enchanted tools created by the Dwemer Craftlord Kagrenac.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Dagoth, I have slain Dagoth Araynys the Ash Vampire, chief lieutenant of the Sixth House and kin to Dagoth Ur.",
                condition = { name = "Journal", stage = 7 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Dagoth, I have slain Dagoth Gilvoth the Ash Vampire, chief lieutenant of the Sixth House and kin to Dagoth Ur.",
                condition = { name = "Journal", stage = 6 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Tureynulal, I have slain Dagoth Tureynul the Ash Vampire, chief lieutenant of the Sixth House and kin to Dagoth Ur.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Odrosal, I have slain Dagoth Odros the Ash Vampire, chief lieutenant of the Sixth House and kin to Dagoth Ur.",
                condition = { name = "Journal", stage = 4 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Endusal, I have slain Dagoth Endus the Ash Vampire, chief lieutenant of the Sixth House and kin to Dagoth Ur.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Citadel Vemynal, I have slain Dagoth Vemyn the Ash Vampire, chief lieutenant of the Sixth House and kin to Dagoth Ur.",
                condition = { name = "Journal", stage = 2 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In the ruins of Kogoruhn, I have slain Dagoth Uthol the Ash Vampire, chief lieutenant of the Sixth House and kin to Dagoth Ur.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Citadels of the Sixth House",
        id = "C0_Act_C_Expo",
        objectives = {
            {
                text = "Buoyant Armigers at Ghostgate told me that all their intelligence is old. No one has ventured far inside the fence for years. They gave me a map showing the locations of the citadels of the various ash vampires. Sixth House creatures have become more numerous and powerful, and the most powerful can conjure powerful daedra. There are no safe refuges or services inside the fence; I must return to Ghostgate to rest and heal.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Citadels of the Sixth House",
        id = "C2_Sunder",
        objectives = {
            {
                text = "Dagoth Endus gave me a bottle of ancient Dagoth brandy.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Citadels of the Sixth House",
        id = "C3_DestroyDagoth",
        objectives = {
            {
                text = "As I fled from the destruction of the Chamber of Akulakhan, I encountered the presence of the Daedra Lord Azura. She told me I had achieved my destiny and was free. The prophecies are fulfilled, and the Blight gone. But now I am Hortator and Nerevarine, Protector of Morrowind, and must defend the people from monsters and villains. She gave me a ring as a token of thanks and blessing.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I found the Heart of Lorkhan within the giant artifact Akulakhan. I struck the Heart with Sunder, then struck it again and again with Keening until the enchantment was destroyed. Severed from the sustaining power of the Heart, Dagoth Ur was destroyed. But the disturbance triggered an earthquake, and I had to flee for my life.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Dagoth Ur, and fought with him, and defeated him, but I did not destroy him. He seems to have escaped in a spirit form, perhaps to return and restore from the Heart's power. I must pursue him, and find and destroy the enchantments on the Heart of Lorkhan.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Dagoth Ur, and spoke with him. He asked me questions, and let me answer questions in return. And when all the questions had been asked and answered, there was nothing left to say. The time for words is past. Now only deeds can resolve this matter between Dagoth Ur and I.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Yagrum Bagarn and Wraithguard",
        id = "CX_BackPath",
        objectives = {
            {
                text = "Yagrum Bagarn says he has harmonized Wraithguard with my personal magicka signature. Now, the first time I equip Wraithguard, I will experience a terrible shock. Even if I am in perfect health, and I have fortified my health as much as possible, there is a good chance I will die. If I survived, Wraithguard would work as designed. If I eat right, exercise, and improve my health, when I am MUCH healthier, then I MIGHT risk equipping Wraithguard.",
                condition = { name = "Journal", stage = 65 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Yagrum Bagarn says he has harmonized Wraithguard with my personal magicka signature. Now, the first time I equip Wraithguard, I will experience a terrible shock. If I am in perfect health, and I have fortified my health as much as possible, there is a good chance I will survive. But I MUST fortify my health as much as possible beforehand. Afterwards, Wraithguard should be working as designed, and everything will be fine.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Yagrum Bagarn says he has harmonized Wraithguard with my personal magicka signature. Now, the first time I equip Wraithguard, I will experience a terrible shock. If I am in perfect health, and I have fortified my health as much as possible, he believes I will survive. But I MUST fortify my health as much as possible beforehand. Afterwards, Wraithguard should be working as designed, and everything will be fine.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Yagrum Bagarn says he has harmonized Wraithguard with my personal magicka signature. Now, the first time I equip Wraithguard, I will experience a terrible shock. If I am in perfect health, he is confident I will survive. But I may want to fortify my health as much as possible beforehand, just in case. Afterwards, Wraithguard should be working as designed, and everything will be fine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Yagrum Bagarn took Kagrenac's Planbook and Kagrenac's Journals to study them. He said to come back in a day, and he thinks he will be able to restore Wraithguard's mythopoeic enchantments.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Yagrum Bagarn says he doesn't know where Kagrenac's Journals might be. He thinks they remain to be discovered in some Dwemer ruin here on Vvardenfell.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Yagrum Bagarn says he doesn't know where Kagrenac's Planbook might be. He thinks it remains to be discovered in some Dwemer ruin here on Vvardenfell.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Yagrum Bagarn has told me that if I can find Kagrenac's Planbook and Kagrenac's Journals and bring them to him, he will do his best to restore Wraithguard to its proper functions.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
}


return { questLine = questLine }
