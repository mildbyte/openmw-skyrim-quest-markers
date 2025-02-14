local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Azura's Quest",
        id = "DA_Azura",
        objectives = {
            {
                text = "I have spoken with Azura, Queen of the Night Sky, at her shrine. She has tasked me to travel to and island near Dagon Fel and rid the island of the daedra Sheogorath has sent, and to bring back proof that he sent them. I may not disturb Rayna Drolan, the woman living there. If I can do this for her, she will reward me well.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've killed the Golden Saint Staada, the most powerful of the daedra I found on the island.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've disturbed Rayna Drolan. Azura will not be pleased.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned to the Shrine of Azura to let it be known I have cleared the island of the daedra there and returned with proof that Sheogorath was behind the problems. Azura was grateful, and rewarded me with her Star, a magical soul gem of immense power.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned to the Shrine of Azura. She was not pleased that I had disturbed the solace of Rayna Drolan, for she now must forfeit the wager.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Boethiah's Quest",
        id = "DA_Boethiah",
        objectives = {
            {
                text = "I spoke to the khajiit M'aiq, and he gave me information on a sunken shrine to Boethiah off the coast near Hla Oad. It's difficult to know whether or not this is true. This khajiit seems to have a lot of ridiculous information.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have found the sunken shrine to Boethiah and spoken to the Daedra. He is understandably upset that his shrine has been allowed to remain in ruins, and wishes for a new one to be erected. If I can get the shrine rebuilt, he will reward me with the Goldbrand, a legendary sword. My first step should be to find a sculptor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Boethiah spoke in a riddle to me, to help me find the one who can recreate the shrine: Rough hands to smooth stone; Carving rock instead of bone; In Caldera an artist waits; His masterpiece to create",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have found a sculptor in Caldera. He is an orc named Duma gro-Lag.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I don't think this could be the sculptor I seek.",
                condition = { name = "Journal", stage = 45 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have asked Duma gro-Lag about rebuilding the shrine to Boethiah. He has agreed that it would be a wonderful project to be a part of, but he will need 2000 septims for materials, and will need some idea of how the shrine should look. Duma suggests I seek out a book that describes the shrine as it once was. In the meantime, he will search the area for an appropriate place to build the shrine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned to Duma gro-Lag with the items he required to recreate the Shrine to Boethiah. He seemed excited to begin, but warned me it would take some weeks to complete.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Duma gro-Lag tells me his work is complete, and that the shrine is rebuilt.",
                condition = { name = "Journal", stage = 61 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned to the completed Shrine to Boethiah. The Daedra seemed pleased with the work that has been done, and has rewarded me with Goldbrand, a truly spectacular weapon.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Malacath's Quest",
        id = "DA_Malacath",
        objectives = {
            {
                text = "I entered the shrine of Malacath and summoned the Daedra. He spoke to me of a helm of great power, once belonging to the elven hero Oreyn Bearclaw. In reality, he was no hero, though. The deeds attributed to him were actually performed by an orc, Kharag gro-Khar. If I can find the last of the Oreyn family bloodline, and kill him, I will be rewarded with the helm.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Oreyn name is widely known. It seems the only surviving member of the clan is Farvyn Oreyn, who takes his residence in Vivec",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The people of Vivec have told me that Farvyn Oreyn is a powerful battlemage, and is often surrounded by his entourage of servants. He is, however, not in town. He has been carrying on the traditions of the Oreyn family, and it is rumored he was heading toward Gnaar Mok.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The people of Gnaar Mok have said that Farvyn Oreyn is in the area. He and his servants were heading out to an island to kill some of the netch that had been plaguing the area.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have spoken with Farvyn Oreyn. He denied nothing about the false tales of heroism told about his ancestor. Looking at him, he seems unimpressive. His \"servants,\" on the other hand, are far from it.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have killed Farvyn Oreyn. He was, as I suspected, remarkably weak for one of such a \"distinguished\" bloodline. His guards were, however, as strong as they looked.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've returned to the shrine of Malacath, who already knew of my success in killing Farvyn Oreyn. Malacath was as good as his word, and I now have the Helm of Oreyn Bearclaw in my possession. It is a fantastic helm, misnamed though it may be.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mehrunes Dagon's Quest",
        id = "DA_Mehrunes",
        objectives = {
            {
                text = "At a Shrine to Mehrunes Dagon, I received a vision from the Daedra Prince himself. He has told me I appear unworthy of his favor, but will allow me a chance to prove myself, if I feel up to the task.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to accept Mehrunes Dagon's challenge, though it could mean my death. It seems that the fabled dagger, Mehrunes' Razor, has fallen into the hands of an unworthy bearer. The former owner is now dead, and the Razor lies, hidden and unused in the Alas tomb near Molag Mar. He has tasked me to find the Razor and return it to him. If I can do this, I will have proven myself worthy enough to wield the weapon myself.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have returned to the Shrine of Mehrunes Dagon with what I believe was once Mehrunes' Razor. It does not seem to be the weapon of legend anymore. It is rusted and dull, and unfit for use.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mehrunes Dagon was pleased that I was able to recover the once-great artifact from its resting place. He has taken the dagger and infused it once again with his power. As I have proven myself a worthy bearer of the weapon, Mehrunes Dagon has given me the restored Razor.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mephala's Quest",
        id = "DA_Mephala",
        objectives = {
            {
                text = "While in a Morag Tong Shrine to Mephala, I spoke to a priest of the Daedra. Taros Dral told me he had been given an important task by Mephala, and wanted to know if I wished to help.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Apparently, one of the Morag Tong's assassins has been taking jobs outside of the order, and the Daedra demands vengeance. If I can find this rogue assassin, Balyn Omavel, and kill him, Mephala will reward me. Of course, Mephala wishes this to be done in silence, away from nosy town guards, so I am to poison him. He lives in Balmora.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have decided to stay out of this Morag Tong business. It is a dangerous group to get involved with, and I want no part of it.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have agreed to work with this Morag Tong assassin and poison Balyn Omavel.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have succeeded in putting the poison in Balyn Omavel's cooking pot. Hopefully, he'll be using it soon.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "While trying to get into Balyn Omavel's house, he spotted me. The Morag Tong will not be pleased.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Taros Dral was not pleased that I had killed Balyn Omavel in a way other than the one he described.",
                condition = { name = "Journal", stage = 57 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I've returned to the Mephala Shrine. Upon arriving, the Daedra spoke to me, and was pleased with what I had done. As a reward, I was given the Ring of Khajiit. It seems a powerful artifact, and well suited for the Morag Tong.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Molag Bal's Quest",
        id = "DA_MolagBal",
        objectives = {
            {
                text = "While in a Shrine to Molag Bal, the Daedric Prince spoke to me at the altar. He was angered, and I was afraid. His anger, however, was not directed at me, but rather toward one of his minions. Menta Na, a Daedroth Monarch, has grown lazy, and no longer does Molag Bal's bidding. If I kill Menta Na in his dungeon Kora-Dur, returning his soul to the Outer Realms where Molag Bal can punish him, then Molag Bal will reward me well.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've killed the Daedroth Menta Na.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've returned to the Shrine of Molag Bal, having killed the Daedroth Monarch. Molag Bal was true to his word, and has rewarded me with his mace, the Mace of Molag Bal.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Sheogorath's Quest",
        id = "DA_Sheogorath",
        objectives = {
            {
                text = "I have entered the Shrine of Sheogorath and spoken with the Daedra Prince of Madness. He has offered me the opportunity to perform a service for him. First, I am to recover a powerful artifact, the Fork of Horripilation, from a mad hermit who lives on an island off the northernmost points of Tamriel. Then, I must slay a giant bull netch that has taken residence near this island. If I can do this, Sheogorath promises I will be rewarded well.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "While in Dagon Fel, I asked about the madman about whom Sheogorath spoke. They tell me there is an Argonian named Big Head who lives on an island north of Ald Redaynia.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have found Big Head, and he is without a doubt a madman. I only hope he can lead me to the Fork of Horripilation.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've asked the madman about the bull netch, and I believe he knows of it. It is hard to tell what he knows and what he simply imagines. I should be able to find it on an island east of here.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The madman Big Head has the Fork of Horripilation in his possession, and he has told me I can have it if I wish.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The giant bull netch is dead, as Sheogorath asked. However, I was not wielding the Fork of Horripilation when the netch met its end. My quest for the Prince of Madness is a failure.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I've used the Fork of Horripilation to kill the giant bull netch. Sheogorath is testing me, clearly. I have no doubt he is enjoying this greatly. I must now return to Sheogorath with the Fork.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've returned to the Shrine of Sheogorath, and the Daedra Prince spoke with me again. He seemed pleased that I had completed my quest...not because he wanted the bull netch dead, but he enjoyed seeing me struggle to do it. He has rewarded me well, though, and given me the Spear of Bitter Mercy.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
