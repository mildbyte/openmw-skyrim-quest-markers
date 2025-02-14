local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Temple: Sheogorath of the House of Troubles",
        id = "TT_AldDaedroth",
        objectives = {
            {
                text = "Tholer Saryoni told me that the Fourth Corner of the House of Troubles is Sheogorath. I must renew a pact with Sheogorath by finding a glove called the \"Gambolpuddy\" and donating it to Sheogorath's statue in Ald Daedroth. This shrine is on an island between Vvardenfell and Azura's Coast.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I made the Pilgrimage to Ald Daedroth and read a passage from the Four Corners of the House of Troubles. The pact with Sheogorath has been renewed.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Mehrunes Dagon of the House of Troubles",
        id = "TT_AldSotha",
        objectives = {
            {
                text = "Tholer Saryoni told me that the Second Corner of the House of Troubles is Mehrunes Dagon. I must find the statue of Mehrunes Dagon in Ald Sotha and read from Vivec's \"Four Corners.\"",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I made the Pilgrimage to Ald Sotha and read a passage from the Four Corners of the House of Troubles.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Ebony Mail",
        id = "TT_Assarnibibi",
        objectives = {
            {
                text = "Archcanon Tholer Saryoni asked me to bring him the Ebony Mail. The Ebony Mail can be found in Mount Assarnibibi where Molag Bal oversaw the 99 lovers of Boethiah that gave birth to Almalexia. Mount Assarnibibi is north of Molag Mar.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I received the Ebony Mail from the shrine at Assarnibibi.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Saryoni thanked me for bringing him the Ebony Mail, but said that I should keep it and do good deeds. I am the new Archcanon of the Temple.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Molag Bal of the House of Troubles",
        id = "TT_BalUr",
        objectives = {
            {
                text = "Tholer Saryoni told me that the Third Corner of the House of Troubles is Molag Bal. I must find the statue of Molag Bal in Bal Ur and recite Vivec's \"Four Corners.\" Bal Ur is north of Suran, but I will need to levitate over the mountains to get there easily.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I made the Pilgrimage to Bal Ur and read a passage from the Four Corners of the House of Troubles.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Compassion",
        id = "TT_Compassion",
        objectives = {
            {
                text = "Tuls Valen wants me to reenact Vivec's compassionate healing of a foe. I must either learn the Rilm's Gift spell or use the potion he gave me to cure the Orc Bulfim gra-Shugharz of Ash-Chancre. Bulfim gra-Shugarz is in Maelkashishi. I can get there by heading east from Ald Velothi until I reach the mountains, then following the mountains south.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I cured Bulfim gra-Shugharz.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tuls Valen thanked me for curing Bulfim gra-Shugharz.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Tuls Valen that Bulfim gra-Shugharz was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Cure Lette",
        id = "TT_CuringTouch",
        objectives = {
            {
                text = "Tharer Rotheloth asked me to cure a villager named Lette in Tel Mora. She has swamp fever and there is no Temple in Tel Mora where she can go for healing.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I cured Lette of her simple affliction.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tharer Rotheloth thanked me for curing Lette.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Tharer Rotheloth that Lette of Tel Mora was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Malacath of the House of Troubles",
        id = "TT_DagonFel",
        objectives = {
            {
                text = "I heard that Archcanon Tholer Saryoni wishes to speak with me. I have been given a key to his quarters.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tholer Saryoni told me that the First Corner of the House of Troubles is Malacath. There is a shrine to Malacath on the island of Sheogorad. To get there I should go south past the Dwemer ruins and take the second road heading west. I must find this shrine, donate four daedra hearts, and recite Vivec's \"Four Corners.\"",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I made the Pilgrimage to Dagon Fel and read a passage from the Four Corners of the House of Troubles.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Disease Carrier",
        id = "TT_DiseaseCarrier",
        objectives = {
            {
                text = "Endryn Llethan asked me to speak with the holy pilgrim Tanusea Veloth. She has Corprus disease and may spread it to others here in Vivec, but she is blessed by Almalexia and does not suffer from the disease. I must find her and convince her to go to the Corprusarium.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tanusea Veloth refused to leave Vivec City. She does not believe that I am pious enough.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I saw no other recourse but to kill Tanusea Veloth. The temple has lost a kind soul.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Tanusea Veloth with quotes from the sacred texts of the Temple. She agreed to go to the Corprusarium.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Endryn Llethan thanked me for convincing Tanusea Veloth to go to the Corprusarium.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Endryn Llethan thanked me for killing Tanusea Veloth and preventing the spread of the Divine Disease.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: False Incarnate",
        id = "TT_FalseIncarnate",
        objectives = {
            {
                text = "Tuls Valen asked me to speak with Elvil Vidron in Suran. Elvil Vidron has proclaimed himself to be the Incarnate. I must either persuade him to give up the notion that he is the Incarnate or kill him.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Elvil Vidron that he is not the Incarnate.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I showed Elvil Vidron the Moon-and-Star ring. He recognized me as the true incarnate.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I knew no other recourse but to prove to Elvil Vidron that he was not the Incarnate. He is dead.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tuls Valen thanked me for stopping the false incarnate.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Cleaver of St. Felms",
        id = "TT_FelmsCleaver",
        objectives = {
            {
                text = "Another sacred relic has been lost. Uvoo Llaren wants me to find the Cleaver of St. Felms. This cleaver is believed to be in the Ash Vampire Citadel of Tureynulal, which is on Red Mountain.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Uvoo Llaren thanked me for returning the Cleaver of St. Felms the Bold.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The Cleaver of St. Felms the Bold has been entrusted to my care.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Grace of Humility",
        id = "TT_FieldsKummu",
        objectives = {
            {
                text = "I made the Pilgrimage to the Fields of Kummu and read the Grace of Humility.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Slay Raxle Berne",
        id = "TT_GalomDeus",
        objectives = {
            {
                text = "Tharer Rotheloth gave me the equipment of a vampire hunter. I must find the vampire Raxle Berne and slay him in the name of the Tribunal. Galom Daeus is southwest of Uvirith's Grave, which is west of Tel Fyr. I should go south from Uvirith's grave until I reach a river of lava, then follow that river to the west until I reach Galom Daeus.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tharer Rotheloth thanked me for slaying the vampire Raxle Berne in the name of the Tribunal.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Grace of Pride",
        id = "TT_Ghostgate",
        objectives = {
            {
                text = "I made the Pilgrimage to Ghostgate and read the Grace of Pride.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Hair Shirt of St. Aralor",
        id = "TT_HairShirt",
        objectives = {
            {
                text = "The Ordinator Feril Salmyn was lost while searching for Lost Kogoruhn. Uvoo Llaren asked me to find him if he is alive. If he is dead, I should return the Hair Shirt of St. Aralor, a sacred relic.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Uvoo Llaren thanked me for returning the Hair Shirt of St. Aralor.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The Hair Shirt of St. Aralor the Penitent has been entrusted to my care.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Dark Cult in Hassour",
        id = "TT_Hassour",
        objectives = {
            {
                text = "Tuls Valen asked me to investigate a dark cult in Hassour. To get there I should head east from Balmora, past Fort Moonmoth and into the Foyada Mamaea. I should follow the foyada all the way south.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have slain the dark and powerful Dagoth Fovon.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tuls Valen thanked me for being the instrument of the Temple's justice in Hassour.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Crosier of St. Llothis the Pious",
        id = "TT_LlothisCrosier",
        objectives = {
            {
                text = "There is one more relic that has been lost. Uvoo Llaren asked me to find the Crosier of St. Llothis the Pious. The Crosier was wielded in righteous battle against the minions of Dagoth Ur by the late Captain of the Buoyant Armigers, Voruse Bethrimo. It was lost on Red Mountain near the foul lair of Dagoth Ur himself and may be in his hands even now.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Uvoo Llaren thanked me for returning the Crosier of St. Llothis the Pious.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The Crosier of St. Llothis the Pious has been entrusted to my care.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Pilgrimage to Maar Gan",
        id = "TT_MaarGan",
        objectives = {
            {
                text = "Tuls Valen wants me to make the Pilgrimage to Maar Gan. I should go to the temple shrine in Maar Gan and read the plaque describing Vivec's taunting of Mehrunes Dagon.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I taunted the Dremora at the shrine of Maar Gan and he attacked me.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I completed the pilgrimage to the shrine of Maar Gan.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tuls Valen praised my handling of the Dremora Anhaedra.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Tuls Valen has no more duties for me. He said I should seek Uvoo Llaren in Ghostgate or Endryn Llethan in Vivec.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Grace of Justice",
        id = "TT_MaskVivec",
        objectives = {
            {
                text = "I made the Pilgrimage to the Mask of Vivec and read the Grace of Justice.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Necromancer in Mawia",
        id = "TT_Mawia",
        objectives = {
            {
                text = "Tharer Rotheloth asked me to bring the Necromancer Delvam Andarys to justice. He is hiding in Mawia. From Molag Mar, I should follow the river to the east as it heads south, then turn east and follow the coast. Mawia is on a small island just south of the coast.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have slain the Necromancer Delvam Andarys of Mawia.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tharer Rotheloth thanked me for bringing the Necromancer Delvam Andarys to justice.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Cure the Outcast Outlander",
        id = "TT_MinistryHeathen",
        objectives = {
            {
                text = "Uvoo Llaren asked me to cure Assantus Hansar in an outcast Ashlander camp south of Ghostgate. I should be prepared to calm him, as outcast Ashlanders can be aggressive even when they are ill.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I cured Assantus Hansar.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Uvoo Llaren thanked me for curing Assantus Hansar.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Uvoo Llaren than Assantus Hansar was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Pilgrimage to Mount Kand",
        id = "TT_MountKand",
        objectives = {
            {
                text = "Tharer Rotheloth asked me to make the Pilgrimage to Mount Kand.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I answered the Fire Daedra's riddle correctly.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I answered the Frost Daedra's riddle correctly.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I answered the Storm Daedra's riddle correctly. I should go to the Triolith of Mount Kand to receive my wisdom.",
                condition = { name = "Journal", stage = 75 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I received Vivec's blessings from the shrine at Mount Kand.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Tharer Rotheloth thanked me for making the pilgrimage to Mount Kand.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Grace of Generosity",
        id = "TT_PalaceVivec",
        objectives = {
            {
                text = "I made the Pilgrimage to the Palace of Vivec and read the Grace of Generosity.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Pilgrimages of the Seven Graces",
        id = "TT_PilgrimsPath",
        objectives = {
            {
                text = "I have read \"The Pilgrim's Path\" and marked the location of each shrine on my map.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Temple: Grace of Courtesy",
        id = "TT_PuzzleCanal",
        objectives = {
            {
                text = "I spoke with Krazzt and gave him a longsword. I should read the inscription on the shrine to complete the Pilgrimage.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I made the Pilgrimage to the Puzzle Canal and read the Grace of Courtesy.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Shoes of St. Rilms",
        id = "TT_RilmsShoes",
        objectives = {
            {
                text = "Endryn Llethan asked me to find the Shoes of St. Rilms and return them to the Temple. A priest recently dreamt that the shoes were in the depths of Ald Sotha northeast of Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Endryn Llethan thanked me for returning the sacred Shoes of St. Rilms.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The Shoes of St. Rilms have been entrusted to my care.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Grace of Valor",
        id = "TT_RuddyMan",
        objectives = {
            {
                text = "I made the Ruddy Man Pilgrimage and read the Grace of Valor.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Silent Pilgrimage",
        id = "TT_SanctusShrine",
        objectives = {
            {
                text = "Endryn Llethan wants me to make the Pilgrimage to the Sanctus Shrine in Dagon Fel. I must travel there on foot without speaking to anyone. As the waters of Dagon Fel can be dangerous, Endryn Llethan suggested that I purchase some potions of levitation.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Endryn Llethan swore me to silence. I must travel to the Sanctus Shrine in Dagon Fel under a strict oath of silence.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I made the Pilgrimage to the Sanctus Shrine where Saryoni first wrote his famous sermons.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I failed my vow of silence.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Endryn Llethan praised me for making the Pilgrimage to the Sanctus Shrine in Dagon Fel.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Endryn Llethan was disappointed that I failed my silent Pilgrimage to the Sanctus Shrine in Dagon Fel.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Pilgrimages of the Seven Graces",
        id = "TT_SevenGraces",
        objectives = {
            {
                text = "%Name gave me a copy of \"The Pilgrim's Path\" and asked me to make the Pilgrimages of the Seven Graces.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have completed the Pilgrimages of the Seven Graces.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Foul Cult Beneath St. Delyn Canton",
        id = "TT_StAralor",
        objectives = {
            {
                text = "Endryn Llethan asked me to cleanse the foul Daedra worshippers from beneath the St. Delyn Canton here in Vivec. I must kill the leader of the cult, Bjadmund.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed the leader of the Sheogorath cult, Bjadmund.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Endryn Llethan thanked me for cleansing St. Delyn Canton.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Grace of Daring",
        id = "TT_StopMoon",
        objectives = {
            {
                text = "I made the Pilgrimage to Stop the Moon and read the Grace of Daring.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Temple: Food and Drink for the Hermit",
        id = "TT_SupplyMonk",
        objectives = {
            {
                text = "Uvoo Llaren asked me to deliver food and drink to the hermit Sendas Sathis. He lives in the wilderness of Shuran Island between Sheogorad and Vvardenfell. The island is west of the stronghold of Rotheran.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered food and drink to Sendas Sathis.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Uvoo Llaren thanked me for bringing food and drink to Sendas Sathis.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Uvoo Llaren than Sendas Sathis was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
