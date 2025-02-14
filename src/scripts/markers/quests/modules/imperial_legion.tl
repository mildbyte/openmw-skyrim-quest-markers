local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Imperial Legion: Blueprints",
        id = "IL_Blueprints",
        objectives = {
            {
                text = "Darius told me that the Emperor himself wants the plans to the Anumidium. These plans may be somewhere under Red Mountain.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Darius thanked me for finding the blueprints to Anumidium. They will be sent immediately to the Emperor himself.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Courtesy",
        id = "IL_Courtesy",
        objectives = {
            {
                text = "The Buoyant Armiger Salyn Sarethi in Ghostgate claims that we have no courtesy. Frald the White asked me to challenge Salyn Sarethi to a contest of wit, poetry, and honor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I won the duel of wit and poetry against Salyn Sarethi.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I lost the duel of wit and poetry against Salyn Sarethi.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Frald the White was pleased to hear that I won the duel of wit and poetry.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Frald the White was disappointed to hear that I lost the challenge against Salyn Sarethi, but he thanked me for having the courage to meet the challenge.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Rescue Dandsa",
        id = "IL_Damsel",
        objectives = {
            {
                text = "Radd Heart-Hart asked me to rescue Dandsa, an Imperial citizen, who was captured by raiders. They are holding her in Abernanit on the coast near Gnaar Mok.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Dandsa and she agreed to follow me back to the entrance.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dandsa was safely escorted back outside of Abernanit.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Radd Hard-Heart thanked me for rescuing Dandsa.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Radd Hard-Heart that Dandsa is dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Suryn Athones' Slanders",
        id = "IL_FalseOrdinator",
        objectives = {
            {
                text = "Suryn Athones, an Ordinator at the Justice Offices in Vivec has slandered the dignity of our Order. Frald the White asked me to silence his lying mouth with blood.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Frald the White thanked me for silencing Suryn Athones.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Breeding Netch",
        id = "IL_GiantNetch",
        objectives = {
            {
                text = "Radd Hard-Heart told me that Giant Netch are threatening the village of Gnaar Mok. I must go there and kill the pair of breeding netch.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Radd Hard-Heart thanked me for killing the breeding netch near Gnaar Mok.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Gnisis Eggmine",
        id = "IL_GnisisBlight",
        objectives = {
            {
                text = "Darius asked me to cure the Kwama Queen in the Gnisis Eggmine. The Kwama Queen is blighted and the villagers suffer.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I cured the blighted kwama queen in the Gnisis Eggmine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Darius thanked me for curing the Kwama Queen in the Gnisis Eggmine.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Darius that the kwama queen in the Gnisis Eggmine was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Grandmaster Duel",
        id = "IL_Grandmaster",
        objectives = {
            {
                text = "Varus Vatinius challenged me to a duel. I must meet him in combat with weapons of my choosing in the Vivec Arena.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I won the duel against Varus Vatinius. I am now the Knight of the Imperial Dragon of the Order of Ebonheart.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Lord's Mail",
        id = "IL_KnightShield",
        objectives = {
            {
                text = "Varus Vatinius has told me that in order to become a Knight of the Garland, I must prove my worth by returning two legendary artifacts to the Order. First, he would like me to return the Lord's Mail, which recently disappeared from the Shrine in the Imperial Commission in Ebonheart. He has given me the key and permission to inspect the Shrine.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've found the Lord's Mail being held by Furius Acilius in a cave complex below Ebonheart. He apparently used a secret entrance to sneak into the Shrine and steal the mail.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the Lord's Mail to Varus Vatinius.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The second artifact Varus wants me to bring him is the Paladin's Blade, Chrysamere. It is rumored to be in the possession of Draramu Hloran, a powerful sorcerer near Sadrith Mora.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told Draramu Hloran is in the Abanabi Caves, southwest of Sadrith Mora.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned Chrysamere to Varus Vatinius, who was glad to have the powerful weapon returned to the Legion.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Maiden's Token",
        id = "IL_MaidenToken",
        objectives = {
            {
                text = "Varona Nelas is blackmailing a Buoyant Armiger. She has an embroidered glove which was given to this Buoyant Armiger as a token of affection. It would cause a scandal if it were known that they are lovers. Imsin the Dreamer asked me to recover this glove from Varona Nelas and bring it to her. Varona Nelas can be found in Assumanu, which is southeast of Ald Redaynia.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Varona Nelas agreed to give me the glove, which was given by Ilmeni Dren to a Buoyant Armiger. Ilmeni Dren can be found in Vivec.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the embroidered glove to Ilmeni Dren.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought the embroidered glove to Imsin the Dreamer. She will make sure it is returned to the Buoyant Armiger it belongs to.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Imsin the Dreamer thanked me for giving the glove back to Ilmeni Dren.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Imsin the Dreamer that Varona Nelas was dead.",
                condition = { name = "Journal", stage = 120 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Sorkvild the Raven",
        id = "IL_Necromancer",
        objectives = {
            {
                text = "Sorkvild the Raven is a Necromancer who lives in the Dwemer ruins near Dagon Fel. The Dunmer despise Necromancy, and all who practice it. Radd Hard-Heart wants the Necromancer dead before he ruins the reputation of other Imperial citizens.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Radd Hard-Heart thanked me for killing Sorkvild the Raven.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Saprius Entius",
        id = "IL_ProtectEntius",
        objectives = {
            {
                text = "Frald the White told me that a fellow knight, Saprius Entius committed murder. He is hiding somewhere in Vivec City. I must find Saprius Entius and protect him from the authorities. Frald the White will find a way to secret him away where he will stand trial with Imperial justice.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Saprius Entius.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Saprius Entius agreed to follow me back to Frald the White in Ebonheart.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Saprius Entius arrived safely in Ebonheart.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Frald the White thanked me for finding Saprius Entius. He will be brought to justice in the Empire.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Frald the White accused me of killing Saprius Entius and expelled me from the Legions.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Rescue Jocien Ancois",
        id = "IL_RescueHermit",
        objectives = {
            {
                text = "Radd Hard-Heart asked me to rescue Jocien Ancois, who is trying to teach the Ashlanders of Imperial culture and virtue. He was taken from the Erabenimsun camp by outcast Ashlanders, I should start there.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Jocien is being held by some kind of witch-women, a Mabrigash, called Zennammu. She would free Jocien if I brought the Erabinimsun hunter Assaba-Bentus to them.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "To prove his bravery, Assaba-Bentus agreed to go to the Mabrigash.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Assaba-Bentus arrived at the Mabrigash camp.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Mabrigash agreed to let Jocien Ancois go.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Jocien Ancois, and he told me that he would find his own way back to the Erabinimsun camp.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Radd Hard-Heart thanked me for rescuing Jocien Ancois.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Radd Hard-Heart that Jocien Ancois is dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Rescue Joncis Dalomax",
        id = "IL_RescueKnight",
        objectives = {
            {
                text = "Joncis Dalomax, a Knight Errant, has been captured. He is being held in Ashurnibibi, a Daedric Ruin on an island northwest of Hla Oad.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Joncis Dalomax thanked me for rescuing him. He will find his own way back to Hla Oad.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Imsin the Dreamer thanked me for rescuing Joncis Dalomax.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Imsin the Dreamer than Joncis Dalomax was already dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Rescue Madura Seran",
        id = "IL_RescuePilgrim",
        objectives = {
            {
                text = "Darius asked me to rescue a pilgrim from an outcast Ashlander camp outside of Ald Velothi. The pilgrim's name is Madura Seran.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Asha-Ammu told me that Madura Seran is being held hostage at a camp north of Gnisis, just south of Ald Velothi. Asha-Ammu said that I might avoid a fight if I pay a ransom for Medura Seran.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The ashlanders agreed to let Madura Seran go after I paid them a ransom.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I agreed to escort Madura Seran to the Ald Velothi Outpost.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Madura Seran arrived safely at the Ald Velothi Outpost.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Darius thanked me for rescuing Madura Seran.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Darius that the pilgrim Madura Seran was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Rescue Ragash gra-Shuzgub",
        id = "IL_RescueRagash",
        objectives = {
            {
                text = "Darius asked me to find out what happened to Ragash gra-Shuzgub, who tried to collect taxes from Baladas Demnevanni. Baladas lives in Arvs Drelen, the tower here in Gnisis.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni agreed to let Ragash gra-Shuzgub go free.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ragash agreed to follow me out of Arvs Drelen.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I escorted Ragash out of Arvs Drelen.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Darius thanked me for rescuing Ragash gra-Shuzgub.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Darius that Ragash was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Scrap Metal",
        id = "IL_ScrapMetal",
        objectives = {
            {
                text = "The Buoyant Armigers have challenged the Imperial Legion to a hunt. They claim they will bring in the skin of a corprus beast. Radd Hard-Heart wants me to bring in the scrap metal from a Dwemer Centurion.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought Radd Hard-Heart the scrap metal from a Dwemer Centurion. With this the Imperial Legion is sure to win the hunt with the Buoyant Armigers.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Dwemer Artifacts at Drinar Varyon's Place",
        id = "IL_Smuggler",
        objectives = {
            {
                text = "Drinar Varyon in Ald'ruhn is a suspected smuggler. Imsin the Dreamer wants me to find any Dwemer artifacts in his place return them to her.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned Drinar Varyon's Dwemer Tube to Imsin the Dreamer.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Imsin the Dreamer that Drinar Varyon was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Talos Cult Conspiracy",
        id = "IL_TalosTreason",
        objectives = {
            {
                text = "Darius suspects that some of his troops involved with the Talos Cult are involved in some sort of conspiracy. Darius asked me to find proof of this conspiracy.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've spoken with Oritius Maro, and it appears he is a member of the Talos Cult. He has given me a key to a shrine in the basement, and told me to speak to Arius Rulician.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Arius Rulician has welcomed me into the shrine, and allowed me to look around. He says the cult has \"plans,\" and that they are always looking for those who have similar beliefs.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Darius thanked me for bringing him proof that some of his troops are conspiring against the Emperor. He authorized me to bring the Emperor's justice to the traitors Oritius Maro and Arius Rulician.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Darius thanked me for bringing him proof of his troops' treasonous plans and for enacting justice upon them.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Baladas Demnevanni's Taxes",
        id = "IL_TaxesBaladas",
        objectives = {
            {
                text = "Darius asked me to collect taxes from Baladas Demnevanni. Since I am the Nerevarine, Darius believes that Baladas will listen to me.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni agreed to give his share of the taxes. I should return this money to Darius.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Darius thanked me for convincing Baladas to pay his taxes.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Kill Tonasi Belas",
        id = "IL_TraitorCoven",
        objectives = {
            {
                text = "Imsin the Dreamer asked me to find and kill Tonasi Belas, who was once a member of our Order. She is now a worshipper of Mehrunes Dagon in Assarnatamat east of Caldera.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Imsin the Dreamer thanked me for killing the traitor Tonasi Belas.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Honthjolf is a Traitor",
        id = "IL_TraitorWarrior",
        objectives = {
            {
                text = "Frald the White told me that Honthjolf, a former Knight Errant of the Order of Ebonheart, has made a pact with the Daedra worshippers of Aharnabi, which is on the far southeastern shores of Azura's coast, near the Shrine of Azura. Honthjolf is a traitor to the Order and must be killed.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Frald the White thanked me for killing Honthjolf, the traitor to our Order.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Legion: Widow Vabdas' Deed",
        id = "IL_WidowLand",
        objectives = {
            {
                text = "General Darius of the Imperial Legion has asked me to get the deed to the Widow Vabdas' land.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Widow Vabdas accused the Imperial Legion of murdering her husband. She refused to give me the deed to her land.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Widow Vabdas told me that her husband was last seen in the Gnisis Eggmine.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The ghost of Mansilamat Vabdas told me that he was murdered by Lugrub gro-Ogdum, a Legionnaire. Mansilamat Vabdas' corpse and the Axe that was used to murder him lie nearby underwater.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought the Axe to Darius. He believed my testimony and ordered me to bring justice to the Widow Vabdas by slaying Lugrub gro-Ogdum.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought the deed to Widow Vabdas' land to Darius.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Darius thanked me for slaying Lugrub gro-Ogdum, the murderer of Mansilamat Vabdas.",
                condition = { name = "Journal", stage = 120 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
