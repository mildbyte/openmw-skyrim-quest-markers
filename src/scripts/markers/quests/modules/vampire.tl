local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Murder Rimintil",
        id = "VA_Rimintil",
        objectives = {
            {
                text = "Raven Omayn has asked me to kill Rimintil for Mistress Dratha. Rimintil can be found in the Central Tower in Tel Vos.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed Rimintil, and Raven Omayn tells me Mistress Dratha is pleased. She has rewarded me with a Flamemirror Robe.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Shashev's Key",
        id = "VA_Shashev",
        objectives = {
            {
                text = "Sirilonwe has asked me to kill a rival for her, as she doesn't want to get her hands dirty. His name is Shashev, and he is staying at the Ald Skar Inn in Ald'ruhn.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned to Sirilonwe with Shashev's key.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Quarra Amulet",
        id = "VA_VampAmulet",
        objectives = {
            {
                text = "Volrina Quarra has offered me the chance to perform another service for her. She needs to make a large number of magical amulets for her clan, and has need of raw materials to do so.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to find the ingredients Volrina Quarra needs. The raw materials are five extravagant sapphire amulets, two portions of void salts, the heart of a daedra, some ectoplasm, a skull, and some vampire dust.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to try and find the materials needed by Volrina Quarra.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have returned to Volrina Quarra with the ingredients she asked for. She apparently was using them to create powerful amulets for her clan. This is not her first attempt at such an enchantment. She has given me as a reward an amulet (one of her failed attempts) that will allow me to return to Druscashti at will. She has also told me that I may earn further reward by killing vampires of other clans.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Because I have killed a great number of vampires of the Aundae and the Berne Clans, Volrina Quarra has rewarded me with the right to feed from the clan cattle. The only provision is that I may not kill any of them. If I do, I will no longer be welcome in Druscashti, and will be attacked on sight.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Because I have killed some of the cattle, I have lost the privilege of using them for food.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Blood of the Quarra",
        id = "VA_VampBlood",
        objectives = {
            {
                text = "I spoke with Raxle Berne, the head of the Berne vampire clan in Morrowind. While he considers me an abomination, he seems willing to allow me to do some of the more menial tasks for the clan.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Berne has ordered me to retrieve a potion made with the blood of Volrina Quarra. She is the head of the Quarra vampire clan in Morrowind. If I am successful, Berne will allow me the use of the clan's service providers.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to try and recover the potion for Raxle Berne, though it will mean entering the Quarra lair in Druscashti.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to try and retrieve the potion for Raxle Berne.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have returned Quarra Blood Potion to Raxle Berne. He believes it will grant him strength beyond that of any of the other clan lords. In return, he will grant me access to those in the clan who provide services.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Blood for Mistress Dratha",
        id = "VA_VampBlood2",
        objectives = {
            {
                text = "Raven Omayn tells me that Mistress Dratha would like to obtain the Blood of the Quarra Ancients for her studies. She believes it will be found in Druscashti, the home of Volrina Quarra and her kin.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Raven Omayn tells me that Mistress Dratha would like to obtain the Blood of the Quarra Ancients for her studies. She believes it will be found in Druscashti, the home of Volrina Quarra and her kin. However, as I have retrieved it for Raxle Berne, I know that he has the Blood now.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "It seems Mistress Dratha was pleased to receive the Blood of the Quarra Ancients. I have been rewarded with a Jinksword, which Raven Omayn believes could only be useful to a vampire.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Vampire Merta",
        id = "VA_VampCountess",
        objectives = {
            {
                text = "I have spoken again with Raxle Berne about serving the Berne clan. He has told me of a powerful vampire named Merta living near Maar Gan. She was once a member of the Berne Clan, but broke all ties with them. Now, she lives as a rogue, but wealthy and powerful. Berne wants this rogue dead, and will allow me to try and kill this \"Bloody Countess.\"",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to kill Merta for Raxle Berne. If I do, he says he will reward me well for my efforts. He suggests I search the Reloth tomb to the west of Maar Gan for this rogue.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to try and kill the vampire Merta.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have killed the vampire Merta.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned to Raxle Berne and told him of my success in killing Merta. He seemed pleased, and gave me the Berne Amulet in return for my service. It will allow me to return to Galom Daeus if I need to. He has also told me that I might receive further reward if I am able to kill great numbers of vampires in the opposing clans.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Because I have been able to kill a large number of Quarra and Aundae vampires, Raxle Berne has allowed me the use of the Berne cattle here in Galom Daeus, provided I kill none of them. If I do, I will no longer be welcome in Galom Daeus, and will be attacked on sight.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Because I have killed some of the cattle, I have lost the privilege of using them for food.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Cult of Lord Irarak",
        id = "VA_VampCult",
        objectives = {
            {
                text = "I have spoken with Volrina Quarra, ruler of the Quarra clan in Morrowind. Although she considers me an abomination, she has offered to allow me to serve her clan by killing a rogue vampire. If I can do so, she will allow me use of the clan services.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to try and kill Irarak, rogue vampire and leader of his \"dark cult.\" Volrina Quarra has told me I am likely to find him near Gnisis.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to try and kill Irarak.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "There are rumors in Gnisis about the vampire \"Lord Irarak.\" They say that he and his \"followers\" are often found loitering in local ancestral burial tombs \"practicing their dark arts.\"",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Apparently, there are a few burial tombs nearby. They are Ginith to the northwest of town, and Rethandus to the northeast.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "It seems Lord Irarak was once a dark elf named Gulmon Droth. He has recently gained a number of followers among the younger residents of Gnisis.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have found this \"Lord Irarak\" in the Ginith Ancestral Tomb near Gnisis.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Irarak has offered to allow me to rule with him over his cult of mislead followers, from afar, of course. He claims that these people provide him with food, shelter, and a great deal of money, due simply to their fascination with the undead.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to let Irarak live here in peace with his followers. While these fools may be misled, they seem harmless enough. Plus, he paid me well for my mercy.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have decided not to allow this fool to continue with his ridiculous cult.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Irarak is dead. His cult will have to find a new way to spend their time and gold.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned to Druscashti and told Volrina Quarra of the death of \"Lord Irarak.\" She was pleased, and will allow me to use clan services.",
                condition = { name = "Journal", stage = 120 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have returned to Druscashti and told Volrina Quarra of my decision to let \"Lord Irarak\" live. She was not pleased by my decision, and I have been told not to return to the Quarra lair.",
                condition = { name = "Journal", stage = 130 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Imprisonment of Mastrius",
        id = "VA_VampCurse",
        objectives = {
            {
                text = "While exploring a dungeon in the northern regions of Vvardenfell, I encountered the vampire Mastrius deep within its bowels.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "It seems Mastrius has been locked in this dungeon for centuries. He had terrorized the surface for years until the Daedra Azura intervened. Azura cast a spell on Mastrius, trapping him inside the dungeon and draining him of his strength.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mastrius has asked me if I would be willing to help him escape from his prison. If I do, he promises that the two of us can rule the world outside, and will have plenty of mortals upon which we may feed.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to help Mastrius escape from this dungeon. He has told me he needs Spell Breaker, a powerful artifact that will act as a conduit for the spell. I will also need to bring him a daedra's heart, which should give him the strength to break the enchantment.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to assist Mastrius in escaping his prison. I have no wish to meddle in the affairs of this vampire, especially when it concerns a Daedra Prince.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Mastrius tells me that Spell Breaker is located in Bthuand, a dwemer ruin north of this tomb.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned to Mastrius with the Spell Breaker and the daedra's heart, and have given them to the ancient vampire. He has asked me to do one final thing for him: he needs to siphon off some of my power for the spell to work.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to allow Mastrius to borrow some of my strength for the spell. Together, he and I can rule the outside world.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have told Mastrius I will not allow him to use my power to make himself whole. I have done enough for this vampire.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After draining some of my health and fatigue, the vampire returned to full strength. He has decided I am no longer necessary, though.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed Mastrius. He will never again see the outside world.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Dust of the Vampire",
        id = "VA_VampDust",
        objectives = {
            {
                text = "Sirilonwe has asked me to get her three portions of vampire dust for a spell she is researching.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've returned to Sirilonwe with the vampire dust, and she has rewarded me with an Amulet of Gem Feeding.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Vampire Hunter",
        id = "VA_VampHunter",
        objectives = {
            {
                text = "Dhaunayne Aundae has asked me to provide her with another service. Apparently, a vampire hunter has been nosing around Ashmelech. He was able to escape, but Aundae is furious about the intrusion. She wants this vampire hunter killed. She wants him killed in daylight, though, and around witnesses, in order to provide an example for other would-be vampire hunters.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to try and kill this vampire hunter, whose name I do not yet know. Dhaunayne Aundae believes he is likely basing his operation out of Ald'ruhn, though.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to try and kill this vampire hunter. Killing a vampire hunter is risky business. Doing in the light of day is suicide.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have asked around Ald'ruhn about the presence of a vampire hunter. I've been told there is a powerful one nearby.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Some have mentioned seeing a vampire hunter around Ald'ruhn named Ano Vando.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ano Vando is dead, although I fear that Dhaunayne Aundae will not be pleased. He was not killed in the middle of the day, and perhaps was not made example of properly.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ano Vando is dead, and killed during the day with other residents around. Dhaunayne Aundae should be pleased.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned to Ashmelech and spoken with Daunayne Aundae. She was unhappy with my failure to provide an example for other vampire hunters.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have returned to Ashmelech and spoken with Daunayne Aundae. She was pleased with how I handled the killing of Ano Vando, and rewarded me with an amulet that, when used, will return me to Ashmelech. She has also told me that I might find further reward with her if I am able to kill a great number of the vampires from other clans.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "As a reward for killing many of the vampires from the Quarra and Berne clans, Daunayne Aundae has allowed me to feed off the cattle here in Ashmelech, provided I do not kill any of them. If I do, I will no longer be welcome in Ashmelech, and will be attacked on sight.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Because I have killed some of the cattle, I have lost the privilege of using them for food.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Weary Vampire",
        id = "VA_VampMarara",
        objectives = {
            {
                text = "While in Tel Mora, I heard rumors of a powerful vampire living in a tomb nearby. She apparently has grown weary of her unlife, and longs for her own death. She refuses, however, to allow herself to be slain by the hands of any mortal, though many have tried to claim the riches that lie within the tomb.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have met the vampire Marara. She no longer desires the unlife she has had for many hundreds of years, and wishes to be killed in combat by another of her kind.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided to kill Marara. If she has no wish to continue her life as a vampire, perhaps I can oblige her.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to kill Marara. Her death is her own, and I have no wish to take part in it.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I have succeeded in killing the vampire Marara.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "The Boy Who Would Be Undead",
        id = "VA_VampRich",
        objectives = {
            {
                text = "I have heard rumor that young Sanvyn Llethri wishes to become a vampire. And, although his parents are against it, he is actively pursuing this course.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have spoken with Fathasa Llethri about her son, Sanvyn, who wishes to become a vampire. She, unlike most people, seems willing to speak to me, even though I am exactly what her son wishes to become. She has promised me a great reward if I can convince him not to pursue his quest for the unlife. She wishes for me to show her son that vampires are not as powerful as he believes.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to try and convince Sanvyn Llethri not to become a vampire. From what his mother tells me, though, he is dead set on it. He believes the vampire to be the epitome of strength and power, and his mother would like me to convince him otherwise.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided not to try and dissuade Sanvyn Llethri from trying to become a vampire. It is none of my business what this child does with his life.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have spoken with Sanvyn Llethri in an attempt to dissuade him from becoming a vampire. He seems unconvinced, however. He is convinced that being a vampire is the height of power, and he will command respect by being one.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sanvyn Llethri has become more and more agitated the more I try and convince him to abandon his quest to become a vampire. He is convinced that vampires are the height of power, and that without this kind of power, he will be weak and worthless forever.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have fought Sanvyn Llethri, but he has gotten the better of me.",
                condition = { name = "Journal", stage = 65 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After allowing Sanvyn Llethri to fight me, and allowing him to get the better of me, the boy seems convinced that we vampires are not as all-powerful as he believed.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Fathasa Llethri has thanked me for my help. In appreciation, she rewarded me with a magical ring that will protect me against fire damage.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Sanvyn Llethri is dead.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
