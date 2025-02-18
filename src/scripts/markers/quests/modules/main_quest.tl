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
                text = "Before I take my next mission, the Spymaster wants me to improve my skills. He suggests I take a few guild jobs, cash in the loot, and upgrade my equipment. He gave me 400 gold to spend. When I think I'm ready, I'll go back to him, and he'll give me my next mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Spymaster suggests I do some more freelance work, and invest all I earn in training and equipment. When I think I'm ready, I'll go back to him, and he'll give me my next mission.",
                condition = { name = "Journal", stage = 2 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Spymaster has sent me to find a Sixth House base near Gnaar Mok. There I must kill a Sixth House priest named Dagoth Gares, and bring the Spymaster a full report on the Sixth House base. But first I need to speak to Raesa Pullia, the Champion of Fort Buckmoth. She'll tell me about the patrol that found the base, and how to find it.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Spymaster says a patrol found a Sixth House base in a cave the locals call Ilunibi. However, the one trooper who escaped to report died of corprus disease. Before he died, the trooper encountered monsters, cultists, and a powerful Sixth House priest called Dagoth Gares. The Spymaster says to go talk to Raesa Pullia, Champion of Fort Buckmoth. She'll give me the details.",
                condition = { name = "Journal", stage = 7 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with Raesa Pullia. The trooper who escaped died mad and disfigured with corprus. The cavern with the Sixth House base -- Ilunibi -- is not on the maps. I'll ask in Gnaar Mok about Ilunibi. The patrol fought cultists, disfigured man-beasts, and a half-man creature named Dagoth Gares. Dagoth Gares killed all the patrol, but sent one survivor out with messages about awakened sleepers and Lord Dagoth Ur.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A scout in Gnaar Mok told me about an old sea cave, called Ilunibi Caverns, up on the north end of the Gnaar Mok island, right on the coast. He said there was nothing but rats and slaughterfish, though smugglers and outlaws might use it for a hide-out.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The priest of Ilunibi Shrine tells me that Dagoth Ur bids me come to Red Mountain, where he would grant me counsel and power, if only I would pledge that friendship anew. He says the path to Red Mountain is long, and filled with danger, but there I will find wisdom, a firm friend, and all the power I need to set the world aright. So Dagoth Ur hopes to attract me to his service with promises of friendship and power.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dagoth Gares says the Sixth House was only sleeping. Now Dagoth Ur and the Sixth House will free Morrowind of foreign rulers and divine pretenders. When the land is swept clean of 'false friends' and 'greedy thieves', the children of Veloth 'will build anew a garden of plenty in this blighted wasteland'. So the Sixth House means to drive out the Empire, overthrow the Temple, and restore the pre-Imperial Dunmer nation of Morrowind.",
                condition = { name = "Journal", stage = 42 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dagoth Gares describes the Sleepers and Dreamers as new and weak worshippers. But the Children of His Flesh -- I think he means the corprus beasts -- are 'deep in the heart of his mysteries'. He also says that he and the servants of Ilunibi we are the least of Dagoth Ur's servants, and that servants called 'Ash Poets', 'Ascended Sleepers', and 'Ash Vampires' are more powerful and more blessed by Lord Dagoth.",
                condition = { name = "Journal", stage = 44 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dagoth Gares says Lord Dagoth would far rather have me as a friend than as an enemy. But until I submit to Lord Dagoth, Sixth House servants will treat me as an enemy. If I want to be a friend of the Sixth House, first I must go to Lord Dagoth in his citadel on Red Mountain, and make my submission.",
                condition = { name = "Journal", stage = 46 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dagoth Gares says Ilunibi shrine is only a small, quiet retreat where Sixth House servants share the sacraments of flesh and blood, and dream the dreams of their Lord. He says other lesser shrines are hidden throughout the land, but the greatest shrines of Sixth House servants lie beneath Red Mountain, in the citadels of our Lord and his close kin.",
                condition = { name = "Journal", stage = 48 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dagoth Gares addressed me as if I were Lord Nerevar, giving me Dagoth Ur's words. Dagoth Ur says Nerevar and he were friends and brothers, but that Nerevar struck Dagoth Ur down beneath Red Mountain while Dagoth Ur protected a treasure Nerevar had sworn Dagoth Ur to protect. Yet Dagoth Ur offers to forgive me and raise me high in his service. So Dagoth Ur thinks I'm Lord Nerevar. I wonder about their history together.",
                condition = { name = "Journal", stage = 49 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed Dagoth Gares, as the Spymaster ordered. But with his dying breath, Dagoth Gares pronounced a curse on me, and now I have the corprus disease. He said I would come to Dagoth Ur ' in his flesh, and of his flesh'. I don't feel any different, but the marks of the disease are plain on my face. I'll have to return and report to the Spymaster on the Sixth House base, and hope he knows of some way to cure this disease.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Corprus Cure",
        id = "A2_3_CorprusCure",
        objectives = {
            {
                text = "I gave Divayth Fyr the Dwemer boots from Yagrum Bagarn, and he gave me the potion. It didn't cure me. But it did remove all apparent signs of the disease. Divayth Fyr said he didn't actually WANT to cure me. He just wanted to remove the harmful features of the disease while preserving its virtues. It worked. And now Divayth Fyr is eager to test the potion on subjects in the Corprusarium. But I must hurry back to report to the Spymaster, and search for the lost prophecies.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I gave Divayth Fyr the Dwemer boots from Yagrum Bagarn, and he offered to give me the potion, but only if I'd take it right there, before his eyes, so he could closely observe its effects. Those are his conditions. He said to come back when I'm ready to take the potion.",
                condition = { name = "Journal", stage = 46 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Yagrum Bagarn gave me the Dwemer boots Divayth Fyr asked for. Now, when I deliver these boots to Divayth Fyr, he will give me the potion that I hope will cure my corprus disease.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed one of the residents of Tel Fyr. I doubt this will make me popular with the wizard Divayth Fyr.",
                condition = { name = "Journal", stage = 32 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed one of the inmates of the Corprusarium.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have been warned by Vistha-Kai, Warden of the Corprusarium, not to harm the inmates of the Corprusarium.",
                condition = { name = "Journal", stage = 28 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Divayth Fyr has offered to give me a potion that may cure me of corprus disease. It might also kill me, but, as he says, I haven't a better choice. All I have to do is go down into the Corprusarium, find a corprus victim named Yagrum Bagarn, collect a pair of boots from him, then return to Divayth Fyr, and he'll give me the potion.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Divayth Fyr says that the corprus disease makes you immune to other diseases, and that the Nerevarine prophecies say the Nerevarine will be immune to disease. Can it just be a coincidence?",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Divayth Fyr the Dwemer artifact the Spymaster gave me. It seems to have made a good impression on him.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I showed Divayth Fyr the Dwemer artifact the Spymaster gave me, but I didn't give it to him. He seemed annoyed with me.",
                condition = { name = "Journal", stage = 12 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I showed Divayth Fyr the Dwemer artifact the Spymaster gave me, but I didn't give it to him.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Caius says Tel Fyr, Divayth Fyr's tower, is southwest of Sadrith Mora, on an island on the southwestern edge of Zafirbel Bay. There's no boat service, so I must water-walk or swim from Sadrith Mora. Use the guild guide at the Mages Guild to reach Sadrith Mora. Then, at Wolverine Hall, Fighters Guild, ask the scout Sondryn Irathi for detailed directions to Tel Fyr. Caius gave me levitation potions, since Telvanni wizards don't use stairs.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Spymaster promoted me to Traveler rank, but is very worried about my Corprus disease. My best chance of a cure is Divayth Fyr, an ancient Telvanni wizard who runs a Corprusarium for victims of the disease. With the Dwemer artifact and 1000 gold Caius gave me, I'll go to Tel Fyr and persuade Divayth Fyr to cure my corprus disease. I must hurry back to the Spymaster when I'm cured, because Caius knows how to get the lost prophecies Nibani Maesa asked for.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Corprus Cure",
        id = "A2_3_CorprusKiller",
        objectives = {
            {
                text = "I have killed one of the inmates of the Corprusarium.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed one of the residents of Tel Fyr. I doubt this will make me popular with the wizard Divayth Fyr.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed one of the inmates of the Corprusarium. Divayth Fyr says he cannot forget what I've done, but he will forgive me.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Corprus Cure",
        id = "A2_3_CorprusSafe",
        objectives = {
            {
                text = "Uupse Fyr said that if I would find a guarskin drum and bring it to her, she could play the drum to calm the corprus victims. She says the victims wander away with the drum sometimes, so I'll have to search for it.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought Uupse Fyr a guarskin drum so she could play some rhythms to soothe the corprus victims.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Corprus Cure",
        id = "A2_3_Corprus_Vistha",
        objectives = {
            {
                text = "I have been warned by Vistha-Kai, Warden of the Corprusarium, not to harm the inmates of the Corprusarium.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Mehra Milo and the Lost Prophecies",
        id = "A2_4_MiloCaiusGone",
        objectives = {
            {
                text = "Caius gave me some gold and a few things that 'might come in handy.' And I can use his house while he's gone.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Mehra Milo and the Lost Prophecies",
        id = "A2_4_MiloGone",
        objectives = {
            {
                text = "Gilvas Barelo gave me 'The Lost Prophecy' and 'The Seven Curses'. 'The Lost Prophecy' says the Nerevarine is an outlander. That may surprise the Ashlanders, but it suggest that I might really be the Nerevarine. He also gave me a document based on the Apographa called 'Kagrenac's Tools' which reveals the guilty secret behind the Tribunal's divine powers. I must bring these lost prophecies to Nibani Maesa as soon as I can.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "From the Apographa, Gilvas Barelo gave me a document called 'Kagrenac's Tools'. This document describes the terrible secret that the Temple conceals about the true history of the Tribunal and the corrupt nature of their divine powers. To hide this secret, the Temple persecutes the Nerevarine and the Dissident Priests. Barelo says the persecution must stop, and we must unite against the true enemy, Dagoth Ur.",
                condition = { name = "Journal", stage = 49 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Heirographa are the collected priestly writings of the Temple. The Apographa are the 'hidden writings' -- secrets known only at the highest levels of priesthood and inquisition. The Dissident priests have gathered much of the Apographa in Holamayan. One of the chief disputes between the Temple and the Dissident priests is that the Temple hides the truth from its followers.",
                condition = { name = "Journal", stage = 48 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The appearance of the Sixth House is clearly a sign of a coming crisis, according to Gilvas Barelo. In such troubled times, the Dunmer may turn to the ancient pillars of faith, the ancestors and the Daedra, and the prophetic visions granted by Lord Azura. Then they may look to the Nerevarine, Saint Nerevar Reborn, to lead them against the grim armies of Dagoth Ur.",
                condition = { name = "Journal", stage = 46 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gilvas Barelo says that faith in the Temple's protective power was strong as long as the Ordinators, Buoyant Armigers, and Tribunal could contain the blight and Dagoth Ur's creatures within the Ghostfence. But now travelers and settlements suffer from blight storms and marauding monsters, and the people fear the Temple is losing its ages-old battle with the Devil Dagoth Ur.",
                condition = { name = "Journal", stage = 44 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Temple might not be so intolerant of differences in opinion, Gilvas Barelo says, but the Ordinators under Berel Sala claim that the threat from Red Mountain and Dagoth Ur can only be resisted with a unified, resolute faith. If the Dissident priests could show they can confront Dagoth Ur more effectively than the Ordinators, the Temple and people might support the Dissident priests.",
                condition = { name = "Journal", stage = 42 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gilvas Barelo says that Dagoth Ur grows stronger while the Tribunal grows weaker. He sees the return of Saint Nerevar, even if it is only the 'spirit' of Saint Nerevar, as the best hope for salvation from Dagoth Ur's menace.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Here's Gilvas Barelo's short interpretation of 'The Seven Curses'. 'Seven curses come from House Dagoth, or House Dwemer, or both. Fire and ash come from Red Mountain. Flesh is corprus. Ghosts, Seed, and Despair are unclear, but Curse-of-Dreams seems to refer to recent cases of soul sickness and Sleeper attacks in the towns.'",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Here's Gilvas Barelo's short interpretation of 'The Lost Prophecy'. 'An outlander -- foreign-born, but welcomed as a guest -- confronts seven curses beneath Red Mountain. His hand, blessed by Azura, uses a cursed blade to bring justice to House Dagoth, or House Dwemer, or both.' Maybe the prophecy was lost because Ashlanders didn't like the idea of an outlander Nerevarine.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Vevrana Aryon, a monk of Holamayan, says I will find Mehra Milo in the monastery here, on this island. A stone pathway north from the docks leads uphill to the entrance to Holamayan, but the portal opens only at dusk and dawn, the magical twilight hours sacred to Azura. I will find Mehra Milo in the library with Master Barelo. Later, Vevrana Aryon can arrange for my return to Vivec whenever I am ready.",
                condition = { name = "Journal", stage = 22 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Mehra Milo a Divine Intervention scroll. She'll meet me at Holamayan, a Dissident priest monastery, and we'll get the lost prophecies. I'll go to the East Docks in Ebonheart, find Blatta Hateria, tell her that Mehra Milo sent me, and that I want to 'go fishing.' She'll bring me to Holamayan by boat. I must speak to Vevrana Aryon, a monk at the dock at Holamayan, about Holamayan's magically hidden entrance.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Alvela Saram gave me a key to the entrance to the Ministry of Truth. I'll need keys for other doors inside; look for them in desks. She said there's sympathy for the Dissident priests among the Ordinators, but if anyone gets killed getting her out, we'll lose that sympathy.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found a note addressed to 'Amaya' in Mehra Milo's room. I think it means she's in trouble, probably imprisoned in the Ministry of Truth. I'm to tell the guard at the entrance, Alvela Saram, that I'm looking for Mehra Milo, and she'll let me in. Milo wants me to bring her two Divine Intervention scrolls. For an escape plan? She also left me two Levitation potions.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Caius Cosades was recalled to the Imperial City. He says he believes I am really the Nerevarine. He wants me to find the lost prophecies and deliver them to Nibani Maesa. His parting orders are to go to the Hall of Wisdom and Justice, where Mehra Milo will tell me how to get the lost prophecies. He says she's being watched, and if something has gone wrong, she will leave me a message under the code word 'amaya.'",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Mehra Milo and the Lost Prophecies",
        id = "A2_4_MiloGone_books",
        objectives = {
            {
                text = "Gilvas Barelo gave me several books about Nerevar.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Mehra Milo and the Lost Prophecies",
        id = "A2_4_MiloPrisonSafe",
        objectives = {
            {
                text = "I spoke to the officer in charge in the Ministry of Truth Prison Keep, and I believe he is going to let me proceed without interference.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Mehra Milo and the Lost Prophecies",
        id = "A2_4_Milo_hola_go",
        objectives = {
            {
                text = "Blatta Hateria is ready to take me to Holamayan any time I'm ready to travel. And she'll offer that service any time I need it.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Ane_Teria",
        objectives = {
            {
                text = "The ghost of Ane Teria gave me a book and a mace.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Conoon",
        objectives = {
            {
                text = "The ghost of Conoon Chodala gave me an axe and a pair of boots.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Erur-Dan",
        objectives = {
            {
                text = "The ghost of Erur-Dan gave me a spear and cuirass.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Hort-Ledd",
        objectives = {
            {
                text = "The ghost of Hort-Ledd gave me a book and a robe.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Idrenie",
        objectives = {
            {
                text = "The ghost of Idrenie Nerothan gave me a probe and lockpick.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Incarnate",
        objectives = {
            {
                text = "The ghost of Conoon Chodala gave me an axe and a pair of boots.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The ghost of Ane Teria gave me a book and a mace.",
                condition = { name = "Journal", stage = 78 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The ghost of Idrenie Nerothan gave me a probe and lockpick.",
                condition = { name = "Journal", stage = 76 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The ghost of Erur-Dan gave me a spear and cuirass.",
                condition = { name = "Journal", stage = 74 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The ghost of Hort-Ledd gave me a book and a robe.",
                condition = { name = "Journal", stage = 72 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The ghost of Peakstar gave me a belt and pants.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "In times of great danger, the Ashlander tribes unite under a single war leader. If I can prove to the Urshilaku, Ahemmusa, Zainab, and Erabenimsun tribes that I am the Nerevarine, and that the tribes must unite against the threat of the Sixth House, then each ashkhan will declare me 'Nerevarine' and war leader of all tribes. This is how I must pass the Fifth Trial. I must go to all the tribal ashkhans, but my friend Sul-Matuul should be the first and easiest to persuade.",
                condition = { name = "Journal", stage = 66 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Nibani Maesa reminded me of the Fifth Trial of the Seven Visions: 'A stranger's hand unites the Velothi/Four Tribes call him Nerevarine.'  The Four Tribes are the four tribes of Vvardenfell, the Urshilaku, the Ahemmusa, the Zainab, and the Erabenimsun. When I have been named 'Nerevarine' by each of the four Ashlander tribes of Vvardenfell, I will have passed the Fifth Trial, and should return to Nibani Maesa for further guidance.",
                condition = { name = "Journal", stage = 64 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "When a greater enemy threatens, the Great Houses put aside their quarrels and choose a Hortator, a single war leader to lead all the Houses. Only a Great House council can name a Hortator, and all councils must agree. Nibani Maesa says I must go to Redoran Council, Hlaalu Council, and Telvanni Council, prove to each that the threat of Dagoth Ur warrants uniting under a Hortator, and persuade each to name me 'Hortator'. This is how I must pass the Fourth Trial.",
                condition = { name = "Journal", stage = 62 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Nibani Maesa reminded me of the Fourth Trial of the Seven Visions: 'A stranger's voice unites the Houses./Three Halls call him Hortator.' When I have been named 'Hortator' by each of the three Great Houses of Vvardenfell, I will have passed the Fourth Trial, and should return to Nibani Maesa for further guidance.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Peakstar says I must be chosen as 'Nerevarine' by the Ashlanders and 'Hortator' by the Great Houses. These are titles of war leaders chosen to unite the Dunmer in times of need. I must prove a war leader is needed, and be chosen as that war leader. I must tell how the Tribunal used profane tools of the Dwarves, and betrayed and misled the people. I must tell about the threat of Dagoth Ur and the Sixth House, and how the Tribunal can no longer contain them.",
                condition = { name = "Journal", stage = 54 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The spirit of Peakstar warned that now that I bear the Moon-and-Star, and will be recognized as the Nerevarine, I must be ready for hatred and fear from the Temple, from Ordinators, and from Tribunal Faithful of the Great Houses.",
                condition = { name = "Journal", stage = 52 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I saw Azura in the Cavern of the Incarnate. I received the Moon-and-Star, an enchanted ring, and I am the Nerevarine. I have passed the first three trials. Now I must show Moon-and-Star to the ashkhans of the tribes and the councilors of the houses. Each tribe must call me Nerevarine. Each House must call me Hortator. These are the next two trials. Nibani Maesa shall be my guide. I must return to her and seek her counsel.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Nibani Maesa says, if the door is only seen at dawn and dusk, then it may be that the mouth of the cave is hidden or magical, and cannot be seen except when it is 'opened' by the 'key' -- Azura's Star.",
                condition = { name = "Journal", stage = 29 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nibani Maesa says that, if the star is the key -- Azura's Star -- then the door may be seen only at dawn and dusk, when Azura's Star is in the sky. Then the star would be the 'key' that opens the door.",
                condition = { name = "Journal", stage = 28 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nibani Maesa thinks that 'the star is the key' refers to Azura's Star that appears in the sky only in the magical hour between day and night, at dawn and twilight.",
                condition = { name = "Journal", stage = 26 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was asking about the skin of the pearl when I mentioned the Needle, in the Valley of the Wind. The Ashlander said there was whitish rock at the top of the Needle. That might be the 'skin of the pearl' I'm looking for.",
                condition = { name = "Journal", stage = 24 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "An Ashlander says there is a place called 'Airan's Teeth' in the Valley of the Wind. Two rocks spires mark the entrance to the Valley of the Wind, and they bear the name of the seer, Airan, who is blessed by Azura. These might be the 'teeth of the wind'. The Valley of the Wind is a valley on the northeast slopes of Red Mountain.",
                condition = { name = "Journal", stage = 22 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "An Ashlander says the 'eye of the needle' in the riddle may be a tall rock column in the Valley of the Wind. The Valley of the Wind is a valley on the northeast slopes of Red Mountain. The entrance to the valley is marked by Airan's Teeth, two tall rock spires.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have passed Sul-Matuul's Warrior's Test. Now I must find the Cavern of the Incarnate, a secret place sacred to Azura, and look for the moon and star of the prophecies. To find the Cavern of the Incarnate, I must solve a riddle: the eye of the needle lies in the teeth of the wind -- the mouth of the cave lies in the skin of the pearl -- the dream is the door and the star is the key. Sul-Matuul called this riddle 'Wisdom's Test,' and says take counsel of the wisdom of the tribes to find the way.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sul-Matuul has given me the following quest. Go to Kogoruhn, the ancient halls of House Dagoth. Get three tokens: 1. corprus weepings from a corprus beast, 2. a cup with the mark of House Dagoth, and 3. the Shadow Shield, which lies on the Tomb of Dagoth Morin, in the lava tunnels deep beneath ruined Kogoruhn. If I bring him these three tokens, he will reveal to me the secret of the Third Trial of the Nerevarine.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nibani Maesa says she has been chosen as my guide on the path of the Nerevarine. She says I must pass the Seven Trials of the Seven Visions. The first two trials, my particular birth and my cured corprus disease, are already passed. For the third trial, I must go to Sul-Matuul, the guardian of the Nerevarine cult, and he will tell me what to do. When I have fulfilled the third trial, I must return to Nibani Maesa for guidance with further trials.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The moons have come and gone, and it is time to return to Nibani Maesa and hear her judgement.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Nibani Maesa of the lost prophecies, and what Gilvas Barelo said about them. She has told me to leave her while she consults the ancestors in her dreams. I'm to come back when the moons have come and gone to hear her judgement.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "The Path of the Incarnate",
        id = "A2_6_Peakstar",
        objectives = {
            {
                text = "The ghost of Peakstar gave me a belt and pants.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Urshilaku Nerevarine",
        id = "B1_UnifyUrshilaku",
        objectives = {
            {
                text = "Sul-Matuul has named me Nerevarine, War Leader of the Urshilaku, and Protector of the People. He has given me the Teeth, an enchanted heirloom of the tribe, which shall be a sign to all Dunmer that the Urshilaku have named me Nerevarine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "These are the duties of the Nerevarine, as described to me by Sul-Matuul. I shall be Nerevarine of all the tribes, and Hortator of all the Great Houses. I shall eat the sin of the unmourned house, and free the false gods. I must defeat the Sixth House, and Dagoth Ur -- that is clear enough. I must free the Tribunal from their curse... I think that means free them from their use of Kagrenac's profane tools.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The third proof of the need for the Nerevarine is Azura's sign: I bear the Moon-and-Star of Nerevar. The legend of Moon-and-Star is known to all loremasters. No man but Nerevar may wear that ring and live.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The lies of the Tribunal and the false hope they offer of protection from Dagoth Ur are the second proof of the need for the Nerevarine. The False Gods have broken their promises, and have taken up the tools used by the enemies Kagrenac and Dagoth Ur. Since the Tribunal can no longer protect Morrowind from Dagoth Ur, the Nerevarine must shoulder that burden.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The first need and proof of the Nerevarine is the curse of Dagoth Ur and the Sixth House. Because I have fought the Sixth House, because I have suffered corprus, because I have harrowed Kogoruhn, I can tell others, and my story shall serve as proof of the need for the Nerevarine.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Before Sul-Matuul will name me 'Nerevarine,' he first wishes to recite the needs and duties of the Nerevarine, so I may tell others. Sul-Matuul recites the need for the Nerevarine in three parts as follows. First, the curse of Dagoth Ur and the Sixth House threatens our land. Second, the False Gods lie, and offer false hope of protection. Third, I bear the Moon-and-Star of Nerevar.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sul-Matuul has warned me that people of the Great Houses and the Temple may be hostile when I am known as the Nerevarine. He also suggests that I take counsel with Nibani Maesa about the ways of the Ashlander tribes and their ashkhans, for I am an outsider, and unfamiliar with Ashlander ways.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Urshilaku Nerevarine",
        id = "B1_UrshilakuKill",
        objectives = {
            {
                text = "I have slain an Urshilaku Ashlander. Now it will be impossible to have friendly dealings with them or their leaders.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Ahemmusa Nerevarine",
        id = "B2_AhemmusaKill",
        objectives = {
            {
                text = "I have slain an Ahemmusa Ashlander. Now it will be impossible to have friendly dealings with them or their leaders.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Ahemmusa Nerevarine",
        id = "B2_AhemmusaSafe",
        objectives = {
            {
                text = "Sinnammu Mirpal agrees that I have fulfilled my part of the bargain. Ald Daedroth is safe enough to be a refuge for the Ahemmusa. Therefore she has named me Ahemmusa Nerevarine, War Leader of the Ahemmusa, and Protector of the People. She has also given me the Madstone of the Ahemmusa, an enchanted heirloom of the tribe, which shall be a sign to all Dunmer that the Ahemmusa have named me Nerevarine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have done as wise woman Sinnammu Mirpal has asked. I have brought her to the great statue beneath the ruins, and this is the test she has set to determine whether Ald Daedroth is safe for the Ahemmusa. Now I must speak to her and get her to name me Ahemmusa Nerevarine as she has promised.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with an Ordinator at Ald Daedroth. The Ordinators are only worried about the Daedra worshippers here, and they say that if I leave them alone, they'll leave me alone.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I threatened to kill Hlireni Indavel if she would not give the Ahemmusa shelter on Ald Daedroth. I wasn't sure she would listen to reason, but apparently she was so impressed by my reputation that she decided to yield. She promised on the Mad God that I could bring the Ahemmusa to Ald Daedroth, and that neither she nor her followers would harm them while they were here.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I threatened to kill Hlireni Indavel if she would not give the Ahemmusa shelter on Ald Daedroth. I wasn't sure she would listen to reason, but apparently she was so impressed by the level of my skills that she decided to yield. She promised on the Mad God that I could bring the Ahemmusa to Ald Daedroth, and that neither she nor her followers would harm them while they were here.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Hlireni Indavel the sad plight of the Ahemmusa Ashlanders, and how they would die if they didn't have a safe refuge from the blight. It is a sad tale, but without my gift for words, I doubt it would have moved her. Fortunately, she was so moved she invited me to bring the Ahemmusa to Ald Daedroth, and promised that neither she nor her followers would harm them while they were here.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sinnammu Mirpal assures me that she can water-walk. Otherwise, it would be hard for her to accompany me to Ald Daedroth. But I will have to careful to protect her from sea creatures while we journey over water.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sinnammu Mirpal says that when I am sure that Ald Daedroth is safe, I must return to her. Then she will accompany me to Ald Daedroth. If she can pass safely into the old sanctuary and see the great statue there, she will agree that I have made Ald Daedroth safe, and then she will name me Ahemmusa Nerevarine.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sinnammu Mirpal has told me that first I must go to Ald Daedroth and make it safe. She will not tell me exactly what she means by 'safe.' She is not a warrior or ashkhan, and she leaves this judgement to me. Perhaps there are many ways to make Ald Daedroth safe. But first I must go there and see for myself what must be done. Sinnammu Mirpal is an old woman, weak and vulnerable. If she must accompany me there, it must be very safe, or she'll be killed.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The wise woman of the Ahemmusa Ashlanders, Sinnammu Mirpal, has said that she will name me Ahemmusa Nerevarine, but first I must go to the Daedric shrine at Ald Daedroth and make it safe for the Ahemmusa. When I have made Ald Daedroth safe, I must then return to Sinnammu Mirpal, and then she will accompany me to Ald Daedroth. Then, when she has seen whether Ald Daedroth is safe or not, she will name me Ahemmusa Nerevarine.",
                condition = { name = "Journal", stage = 4 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The wise woman of the Ahemmusa Ashlanders, Sinnammu Mirpal, has said that she will name me Ahemmusa Nerevarine, but first I must go to the Daedric shrine at Ald Daedroth and make it safe for the Ahemmusa. When I have made Ald Daedroth safe, I must then return to Sinnammu Mirpal, and then she will accompany me to Ald Daedroth. Then, when she has seen whether Ald Daedroth is safe or not, she will name me Ahemmusa Nerevarine.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Ahemmusa Nerevarine",
        id = "B2_AhemmusaWalk",
        objectives = {
            {
                text = "Sinnammu Mirpal accompanies me to Ald Daedroth. If she can pass safely into the old sanctuary and see the great statue there, she will name me Ahemmusa Nerevarine.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Ahemmusa Nerevarine",
        id = "B2a_Kausi",
        objectives = {
            {
                text = "The gulakhan Kausi of the Ahemmusa admitted that they are a poor, sad tribe, without an ashkhan, and led by a wise woman. He asked me to talk to the wise woman, Sinnammu Mirpal, and do the deeds of a hero, and save the Ahemmusa.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Ahemmusa Nerevarine",
        id = "B2b_Dutadalk",
        objectives = {
            {
                text = "The gulakhan Dutadalk of the Ahemmusa told me to speak to the wise woman, Sinnammu Mirpal, and to tell her I will find a safe place for the Ahemmusa.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Ahemmusa Nerevarine",
        id = "B2c_Yenammu",
        objectives = {
            {
                text = "The gulakhan Yenammu of the Ahemmusa told me to speak to the wise woman, Sinnammu Mirpal. She is the Ahemmusa leader.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Zainab Nerevarine",
        id = "B3_ZainabBride",
        objectives = {
            {
                text = "Ashkhan Kaushad told me secretly that he is not such a fool, that he realizes I have tricked him, but he thinks me very clever for having hoodwinked him, and he is much happier than he would be if he had truly been given a stuck-up Telvanni lady.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Falura Llervu says she is very pleased with Ashkhan Kaushad. He is good-looking, clever, and rich, although a bit full of himself, like all men. She thanks me for having been her matchmaker and benefactor, and hopes I will return to visit when she has brought many fine sons and daughters to Ashkhan Kaushad.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Ashkhan Kaushad says he is very pleased with Falura Llervu, though she is not so generous in the hips as he would like. He promises to make her a happy bride, and to do her honor as a high-born Telvanni lady. And he has named me Zainab Nerevarine, War Leader of the Zainab, and Protector of the People. He has also given me the Zainab Thong, an enchanted heirloom of the tribe, which shall be a sign to all Dunmer that the Zainab have named me Nerevarine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Falura Llervu and I have arrived in Ashkhan Kaushad's yurt. First I must speak once more to Falura Llervu, then I must present her to Ashkhan Kaushad as his new high-born Telvanni bride.",
                condition = { name = "Journal", stage = 47 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke to Falura Llervu and gave her the perfume and exquisite clothes. She says she is very pleased with her clothes and her perfume, and is happy to escape slavery. She says she is a little anxious about marrying an Ashlander, even an Ashlander chief, but anything is better than being a slave, and she is tough, clever woman determined to make the best of her situation.",
                condition = { name = "Journal", stage = 45 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have brought the Telvanni Bug Musk perfume to Savile Imayn, and I have purchased Falura Llervu. Savile Imayn gave me the key to Falura Llervu's cage. When I'm ready, I should speak to Falura Llervu, give her the exquisite shirt, exquisite skirt, exquisite shoes, and Telvanni Bug Musk, and tell her to follow me to Zainab camp to meet her future husband, Ashkhan Kaushad.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have obtained an exquisite shirt, an exquisite skirt, and exquisite shoes to dress the slave Falura Llervu in. Savile Imayn needs time to coach Falura Llervu to play her part, and in the meantime she told me to go get some Telvanni Bug Musk perfume to make Falura Llervu completely irresistible.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have told Savile Imayn, slavemistress of the Festival Slave Market, of my plan to pose a slave as a high-born Telvanni bride to marry the Zainab Ashkhan. She says she has a perfect slave for the part, named Falura Llervu, but first Savile Imayn wants me to bring her an exquisite shirt, an exquisite skirt, and exquisite shoes to dress the slave in. I can see this is going to be very expensive.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sonummu Zabamat says no high-born Telvanni would consider wedding an Ashlander. But she has a cunning plan. I must go to Savile Imayn, slavemistress of the Festival Slave Market in Tel Aruhn, and tell her I need a pretty Dunmer slave. Savile Imayn will tell me how to dress the slave like a high-born Telvanni lady. Then I must escort the pretty slave to Zainab camp and present her to Ashkhan Kaushad as a high-born Telvanni bride.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Ashkhan Kaushad where I might find him a high-born Telvanni bride. He said I should visit high-born Telvanni lords and inform each that Ashkhan Kaushad of the Lordly Zainab will do them the honor of making one of their daughters his bride. He trusts me to choose the finest among those offered. The Ashkhan told me to take counsel with his wise woman, Sonummu Zabamat, who knows his mind well in such matters.",
                condition = { name = "Journal", stage = 22 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Since Calvario is dead, Ashkhan Kaushad says he will call me Nerevarine, but not until all the traditional rites and customs have been observed. It is customary to offer the Ashkhan a generous gift as a mark of respect. Ashkhan Kaushad has done me the great favor of naming the gift he wishes to receive -- a high-born Telvanni bride -- 'a pretty one, plump, with big hips to bring me many sons.'",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Kaushad, Ashkhan of the Zainab, to set me a task to prove that I am worthy to be named Nerevarine of the Zainab. A vampire named Calvario has taken refuge in nearby Nerano Ancestral Tomb. If I can kill this vampire, then I will be judged worthy to be named Nerevarine of the Zainab.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Ashkhan Kaushad the gift of a pair of exquisite shoes. He seemed pleased.",
                condition = { name = "Journal", stage = 4 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Zainab wise woman, Sonummu Zabamat, says that Ashkhan secretly admires expensive outlander clothing. She says that if I bring him a pair of exquisite shoes, he might be better disposed towards me.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ashkhan Kaushad scoffed when I asked him to name me Zainab Nerevarine. He seemed to doubt that an outlander could ever become the Nerevarine. Maybe if I could improve his disposition towards me, he might take me more seriously.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Zainab Nerevarine",
        id = "B3_ZainabKill",
        objectives = {
            {
                text = "I have slain a Zainab Ashlander. Now it will be impossible to have friendly dealings with them or their leaders.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Erabenimsun Nerevarine",
        id = "B4_ErabenimsunKill",
        objectives = {
            {
                text = "I have slain a peace-loving Erabenimsun Ashlander. Now it will be impossible to have friendly dealings with the peace-loving Erabenimsun or their leaders.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
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
                text = "Wise Woman Manirai has given me the Seizing of the Erabenimsun, an enchanted token that identifies me as Nerevarine and Champion of the Erabenimsun.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Han-Ammu, now Ashkhan of the Erabenimsun, has named me Erabenimsun Nerevarine, Champion of the Erabenimsun, and Protector of the People. I must also go to wise woman Manirai and get from her the Seizing of the Erabenimsun, an enchanted heirloom of the tribe, which shall be a sign to all Dunmer that the Erabenimsun have named me Nerevarine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have given Han-Ammu Sanit-Kil's Heart of Fire and the Robe of Erur-Dan the Wise, but he asked me to keep the War Axe of Airan-Ammu for myself. And by these tokens, I have persuaded him to accept his responsibilities as ashkhan of the Erabenimsun. He has also agreed to name me Nerevarine of the Erabenimsun. I must ask him to do this immediately.",
                condition = { name = "Journal", stage = 43 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have given Han-Ammu the War Axe of Airan-Ammu and the Robe of Erur-Dan the Wise, but he asked me to keep Sanit-Kil's Heart of Fire for myself. And by these tokens, I have persuaded him to accept his responsibilities as ashkhan of the Erabenimsun. He has also agreed to name me Nerevarine of the Erabenimsun. I must ask him to do this immediately.",
                condition = { name = "Journal", stage = 42 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have given Han-Ammu the War Axe of Airan-Ammu and Sanit-Kil's Heart of Fire, but he asked me to keep the Robe of Erur-Dan the Wise for myself. And by these tokens, I have persuaded him to accept his responsibilities as ashkhan of the Erabenimsun. He has also agreed to name me Nerevarine of the Erabenimsun. I must ask him to do this immediately.",
                condition = { name = "Journal", stage = 41 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have given Han-Ammu the War Axe of Airan-Ammu, Sanit-Kil's Heart of Fire, and the Robe of Erur-Dan the Wise, and I have persuaded him to accept his responsibilities as ashkhan of the Erabenimsun. He has also agreed to name me Nerevarine of the Erabenimsun. I must ask him to do this immediately.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke to Han-Ammu and made a little speech about having the courage to accept responsibilities of ashkhan, because the fate of the tribe is in his hands. He has taken the lesson to heart, and has accepted his responsibilities as ashkhan. He also said that he will name me Nerevarine of the Erabenimsun. I must ask him to do this immediately.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Manirai says that now, with Ulath-Pal and his supporters out of the way, it is a simple matter to be named Nerevarine of the Erabenimsun. All I need to do is persuade Gulakhan Han-Ammu to become the ashkhan of the Erabenimsun. I'll find him in his gulakyurt. She warned me, however, that he may be difficult to persuade.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told the Erabenimsun wise woman Manirai that I wish to be named Nerevarine by her tribe. She said this will never happen, not while Ashkhan Ulath-Pal and his supporters live. She says that if I want to be Nerevarine of the Erabenimsun, I must kill Ulath-Pal and his supporters, the gulakhans Ahaz, Ranabi, and Ashu-Ahhe. Then I must raise Gulakhan Han-Ammu to Ashkhan. Ashkhan Han-Ammu would then name me Nerevarine Erabenimsun.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Ashkhan Ulath-Pal of the Erabenimsun to name me Nerevarine. He mocked me as a hound and a foreign fool, and he said he would kill me with his own hand if I ever troubled him again.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Erabenimsun Nerevarine",
        id = "B4_Robe",
        objectives = {
            {
                text = "I gave Han-Ammu the Robe of Erur-Dan the Wise and made a little speech about wisdom and symbols and responsibility. I believe he has taken the lesson to heart, and will consider accepting his responsibilities as ashkhan, and consider naming me Nerevarine. But he said he does not need the robe, and he asked me to keep it.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have given Han-Ammu the Robe of Erur-Dan the Wise and made a little speech about wisdom and symbols and responsibility. I believe he has taken the lesson to heart, and will consider accepting his responsibilities as ashkhan, and consider naming me Nerevarine.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Erabenimsun Nerevarine",
        id = "B4_WarAxe",
        objectives = {
            {
                text = "I gave Han-Ammu the War Axe of Airan-Ammu and made a little speech about strength and symbols and responsibility. I believe he has taken the lesson to heart, and will consider accepting his responsibilities as ashkhan, and consider naming me Nerevarine. But he says he doesn't need the axe, and that I should keep it for myself.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have given Han-Ammu the War Axe of Airan-Ammu and made a little speech about strength and symbols and responsibility. I believe he has taken the lesson to heart, and will consider accepting his responsibilities as ashkhan, and consider naming me Nerevarine.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Erabenimsun Nerevarine",
        id = "B4_WarLoverKill",
        objectives = {
            {
                text = "I have slain one of the war-loving Erabenimsun Ashlanders. But perhaps it would have been impossible to have friendly dealings with them or their leaders, anyway.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
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
