local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Mages Guild: Huleen's Hut",
        id = "MG_Apprentice",
        objectives = {
            {
                text = "Edwinna told me that there has been some sort of disturbance at Huleen's hut in Maar Gan. I am supposed to investigate and put a stop to the disturbance.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Edwinna was curious about what a Scamp was doing in Huleen's hut. She wants me to return to the hut and look for Huleen's apprentice, Listien Bierles.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with Listien Bierles, Huleen's apprentice. He apparently summoned a Scamp and then lost control of it. Everything seems to be under control now.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I put a stop to the disturbance at Huleen's Hut. Now Edwinna can get back to her studies.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Edwinna that I killed Huleen's apprentice. She expelled me from the Mages Guild.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Four Types of Mushrooms",
        id = "MG_BCShrooms",
        objectives = {
            {
                text = "Ajira asked me to bring her samples of four types of Mushrooms: Luminous Russula, Violet Coprinus, Bungler's Bane, and Hypha Facia. They may be found in the swamps of the Bitter Coast. I can get there by following the river Odai south of Balmora until I see a wooden bridge. After I pass the bridge I should look for a way over the hills to the west.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ajira thanked me for bringing her the mushroom samples.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Bethamez",
        id = "MG_Bethamez",
        objectives = {
            {
                text = "Edwinna heard that miners in the Gnisis Eggmine broke into the unplundered Dwemer ruin of Bethamez. She wants me to go to the lower levels of this eggmine and bring back any plans or blueprints I might find.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought the plans from Bethamez back to Edwinna.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Ceramic Bowl",
        id = "MG_Bowl",
        objectives = {
            {
                text = "Ajira asked me to find her a ceramic bowl. She told me that Ra'Virr the trader here in Balmora might have one.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ajira thanked me for finding her a ceramic bowl, but was far more concerned about her stolen reports.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Mystery of the Dwarves",
        id = "MG_Dwarves",
        objectives = {
            {
                text = "Arch-Mage Trebonius asked me to find out what happened to the Dwarves. Unfortunately, he didn't give me much information to go on. I'm not sure if he was serious.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was able to get the Dwemer books \"The Egg of Time\" and \"Divine Metaphysics Adapted to the Meanest of Intellects\" translated. \"Divine Metaphysics\" seems to be a treatise explaining how to create a new god through sorcery. \"The Egg of Time\" seems to be a refutation of the idea that linking to a divine source of power can be dangerous if interrupted. Though \"The Egg of Time\" refutes this idea, perhaps the author was wrong, and this is what happened to the Dwarves.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Arch-Mage Trebonius was pleased when I showed him the three Dwemer books. He said this was sufficient and thanked me for solving the mystery of the disappearance of the Dwarves.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Escort Tenyeminwe",
        id = "MG_EscortScholar1",
        objectives = {
            {
                text = "Skink asked me to escort the scholar Tenyeminwe to Gals Arethi's ship, the Elf-Skerring, over at the Telvanni docks.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tenyeminwe agreed to follow me to the Telvanni docks.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tenyeminwe made it to the Elf-Skerring safely.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tenyeminwe thanked me for escorting her to the Elf-Skerring and gave me some scrolls.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Skink thanked me for escorting Tenyeminwe to the Elf-Skerring.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Escort Itermerel",
        id = "MG_EscortScholar2",
        objectives = {
            {
                text = "Ranis Athrys asked me to escort the scholar Itermerel, who is staying at the Eight Plates, to Pelagiad. What Ranis really wants, however, is a copy of Itermerel's notes.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Itermerel to follow me to Pelagiad.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Itermerel arrived safely in Pelagiad.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Itermerel gave me a copy of his notes.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered Itermerel's notes to Ranis.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Nchuleftingth Expedition",
        id = "MG_Excavation",
        objectives = {
            {
                text = "Hasphat Antabolis gave me a letter of introduction to Senilias Cadiusus, the head of the expedition at Nchuleftingth.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Edwinna has asked me to check up on Senilias Cadiusus in Nchuleftingth. I can get to Nchuleftingth by either going northeast over the mountains near Suran and following the Foyada Nadanat northeast or by starting in Molag Mar and going northwest and following the Foyada north around Mount Kand.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Senilius told me that he doesn't have an excavation report due to some \"setbacks.\"",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Senilius Cadiusus told me that Anes Vendu had the excavation report with him when he disappeared in the lower levels of Nchuleftingth. Senilius asked me to try and find out what happened to Anes Vendu.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Anes Vendu's body.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Senilias Cadiusus what happened to Anes Vendu. Senilias asked me to return the excavation report to Edwinna Elbert in Ald'ruhn.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the excavation report to Edwinna.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I delivered the excavation report to Edwinna. She told me that the book I found, \"Hanging Gardens of Wasten Coridale,\" is written in both Dwemer and classic Altmer and might be useful to a scholar of Dwemer literature.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Four Types of Flowers",
        id = "MG_Flowers",
        objectives = {
            {
                text = "Ajira now wants samples of four types of flowers: Gold Kanet, Stoneflower Petals, Willow Anther, and Heather. These are found on the shores of Lake Amaya. I should go south out of Balmora and head east past the Fort Moonmoth and across the Foyada Mamaea on the road to Pelagiad. After leaving the Foyada, I should take the road to Suran which runs along the north shore of Lake Amaya.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ajira thanked me for bringing her the four flowers.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Arch-Mage",
        id = "MG_Guildmaster",
        objectives = {
            {
                text = "Edwinna Elbert asked me to talk to Arch-Mage Trebonius.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Skink-in-Tree's-Shade asked me to deliver a letter to Arch-Mage Trebonius.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Guildmaster Trebonius challenged me to a duel in the Arena in Vivec. The duel is to the death. Whoever wins will be the Guildmaster of the Mages Guild in Vvardenfell.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I am the new Arch-Mage of the Guild of Mages in Vvardenfell.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Recruit or Kill Llarar Bereloth",
        id = "MG_JoinUs",
        objectives = {
            {
                text = "Ranis asked me to convince Llarar Bereloth to join the guild. If he cannot be convinced, I must kill him. To get to Sulipund, I should leave Balmora east and pass Fort Moonmoth. Then cross the bridge to Molag Amur and follow the trail east until I reach a lake. I should see a Dunmer stronghold to the south. If I head north on the path between the hills, Sulipund will be on my left, just before the path splits.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Llarar Bereloth to join the Mages Guild. I should report my success to Ranis Athrys in Balmora.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported my success to Ranis Athrys in Balmora.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Kill Necromancer Telura Ulver",
        id = "MG_KillNecro1",
        objectives = {
            {
                text = "Skink asked me to kill the Necromancer Telura Ulver in Shal. To get there, I should go north from Hla Oad, cross a bridge and follow the coast to the west until I reach another bridge to an island. The entrance to Shal is in a muck pool on the north side of this island.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed the Necromancer Telura Ulver. I should report this to Skink in Sadrith Mora.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Skink thanked me for killing the Necromancer Telura Ulver.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Kill Necromancer Tashpi Ashibael",
        id = "MG_KillNecro2",
        objectives = {
            {
                text = "Ranis told me that Tashpi Ashibael is a necromancer. Ranis wants me to kill Tashpi Ashibael. She lives in Maar Gan.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tashpi Ashibael agreed to go into hiding. I should tell Ranis Athrys that Tashpi is dead.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Ranis Athrys that the necromancer is dead.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Kill the Telvanni Councilors",
        id = "MG_KillTelvanni",
        objectives = {
            {
                text = "Arch-Mage Trebonius asked me to kill all the Telvanni councilors. I'm not sure if he was serious.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Arch-Mage Trebonius thanked me for killing all the Telvanni councilors.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Scarab Plans in Mzuleft",
        id = "MG_Mzuleft",
        objectives = {
            {
                text = "Edwinna asked me to find plans for a Dwemer scarab in the ruins of Mzuleft southwest of Dagon Fel.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave the Dwemer scarab plans I found in Mzuleft to Edwinna.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Chronicles of Nchuleft",
        id = "MG_NchuleftBook",
        objectives = {
            {
                text = "Edwinna Elbert asked me to find her a copy of the Dwarven book Chronicles of Nchuleft.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that the book Chronicles of Nchuleft might be found in Vivec.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Jobasha's Rare Books in Vivec might have a copy of Chronicles of Nchuleft.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought a copy of Chronicles of Nchuleft to Edwinna Elbert in Ald'ruhn.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Manwe's Dues",
        id = "MG_PayDues",
        objectives = {
            {
                text = "Manwe, a Guild member in Punabi, has not paid any Guild dues in three months. Ranis asked me to find Manwe and collect the dues from her. To get to Punabi, I should go south from Balmora and take the road east past Fort Moonmoth. I should cross the bridge northeast of the Fort and continue east until I reach the lake. The old Dunmer stronghold of Marandas is just south of the lake. Punabi is on the trail that leads northeast from the lake.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Manwe says that she is no longer a member of the Mages Guild and refuses to pay the dues.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Manwe suggested that I pay the gold myself.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Manwe finally agreed to pay the 2000 gold she owes. I need to deliver this gold to Ranis Athrys in Balmora.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Manwe's Guild Dues to Ranis Athrys.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: A Potion from Skink-in-Tree's-Shade",
        id = "MG_Potion",
        objectives = {
            {
                text = "Edwinna asked me to talk to Skink-in-Tree's-Shade in Sadrith Mora and get a Detect Creatures Potion from him.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Skink gave me a Detect Creatures Potion.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the Detect Creatures Potion to Neminda.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Return Chimarvamidium",
        id = "MG_ReturnBook",
        objectives = {
            {
                text = "Edwinna asked me to return the book Chimarvamidium to the Mages Guild in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke to Sirilonwe and gave the book Chimarvamidium to her.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Edwinna thanked me for returning Chimarvamidium.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Fake Soul Gem",
        id = "MG_Sabotage",
        objectives = {
            {
                text = "Ajira gave me a fake soul gem. She wants me to sabotage Galbedir's Journeyman project. I should put the fake soul gem in Galbedir's desk.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ajira thanked me for helping her sabotage Galbedir's experiment.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Dwemer Tube from Arkngthunch-Sturdumz",
        id = "MG_Science",
        objectives = {
            {
                text = "Edwinna asked me to retrieve a Dwemer Tube from Arkngthunch-Sturdumz. Edwinna thinks Arkngthunch-Sturdumz is west of Ald Velothi on the coast. If I follow the coast from Ald Velothi I should be able to see it.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the Dwemer Tube to Edwinna.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: I'm NOT a Necromancer!",
        id = "MG_Sharn_Necro",
        objectives = {
            {
                text = "Sharn gra-Muzgob assures me she is not a necromancer, and that she cannot teach me any spells. I wonder....",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I showed Sharn gra-Muzgob her own personal copy of Legions of the Dead, she admitted she is a necromancer, and agreed to teach me a summoning spell.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Soul of an Ash Ghoul",
        id = "MG_SoulGem2",
        objectives = {
            {
                text = "Skink-in-Tree's-Shade asked me to get the soul of an Ash Ghoul. Skink told me the nearest Ash Ghoul was in Yakin, but any Ash Ghoul will do. Yakin is on the mainland just northwest of Tel Aruhn. From Tel Aruhn, I just need to swim or fly across one island and then continue northwest.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the soul of an Ash Ghoul to Skink-in-Tree's-Shade.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Catch a Spy",
        id = "MG_SpyCatch",
        objectives = {
            {
                text = "Ranis Athrys believes there is a spy in the Mages Guild. I have been ordered to question Guild members in Ald'ruhn, Vivec, and Sadrith Mora. I am not to take any action against the spy, but to report back to Ranis Athrys.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Ranis Athrys about Movis Darys in Ald'ruhn, but she is convinced that there is another spy in either Vivec or Sadrith Mora.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tiram Gadar told me he is a \"special advisor to Guildmaster Trebonius on Dunmer issues.\"",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sirilonwe told me that Trebonius consults Tiram Gadar before making any important decision.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Malven Romori told me that Tiram Gadar showed up recently and gave his credentials to Trebonius.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Guildmaster Trebonius gave me Tiram Gadar's \"credentials.\" They are obvious forgeries. Even Ocato's name is misspelled.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Ranis Athrys about the spy Tiram Gadar. Ranis will deal with this issue herself.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Archmage Trebonius that Ranis Athrys was a Telvanni Spy.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: The Staff of Magnus",
        id = "MG_StaffMagnus",
        objectives = {
            {
                text = "Ajira told me that the Staff of Magnus is in Assu, a sorcerer's cave on the slopes of Mount Kand northwest of Molag Mar.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ajira congratulated me for finding the Staff of Magnus.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Steal Chimarvamidium",
        id = "MG_StealBook",
        objectives = {
            {
                text = "Edwinna asked me to steal the book Chimarvamidium from the Mages Guild in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the book Chimarvamidium to Edwinna. She promised to return the book to me later.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Stolen Reports",
        id = "MG_StolenReport",
        objectives = {
            {
                text = "Ajira told me that her reports on the mushrooms and flowers of Vvardenfell have been stolen. Ajira thinks that Galbedir stole them. I should look around the Mages Guild here in Balmora for the reports and return them to Ajira.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ajira thanked me for finding her stolen reports.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Unsanctioned Training",
        id = "MG_StopCompetition",
        objectives = {
            {
                text = "Ranis wants me to convince an Argonian at the South Wall Cornerclub to stop offering unsanctioned training in Restoration.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Only-He-Stands-There to stop offering unsanctioned training.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Only-He-Stands-There agreed to train me in Restoration. In exchange, I am to tell Ranis Athrys that he is no longer offering training without Guild permission.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Ranis Athrys that Only-He-Stands-There wouldn't be offering training anymore.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Ranis Athrys that Only-He-Stands-There wouldn't be offering training anymore. In exchange, he will train me in Restoration.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Kill All Telvanni Councilors",
        id = "MG_Telvanni",
        objectives = {
            {
                text = "Guildmaster Trebonius asked me to kill all the Telvanni Councilors. I am not sure how (or even if) I should do this.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Guildmaster Trebonius thanked me for killing all the Telvanni Councilors.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Vampires of Vvardenfell, Vol II",
        id = "MG_VampVol2",
        objectives = {
            {
                text = "Skink wants a copy of \"Vampires of Vvardenfell volume two.\" He suggested I try rare bookstores.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Jobasha in Vivec might have a copy, but for a very high price.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that the Tribunal Temple does not have a copy of Vampires of Vvardenfell, and that if they did have a copy, they wouldn't tell me about it.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered Vampires of Vvardenfell volume two to Skink in Sadrith Mora.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Galur Rithari's Papers",
        id = "MG_VampireCure",
        objectives = {
            {
                text = "Skink asked me to find Galur Rithari's papers.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Skink thanked me for bringing him Galur Rithari's papers.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Warlock's Ring",
        id = "MG_WarlocksRing",
        objectives = {
            {
                text = "Ajira told me that the Warlock's Ring is held by Vindamea Drethan, a sorceress in Ashirbadon, which is on an island east of the ruins of Bal Fell.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ajira congratulated me on finding the Warlock's Ring.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Meeting with a Wise Woman",
        id = "MG_WiseWoman",
        objectives = {
            {
                text = "Skink would like to arrange a meeting with one of the Wise Women of the Ashlanders. He asked me to negotiate a meeting.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nibani Maesa told me that she would never meet with an Argonian Sorcerer.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Wise Woman Manirai told me she is too busy to meet with Skink-in-Tree's-Shade.",
                condition = { name = "Journal", stage = 26 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sonummu Zabamat told me she would meet with Skink-in-Tree's-Shade if Ashkhan Kaushad allowed it. I must speak with Ashkhan Kaushad.",
                condition = { name = "Journal", stage = 27 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ashkhan Kaushad told me that he would not allow his Wise Woman to speak with Skink-in-Tree's-Shade.",
                condition = { name = "Journal", stage = 28 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sinnammu Mirpal said she might consider sending her apprentice, Minabibi, to speak with Skink-in-Tree's-Shade. Unfortunately, the apprentice is currently in the Favel Ancestral Tomb, which is west of the Ahemmusa camp. I should follow the coast west from the camp, past the Daedric ruins until I see a cavern. If I reach the ashlands, I have gone too far.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with Minabi, who agreed to visit Skink-In-Tree's-Shade if I helped her put an Ancestral Ghost to rest. The ghost of Kanit Ashurnisammis is somewhere in this tomb.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I put the ghost to rest and Minabi has promised to speak with Skink-in-Tree's-Shade if Sinnammu agrees. I should speak with Wise Woman Sinnammu to arrange the meeting.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sinnammu agreed to send Minabi to speak with Skink-in-Tree's-Shade. I should report back to Skink.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Somehow Minabi arrived at the Mages Guild before me. Skink thanked me for arranging the exchange of knowledge.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Minabibi gave me an ancestor's ring.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
