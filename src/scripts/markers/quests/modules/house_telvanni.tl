local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "House Telvanni: Archmagister Gothren",
        id = "HT_Archmagister",
        objectives = {
            {
                text = "Master Aryon explained to me how to become the Archmagister of House Telvanni. When I have been declared Magister, I must challenge the current Archmagister, Gothren, and defeat him.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I am now the Archmagister of House Telvanni.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Kill Banden Indarys",
        id = "HT_AttackIndarys",
        objectives = {
            {
                text = "Master Aryon asked me to kill Banden Indarys, the lord of the recently built Redoran Stronghold of Indarys Manor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for killing Banden Indarys.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Kill Raynasa Rethan",
        id = "HT_AttackRethan",
        objectives = {
            {
                text = "Master Aryon asked me to kill Raynasa Rethan, the master of the newly built Hlaalu Stronghold of Rethan Manor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for killing Raynasa Rethan.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Auriel's Bow",
        id = "HT_AurielBow",
        objectives = {
            {
                text = "Mistress Therana asked me to bring her Auriel's Bow. At least, I think that's what she was asking. Perhaps I should look for the bow in Ghostgate. Therana said something about Ralyn Othravel.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mistress Therana scolded me for bringing her Auriel's Bow and then gave me 5000 gold if I promised to leave.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Baladas Demnevanni",
        id = "HT_BaladasAlly",
        objectives = {
            {
                text = "Master Aryon asked me to speak with Baladas Demnevanni. Master Aryon will make me his Mouth if I can convince Baladas to join the Council.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni told me that he will join the council if I will do three simple chores for him.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Baladas Demnevanni agreed to join the council.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon made me his Mouth and gave me the traditional Telvanni patron's gift: A Silver Staff of Peace.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Black Jinx",
        id = "HT_BlackJinx",
        objectives = {
            {
                text = "Mouth Raven Omayn wants me to bring her a ring known as Black Jinx.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that the Black Jinx belongs to the Morag Tong.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Alven Salas gave me the Black Jinx.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Raven Omayn thanked me for delivering the Black Jinx.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Dwemer Books",
        id = "HT_ChroniclesNchuleft",
        objectives = {
            {
                text = "Baladas Demnevanni thanked me for bringing him a copy of \"Chronicles of Nchuleft.\"",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "House Telvanni: Cure Blight",
        id = "HT_CureBlight",
        objectives = {
            {
                text = "Mouth Galos Mathendis wants me to deliver three potions of Cure Blight to Andil, the Telvanni Apothecary of Tel Vos.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Pierlette Rostorard gave me three potions of Cure Blight for the good of the House.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the potions of Cure Blight to Andil in Tel Vos.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Galos Mathendis thanked me for delivering the potions to Andil.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Daedra Skin",
        id = "HT_DaedraSkin",
        objectives = {
            {
                text = "Mouth Mallam Ryon asked me to acquire a Daedra skin and deliver it to Master Aryon in Tel Vos.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for bringing him a Daedra skin.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Dahrk Mezalf",
        id = "HT_DahrkMezalf",
        objectives = {
            {
                text = "Baladas Demnevanni asked me to bring him one of Dahrk Mezalf's summoning rings. Dahrk Mezalf was one of Kagrenac's smiths, sometimes called Mezalf Bthungthumz, and he may have lived in the colony of Bthungthumz which is somewhere between Maar Gan and the coast to the north.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni thanked me for bringing him Dahrk Mezalf's ring.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Redoran: Drake's Pride",
        id = "HT_DrakePride",
        objectives = {
            {
                text = "Master Neloth asked me to recover the Robe of the Drake's Pride from Sinise Thindo, a servant of Master Gothren.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Neloth thanked me for delivering the Robe of Drake's Pride.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Dwemer Books",
        id = "HT_DwemerLaw",
        objectives = {
            {
                text = "Baladas Demnevanni asked me to bring him a copy of the Dwemer books \"Antecedents of Dwemer Law,\" \"Chronicles of Nchuleft,\" and \"Nchunak's Fire and Faith.\"",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Edwinna Elbert in the Ald'ruhn Guild of Mages might have a copy of \"Antecedents of Dwemer Law.\"",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Jobasha's Rare Books in Vivec might have a copy of \"Antecedents of Dwemer Law.\"",
                condition = { name = "Journal", stage = 31 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Ethes Evos in Arobar Manor might have a copy.",
                condition = { name = "Journal", stage = 32 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ethes Evos made me a copy of his \"Antecedents of Dwemer Law.\"",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni thanked me for bringing him a copy of \"Antecedents of Dwemer Law.\"",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've delivered \"Antecedents of Dwemer Law,\" \"Chronicles of Nchuleft,\" and \"Nchunak's Fire and Faith\" to Baladas Demnevanni.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I've delivered \"Antecedents of Dwemer Law,\" \"Chronicles of Nchuleft,\" and \"Nchunak's Fire and Faith\" to Baladas Demnevanni.",
                condition = { name = "Journal", stage = 120 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I've delivered \"Antecedents of Dwemer Law,\" \"Chronicles of Nchuleft,\" and \"Nchunak's Fire and Faith\" to Baladas Demnevanni.",
                condition = { name = "Journal", stage = 130 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Amulet of Unity",
        id = "HT_EddieAmulet",
        objectives = {
            {
                text = "Fast Eddie offered to get me the Amulet of Unity if I bring him five potions of Invisibility.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Fast Eddie five potions of Invisibility and he said he would return in about a week with the Amulet of Unity.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I should check on Fast Eddie in the Telvanni Council House. He may have found the Amulet of Unity.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Fast Eddie gave me the Amulet of Unity.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Ring of Equity",
        id = "HT_EddieRing",
        objectives = {
            {
                text = "Fast Eddie offered to bring me the Ring of Equity from a hidden place in Master Neloth's treasury if I bring him one of the keys for Tel Naga. Any guard should have a key as should Master Neloth himself.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Fast Eddie a key to Tel Naga. He said he would leave soon and should have the Ring of Equity within a week.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Fast Eddie has found the Ring of Equity and is waiting for me in the Telvanni Council House.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Fast Eddie gave me the Ring of Equity.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Dwemer Books",
        id = "HT_FireAndFaith",
        objectives = {
            {
                text = "I was told that there is a copy of \"Nchunak's Fire and Faith\" in the Hall of Wisdom in Vivec.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Dorisa Darvel might have a copy of \"Nchunak's Fire and Faith.\"",
                condition = { name = "Journal", stage = 31 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni thanked me for bringing him a copy of \"Nchunak's Fire and Faith.\"",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "House Telvanni: Flesh Made Whole",
        id = "HT_FleshAmulet",
        objectives = {
            {
                text = "Mistress Dratha asked me to bring her the Amulet of Flesh Made Whole. She believes the amulet is in the possession of Master Neloth's captain of archers.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mistress Dratha thanked me for bringing her the Amulet of Flesh Made Whole.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Coded Message",
        id = "HT_FyrMessage",
        objectives = {
            {
                text = "Mouth Galos Mathendis asked me to deliver a coded message to Divayth Fyr in Tel Fyr.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Divayth Fyr gave me a message to return to Galos Mathendis.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Galos Mathendis accepted Divayth Fyr's reply.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Early Retirement",
        id = "HT_KillNeloth",
        objectives = {
            {
                text = "Master Aryon asked me to force Master Neloth into early retirement. To help with this project, Master Aryon gave me a potion of Dragon's Blood and two scrolls of God's Fire.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for forcing Master Neloth into retirement.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Mudan-Mul Egg Mine",
        id = "HT_MineCure",
        objectives = {
            {
                text = "Master Aryon asked me to cure the blighted Kwama queen in the Mudan-Mul Egg Mine which is west of Aryon's tower in Tel Vos.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon taught me how to cast a targeted spell of cure blight.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I cured the kwama queen in the Mudan-Mul Egg Mine.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for curing the Kwama queen in the Mudan-Mul Egg Mine.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Mages Guild Monopoly",
        id = "HT_Monopoly",
        objectives = {
            {
                text = "Master Aryon asked me to speak with the Councilmen of House Redoran. I must get at least three of them to agree to revoke the Mages Guild monopoly.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Athyn Sarethi gave his support to revoke the monopoly of the Mages Guild. He suggested that an appeal to fairness might work with the other councilors, but did not believe that Bolvyn Venim could be persuaded.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mistress Morvayn gave her support to revoke the monopoly of the Mages Guild.",
                condition = { name = "Journal", stage = 31 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Miner Arobar gave his support to revoke the monopoly of the Mages Guild.",
                condition = { name = "Journal", stage = 32 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Garisa Llethri gave his support to revoke the monopoly of the Mages Guild.",
                condition = { name = "Journal", stage = 33 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hlaren Ramoran gave his support to revoke the monopoly of the Mages Guild.",
                condition = { name = "Journal", stage = 34 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for helping to revoke the monopoly of the Mages Guild.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Master Aryon told me that too many Redoran Councilors are dead. House Telvanni will not be able to get enough votes to overturn the Mages Guild monopoly.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Muck",
        id = "HT_Muck",
        objectives = {
            {
                text = "Mouth Raven Omayn asked me to bring her five portions of muck for potions of cure disease.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Raven Omayn thanked me for bringing her five portions of muck.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Mission to Nchuleft",
        id = "HT_NchuleftKey",
        objectives = {
            {
                text = "Mouth Mallam Ryon asked me to bring him some Dwemer schematics from the ruins of Nchuleft which lies somewhere west of Vos.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Mallam Ryon thanked me for bringing him the Dwemer schematics.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Odirniran",
        id = "HT_Odirniran",
        objectives = {
            {
                text = "Master Aryon asked me to help Milyn Faram who is being attacked by Hlaalu in Odirniran. I should find Milyn Faram first to find out how many Hlaalu there are.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Milyn Faram told me to kill Remasa Othril, but to leave Vedelea Othril alone.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Milyn Faram thanked me for killing Remasa Othril in Odirniran.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Milyn Faram shared some of his theories with me and gave me some summoning scrolls.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for ending the siege of Odirniran.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Recruit a Mouth",
        id = "HT_RecruitEddie",
        objectives = {
            {
                text = "In order to become a Master in House Telvanni, I must find and recruit a Mouth to represent me in the Council.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that \"Fast Eddie\" might agree to be my Mouth. Fast Eddie lives in Balmora.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Fast Eddie agreed to be my Mouth.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Now that I have a Mouth to represent me, Master Aryon promoted me to Master in House Telvanni.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Shishi",
        id = "HT_Shishi",
        objectives = {
            {
                text = "Master Aryon asked me to assist Faves Andas whose stronghold of Shishi is being attacked by House Redoran. If I cannot find Faves Anders, Master Aryon suggested moving any bones or skulls I might find. Shishi is in the Foyada Bani-Dad northwest of Maar Gan.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Faves Andas thanked me for killing Brerama Selas.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon thanked me for ending the siege of Shishi.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Staff of the Silver Dawn",
        id = "HT_SilverDawn",
        objectives = {
            {
                text = "Mouth Arara Uvulas wants me to acquire a Staff of the Silver Dawn. This staff allegedly belongs to someone in the Mages Guild in Sadrith Mora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Arielle Phiencel sold me the Staff of the Silver Dawn for 300 gold.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Arara Uvulas thanked me for bringing her the Staff of the Silver Dawn.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Slave Rebellion",
        id = "HT_SlaveRebellion",
        objectives = {
            {
                text = "Mouth Felisa Ulessen asked me to put down a slave rebellion the Abebaal Egg Mine which is northwest of Tel Branora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I agreed to free Eleedal-Lei. I need to find the key to his slave bracers.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I freed Eleedal-Lei in the Abebaal Egg Mine. He will free the other slaves and guide them back to Black Marsh.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Felisa Ulessen thanked me for stopping the slave revolt.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Mouth Felisa Ulessen that the slaves were no longer in the Abebaal Egg Mine.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Sload Soap",
        id = "HT_SloadSoap",
        objectives = {
            {
                text = "Mouth Arara Uvulas asked me to acquire five portions of Sload soap.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Arara Uvulas thanked me for bringing her Sload soap.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Three Questions for Baladas Demnevanni",
        id = "HT_SpyBaladas",
        objectives = {
            {
                text = "Mouth Mallam Ryon mentioned something about asking Baladas Demnevanni three questions.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Mallam Ryon wants me to ask Baladas Demnevanni about the disappearance of the Dwarves, Dwemer artifacts, and the Dwemer language. Mouth Mallam Ryon warned me that Baladas may not answer the questions. This is acceptable, I need only ask the questions and return.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni would not discuss the disappearance of the Dwarves with me.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni told me his own theory. He believes that the Dwemer found a way to translate the sacred from the profane and experiments in anti-creation removed them from the Mundus. The Dwemer retreated behind math, color, and the active principle.",
                condition = { name = "Journal", stage = 51 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni would not say anything about Dwemer artifacts.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas told me that the Dwemer created Animunculi as guards and that some of them are still active.",
                condition = { name = "Journal", stage = 61 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni said he did not know the Dwemer language.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas told me that no one knows or can translate the Dwemer language, but many Dwemer records and books were written in Aldmeris and can still be read by scholars.",
                condition = { name = "Journal", stage = 71 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Mallam Ryon thanked me for asking Baladas Demnevanni the three questions.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Stronghold",
        id = "HT_Stronghold",
        objectives = {
            {
                text = "In order to advance in House Telvanni, I must build my own tower. I should speak with Llunela Hleran, the Telvanni stronghold builder.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran told me that in order to build my stronghold, I must get a construction contract from Duke Vedam Dren. I must also give Llunela to soul gems with strong souls.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran gave me two grand soulgems. I must fill them with strong souls and return them to her before she can begin work on my stronghold.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran accepted the construction contract and the soulgems with strong souls. She said she would give the orders to begin construction.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I should speak with Llunela Hleran about my stronghold.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran asked me to speak with Gashnak gra-Mughol, the foreman in charge of building my stronghold. My tower is being built on the ruins of Tel Uvirith which is due west of Tel Fyr and northwest of the Erabinimsun camp.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gashnak gra-Mughol assured me that the tower was growing well and should be ready to occupy within a week.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran thanked me for keeping her up to date on the progress of my stronghold.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The first stage of my stronghold should be complete today.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In order to advance further in House Telvanni, I must improve my stronghold so that it rivals that of the other Telvanni Councilors.",
                condition = { name = "Journal", stage = 105 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran said that she could improve my stronghold if I paid her 5000 gold. She also wants me to investigate the Dwemer ruin of Mzanchend northwest of my stronghold. I should bring her any dwemer plans or schematics that I find there.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran thanked me for the 5000 gold and the Dwemer Schematics. She will give orders to build the next stage of my stronghold.",
                condition = { name = "Journal", stage = 170 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The second stage of my stronghold should be complete today.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran is willing to order the final stage of my stronghold. However, she believes that my stronghold needs better guards. She wants me to bring her the book \"Secrets of Dwemer Animunculi\" from Galom Daeus. If I do this, my stronghold will be the first in ages to be guarded by Dwemer Centurions.",
                condition = { name = "Journal", stage = 210 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Llunela Hleran thanked me for bringing her the book \"Secrets of Dwemer Animunculi.\" She gave orders to begin the last stage of my stronghold.",
                condition = { name = "Journal", stage = 270 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The last stage of my stronghold is complete.",
                condition = { name = "Journal", stage = 300 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: New Clothes",
        id = "HT_TheranaClothes",
        objectives = {
            {
                text = "Mouth Felisa Ulessen gave me some new clothes and asked me to deliver them to Mistress Therana in Tel Branora. Mistress Therana is eccentric, and I should be careful not to offend her.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mistress Therana refused to take the new clothes unless I can prove that they are not cursed.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I put on the new clothes that I was supposed to deliver to Mistress Therana.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked a slave to wear the new clothes for Mistress Therana.",
                condition = { name = "Journal", stage = 72 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mouth Felisa Ulessen thanked me for delivering the clothes to her patron.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "House Telvanni: Wizard Spells",
        id = "HT_WizardSpells",
        objectives = {
            {
                text = "Master Aryon insists that I learn the basic wizard spells.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I demonstrated to Master Aryon that I know the rudimentary wizard spells.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
