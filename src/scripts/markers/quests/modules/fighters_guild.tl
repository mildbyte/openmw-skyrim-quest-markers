local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Fighters Guild: Alof and the Orcs",
        id = "FG_AlofsFarm",
        objectives = {
            {
                text = "Eydis Fire-Eye told me to talk to Alof the Easterner at his farm northeast of Pelagiad and just north of the Arvel Plantation. Alof saw some Orcs at a Daedric ruin nearby.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye told me to get rid of some orcs near Alof's Farm, northeast of Pelagiad. Alof was our source of information on this, and he's dead. I'm to search nearby until I find the right orcs. They may be hiding in some ruins.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Alof the Easterner said the Orcs come from Ashunartes which is northeast of here and just west of an old Dunmer stronghold. Alof thinks the rest of the Orcs will leave if I kill their leader, a Barbarian by the name of Burub gra-Bamog.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Alof thanked me for getting rid of the Orcs at Ashunartes. I should report back to Eydis Fire-Eye.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye gave me 500 gold for the Duke's contract.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Beneran's Bounty",
        id = "FG_BeneranBounty",
        objectives = {
            {
                text = "Percius Mercius told me there is a bounty for the outlaw Nerer Beneran. He is hiding in the cavern of Sargon.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have been told that Sargon is located far north of Maar Gan and southwest of Vas, and that the trek there is a very long one.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius thanked me for bringing Nerer Beneran's crimes to an end.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Kill the Master Thief",
        id = "FG_BigBosses",
        objectives = {
            {
                text = "Sjoring Hard-Heart asked me to kill the Master Thief, Gentleman Jim Stacey. He can be found in Simine Fralinie's bookstore in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Sjoring Hard-Heart about killing the Master Thief. When he got the news, he attacked me, saying I was a threat to his position.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Sjoring the truth: That I am the new Master Thief of Vvardenfell. Upon hearing the news, he attacked me.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Berwen's Stalker",
        id = "FG_CorprusStalker",
        objectives = {
            {
                text = "Berwen has a corprus stalker in her store, and she would like me to get rid of it.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi asked me to get rid of a Corprus Stalker loose in Berwen the Trader's shop in Tel Mora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Berwen said that the beast was blockaded upstairs. Just one? This should be a cakewalk.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Berwen was very impressed with my fighting prowess when I dispatched her Corprus Stalker.",
                condition = { name = "Journal", stage = 89 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Berwen was very impressed with my fighting prowess when I dispatched her Corprus Stalker. Hrundi will be pleased as well.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Hrundi thanked me for getting rid of the Corprus Stalker at Berwen's Shop.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Juicedaw Ring",
        id = "FG_DebtOrc",
        objectives = {
            {
                text = "Lorbumol gro-Aglakh asked me to collect a Juicedaw Feather Ring from Nar gro-Shagramph in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nar gro-Shagramph gave me a Juicedaw Feather Ring.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the Juicedaw Feather Ring to Lorbumol gro-Aglakh.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Lorbumol that Nar gro-Shagramph was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighter's Guild: Lirielle's Debt",
        id = "FG_DebtStoine",
        objectives = {
            {
                text = "Lorbumol gro-Aglakh has a job for me involving debt money that is owed.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Lorbumol gro-Aglakh told me that Lirielle Stoine at The Rat in the Pot in Ald'ruhn owes our client 2000 gold.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius told me that Lirielle Stoine probably doesn't have 2000 gold, and that it was her brother, Ruran Stoine, who owed the money. Percius suggested that I pay the 2000 gold myself.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Lirielle Stoine told me that her brother Ruran Stoine owed the money and that she doesn't have 2000 gold. She told me her brother died seeking his fortune in Mallapi, which is northeast of Gnaar Mok.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Lorbumol gro-Aglakh thanked me for bringing him the 2000 gold Lirielle Stoine owed our client. He actually let me keep half of the money owed.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Desele's Debt",
        id = "FG_DeseleDebt",
        objectives = {
            {
                text = "Eydis Fire-Eye told me that Helviane Desele in Suran owes Manos Othreleth 200 gold. I must get this debt money from Desele and return it to Eydis Fire-Eye.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius suggested that I pay the debt money myself.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Desele agreed to pay the debt.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye gave me my share of the debt money.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: The Dissapla Mine",
        id = "FG_DissaplaMine",
        objectives = {
            {
                text = "Hrundi told me to go to the Dissapla Mine and do what Novor Drethan says. The Dissapla Mine is northeast of the Dunmer stronghold Falensarano, which is on the mainland west of Tel Aruhn.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Novor Drethan told me that the mine has been having problems with a pack of Nix Hounds and that one of the miners, Teres Arothan, is missing. I must find Teres Arothan or his corpse and return to Novor Drethan.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I agreed to try and find Teres Arothan in the Dissapla Mine.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Teres Arothan asked me to help guide him back to the entrance of the mine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I failed to rescue Teres Arothan from the Dissapla Mines.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I guided Teres Arothan back to the mine entrance.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Novor Drethan thanked me for rescuing Teres Arothan.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi thanked me for finishing the contract and gave me my pay.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Hrundi was displeased that I was unable to complete my mission in the Dissapla Mines.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Sujamma to Dunirai",
        id = "FG_DuniraiSupply",
        objectives = {
            {
                text = "Hrundi asked me to deliver a load of sujamma to Nelacar in the Dunirai Caverns which is southeast of Ghostgate between the Foyada Esannudan and the Foyada Ashur-Dan.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Nelacar thanked me for delivering the sujamma.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi paid me 500 gold for delivering sujamma to the Dunirai Caverns.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Hrundi wanted to have a load of sujamma delivered to the Dunirai Mine, but his contact there, Nelacar, is dead.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: The Egg Poachers",
        id = "FG_Egg_Poachers",
        objectives = {
            {
                text = "Sevilo Othan and Daynila Valas, former egg miners and local troublemakers, are poaching eggs from Shulk Egg Mine. Report back to Eydis when they're dead.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye tells me that the eggmine is located a short distance southwest of Balmora, in the bluffs west of the Odai River. The old suspension bridge across the Odai is just southeast of the mine entrance. I'm to follow the river south of Balmora until I see the bridge overhead.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported taking care of the egg poachers at Shulk Egg mine, and Eydis Fire-Eye paid me 100 gold, and gave me some extra potions.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Flin for Elith-Pal",
        id = "FG_ElithPalSupply",
        objectives = {
            {
                text = "Percius Mercius asked me to deliver a load of flin to Dangor in the Elith-Pal Mine which is on the base of Red Mountain just west of the Zainab camp.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the load of flin to the Elith-Pal Mine. Now I need to report back to Percius Mercius in Ald'ruhn.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius thanked me for delivering the flin.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Percius Mercius that Dangor was dead.",
                condition = { name = "Journal", stage = 200 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Engaer's Bounty",
        id = "FG_EngaerBounty",
        objectives = {
            {
                text = "Hrundi told me he has a bounty contract on Engaer, a mercenary for Master Neloth at Tel Naga, the tower in Sadrith Mora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi paid me the bounty on Engaer.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: The Pudai Eggmine",
        id = "FG_FindPudai",
        objectives = {
            {
                text = "Hrundi asked me to find the Pudai Egg Mine somewhere on or near the island of Sheogorad to the north. Once I find Pudai, I should bring Hrundi the Seven Eggs of Gold rumored to be there.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi thanked me for bringing him the Seven Eggs of Gold.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Hunger in the Sarano Tomb",
        id = "FG_HungerLoose",
        objectives = {
            {
                text = "Eydis Fire-Eye told me a Hunger is loose in the Sarano Tomb which is over the hills southeast of the Fort Moonmoth between the Ashlands and Lake Amaya. I am ordered to travel to the tomb and kill the Hunger.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye thanked me for slaying the Hunger and paid me 1000 gold.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Dro'Sakhar's Bounty",
        id = "FG_KhajiitBounty",
        objectives = {
            {
                text = "Lorbumol gro-Aglakh said he has a bounty for a Khajiit outlaw named Dro'Sakhar who's hiding somewhere in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Dro'Sakhar lives in St. Olms Canal South-Two, the middle door on the south side of the St. Olms Canton.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius believes that the bounty on Dro'Sakhar is a valid one, as the Khajiit is a known outlaw.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Lorbumol gro-Aglakh gave me the bounty on Dro'Sakhar.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Remove the Heads of the Thieves Guild",
        id = "FG_KillBosses",
        objectives = {
            {
                text = "Sjoring Hard-Heart told me to kill the Thieves Guild bosses. I must kill Habasi at the South Wall in Balmora, Aengoth at the Rat in the Pot n Ald'ruhn, and Helende at Dirty Muriel's in Sadrith Mora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I killed the three local Thieves Guild bosses.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Remove Sjoring's Supporters",
        id = "FG_KillCronies",
        objectives = {
            {
                text = "Percius Mercius asked me to kill one of Sjoring Hard-Heart's supporters, Eydis Fire-Eye, the guild steward in Balmora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius asked me to kill Sjoring Hard-Heart's main supporter, Lorbumol gro-Aglakh. He's at the Guild of Fighters in Vivec.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius thanked me for killing Sjoring Hard-Heart's supporters.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Kill Hard-Heart",
        id = "FG_KillHardHeart",
        objectives = {
            {
                text = "Percius Mercius said that in order to free the Fighters Guild from corruption, I must kill the guildmaster, Sjoring Hard-Heart.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius thanked me for killing Sjoring Hard-Heart. He promoted me to Master of the Fighters Guild.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Battle at Nchurdamz",
        id = "FG_Nchurdamz",
        objectives = {
            {
                text = "Hrundi asked me to meet a Larienna Macrina at the ruins of Nchurdamz, a Dwemer ruin far south of Sadrith Mora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I declined to help Larienna on her crusade. Perhaps I'll reconsider.",
                condition = { name = "Journal", stage = 11 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I agreed to help Larienna explore the ruins of Nchurdamz. She seeks a \"great beast\" deep within the ruins.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I fought by Larienna Macrina's side. It was a mighty battle.",
                condition = { name = "Journal", stage = 23 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The great Larienna met her demise by my own hand. Hrundi need only know she fell in battle.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Larienna fought boldly, but alas, she fell in battle. I should inform Hrundi.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Daedroth Hrelvesuu is slain. I should report back to Hrundi.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi rewarded me for assisting Larienna Macrina explore the ruins of Nchurdamz.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Hrundi was furious that Larienna was dead. I will have to be more careful to earn his trust.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Gra-Bol's Bounty",
        id = "FG_OrcBounty",
        objectives = {
            {
                text = "Eydis Fire-Eye told me she has a 250 gold bounty on the Orc Dura gra-Bol who lives in Balmora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye paid me 250 gold for the contract on Dura gra-Bol.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Exterminator",
        id = "FG_RatHunt",
        objectives = {
            {
                text = "Eydis Fire-Eye told me to talk to Drarayne Thelas about some rats that have infested her house. Her house is here in Balmora, on the east side of town, near the river.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Drarayne Thelas told me that she has one rat trapped in her bedroom and there are others in her storage area upstairs. She has given me the key to get in. I should find and kill all of the rats and return to her when I'm done.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Drarayne Thelas thanked me for getting rid of the rats and paid me 100 gold.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported to Eydis Fire-Eye that I had killed the rats plaguing Drarayne Thelas.",
                condition = { name = "Journal", stage = 105 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Eydis Fire-Eye realized that Drarayne Thelas was dead, and her rat problem was no longer an issue.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Dagoth Velos",
        id = "FG_Sanit",
        objectives = {
            {
                text = "Hrundi asked me to slay the Ash Ghoul Dagoth Velos in Sanit, which is northwest of Tel Vos, just before the Ashlands begin.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi thanked me for slaying Dagoth Velos.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Alleius' Bounty",
        id = "FG_SilenceMagistrate",
        objectives = {
            {
                text = "Lorbumol gro-Aglakh said he had a 1000 gold bounty on Rufinus Alleius at the Grand Council in Ebonheart.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Lorbumol gro-Aglakh paid me the bounty on Rufinus Alleius.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Vandacia's Bounty",
        id = "FG_SilenceTaxgirl",
        objectives = {
            {
                text = "Lorbumol gro-Aglakh said he had a bounty contract for Adraria Vandacia in Seyda Neen.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius doesn't believe there is a reason to kill Adraria Vandacia. If I decide not to, though, I should expect no further orders from Lorbumol.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Lorbumol gro-Aglakh paid me the bounty for Adraria Vandacia.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: The Code Book",
        id = "FG_Sottilde",
        objectives = {
            {
                text = "Eydis Fire-Eye asked me to get a code book from Sottilde at the South Wall in Balmora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius suggested that I try and get the code book secretly. Otherwise I would have to kill Sottilde for the book.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sottilde agreed to give me the code book.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye thanked me for returning the code book and paid me 50 gold.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Bandits in Suran",
        id = "FG_SuranBandits",
        objectives = {
            {
                text = "Percius Mercius asked me to speak with Serjo Avon Oran in the town of Suran. The town has been raided by bandits.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Serjo Avon Oran told me that the bandits in Saturan, northeast of Suran, just over the mountains. I must kill the leader of the bandits, Daldur Sarys. When this is done, I should return to Oran to report on my success.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Serjo Avon Oran thanked me for bringing the bandits to justice and he gave me the 1,000 gold he was offering for a bounty.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported to Percius Mercius that Avon Oran was dead. Therefore, there is no contract to be had.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Sondaale",
        id = "FG_Telasero",
        objectives = {
            {
                text = "Hrundi asked me to escort another scholar, Sondaale of Shimmerene, through the stronghold of Telasero. She will meet me there. Telasero is between Suran and the Silt Strider port near Molag Mar.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Sondaale of Shimmerene in Telasero. She asked me to guide her back to the entrance.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I agree to guide Sondaale of Shimmerene back to the entrance of Telasero.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sondaale of Shimmerene has made it safely to the entrance of Telasero.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sondaale has thanked me for escorting her out of the dungeon. She'll likely be more careful in the future.",
                condition = { name = "Journal", stage = 75 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi thanked me for helping Sondaale of Shimmerene.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Hrundi was furious that Sondaale of Shimmerene died while in my care. He says he has no more orders to give me.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: The Telvanni Agents",
        id = "FG_Telvanni_agents",
        objectives = {
            {
                text = "I'm to find and kill four Telvanni agents responsible for thefts and disappearances at the Caldera Mine. Their names are Alynu Aralen, Sathasa Nerothren, Fothyna Herothran, and Alveleg. They're hiding in a cave in the hills north of Caldera Mine, and they probably have a lookout posted outside the mine. When the four agents are dead, report back to Eydis Fire-Eye.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported killing the Telvanni agents, and Eydis Fire-Eye paid me 400 gold.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Tenim's Bounty",
        id = "FG_TenimBounty",
        objectives = {
            {
                text = "Hrundi mentioned that he had a contract for the outlaw Rels Tenim. If I find Rels Tenim who was last seen in Vos, and bring him to justice, there is a reward of 200 gold.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Rels Tenim left for an outlaw hideout to the north. I was told that the Ahemmusa might know where he is hiding.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Rels Tenim is in the outlaw hideout Shallit which is on a small island southwest of Ald Daedroth. To get there, I should travel northwest from the Ahemmusa Camp. If I come to an old Dwemer ruin, I have traveled too far.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi thanked me for bringing Rels Tenim to justice and gave me 200 gold.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: Silence Tongue-Toad",
        id = "FG_TongueToad",
        objectives = {
            {
                text = "Lorbumol gro-Aglakh told me to silence Tongue-Toad at the Rat in the Pot in Ald'ruhn.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius suggested that I convince Tongue-Toad to leave town.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Tongue-Toad to leave town.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Lorbumol gro-Aglakh that Tongue-Toad won't be causing our client any more trouble.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: The Necromancer of Vas",
        id = "FG_Vas",
        objectives = {
            {
                text = "Percius Mercius asked me to aid the Buoyant Armiger Ulyne Henim in her expedition to Vas which is on a remote island west of Dagon Fel.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I agreed to fight with Ulyne. We must find and kill the Necromancer Daris Adram.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Daris Adram is dead.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ulyne Henim thanked me for helping her kill this Necromancer.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ulyne Henim was very grateful for my assistance in dealing with Daris Adram the Necromancer.",
                condition = { name = "Journal", stage = 85 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius thanked me for helping Ulyne Henim rid Vas of the Necromancers.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Percius Mercius was not happy to hear of Ulyne Henim's death. I fear he thinks less of me now.",
                condition = { name = "Journal", stage = 105 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Fighters Guild: The Verethi Gang",
        id = "FG_VerethiGang",
        objectives = {
            {
                text = "Eydis Fire-Eye asked me to kill the smuggler Dovres Verethi, the head of the Verethi Gang. They are based in Mannammu just southeast of Pelagiad.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye paid me 1,000 gold for putting the Verethi Gang out of business.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
