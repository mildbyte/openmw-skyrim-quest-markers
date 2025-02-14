local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Imperial Cult: Alms from the Skyrim Mission",
        id = "IC_8_Nord_alms",
        objectives = {
            {
                text = "Iulus Truptor told me to ask the Skyrim Mission in Ebonheart for alms for the poor. The fund raising goal for the Skyrim mission is 100 gold. When I have reached the goal, I should return and deliver the gold to Iulus Truptor.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Iulus Truptor I was not be able to raise enough gold from the Skyrim Mission to reach the fund raising goal of 100 gold. He was disappointed, and told me to decide whether my talents and temperaments are suited for fund raising. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reached the Skyrim mission fund raising goal, and delivered the 100 gold to Iulus Truptor. He seemed pleased. He gave me a little blessing, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reached the Skyrim mission fund raising goal, and DOUBLED it! I delivered the 200 gold to Iulus Truptor. He seemed very pleased. He gave me a set of shoes blessed by Zenithar, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Skyrim Mission",
        id = "IC_8_Nord_alms_not",
        objectives = {
            {
                text = "I told Iulus Truptor I was not be able to raise enough gold from the Skyrim Mission to reach the fund raising goal of 100 gold. He was disappointed, and told me to decide whether my talents and temperaments are suited for fund raising. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Marshmerrow",
        id = "IC1_marshmerrow",
        objectives = {
            {
                text = "Synnolian Tunifus needs five units of marshmerrow for restore health potions. Balur Salvu, a farmer near Pelagiad, grows marshmerrow. If I bring him this Quality Fortify Strength potion as a gift, he'll tell me where to pick the marshmerrow. His farmhouse is south of Pelagiad, north of the road, west of the first bridge south of Pelagiad. When I have the marshmerrow, deliver them to Synnolian Tunifus.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of marshmerrow he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I gave Balur Salvu the Quality Fortify Strength potion as Synnolian Tunifus requested.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Balur Salvu gave me some valuable insights into the special properties of local plants. I'm sure that knowledge will come in handy in preparing better alchemical potions.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered five units of marshmerrow to Synnolian Tunifus. He gave me a restore health potion and a mortar and pestle as a reward.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Marshmerrow",
        id = "IC1_marshmerrow_not",
        objectives = {
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of marshmerrow he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_Hoki",
        objectives = {
            {
                text = "Hoki gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_Lirielle",
        objectives = {
            {
                text = "Lirielle Stoine gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_Tongue",
        objectives = {
            {
                text = "Tongue-Toad gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_aengoth",
        objectives = {
            {
                text = "Aengoth the Jeweler gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_baradras",
        objectives = {
            {
                text = "Baradras gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_buckmoth_alms",
        objectives = {
            {
                text = "I reached the fund raising goal for Ald'ruhn, and DOUBLED it! I delivered the 200 gold for the Buckmoth Fund to Iulus Truptor. He seemed very pleased. He gave me a copy of 'The Buying Game', and told me to study it, and to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reached the fund raising goal for Ald'ruhn, and delivered the 100 gold for the Buckmoth Fund to Iulus Truptor. He seemed pleased. He gave me a little blessing, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told Iulus Truptor I was not be able to raise enough gold for the Buckmoth Fund to reach the fund raising goal of 100 gold. He was disappointed, and told me to decide whether my talents and temperaments are suited for fund raising. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Iulus Truptor told me to solicit alms for the poor in Ald'ruhn. The goal for the Buckmoth Fund is 100 gold. When I have reached the goal, I should return and deliver the gold to Iulus Truptor.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_buckmoth_not",
        objectives = {
            {
                text = "I told Iulus Truptor I was not be able to raise enough gold for the Buckmoth Fund to reach the fund raising goal of 100 gold. He was disappointed, and told me to decide whether my talents and temperaments are suited for fund raising. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_cienne",
        objectives = {
            {
                text = "Cienne Sintieve gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_codus",
        objectives = {
            {
                text = "Codus Callonus gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_dular",
        objectives = {
            {
                text = "Dular gro-Buzga gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_edwinna",
        objectives = {
            {
                text = "Edwinna Elbert gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_erranil",
        objectives = {
            {
                text = "Erranil gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_estoril",
        objectives = {
            {
                text = "Estoril gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_galthragoth",
        objectives = {
            {
                text = "Galthragoth gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_malpenix",
        objectives = {
            {
                text = "Malpenix Blonia gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_manis",
        objectives = {
            {
                text = "Manis Virmaulese gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_merthierry",
        objectives = {
            {
                text = "Merthierry gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_persius",
        objectives = {
            {
                text = "Percius Mercius gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_tauryon",
        objectives = {
            {
                text = "Tauryon gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Buckmoth Alms",
        id = "IC10_yak",
        objectives = {
            {
                text = "Yak gro-Skandar gave me a donation for the Buckmoth Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Shirt and Vest for Harvest's End",
        id = "IC11_shirt",
        objectives = {
            {
                text = "For our coming Harvest's End pageant, Iulus Truptor says we need a red shirt with a black vest. He asked me to ask clothiers if they would donate such a shirt and vest to the cult. He says the shirt and vest are what they call a 'common shirt.' When I have the red shirt with a black vest, I should return and deliver them to Iulus Truptor.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Iulus Truptor I was not be able to obtain a red shirt with a black vest for the Harvest's End pageant. He was disappointed, and told me to decide whether my talents and temperaments are suited for soliciting donations. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Caldera clothier Falanaamo donated a red shirt and black vest to the Imperial cult. He also gave me a matching outfit of shirt and trousers.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered a red shirt with a black vest to Iulus Truptor for the Harvest's End pageant. He was quite pleased. He gave me a little blessing, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Shirt and Vest for Harvest's End",
        id = "IC11_shirt_not",
        objectives = {
            {
                text = "I told Iulus Truptor I was not be able to obtain a red shirt with a black vest for the Harvest's End pageant. He was disappointed, and told me to decide whether my talents and temperaments are suited for soliciting donations. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Brandy for the Fundraising Dinner",
        id = "IC12_Bacola",
        objectives = {
            {
                text = "Bacola Closcius gave me a bottle of Cyrodilic brandy for the fundraising dinner at Fort Moonmoth. He also hinted that Banor Seran at the Council Club just took delivery of some Cyrodilic brandy, and that he's probably got it stored in a closet in the hall  just right of the bar. He says the Council Club is just a front for Camonna Tong gangsters, suggesting it wouldn't REALLY be a crime to steal the brandy from them.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Brandy for the Fundraising Dinner",
        id = "IC12_Banor",
        objectives = {
            {
                text = "Banor Seran at the Council Club gave me a bottle of Cyrodilic brandy for the fundraising dinner at Fort Moonmoth. I think he gave it to me just to make me go away.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Brandy for the Fundraising Dinner",
        id = "IC12_Benunius",
        objectives = {
            {
                text = "Benunius Agrudilius refused to give me Cyrodilic brandy, and gave me a bottle of greef instead.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "After I pressed him, Benunius Agrudilius yielded and gave me a bottle of Cyrodilic brandy for the fundraising dinner at Fort Moonmoth.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Brandy for the Fundraising Dinner",
        id = "IC12_Dulnea",
        objectives = {
            {
                text = "After I pointed out the value of gaining the good will of the Imperial cult in a town where Imperial influence is so strong, Dulnea Ralaal gracefully donated a bottle of Cyrodilic brandy for the fundraising dinner at Fort Moonmoth.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Brandy for the Fundraising Dinner",
        id = "IC12_dinner",
        objectives = {
            {
                text = "Iulus Truptor says we need 5 bottles of Cyrodilic brandy for a fundraising dinner. I'm to make the rounds of the tradehouses and cornerclubs in Balmora and ask if the publicans will donate the necessary brandy. When I have the brandy, I'm to deliver it to Iulus Truptor.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Iulus Truptor I couldn't get five bottle of Cyrodilic brandy for the fundraising dinner at Fort Moonmoth. He was disappointed, and told me to decide whether my talents and temperaments are suited for soliciting donations. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered five bottles of Cyrodilic brandy to Iulus Truptor at Fort Moonmoth. He was very pleased. He gave me tokens of Zenithar's special blessing, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Brandy for the Fundraising Dinner",
        id = "IC12_dinner_not",
        objectives = {
            {
                text = "I told Iulus Truptor I couldn't get five bottle of Cyrodilic brandy for the fundraising dinner at Fort Moonmoth. He was disappointed, and told me to decide whether my talents and temperaments are suited for soliciting donations. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 0 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Donation from Cunius Pelelius",
        id = "IC13_fight",
        objectives = {
            {
                text = "When I demanded that Cunius Pelelius deliver the money he had promised, he took offense, and attacked me. Now there is no chance that Cunius Pelelius will give me 500 gold for the Widows and Orphans Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Donation from Cunius Pelelius",
        id = "IC13_rich",
        objectives = {
            {
                text = "Iulus Truptor has sent me to the Governor's Hall in Caldera to persuade Cunius Pelelius of the Caldera Mining Company to donate 500 gold to the Imperial cult's Widows and Orphans Fund. When I've obtained the donation, I'm to deliver it to Iulus Truptor.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I asked Cunius Pelelius to donate 500 gold to the Imperial cult's Widows and Orphans Fund. He said he was very busy at the moment, but he would be happy to discuss the donation at a later date.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I spoke to Cunius Pelelius about his donation, I threatened to to reveal his skimming from the ebony mines. He called me a fool, and dismissed me without responding to my threat.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I confronted Cunius Pelelius with the slave's testimony about his sneaking into the Caldera Mine and removing raw ebony, Cunius Pelelius decided to give me three pieces of raw ebony. If I sell these pieces of raw ebony, I should be able to get 500 gold and more to deliver to Iulus Truptor for the the Widows and Orphans Fund.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I confronted Cunius Pelelius with the Secret Caldera Ledger and its evidence of misappropriation of ebony from the Caldera mines, Cunius Pelelius decided to give me three pieces of raw ebony. If I sell these pieces of raw ebony, I should be able to get 500 gold and more to deliver to Iulus Truptor for the the Widows and Orphans Fund.",
                condition = { name = "Journal", stage = 42 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Iulus Truptor I couldn't get Cunius Pelelius to donate 500 gold to the Imperial cult's Widows and Orphans Fund. Iulus was disappointed, and told me to decide whether my talents and temperaments are suited for soliciting donations. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 45 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I delivered 500 gold to Iulus Truptor for the Widows and Orphans Fund. He was very pleased. He gave me an interesting assortment of scrolls he had received from an anonymous donor, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Donation from Cunius Pelelius",
        id = "IC13_rich_not",
        objectives = {
            {
                text = "I told Iulus Truptor I couldn't get Cunius Pelelius to donate 500 gold to the Imperial cult's Widows and Orphans Fund. Iulus was disappointed, and told me to decide whether my talents and temperaments are suited for soliciting donations. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Donation from Cunius Pelelius",
        id = "IC13_rumor",
        objectives = {
            {
                text = "Olumba gro-Boglar, a member of the Imperial cult, told me why Cunius Pelelius is slow to redeem his pledged donation. Olumba says Cunius Pelelius has gotten into money trouble, and that he's trying to handle his trouble by skimming from the Caldera mine and smuggling raw ebony. I might be able to pressure Cunius Pelelius if I had proof of his misdeeds. Olumba says the slaves in the mine would know, but they'll be afraid to talk. Perhaps I can persuade them....",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Donation from Cunius Pelelius",
        id = "IC13_slave",
        objectives = {
            {
                text = "I spoke to a slave in the Caldera Mines, and he said the 'boss man' sneaks in at night, takes ebony, puts it in a bag, then takes it away. Perhaps this is not solid enough evidence to take to the guards. But perhaps, if confronted with this testimony, Cunius Pelelius may reconsider his unwillingness to donate 500 gold to the Widows and Orphans Fund.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Delay",
        objectives = {
            {
                text = "I found Mossanon in Sadrith Mora and confronted him about the embezzled funds. He admitted his crime, and offered to return 2500 gold -- he had spent the rest -- and pay back the rest as soon as he could, if I'd promise to keep his whereabouts secret from Canctunian Ponius. I took no immediate action, giving myself time to consider his offer.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Demand",
        objectives = {
            {
                text = "I found Mossanon in Sadrith Mora and confronted him about the embezzled funds. He admitted his crime, and offered to return 2500 gold -- he had spent the rest -- and pay back the rest as soon as he could, if I'd promise to keep his whereabouts secret from Canctunian Ponius. I refused to keep his secret, and he refused to return the gold.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Mossanon in Sadrith Mora and confronted him about the embezzled funds. He admitted his crime, and offered to return 2500 gold -- he had spent the rest -- and pay back the rest as soon as he could, if I'd promise to keep his whereabouts secret from Canctunian Ponius. I demanded the gold, and refused to keep his secret. I made it clear he was in no position to dictate terms, and he yielded the 2500 gold to me without a fight.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Flacassia",
        objectives = {
            {
                text = "The Guildguide for the Vivec Mages Guild, Flacassia Fauseius, remembered a High Elf named Mossanon who went back and forth from Sadrith Mora with a Telvanni woman.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Mossanon",
        objectives = {
            {
                text = "Someone said a High Elf has been seen in the company of a local woman, Volmyni Dral. She has a pod over near Wolverine Hall.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_NotTell",
        objectives = {
            {
                text = "I told Canctunian Ponius that I found Mossanon, but I did not say where.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Okan",
        objectives = {
            {
                text = "An East Empire Company savant named Okan-Shei said that Mossanon had an attractive Telvanni girlfriend, but that he kept her a secret.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Ponius",
        objectives = {
            {
                text = "Iulus Truptor asked me to persuade Canctunian Ponius of the East Empire Company to deliver the 1000 gold he has pledged to sponsor a mission to the Ashlanders. I'll find him at the East Empire Company Hall in Ebonheart. When I have the generous pledge from Canctunian Ponius, I'm to deliver it to Iulus Truptor.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Canctunian Ponius cannot redeem his 1000-drake pledge because an East Empire Company clerk has embezzled funds, and he is covering the losses out of his own fortune.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Since Canctunian Ponius cannot redeem his 1000-drake pledge because an East Empire Company clerk has embezzled funds, I offered to track down the clerk and recover the gold. If I can track this Mossanon down and recover the missing 3000 gold, Canctunian Ponius will immediately redeem his 1000-drake pledge to the Imperial cult.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Canctunian Ponius said Mossanon embezzled funds in the amount of 3000 gold in gold.",
                condition = { name = "Journal", stage = 18 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Canctunian Ponius said he had noticed a change in Mossanon's behavior -- a marked rise in his absences from the office.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Canctunian Ponius that I had failed to find Mossanon and the missing gold. Now Canctunian Ponius says he cannot redeem his 1000-drake pledge to the Imperial cult.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Canctunian Ponius 2500 gold and told him it was all I could recover from Mossanon. He accepted the gold, and said it would enable him to redeem his 1000-drake pledge to the Imperial cult.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Canctunian Ponius 2000 gold and told him it was all I could recover from Mossanon. He accepted the gold, and said it would enable him to redeem his 1000-drake pledge to the Imperial cult.",
                condition = { name = "Journal", stage = 35 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Canctunian Ponius 1000 gold and told him it was all I could recover from Mossanon. He accepted the gold, and said it would enable him to redeem his 1000-drake pledge to the Imperial cult.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Canctunian Ponius thanked me for recovering his embezzled funds and gave me the 1000 gold he had pledged to support an Imperial cult mission to the Ashlanders.",
                condition = { name = "Journal", stage = 45 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Iulus Truptor I couldn't get Canctunian Ponius to donate the 1000 gold he pledged to sponsor a mission to the Ashlanders. Iulus Truptor was disappointed, and told me my talents and temperaments were apparently not suited for soliciting donations. He thanked me for my efforts, but said he would no longer require my services as an almoner for the Imperial cult.",
                condition = { name = "Journal", stage = 48 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I gave Iulus Truptor the 1000 gold Canctunian Ponius pledged to sponsor a mission to the Ashlanders. He was quite pleased, but he said he had no more tasks for me. He suggested I consider becoming a lay healer or lay sergeant. He also suggested that the Oracle, Lalatia Varian, might have tasks for me. Then he gave me a farewell gift, and wished me good luck.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Ponius_not",
        objectives = {
            {
                text = "I told Iulus Truptor I couldn't get Canctunian Ponius to donate the 1000 gold he pledged to sponsor a mission to the Ashlanders. Iulus Truptor was disappointed, and told me my talents and temperaments were apparently not suited for soliciting donations. He thanked me for my efforts, but said he would no longer require my services as an almoner for the Imperial cult.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Promise",
        objectives = {
            {
                text = "I found Mossanon in Sadrith Mora and confronted him about the embezzled funds. He admitted his crime, and offered to return 2500 gold -- he had spent the rest -- and pay back the rest as soon as he could, if I'd promise to keep his whereabouts secret from Canctunian Ponius. I promised to keep his secret, but I think he suspected I would not honor my promise, and he refused to return the gold.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found Mossanon in Sadrith Mora and confronted him about the embezzled funds. He admitted his crime, and offered to return 2500 gold -- he had spent the rest -- and pay back the rest as soon as he could, if I'd promise to keep his whereabouts secret from Canctunian Ponius. I promised to keep his secret. My earnest promise persuaded him to trust me, and he yielded the 2500 gold to me.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Shazgob",
        objectives = {
            {
                text = "An East Empire Company trader named Shazgob gra-Luzgan said that before Mossanon went missing, he had been seen frequently coming and going from the Guildguide service at the Mages Guild in Vivec's Foreign Quarter.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Sinyaramen",
        objectives = {
            {
                text = "A High Elf named Sinyaramen said he saw a High Elf in the market with a local Telvanni woman. He didn't recall her name, but he suggested I ask the ladies of the town about a Dark Elven woman with a High Elven friend.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Pledge from Canctunian Ponius",
        id = "IC14_Tell",
        objectives = {
            {
                text = "I told Canctunian Ponius that I found Mossanon in Sadrith Mora with a Telvanni woman.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Missing Limeware",
        id = "IC15_Missing_Limeware",
        objectives = {
            {
                text = "While a High Elf named Caryarel was being treated for swamp fever at the Imperial Chapels, a rare limeware bowl disappeared. Kaye asked me to find Caryarel and retrieve the missing chapel limeware bowl. Kaye says the High Elves are a small, tight-knit community on Vvardenfell, so he suggests I ask other High Elves if they know Caryarel and where he lives.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Kaye I would not be able to retrieve the Chapel Limeware Bowl as he requested. He was disappointed, and told me not to come back for at least a day. He told me to get my priorities straight before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A High Elf told me that Caryarel lived in Gnaar Mok, a fishing village on the west coast of Vvardenfell.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A High Elf told me that Caryarel lived in Gnaar Mok, a fishing village on the Bitter Coast. I can get passage to Hla Oad, and then Gnaar Mok, from the shipmaster Nevosi Hlan, on the boat called \"Chun-Ook\" at the Ebonheart docks.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Someone in Gnaar Mok told me that Caryarel lived in a shack by the docks.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke to Caryarel. He said he didn't know anything about a Chapel Limeware Bowl, and told me to go away and leave him alone.",
                condition = { name = "Journal", stage = 25 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I returned the Chapel Limeware Bowl to Kaye. He was pleased enough to give me 200 gold to cover my expenses. He also gave me some divine intervention scrolls.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Missing Limeware",
        id = "IC15_Missing_not",
        objectives = {
            {
                text = "I told Kaye I would not be able to retrieve the Chapel Limeware Bowl as he requested. He was disappointed, and told me not to come back for at least a day. He told me to get my priorities straight before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: The Haunting",
        id = "IC16_Haunting",
        objectives = {
            {
                text = "A Bosmer named Nedhelas in Caldera says his house is haunted by a ghost. Kaye said ghosts aren't affected by normal weapons, so he gave me 200 gold to buy an enchanted weapon or spell, and for other expenses. I'm to talk to Nedhelas first, and I should report back to Kaye if I rid the haunted house of its ghost.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Kaye I would not be able to get rid of the ghost haunting Nedhelas' house. Kaye was disappointed, and told me not to come back for at least a day. He told me to get my priorities straight before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I asked in Caldera for Nedhelas, I was told his house is just to the right of the south gate, and that I should look for him there.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke to Nedhelas. He said the ghost in his haunted house has something to do with a trap door. His landlord told him not to fool with the trap door, but didn't explain why. Nedhelas gave me a key to the trap door, and asked me to let him know when the ghost was gone.",
                condition = { name = "Journal", stage = 12 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Nedhelas that I had taken care of the ghost beneath his house. He thanked me, and the Imperial cult.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported taking care of the haunted house for Nedhelas. Kaye seemed pleased. He gave me some magic scrolls and told me to speak to him again when I was ready for another shrine sergeant mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: The Haunting",
        id = "IC16_Haunting_not",
        objectives = {
            {
                text = "I told Kaye I would not be able to get rid of the ghost haunting Nedhelas' house. Kaye was disappointed, and told me not to come back for at least a day. He told me to get my priorities straight before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Thelsa Dral the Witch",
        id = "IC17_Witch",
        objectives = {
            {
                text = "Kaye has asked me to go to Asha-Ahhe Egg Mine and hunt for a witch named Thelsa Dral. When I am sure she is dead, I should return and report to Kaye.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Kaye I wasn't going to hunt the witch Thelsa Dral in Asha-Ahhe Egg Mine. He was disappointed, and told me not to come back for at least a day. He told me to decide whether I was serious about serving the Imperial cult before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "When I asked in the village of Khuul about the Ashe-Ahhe Egg Mine, I was told the miners there think the mine is cursed.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke to a miner in Ashe-Ahhe Egg Mine. He says there's something evil in the mine. There are voices, but there's nobody there. There are things moving in the dark, but when you shine the light, there's nothing there. The miner mentioned a lake in particular, and said he won't go down there any more.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Kaye that I found the witch Thelsa Dral in Asha-Ahhe Egg Mine, and made sure she was dead. Kaye seemed glad to see me back safe. He gave me a firestone ring and told me to speak to him again when I am ready for another mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Thelsa Dral the Witch",
        id = "IC17_Witch_not",
        objectives = {
            {
                text = "I told Kaye I wasn't going to hunt the witch Thelsa Dral in Asha-Ahhe Egg Mine. He was disappointed, and told me not to come back for at least a day. He told me to decide whether I was serious about serving the Imperial cult before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: The Silver Staff of Shaming",
        id = "IC18_Silver_Staff",
        objectives = {
            {
                text = "An acolyte named Linus Iulus disappeared some years ago. Our oracle, Lalatia Varian, has had a vision of a Silver Staff of Shaming, and Linus Iulus had one of these staves. Kaye gave me a Detect Enchantment ring, and told me to go to Mount Kand. I'm to find a Silver Staff of Shaming there that belonged to Linus Iulus. I should bring it to Kaye, along with any other personal effects I find that belonged to Linus Iulus.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Kaye says that Lalatia Varian, our oracle, she has seen the Silver Staff of Shaming in a dream. She says it lies in the land of burning rock, under the shadow of the Mountain of Fear. Kaye says that an old name for Mount Kand is Mountain of Fear. The oracle believes the staff will be found either east or west of the mountain, in the shadow of the rising or setting sun. I have a Detect Enchantment ring to help find the staff.",
                condition = { name = "Journal", stage = 2 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Kaye I have given up trying to find the Silver Staff of Shaming that belonged to Linus Iulus. He was disappointed, and told me not to come back for at least a day. He told me to decide whether I was serious about serving the Imperial cult before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I gave Kaye the Silver Staff of Shaming. As a reward, Kaye gave me a Restoration shirt. He thanked me for my exertions on the cult's behalf, and told me to speak to him again when I'm ready for another mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I gave Kaye the Silver Staff of Shaming and the Maran Amulet and Stendarran Belt that belonged to Linus Iulus. As a reward, Kaye gave me the Silver Staff of Shaming and a Restoration shirt. He thanked me for my exertions on the cult's behalf, and told me to speak to him again when I'm ready for another mission.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: The Silver Staff of Shaming",
        id = "IC18_Silver_not",
        objectives = {
            {
                text = "I told Kaye I have given up trying to find the Silver Staff of Shaming that belonged to Linus Iulus. He was disappointed, and told me not to come back for at least a day. He told me to decide whether I was serious about serving the Imperial cult before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Restless Spirit",
        id = "IC19_Restless_Spirit",
        objectives = {
            {
                text = "An Argonian named Okur in Hla Oad has asked for our aid. This devout follower of the Nine is sensitive to spirits of the otherworld, and she says she is being visited by the ghost of a murder victim. The guards can't do anything in such cases, so Kaye has asked me to speak with Okur to see how justice can be done and the spirit laid to rest.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Kaye I wouldn't be able to help Okur obtain justice for the ghost of the murder victim. He was disappointed, and told me not to come back for at least a day. He told me to decide whether I was serious about serving the Imperial cult before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with Okur. She says she has been visited by the spirit of Julielle Aumine. She says Julielle Aumine chanced upon a band of smugglers, and was murdered to seal her lips. She says that Julielle's spirit will not rest until her amulet is recovered and returned to her husband, and until the four smugglers who murdered her are slain. If I kill the four smugglers who murdered Julielle and return her amulet to Okur, Okur will see that Julielle's spirit is laid to rest.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Okur says that Julielle Aumine's murderers' names are Dudley, Larisus Dergius, Ralos Othrenim, and Thervam Drelas. Okur believes they are strong and well-armed. She says that their smugglers cave is called 'Yasamsi', and it lies south along the road from town, before the bridge across the Odai River.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I killed the four smugglers who murdered Julielle Aumine and returned Julielle's amulet to Okur. Okur assures me that she will now be able to lay the spirit of Julielle Aumine to rest.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported to Kaye about killing the murderers of Julielle Aumine and recovering her lost amulet, and told him that Okur was sure she could lay the ghost of Julielle Aumine to rest. Kaye gave me some potent magic scrolls as a reward for my work. He thanked me, but he has no more work for me. He said there might be work for lay healers or almoners, or I might talk to Lalatia Varian about Oracle's Quests.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Restless Spirit",
        id = "IC19_Restless_not",
        objectives = {
            {
                text = "I told Kaye I wouldn't be able to help Okur obtain justice for the ghost of the murder victim. He was disappointed, and told me not to come back for at least a day. He told me to decide whether I was serious about serving the Imperial cult before I ask him again for a shrine sergeant mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Muck",
        id = "IC2_Muck",
        objectives = {
            {
                text = "Bring Synnolian Tunifus five units of muck for cure common disease potions. A farmer in Gnisis, Abishpulu Shand, has a muckspunge patch right near his hut, and Chaplain Ogrul at Fort Darius has cut a deal with Shand to gather muck there for free. While I'm in the West Gash, look in on Chaplain Ogrul, give him four Restore Health potions, and ask him if he'll teach me a few tricks.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of muck he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I gave Chaplain Ogrul the four Restore Health potions as Synnolian Tunifus requested.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Chaplain Ogrul taught me a restoration spell.",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Chaplain Ogrul offered to teach me a restoration spell, but I declined.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I delivered five units of muck to Synnolian Tunifus. He gave me a cure common disease potion, a retort, and a copy of 'The Alchemists Formulary' -- a collection of popular alchemical recipes -- as a reward.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Muck",
        id = "IC2_Muck_not",
        objectives = {
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of muck he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Ring in Darkness",
        id = "IC25_JonHawker",
        objectives = {
            {
                text = "Oracle Lalatia Varian had a vision of the Ring in Darkness. She saw the Ring of the Wind, a legendary treasure of Elsweyr. \"I have seen the wind upon a dark elf's hand. I have seen fire gleam upon a Dwarf's face. I have seen darkness on a ring of water. I have heard no name whispered in the mouth of stone.\" The Oracle bid me retrieve the Ring in Darkness. I must ask Dark Elven savants and scouts about the meaning of the Oracle's vision.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A Dunmer scout told me that Nammu, or 'no-name,' is a cavern in the wildlands of Sunna Guradan, somewhat west of the tower of Tel Aruhn. In the cavern is a great high chamber, flooded, with a central spire rising from the water. The water around the bottom of the spire might be the ring of water in darkness from the Oracle's vision.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A Dunmer savant told me that Nammu, or 'no-name,' is a cavern in the wildlands of Sunna Guradan, somewhat west of the tower of Tel Aruhn. In the cavern is a great high chamber, flooded, with a central spire rising from the water. The water around the bottom of the spire might be the ring of water in darkness from the Oracle's vision.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I retrieved the Ring of the Wind from Galmis Dren and brought it to Lalatia Varian. She praised me, and said that I was meant to keep the ring myself, and that I should use it in the service of the Nine.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Ring in Darkness",
        id = "IC25_JonHawker_free",
        objectives = {
            {
                text = "I found a Redguard trader in Nammu named Jon Hawker. He had been taken prisoner by a battlemage named Galmis Dren, to be sold as a slave. He had prayed to the Nine for aid, and thought I was the answer to his prayers. He asked for a Divine Intervention scroll, so he could escape, but I didn't have any. He suggested that he had some Divine Intervention scrolls when he was captured, and that they might be around somewhere.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found a Redguard trader in Nammu named Jon Hawker. He had been taken prisoner by a battlemage named Galmis Dren, to be sold as a slave. He had prayed to the Nine for aid, and thought I was the answer to his prayers. I gave him a Divine Intervention scroll and he disappeared, but he gave me two gifts. It is strange -- such valuable gifts. How did he hide them from Galmis Dren?",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Boots of the Apostle",
        id = "IC26_AmaNin",
        objectives = {
            {
                text = "Lalatia Varian, an Oracle of the Imperial cult, has been given a prophecy of the Boots of the Apostle, a legendary treasure of Cyrodiil, relics of Tiber Septim who was also called Talos. \"Through the doors of Berandas, within the silent caverns, beneath the wings of twilight, dust sleeps in the shoes that Talos wore.\" The Oracle bid me retrieve the Boots of the Apostle. A Dunmer savant or Dunmer scout may have clues to the meaning of the Oracle's prophetic words.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A Dunmer scout said an ancient Dunmer stronghold called Berandas lies south of the village of Gnisis in the West Gash region. Berandas is also distinctive among Dunmer stronghold, in that extensive caverns lie beneath the centuries-old architectural ruins.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A Dunmer savant said an ancient Dunmer stronghold called Berandas lies south of the village of Gnisis in the West Gash region. The savant also guessed that the \"wings of twilight\" might hint at guardians -- the winged twilights who are Daedric servants of Azura.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I retrieved the Boots of the Apostle from Berandas and brought them to Lalatia Varian. She praised me, and said that I was meant to keep the boots for myself, and that I should dedicate them to the service of the Nine. The Oracle said to speak to her again when I am ready to undertake another of the Oracle's Quests.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I brought the Boots of the Apostle to Lalatia Varian. I may keep the boots for myself, and should dedicate them to the service of the Nine. And the Oracle thinks I may have spoken with the goddess Mara herself, disguised in mortal form to test me, and that such chance meetings are a sign of the Nine's favor. The Oracle said to speak to her again when I am ready to undertake another of the Oracle's Quests.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Boots of the Apostle",
        id = "IC26_AmaNin_free",
        objectives = {
            {
                text = "I found a Breton healer in Berandas named Ama Nin. She had been snatched from the Gnisis-Ald'ruhn road by winged twilights, who bore her deep within Berandas and stranded her on a pillar of rock. She had prayed to the Nine for aid, and thought I was the answer to her prayers. She asked me for a Divine Intervention scroll, so she could escape, but I didn't have any. She suggested I should go get one and bring it back so she could be rescued.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I found a Breton healer in Berandas named Ama Nin. She had been snatched from the Gnisis-Ald'ruhn road by winged twilights, who bore her deep within Berandas and stranded her on a pillar of rock. She had prayed to the Nine for aid, and thought I was the answer to her prayers. She asked me for a Divine Intervention scroll, so she could escape. I gave her a Divine Intervention scroll and she disappeared, but before she disappeared, she gave me two gifts.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Ice Blade of the Monarch",
        id = "IC27_Oracle",
        objectives = {
            {
                text = "The Oracle has asked me to rescue Adusamsi Assurnarairan from the Dunmer stronghold of Rotheran. She went there to recover the Ice Blade of the Monarch. If possible, I'm to recover the Ice Blade of the Monarch, and bring that to back to the Oracle.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Oracle had already heard from Adusamsi Assurnarairan about her rescue. Adusamsi sent me her enchanted ring as a token of her gratitude. The Oracle suggested I should keep the Ice Blade of the Monarch if I should find it. She thanked me, and told me to speak to her when I am ready for another of the Oracle's Quests.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The Oracle had already heard from Adusamsi Assurnarairan about her rescue. Adusamsi sent me her enchanted ring as a token of her gratitude. The Oracle suggested I should keep the Ice Blade of the Monarch and dedicate it to the service of the Imperial cult. She thanked me, and told me to speak to her when I am ready for another of the Oracle's Quests.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Ice Blade of the Monarch",
        id = "IC27_Oracle_A",
        objectives = {
            {
                text = "Adusamsi Assurnarairan asked me to recover her ring from Llaren Terano, the sorcerer who captured her. She doesn't sound quite right in the head. She thinks the sorcerer may have poisoned her mind with spells. She says she can use the enchantments to escape. She asked me also to free the slaves here. Llaren Terano has their slave key.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I recovered Adusamsi's Ring and returned it to her. I suppose she will use its Divine Intervention enchantment to escape. Now I can return to the Oracle and report having completed my task. And I should also bring her the Ice Blade of the Monarch, if I can find it.",
                condition = { name = "Journal", stage = 40 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I recovered Adusamsi's Ring and returned it to her. I suppose she will use its Divine Intervention enchantment to escape. Now I can return to the Oracle and report having completed my task. And I should also bring her the Ice Blade of the Monarch.",
                condition = { name = "Journal", stage = 45 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I recovered Adusamsi's Ring and returned it to her. Now I suppose she will use its Divine Intervention enchantment to escape.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: The Scroll of Fiercely Roasting",
        id = "IC28_Urjorad",
        objectives = {
            {
                text = "The Oracle has sent me to the Daedric shrine of Ashalmimilkala to recover a powerful artifact called the Scroll of Fiercely Roasting and to return it to her. If I choose a greater challenge and risk, I may try to use the scroll instead to slay Carecalmo, the shrine's ancient High Elf priest, and his powerful High Elf bodyguard Meryaran.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Oracle thanked me for giving her the Scroll of Fiercely Roasting. She left the matter of trying to slay Carecalmo and Meryaran to my judgement, since, as opponents, she thinks they may be too great for me. She told me to speak to her again when I am ready to undertake another of the Oracle's Quests.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "The Oracle says that by killing Carecalmo and Meryaran I have avenged the deaths of the healer Urjorad and his master Dro'farahn Stiff-Neck, and rid the world of a great evil. As a reward she gave me the Gauntlets of Glory. She told me to speak to her again when I am ready to undertake another of the Oracle's Quests.",
                condition = { name = "Journal", stage = 55 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Skull-Crusher",
        id = "IC29_Crusher",
        objectives = {
            {
                text = "The Oracle believes that I am fated to recover the ancient warhammer Skull-Crusher. I must discover a sealed Daedric ruin that may be accessed only through the Halls of the Dead. To help me solve the puzzle of this prophecy, the Oracle told me to consult a Dunmer scout and a Dunmer savant. Her vision suggests I must face restless spirits and powerful Daedra to recover the warhammer. If I find Skull-Crusher, I must return it to the Oracle so she may free it of its creators' curse.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A Dunmer scout told me that the sealed Daedric ruin I seek may well be Anudnabia, a ruin near Sadrith Mora. The lower halls of Anudnubia have been inaccessible since the First Era. And several other Daedric ruins are known to have within their chambers glowing pools of molten stone. Such pools might have fueled the forge of a master weaponmaker and his enchanter.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "A Dunmer savant told me that 'Halls of the Dead' might refer to any Dunmer ancestral tomb. The ancient Dunmer word for ancestral tomb is 'cardruhn'. 'Ruhn' translates as 'home' or 'hearth-hall'. 'Card' means 'undeparted kin-wardens'. Then to find access to Skull-Crusher in its sealed Daedric ruin, I must search for ancestral tombs near the ruin. Perhaps there is an underground passage between a tomb and the sealed Daedric ruin?",
                condition = { name = "Journal", stage = 15 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "The Oracle says she can detect no evil curse upon Skull-Crusher. She assured me it is safe, and gave me a special blessing so I might dedicate myself further to the service of the Nine. She has no more quests for me, but she will send word for me through others of high rank in the cult if she needs my help again.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Willow Anther",
        id = "IC3_willow",
        objectives = {
            {
                text = "Synnolian Tunifus needs five units of willow anther for cure paralyzation potions. He admitted he steals willow anther from the flowers growing around the house of Gurak gro-Bagrat. His house is on the mainland, just north of the Foreign Quarter.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of willow anther he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I delivered five units of willow anther to Synnolian Tunifus. He gave me a cure paralyzation potion and a valuable book as a reward.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Willow Anther",
        id = "IC3_willow_not",
        objectives = {
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of willow anther he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: A Lucky Coin",
        id = "IC30_Imperial_veteran",
        objectives = {
            {
                text = "At Ghostgate I met an old Imperial veteran. He asked me to take an old lucky coin with me when I go to Dagoth Ur, and I agreed. He gave me the coin, an old worn Imperial drake, and hoped it would bring me luck. It is strange - but I have a feeling - I know this encounter has marked my fate and fortune. [You have gained a new Power: Luck of the Emperor.]",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I told the Oracle about my encounter with the old Imperial veteran, the lucky coin he gave me, and the mark of good fortune -- the luck of the Emperor -- I have felt ever since. The Oracle thinks I have been visited by an aspect of Tiber Septim. She takes this as a sign of a great doom laid upon me by the gods.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Scrib Jelly",
        id = "IC4_scrib",
        objectives = {
            {
                text = "Synnolian Tunifus needs five units of scrib jelly for cure poison and cure blight potions. He says the closest reliable source of scribs is the Shulk Egg mine, southwest of Balmora, on the west bank of the Ouadi Odai, near a swinging bridge. He also taught me a little spell he thought would be useful.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of scrib jelly he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I delivered five units of scrib jelly to Synnolian Tunifus. He gave me a cure poison potion, a cure blight potion, and an alembic as a reward.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Scrib Jelly",
        id = "IC4_scrib_A",
        objectives = {
            {
                text = "A miner gave me some scrib jelly.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Scrib Jelly",
        id = "IC4_scrib_not",
        objectives = {
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of scrib jelly he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Corkbulb Root",
        id = "IC5_corkbulb",
        objectives = {
            {
                text = "Synnolian Tunifus needs five units of corkbulb root for cure common disease and restore health potions. The Imperial Cult has an agreement with the Ascadian Isles plantation owners that permits us to gather corkbulb, so that's a good place to look. Since I have to cross water, he taught me a little spell.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of corkbulb root he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I delivered five units of corkbulb root to Synnolian Tunifus. He gave me a cure common disease potion and a restore health potion as a reward.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Corkbulb Root",
        id = "IC5_corkbulb_not",
        objectives = {
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of corkbulb root he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Rat Meat",
        id = "IC6_Rat",
        objectives = {
            {
                text = "Synnolian Tunifus needs five units of rat meat for cure poison potions. He says the best place to hunt rats is in the underworks of any of Vivec's cantons. He says to enter the underworks through trapdoors in the canalworks or through the outflow drains, which are underwater along the sides of each canton. He also warned me to be careful, because bad things-- and bad people -- hide in the underworks.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of rat meat he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I delivered five units of rat meat to Synnolian Tunifus. He gave me a cure poison potion as a reward. And since his errands have become more dangerous, he taught me some useful unarmored defense maneuvers.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Rat Meat",
        id = "IC6_Rat_not",
        objectives = {
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the five units of rat meat he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Netch Leather",
        id = "IC7_netch",
        objectives = {
            {
                text = "Synnolian Tunifus needs one unit of netch leather for cure paralyzation potions. He suggested hunting in the Ascadian Isles near Balur Salvu's house. He advised me to start with bull netch, because the betty netch are more dangerous.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the one unit of netch leather he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I delivered one unit of netch leather to Synnolian Tunifus. He gave me a cure paralyzation potion and a belt of Balyna's Soothing Balm as a reward for my service to Mara.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Gathering Netch Leather",
        id = "IC7_netch_not",
        objectives = {
            {
                text = "I told Synnolian Tunifus I would not be able to bring him the one unit of netch leather he asked for. He was disappointed, and told me to take a day to reflect on my shortcomings, and attempt to amend them before I approach him again for a lay healer mission.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Skyrim Mission",
        id = "IC8_Bedraflod",
        objectives = {
            {
                text = "Bedraflod gave me 10 gold as alms for the poor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Bedraflod gave me 5 gold as alms for the poor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Skyrim Mission",
        id = "IC8_Briring",
        objectives = {
            {
                text = "Briring gave me 10 gold as alms for the poor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Briring gave me 5 gold as alms for the poor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Skyrim Mission",
        id = "IC8_Eiruki",
        objectives = {
            {
                text = "Eiruki Hearth-Healer gave me 40 gold as alms for the poor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eiruki Hearth-Healer gave me 20 gold as alms for the poor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Skyrim Mission",
        id = "IC8_Heidmir",
        objectives = {
            {
                text = "Heidmir gave me 200 gold as alms for the poor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Heidmir gave me 100 gold as alms for the poor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Skyrim Mission",
        id = "IC8_Ingokning",
        objectives = {
            {
                text = "Ingokning gave me 20 gold as alms for the poor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ingokning gave me 10 gold as alms for the poor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Argonian Mission",
        id = "IC9_Argonian_alms",
        objectives = {
            {
                text = "Iulus Truptor told me to ask the Argonian Mission in Ebonheart for alms for the poor. The fund raising goal for the Argonian mission is 100 gold. When I have reached the goal, I should return and deliver the gold to Iulus Truptor.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "On behalf of the province of Argonia, the Argonian consul, Im-Kilaya, gave me 100 gold as alms for the poor.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "On behalf of the province of Argonia, the Argonian consul, Im-Kilaya, gave me 200 gold as alms for the poor.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I told Iulus Truptor I was not able to raise enough gold from the Argonian Mission to reach the fund raising goal of 100 gold. He was disappointed, and told me to decide whether my talents and temperaments are suited for fund raising. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 30 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reached the Argonian mission fund raising goal, and delivered the 100 gold to Iulus Truptor. He seemed pleased. He gave me a little blessing, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reached the Argonian mission fund raising goal, and DOUBLED it! I delivered the 200 gold to Iulus Truptor. He seemed very pleased. He gave me a handsome frock blessed by Zenithar, and told me to speak to him again when I'm ready for another almoner's mission.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Argonian Mission",
        id = "IC9_Argonian_not",
        objectives = {
            {
                text = "I told Iulus Truptor I was not able to raise enough gold from the Argonian Mission to reach the fund raising goal of 100 gold. He was disappointed, and told me to decide whether my talents and temperaments are suited for fund raising. Before I approach him again for an almoner's mission, I must be sure I want to give the Imperial cult my full commitment.",
                condition = { name = "Journal", stage = 1 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Imperial Cult: Alms from the Argonian Mission",
        id = "IC9_slave_hiding",
        objectives = {
            {
                text = "I found an Argonian slave named On-Wan hiding in a cell beneath the Argonian Mission. I suspect this is a secret the Mission would be eager to keep, since harboring runaway slaves is a crime. Perhaps this will give me leverage when I solicit for alms for the poor.",
                condition = { name = "Journal", stage = 5 },
                pointer = nil,
                completesQuest = false,
            },
        },
    },
}


return { questLine = questLine }
