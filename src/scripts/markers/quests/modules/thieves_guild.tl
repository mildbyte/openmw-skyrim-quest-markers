local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Thieves Guild: Retrieve the Scrap Metal",
        id = "TG_AldruhnDefenses",
        objectives = {
            {
                text = "Aengoth the Jeweler wants me to bring him four pieces of scrap metal so that Estoril can repair some Dwemer Centurion Spiders to guard the Thieves Guild.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Aengoth the Jeweler thanked me for bringing him four pieces of scrap metal. Now Estoril will repair the Dwemer Centurion Spiders.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Naughty Gandosa",
        id = "TG_BadGandosa",
        objectives = {
            {
                text = "Aengoth the Jeweler believes that Gandosa Arobar, the daughter of Miner Arobar, has a copy of Boethiah's Pillow Book. Aengoth says that a client wants some dirt on Miner Arobar.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Aengoth the Jeweler thanked me for bringing him a copy of Boethiah's Pillow Book.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Master of Security",
        id = "TG_BalmoraDefenses",
        objectives = {
            {
                text = "Sugar-Lips Habasi has a job for me that involves the South Wall and a master of security.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sugar-Lips Habasi told me that one of the masters of locks and traps has been living here in Balmora, but has not contacted the Thieves Guild. I should find this Altmer and convince him to help secure the South Wall.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that the only Altmer in town are Culumaire at the Lucky Lockup, Estirdalin at the Guild of Mages, Imare at the Hlaalu Council Manor, Nalcarya the Alchemist, and Hecerinde and Tyermaillin who both have residences in Balmora.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Hecerinde to help secure for the Thieves Guild in Balmora.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sugar-Lips Habasi thanked me for convincing Hecerinde to help secure the South Wall.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Sugar-Lips Habasi was very upset that Hecerendi was dead. Habasi has no further jobs for me.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: The Bitter Cup",
        id = "TG_BitterBribe",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to get the Bitter Cup, an artifact sacred to Clavicus Vile, and deliver it to Eydis Fire-Eye. The Bitter Cup was lost in the ruins of Ald Redaynia.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I sipped the potent nectar of the Bitter Cup. It bestowed its \"gift\" upon me, and then it promptly vanished.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Instead of delivering the Bitter Cup to Eydis Fire-Eye as Gentleman Jim Stacey had requested, I sipped its potent nectar. The Cup bestowed its \"gift\" upon me, and then it promptly vanished.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eydis Fire-Eye accepted the Bitter Cup and agreed to betray Sjoring Hard-Heart's orders to crush the Thieves Guild.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for delivering the Bitter Cup to Eydis Fire-Eye.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Gentleman Jim Stacey was displeased that I botched the bribery of Eydis Fire-Eye. But he said he might have done the same himself, given the circumstances.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Since Eydis Fire-Eye is dead, there is little we can do to bribe her.",
                condition = { name = "Journal", stage = 120 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Free New-Shoes Bragor",
        id = "TG_BrotherBragor",
        objectives = {
            {
                text = "Sugar-Lips Habasi told me that New-Shoes Bragor was caught by the guards in Pelagiad and is being held in Fort Pelagiad. Habasi heard that Mebestien Ence is secretly smuggling Dwemer materials and that Shadbak gra-Burbug, a guard in Fort Pelagiad, has been taking bribes to overlook the smuggling. I should steal a Dwemer artifact from Mebestien Ence, show it to Shadbak gra-Burbug, and demand that New-Shoes Bragor be released.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Shadbak gar-Burbug agreed to release New-Shoes Bragor when I showed her the Dwemer artifact.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "New-Shoes Bragor gave me his shoes.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sugar-Lips Habasi thanked me for getting New-Shoes Bragor released.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Sugar-Lips Habasi wasn't happy that the person who was to help us free our brother Bragor is dead. He will have to stay in his cell.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Find Brother Nads",
        id = "TG_BrotherThief",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to find out what happened to a fellow thief, Nads Tharen, who was going to deliver a key to us. Nads Tharen used to hang out at the Elven Nations Cornerclub. I must find out what happened to him and bring back the key he was supposed to deliver.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Nads Tharen spoke with Arvama Rathri the last time he was in the Elven Nations Cornerclub.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Nads Tharen lives in the St. Delyn Canalworks South-Two.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that Arvama Rathri lives in the St. Delyn Canalworks South-Two.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Arvama Rathri told me that she has never spoken with Nads Tharen.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for returning Nads Tharen's key.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Gentleman Jim Stacey thanked me for returning Nads Tharen's key and avenging his murderer, Arvama Rathri.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Potion Recipe",
        id = "TG_CookbookAlchemy",
        objectives = {
            {
                text = "Big Helende told me that a client, Tusamircil, wanted a good recipe for a Dispel potion. The best alchemist in Sadrith Mora is Anis Seloth, and Big Helende thinks I can find this recipe in Anis Seloth's shop.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered the potion recipe to Tusamircil.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Big Helende thanked me for bringing her a recipe for a Dispel potion.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Big Helende was upset that Tusamircil is dead. She says she will continue to give me jobs for now, though.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: The Darts of Judgement",
        id = "TG_DartsJudgement",
        objectives = {
            {
                text = "Aengoth the Jeweler told me that Eindel, a Bosmer archer in the Llethri Manor, has four Darts of Judgement. I can use them myself, or get a good price for them from the Guild.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Aengoth the Jeweler bought the Darts of Judgement from me.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I've decided to keep the Darts of Judgement for my own use. Aengoth has been pleased with my work for him.",
                condition = { name = "Journal", stage = 105 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Diamonds for Habasi",
        id = "TG_Diamonds",
        objectives = {
            {
                text = "Sugar-Lips Habasi asked me to bring her a diamond. She believes that Nalcarya of White Haven here in Balmora has diamonds, but any diamond will do.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered a diamond to Sugar-Lips Habasi.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Felen's Ebony Staff",
        id = "TG_EbonyStaff",
        objectives = {
            {
                text = "Big Helende told me that Felen Maryon in Bal Fell has an enchanted ebony staff she'd like stolen.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I've agreed to try and retrieve the ebony staff from Felen Maryon. I'm to look for him in the Telvanni Tower in Tel Branora.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned Felen's Ebony Staff to Big Helende. She gave me 250 gold as my share of the profits, as well as a Ring of Far Reaching as a reward for my efforts.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I've decided to keep the ebony staff I stole from Felen Maryon. Big Helende has no problem with this, and gave me a Ring of Far Reaching as a reward for the work I've done for her.",
                condition = { name = "Journal", stage = 105 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I've decided to pass on Big Helende's last job for me.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Speak With Percius",
        id = "TG_EnemyParley",
        objectives = {
            {
                text = "Gentleman Jim Stacey believes that Percius Mercius of the Ald'ruhn Guild of Fighters may help us. I should speak with him about the other members of the Fighters Guild.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius told me that Hrundi is a good man who could be persuaded to join our cause. Hrundi also has a secret Dunmer lover.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius told me that Eydis Fire-Eye is a secret worshipper of Clavicus Vile, but he does not know how this could be used against her.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Percius Mercius told me that the Master of the Fighters Guild, Sjoring Hard-Heart, cannot be bribed or threatened into supporting the Thieves Guild.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for the information I got from Percius Mercius.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Gentleman Jim Stacey wanted to speak to Percius Mercius about helping the Thieves Guild, but Mercius is dead. We'll have to find other ways.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: The Grandmaster's Retort",
        id = "TG_GrandmasterRetort",
        objectives = {
            {
                text = "Big Helende told me that a client wants a Grandmaster's Retort. Big Helende told me that Berwen the Trader in Tel Mora has a Grandmaster's Retort.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Big Helende thanked me for delivering a Grandmaster's Retort.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Hrundi's Lover",
        id = "TG_Hostage",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to speak with Hrundi in Sadrith Mora. I must convince him to stop persecuting the Thieves Guild. If I cannot convince him directly, I must find Hrundi's Dunmer lover and threaten to kill her if he does not back down.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found out that Falena Hlaren is Hrundi's lover.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Hrundi agreed to betray Sjoring Hard-Heart.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for convincing Hrundi to stop persecuting the Thieves Guild.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Stacey has learned that Hrundi is dead. He will be of little help to our cause.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Kill Hard-Heart",
        id = "TG_KillHardHeart",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to kill Sjoring Hard-Heart, the Master of the Fighters Guild in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for killing Sjoring Hard-Heart and gave me the Skeleton Key, a priceless artifact.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: The Brothers Ienith",
        id = "TG_KillIenith",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to kill the Camonna Tong's best enforcers, Navil and Ranes Ienith. The Ienith brothers can usually be found on the Dren Plantation just north of Pelagiad.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for killing the Camonna Tong's best enforcers.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Loot the Mages Guild",
        id = "TG_LootAldruhnMG",
        objectives = {
            {
                text = "Aengoth the Jeweler told me that he heard the Guild of Mages in Ald'ruhn is empty and that now would be a good time to fetch Anareren's Devil Tanto.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Aengoth thanked me for bringing him Anareren's Devil Tanto.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Nerano Manor Key",
        id = "TG_ManorKey",
        objectives = {
            {
                text = "Sugar-Lips Habasi asked me to bring her the key to the top floor of the Nerano Manor here in Balmora. Ondres Nerano certainly has a key, but it may be easier to get the key from one of his servants, such as Sovor Trandel at the Balmora Council Club.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sovor Trandel has suggested that, for a little \"compensation,\" he'd be willing to help me out.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Sovor Trandel to give me the key to Nerano Manor.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Ondres Nerano that Sovor Trandel gave me a key to his manor. Ondres Nerano gave me 10 gold as a reward.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sugar-Lips Habasi thanked me for bringing her the key to Nerano Manor.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Redoran Master Helm",
        id = "TG_MasterHelm",
        objectives = {
            {
                text = "Aengoth the Jeweler asked me to bring him a Redoran Master Helm. Many of the Redoran councilors have one, but Aengoth knows of one in Arobar Manor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Aengoth the Jeweler thanked me for bringing him a Redoran Master Helm.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: The Mission Report",
        id = "TG_MissionReport",
        objectives = {
            {
                text = "Crazy-Legs Arantamo told me that a client asked us to steal an Ordinator's mission report. The report is in the Hall of Justice.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Crazy-Legs Arantamo thanked me for bringing him the Ordinator's mission report.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Ra'Zhid's Dwemer Artifacts",
        id = "TG_OverduePayments",
        objectives = {
            {
                text = "Sugar-Lips Habasi told me that Ra'Zhid at Fatleg's Drop Off in Hla Oad promised to deliver some Dwemer artifacts to the Thieves Guild. Habasi asked me to bring her a Dwemer tube, Dwemer goblet, and Dwemer bowl.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ra'Zhid told me that he has not yet received the Dwemer artifacts.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sugar-Lips Habasi told me that Ra'Zhid is lying. Ra'Zhid does have the Dwemer artifacts somewhere in Hla Oad.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sugar-Lips Habasi thanked me for bringing her Ra'Zhid's dwemer artifacts.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Redoran Cookbook",
        id = "TG_RedoranCookbook",
        objectives = {
            {
                text = "Big Helende told me that Dinara Othrelas of Llethri Manor in Ald'ruhn and Fara of Fara's Hole in the Wall here in Sadrith Mora have an annual cooking contest. Fara wants an edge in this year's contest and has hired us to steal the book \"Redoran Cooking Secrets\" from Llethri Manor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I convinced Dinara Othrelas to give me her copy of \"Redoran Cooking Secrets.\"",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave the book \"Redoran Cooking Secrets\" to Fara.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Big Helende thanked me for delivering \"Redoran Cooking Secrets.\"",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Bal Molagmer, The Dwemer Goblet",
        id = "TG_SS_ChurchPolice",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to steal Berel Sala's large Dwemer goblet and donate it to Danso Indules in the name of the Bal Molagmer. Berel Sala is the head of the Ordinators. He and his Dwemer goblet are in the Justice Offices in Vivec. Danso Indules wanders about the city of Vivec healing the sick. I'm likely to find her in the Temple area, near the High Fane.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Danso Indules accepted the large Dwemer goblet, but seemed puzzled.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Danso Indules accepted the goblet, and seemed appreciative. She has heard stories of the return of the Bal Molagmer.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Danso Indules said that he would not accept anything stolen from Berel Sala.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for stealing Berel Sala's Dwemer goblet and delivering it to Danso Indules.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Bal Molagmer, Enamor",
        id = "TG_SS_Enamor",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to return the stolen sword \"Enamor\" to Salyn Sarethi's personal chest in the Buoyant Armiger barracks in Ghostgate along with a note.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for delivering the sword \"Enamor\" and the note to Salyn Sarethi's chest in Ghostgate.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Bal Molagmer, The Hlervu Locket",
        id = "TG_SS_Generosity1",
        objectives = {
            {
                text = "Gentleman Jim Stacey told me of the Bal Molagmer. How they once carried the light of justice throughout Morrowind, stealing from the unjust, and giving to the poor. He gave me a pair of Bal Molagmer gloves, which I should wear before speaking with him again.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey asked me to find the Hlervu Locket in Venim Manor in Ald'ruhn and return it to Braynas Hlervu in the name of the Bal Molagmer.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave the locket back to Bolvyn Venim.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Braynas Hlervu accepted the Hlervu Locket as a gift.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Braynas Hlervu accepted the Hlervu Locket in the name of the Bal Molagmer.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for returning the Hlervu Locket to Braynas Hlervu.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Gentleman Jim Stacey was upset to hear that Braynas Hlervu was dead, but he believes there is other work the Bal Molagmer must do.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Bal Molagmer, Land Deed",
        id = "TG_SS_Generosity2",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to find a forged deed of sale for Indrele Rathryon's land. The deed is in the Library of Vivec. I should deliver the deed to Indrele Rathryon herself in Seyda Neen in the name of the Bal Molagmer.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave the land deed back to Velanda Omani.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Indrele Rathryon accepted the false deed to her land.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Indrele Rathryon accepted the false deed to her land. She seemed to recognize the Bal Molagmer gloves I was wearing, but could not place from where.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for taking the land deed to Indrele Rathryon.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Bal Molagmer, Brallion's Ring",
        id = "TG_SS_GreedySlaver",
        objectives = {
            {
                text = "Gentleman Jim Stacey wishes for me to do something involving a slaver in the name of the Bal Molagmer.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey asked me to steal Brallion's ring and give it to Ilmeni Dren. Brallion is a wealthy slave-trader in the Great Market of Sadrith Mora, and Ilmeni Dren is a secret abolitionist in St. Delyn Canton in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I nicked Brallion's ring right off his hand. The Bal Molagmer would have been proud.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I bought Brallion's ring from him. It was a poor investment, but the obvious duty of the Bal Molagmer.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ilmeni Dren accepted Brallion's ring, but questioned my knowledge of the Bal Molagmer. Perhaps I should have worn the gloves.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ilmeni Dren accepted Brallion's ring, and seemed to have stories of the Bal Molagmer.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for stealing Brallion's ring and delivering it to Ilmeni Dren.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Stacey was unhappy to learn that Ilmeni Dren is dead, and does not want the Bal Molagmer to be associated with her death.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Stacey learned that Brallion was dead, and did not want to be associated with his death.",
                condition = { name = "Journal", stage = 120 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Bal Molagmer, Books for Vala",
        id = "TG_SS_Plutocrats",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to steal Odral Helvi's exquisite copies of \"A Brief History of the Empire\" and deliver them to Vala Catraso in the Ald'ruhn Guild of Mages. Odral Helvi is in the Governor's Hall in Caldera.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Vala Catraso accepted four volumes of \"A Brief History of the Empire.\"",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Vala Catraso accepted Odral Helvi's copies of \"A Brief History of the Empire.\"",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for stealing Odral Helvi's \"A Brief History of the Empire\" and delivering it to Vala Catraso in the Ald'ruhn Guild of Mages.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Bal Molagmer, Yngling's Ledger",
        id = "TG_SS_Yngling",
        objectives = {
            {
                text = "Gentleman Jim Stacey asked me to bring him Yngling Half-Troll's Ledger which is in Yngling Manor in Vivec. This ledger has proof that Yngling Half-Troll is corrupt.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave the ledger to Yngling Half-Troll, who promptly destroyed it.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Gentleman Jim Stacey thanked me for bringing him evidence of Yngling Half-Troll's corruption.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Stacey that the ledger was destroyed. He doesn't know that I gave it to Half-Troll myself.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Wizard For Hire",
        id = "TG_SadrithMoraDefenses",
        objectives = {
            {
                text = "Big Helende asked me to hire a wizard from the local Mages Guild to guard the Thieves Guild here in Sadrith Mora. The Mages Guild in Sadrith Mora is in Wolverine Hall.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Arielle Phiencel will send someone to guard the Thieves Guild if I bring her four samples of raw ebony.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought four samples of raw ebony to Arielle Phiencel, and she agreed to send someone to guard the Thieves Guild.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Big Helende thanked me for getting a guard for the Thieves Guild.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Since Arielle Phiencel is dead, the job Big Helende had for me is over.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: The Vintage Brandy",
        id = "TG_VintageBrandy",
        objectives = {
            {
                text = "Sugar-Lips tells me that Ralen Hlaalo is dead, but has left behind some vintage brandy.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sugar-Lips Habasi told me that Ralen Hlaalo had a bottle of vintage brandy. Since Ralen Hlaalo is dead, Sugar-Lips Habasi asked me to bring her the vintage brandy.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I brought a bottle of vintage brandy to Sugar-Lips Habasi.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Thieves Guild: Withershins",
        id = "TG_Withershins",
        objectives = {
            {
                text = "Aengoth the Jeweler asked me to bring him a copy of the book \"Withershins.\" He thinks Miles Gloriosus in the Maar Gan Tradehouse has a copy.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Aengoth the Jeweler thanked me for bringing him a copy of \"Withershins.\"",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Bevene Releth and Ienas Sarandus",
        id = "Town_Ald_Bevene",
        objectives = {
            {
                text = "Bevene Releth the clothier made a firejade amulet and delivered it to a customer named Ienas Sarandas, but Sarandas has not made the promised final payment. Bevene Releth has offered to pay me 25 gold if I will either retrieve the unpaid for amulet, or will collect the final 50 gold from Sarandas.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the firejade amulet to Bevene Releth, and she paid me 25 gold. She seemed very pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the firejade amulet to Bevene Releth, and she paid me 25 gold.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the firejade amulet to Bevene Releth, and she paid me 25 gold. She had heard that Ienas Sarandas had been found dead, and she suspected me, though she had no proof. She did not seem at all pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Bivale Teneran and Ienas Sarandus",
        id = "Town_Ald_Bivale",
        objectives = {
            {
                text = "The clothier Bivale Teneran made a brocade shirt and silk pants for Ienas Sarandus, but Ienas Sarandus has not made the final payment on time. Bivale Teneran has offered to pay me 50 gold if I will find Ienas Sarandus, get the 360 drakes he owes Bivale Teneran, or get the shirt and pants and bring them back to Bivale Teneran.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the brocade shirt and silk pants to Bivale Teneran, and she paid me 50 gold. She seemed very pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the brocade shirt and silk pants to Bivale Teneran, and she paid me 50 gold.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the brocade shirt and silk pants to Bivale Teneran, and she paid me 50 gold. She had heard that Ienas Sarandas had been found dead, and she suspected me, though she had no proof. She did not seem at all pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Daynes Redothril and Ienas Sarandus",
        id = "Town_Ald_Daynes",
        objectives = {
            {
                text = "Daynes Redothril the pawnbroker sold two fine matched rings, one with an raw ebony stone, the other with a raw glass stone, to a customer named Ienas Sarandas. But Sarandas has failed to pay the remaining 150 gold owed. If I can find Sarandas, and either get the ebony ring and the glass ring and return them to Redothril, or get the 150 gold Sarandas owes Redothril, the pawnbroker will pay me 50 gold.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the ebony ring and the glass ring to Daynes Redothril, and he paid me 50 gold. He seemed very pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the ebony ring and the glass ring to Daynes Redothril, and he paid me 50 gold.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the ebony ring and the glass ring to Daynes Redothril, and he paid me 50 gold. He had heard that Ienas Sarandas had been found dead, and he suspected me, though he had no proof. He did not seem at all pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Llether Vari and Ienas Sarandus",
        id = "Town_Ald_Llethri",
        objectives = {
            {
                text = "The enchanter Llether Vari offered to pay me 50 gold if I will find a customer named Ienas Sarandus, and either collect a payment of 120 gold, or retrieve designer shoes from Ienas Sarandus and return them to Llether Vari.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the designer shoes to Llether Vari, and he paid me 50 gold. He seemed very pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the designer shoes to Llether Vari, and he paid me 50 gold.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the designer shoes to Llether Vari, and he paid me 50 gold. He had heard that Ienas Sarandas had been found dead, and he suspected me, though he had no proof. He did not seem at all pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Tiras Sadus and Ienas Sarandus",
        id = "Town_Ald_Tiras",
        objectives = {
            {
                text = "The trader Tiras Sadus sold an Ashlander hand-crafted racer suede belt to a customer, but the customer has failed to make his final payment on time. If I can find Ienas Sarandas and retrieve the belt for the trader, or if I can get the 50 septims owed to the trader, Tiras Sadus will pay me 25 gold.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the racer suede belt to Tiras Sadus, and he paid me 25 drakes. He seemed very pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the racer suede belt to Tiras Sadus, and he paid me 25 drakes.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I returned the racer suede belt to Tiras Sadus, and he paid me 25 drakes. He had heard that Ienas Sarandas had been found dead, and he suspected me, though he had no proof. He did not seem at all pleased with the way I had handled the affair.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Gateway Ghost",
        id = "town_Sadrith",
        objectives = {
            {
                text = "I told Angaredhel that the hauntings would stop, because I determined that Uleni Heleran was the source of the hauntings, and I 'took care of her'. He didn't want to know the details. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Thief Ring.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, because I determined that Uleni Heleran was the source of the hauntings, and I 'took care of her'. He didn't want to know the details. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Thief Ring.",
                condition = { name = "Journal", stage = 105 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, because I determined that Uleni Heleran was the source of the hauntings, and I 'took care of her'. He didn't want to know the details. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Thief Ring.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, and gave him the note from Uleni Heleran. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Thief Ring.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, and gave him the note from Uleni Heleran. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Mage Ring.",
                condition = { name = "Journal", stage = 85 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, and gave him the note from Uleni Heleran. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Fighter Ring.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, and revealed Uleni's name, but I didn't give him her message. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Thief Ring.",
                condition = { name = "Journal", stage = 75 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, and revealed Uleni's name, but I didn't give him her message. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Mage Ring.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, and revealed Uleni's name, but I didn't give him her message. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Fighter Ring.",
                condition = { name = "Journal", stage = 65 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, but I didn't give him the note from Uleni Heleran, or reveal Uleni's name. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Thief Ring.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, but I didn't give him the note from Uleni Heleran, or reveal Uleni's name. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Mage Ring.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Angaredhel that the hauntings would stop, but I didn't give him the note from Uleni Heleran, or reveal Uleni's name. As a reward, he gave me my choice of three enchanted rings -- a Fighter Ring, A Mage Ring, and a Thief Ring. I chose a Fighter Ring.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I was able to persuade Uleni Heleran that, though the Gateway haunting joke was charming enough, the humor was beginning to lose its luster, and that someone might get hurt. She agreed to stop the hauntings, but she gave me a little note and asked me to give it to Angaredhel.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke to Uleni Heleran about the Gateway hauntings. She wouldn't respond directly to my questions, suggesting that the matter was none of my business.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Someone at Wolverine Hall said that Uleni Heleran has a mischievous personality, and that she has some sort of bad feeling for Angaredhel and the Gateway Inn. The person also noticed that Uleni Heleran had been magically transporting into Wolverine Hall quite a bit lately, apparently using either a Mark and Recall spell sequence or a Divine Intervention.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "At Wolverine Hall they say that the only local Conjuration expert is Uleni Heleran, a Mages Guild instructor. She teaches Conjuration.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with Arara Uvulas, Master Neloth's Mouth, who came to inspect the South Turret bed chamber when the Gateway haunting manifests. She says she can find no evidence of a restless spirit or ancestral influences. Banishing the ghost is easy, but she doesn't know why it reappears, or how to stop it. She suspects that a Conjuration expert is involved -- someone skilled at summoning ghosts.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I killed the haunting, and reported to Angaredhel, but he says no matter how often it is killed, it reappears. So killing the haunt is not the solution. Angaredhel told me to talk to Mage-Mistress Arara Uvulas, Master Neloth's Mouth. She is the expert that Angaredhel consulted. Maybe she can tell me where to start.",
                condition = { name = "Journal", stage = 8 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Angaredhel says the haunting is in the South Turret bed chamber. It's upstairs, then south and up stairs to the room. He says it isn't hard to drive it away, but it always comes back. Mage-Mistress Arara Uvulas, Master Neloth's Mouth, inspected the room, but couldn't say why it reappears or how to stop it. She thinks it may be some mischievous sorcerer. I should go talk to her; she's always at the Telvanni Council House.",
                condition = { name = "Journal", stage = 6 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Angaredhel at the Gateway Inn says a ghost keeps reappearing in the South Turret bed chamber. He can't rent the room, and all the guests are in an uproar. Mage-Mistress Arara Uvulas, Master Neloth's Mouth, came to take a look, but said she couldn't see how to stop the hauntings. Angaredhel says the person who gets rid of the ghost permanently will receive a very generous gift from a local enchanter.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A ghost is haunting the South Turret bed chamber at the Gateway Inn. When someone drives it out, it comes right back. It's ruining business at the Gateway, and Angaredhel the Prefect is unhappy.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Trade Mission to the Zainab",
        id = "town_Tel_Vos",
        objectives = {
            {
                text = "I reported to Turedus Talanian that Cure Common Disease and Cure Blight Disease potions would be valuable trade goods for the Zainab Ashlanders. He paid me 100 drakes for my service. He said he'd tell Master Aryon how I'd handled the matter, and thought that he would be pleased.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The Zainab Ashlander wise woman Sonummu Zabamat said that the tribe needs more Cure Common Disease and Cure Blight Disease potions. The tribe's men travel long distances, hunting and herding, and when they catch diseases, they can't return to camp to be cured by the wise woman, but if they carry potions, the can cure themselves. Now I can report back to Turedus Talanian, and tell him that Cure Common Disease and Cure Blight Disease potions would be valuable trade goods.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I asked an Ashlander what trade goods the Zainab need, she mentioned one thing. Though the tribe's wise women were good healers, they could not make the bottled magics that cure common disease and blight disease, so the trader and all the Zainab had few of these things. Now I can report back to Turedus Talanian, and tell him that Cure Common Disease and Cure Blight Disease potions would be valuable trade goods.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I asked an Ashlander what trade goods the Zainab need, he said that the Zainab do not need the big buildings, furniture, fancy clothes and weapons of the settled peoples.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Zainab Ashlander trader Ashur-Dan said he could not think of any trade goods that the Zainab need. But he suggested I speak with the men and women of the tribe.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Zainab Ashlander trader Ashur-Dan said he could not think of any trade goods that the Zainab need.",
                condition = { name = "Journal", stage = 13 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Master Aryon is trying to establish trade links with the Zainab. Turedus Talanian, chief of Master Aryon's mercenary guard, has hired me to visit the Zainab camp and find out what goods the tribe would be interested in trading for. When I've determined what goods the tribe would be interested in, I'll report back to Turedus Talanian for my payment of 100 drakes.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Someone told me that the Zainab and Ashlanders in general are very proud, and they do not like to admit to things that shame them. Perhaps this is part of the reason why they have a reputation as lying and untrustworthy. I was told that the Ashlander men in particular are very proud.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "In Tel Vos they say their new mage-lord Master Aryon has done a lot for Tel Vos, and they are very happy with him. But he is still having trouble with the nearby Zainab Ashlander tribe, and Aryon's captain, Turedus Talanian, is looking for someone who can help forge a bond with the Zainab.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Trade Mission to the Zainab",
        id = "town_Tel_Vos_ashur",
        objectives = {
            {
                text = "The Zainab Ashlander trader Ashur-Dan said he could not think of any trade goods that the Zainab need.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Zainab Ashlander trader Ashur-Dan said he could not think of any trade goods that the Zainab need. But he suggested I speak with the men and women of the tribe.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Trade Mission to the Zainab",
        id = "town_Tel_Vos_he",
        objectives = {
            {
                text = "When I asked an Ashlander what trade goods the Zainab need, he said that the Zainab do not need the big buildings, furniture, fancy clothes and weapons of the settled peoples.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Trade Mission to the Zainab",
        id = "town_Tel_Vos_she",
        objectives = {
            {
                text = "When I asked an Ashlander what trade goods the Zainab need, she mentioned one thing. Though the tribe's wise women were good healers, they could not make the bottled magics that cure common disease and blight disease, so the trader and all the Zainab were often in short supply of these things. Now I can report back to Turedus Talanian, and tell him that Cure Common Disease and Cure Blight Disease potions would be valuable trade goods.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Trade Mission to the Zainab",
        id = "town_Tel_Vos_wise",
        objectives = {
            {
                text = "The Zainab Ashlander wise woman Sonummu Zabamat said that the tribe needs more Cure Common Disease and Cure Blight Disease potions. The tribe's men travel long distances, hunting and herding, and when they catch diseases, they can't return to camp to be cured by the wise woman, but if they carry potions, the can cure themselves. Now I can report back to Turedus Talanian, and tell him that Cure Common Disease and Cure Blight Disease potions would be valuable trade goods.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Mysterious Killings in Vivec",
        id = "town_Vivec",
        objectives = {
            {
                text = "I reported to Elam Andas, and he said the Dunmer woman I killed in the Foreign Quarter Underworks matched the description of the killer he wanted executed. As a reward, he offered me a choice between an Indoril helm and cuirass or a Belt of the Armor of God. I accepted the Belt of the Armor of God.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported to Elam Andas, and he said the Dunmer woman I killed in the Foreign Quarter Underworks matched the description of the killer he wanted executed. As a reward, he offered me a choice between an Indoril helm and cuirass or a Belt of the Armor of God. I accepted the Indoril helm and cuirass. I am not supposed to wear it in Vivec City, to avoid being mistaken for an Ordinator.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "In the Foreign Quarter I was told that someone has seen a Dunmer woman down in the Underworks. That's odd, since Dunmer are not seen often in the Foreign Quarter, and there's nothing in the Underworks but rats and sewers.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "There are no witnesses to any of the killings. But in Hlaalu compound, at about the same time as one of the killings, an outlander reported being threatened by Dunmer woman armed with a dagger. It was dark, but the outlander was sure the Dunmer woman with a dagger was dressed in a skirt and netch leather armor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Two outlander victims were found in Foreign Quarters corridors, one on Foreign Quarter Canalside, one in a Hlaalu Compound corridor, and one in the water near the Arena. All were armed. Only one, a mage, appears to have put up a fight. All had their throats slit with a dagger. The two Ordinators with their throats slit were found near the victim at Hlaalu Compound. It may be someone very stealthy or a very powerful sorcerer.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Elam Andas, chief of Vivec's Order of the Watch, has asked me to find and execute a killer who has slit the throats of five outlanders and two Ordinators.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Two Ordinators and five outlanders have been killed in Vivec, their throats slit. The rumor is that the Office of the Watch at the Hall of Justice is very concerned, and is looking for special help.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Two Ordinators and five outlanders have been killed in Vivec, their throats slit. The rumor is that the Office of the Watch at the Hall of Justice is looking for outside help.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Larrius Varro Tells a Little Story",
        id = "town_balmora",
        objectives = {
            {
                text = "Larrius Varro says that everything has been taken care of. I assume he is referring to the deaths of Vadusa Sathryon, Marasa Aren, Medrale Thirith, Sovor Trandrel, and Thanelen Velas of the Camonna Tong. He then gave me a ring he called the 'nice present from the Emperor.' He also gave me a book in recognition of my exceptional discretion.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Larrius Varro says that everything has been taken care of. I assume he is referring to the deaths of Vadusa Sathryon, Marasa Aren, Medrale Thirith, Sovor Trandrel, and Thanelen Velas of the Camonna Tong. He then gave me a ring he called the 'nice present from the Emperor.'",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "A Thieves Guild informant tells me that if the bad people I am looking for are Camonna Tong, and they're in Balmora, I'll find them at the Council Club cornerclub, the local Camonna Tong hangout. Larrius Varro mentioned a scout, a pawnbroker, a savant, a thief, and a smith. The scout would be Vadusa Sathryon. Marasa Aren would be the pawnbroker. The thief would be Madrale Thirith. Sovor Trandrel is the savant. Thanelen Velas would be the smith.",
                condition = { name = "Journal", stage = 29 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that the Balmora hangout for the Camonna Tong is the cornerclub called the Council Club.",
                condition = { name = "Journal", stage = 27 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Larrius Varro, says he has a 'nice present from the Emperor.' He says it is supposed to be 'a surprise.' He says he doesn't know where it is, but that I should check back later to see if he has found it. After I have done some things. It sounds like he has some sort of payment for me if I make 'bad people' 'go away.'",
                condition = { name = "Journal", stage = 3 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The 'bad people' that Larrius Varro wants to 'go away' are five members of the Camonna Tong. Varro doesn't know their names, but he knows they are a scout, a pawnbroker, a savant, a thief, and a smith, and that they are in Balmora. It seems that Varro wants me to find the names of these 'bad people' and make them 'go away.' In a bloodbath.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Legion Champion, Larrius Varro, at Fort Moonmoth told me a little story. He didn't come right out and say it, but he suggests that some 'bad people' are bribing a 'bad magistrate' to fix sentences and crimes for criminals. The General also suggests making these 'bad people' go away might require a 'bloodbath.' I think he wants ME to provide the bloodbath.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "There's a rumor that the Legion Champion, Larrius Varro, over at Fort Moonmoth wants to talk to me about an unspecified subject.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I was told that the Legion Champion, Larrius Varro, over at Fort Moonmoth, has sworn an oath to stop corruption, but the syndicates have got their people protected. To fulfill his oath, it seems like Varro may have to work outside the system.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I hear that the Balmora magistrate, Nolus Atrius, is on the take. But he has important friends who can protect him. The Legion Champion, Larrius Varro, over at Fort Moonmoth, has sworn an oath to stop corruption. But it's not clear how he can deal with the situation.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Gateway Ghost",
        id = "town_sadrith_expert",
        objectives = {
            {
                text = "I'm told that Master Neloth of Tel Naga is a powerful wizard, though Conjuration is not his specialty. Uleni Heleran at the Mages Guild, however, teaches Conjuration.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
}


return { questLine = questLine }
