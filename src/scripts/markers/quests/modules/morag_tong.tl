local T = require("scripts.markers.types")

local questLine: {T.Quest} = {
    {
        name = "Morag Tong: Execute Severa Magia",
        id = "MT_DB_AldSotha",
        objectives = {
            {
                text = "The Dark Brotherhood in Vvardenfell keep their headquarters in the ruins of Ald Sotha, which is northeast of Vivec City. I must go there and honorably execute the local Night Mother of the Dark Brotherhood, Severa Magia.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Grandmaster Eno Hlaalu thanked me for honorably executing Severa Magia. Eno Hlaalu gave me a ritual dagger with his gratitude.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Execute Durus Marius",
        id = "MT_DB_Assernerairan",
        objectives = {
            {
                text = "One of the Dark Brotherhood's bases is in Assernerairan, which is beneath St. Olms Canton here in Vivec City. I must honorably execute the leader, Durus Marius, and report back to Grandmaster Eno Hlaalu.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Grandmaster Eno Hlaalu thanked me for honorably executing Durus Marius.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Ultimatum for Carecalmo",
        id = "MT_DB_Carecalmo",
        objectives = {
            {
                text = "Grandmaster Eno Hlaalu believes that Mehrunes Dagon cultists are protecting the Dark Brotherhood. I must speak with such a cultist, Carecalmo in Ashalmimilkala. I should offer him an ultimatum: Stop protecting the Dark Brotherhood or the Morag Tong will declare war on all cultists of Mehrunes Dagon.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Carecalmo was offended by the ultimatum and attacked me.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Grandmaster Eno Hlaalu thanked me for killing Carecalmo.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: A Contact in the Dark Brotherhood",
        id = "MT_DB_Contact",
        objectives = {
            {
                text = "Grandmaster Eno Hlaalu believes that Miun-Gei might know how to contact the Dark Brotherhood. He is an Enchanter in the Lower Waistworks of the Foreign Quarter. When I get a name from Miun-Gei, I should report back to the Grandmaster.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with Miun-Gei and asked for contact in the Dark Brotherhood. Miun-Gei told me to speak with Tsrazami, a Khajiit who is also in the Market Canton. I should report her name to the Grandmaster.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Miun-Gei told me that he had only one contact in the Dark Brotherhood, Tsrazami, and she is now dead. I should report this to the Grandmaster.",
                condition = { name = "Journal", stage = 60 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I spoke with Tsrazami and she agreed to meet with Eno Hlaalu.",
                condition = { name = "Journal", stage = 70 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Eno Hlaalu thanked me for giving him the name of a contact in the Dark Brotherhood.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Ultimatum for Movis Darys",
        id = "MT_DB_Darys",
        objectives = {
            {
                text = "Grandmaster Eno Hlaalu wants me to speak with Movis Darys at the Guild of Mages in Ald'ruhn. I must either convince him to join the Morag Tong or kill him.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Movis Darys agreed to meet with Eno Hlaalu. As a token of good faith, he gave me the Belt of Sanguine Denial.",
                condition = { name = "Journal", stage = 50 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Grandmaster Eno Hlaalu thanked me for convincing Movis Darys to join the Morag Tong.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Grandmaster Eno Hlaalu thanked me for the honorable execution of Movis Darys.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Grandmaster",
        id = "MT_Grandmaster",
        objectives = {
            {
                text = "I was told that in order to become the new Grandmaster, I must honorably execute the current Grandmaster, Eno Hlaalu.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Grandmaster Eno Hlaalu believes I have what it takes to be the new Grandmaster of the Morag Tong. He will step down if I break with Morag Tong tradition and let him retire.",
                condition = { name = "Journal", stage = 20 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I have slain Grandmaster Eno Hlaalu. I am the new Grandmaster of the Morag Tong.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "Grandmaster Eno Hlaalu thanked me for allowing him to retire. I am the new Grandmaster of the Morag Tong.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Baladas Demnevanni",
        id = "MT_WritBaladas",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Baladas Demnevanni who can be found in Arvs Drelen near Gnisis.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Baladas Demnevanni has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Baladas Demnevanni.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Baladas Demnevanni.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Tirer Belvayn",
        id = "MT_WritBelvayn",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Tirer Belvayn. He may be found in Shara. To get there I must go to Dagon Fel and follow the road south past the Dwemer ruins and then west until a branch heads southwest to the coast. Shara will be to the south.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tirer Belvayn has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Tirer Belvayn has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Tirer Belvayn.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Tirer Belvayn.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Mages Guild: Writ for Mathyn Bemis",
        id = "MT_WritBemis",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Mathyn Bemis, who may be found in the Hlaalu Ancestral Vaults which are accessible from the Canalworks of the Hlaalu Canton.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mathyn Bemis has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mathyn Bemis has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Mathyn Bemis.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Mathyn Bemis.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Dram Bero",
        id = "MT_WritBero",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Dram Bero who lives somewhere here in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dram Bero has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Dram Bero has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Dram Bero.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Dram Bero.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Brilnosu Llarys",
        id = "MT_WritBrilnosu",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Brilnosu Llarys. She may be found at the Dunmer stronghold of Hlormaren which is on the coast west of Balmora north of Hla Oad.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Brilnosu Llarys has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Brilnosu Llarys has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Brilnosu Llarys.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Brilnosu Llarys.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Galasa Uvayn",
        id = "MT_WritGalasa",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Galasa Uvayn. She may be found at the Hlaalu Treasury in the Waistworks of the Hlaalu Compound in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Galasa Uvayn has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Galasa Uvayn has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Galasa Uvayn.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Galasa Uvayn.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Guril Retheran",
        id = "MT_WritGuril",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Guril Retheran. He may be found at the Flowers of Gold Cornerclub in the Redoran Waistworks.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Guril Retheran has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Guril Retheran has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Guril Retheran.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Guril Retheran.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Mavon Drenim",
        id = "MT_WritMavon",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Mavon Drenim. He may be found at the Telvanni Tower in the Telvanni Plaza here in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mavon Drenim has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mavon Drenim has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Mavon Drenim.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Mavon Drenim.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Navil and Ranes Ienith",
        id = "MT_WritNavil",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Navil Ienith and Ranes Ienith. They may be found on the Dren Plantation which is east of Pelagiad or west of Suran.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ranes Ienith has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 75 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Navil Ienith has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ranes Ienith has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 85 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Navil Ienith has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Navil and Ranes Ienith.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Navil and Ranes Ienith.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Master Neloth",
        id = "MT_WritNeloth",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Master Neloth. He may be found in the Tower of Tel Naga in Sadrith Mora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I executed the Writ on Master Neloth.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Feruren Oran",
        id = "MT_WritOran",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Feruren Oran. He may be found in the Elven Nations Cornerclub in the Hlaalu Plaza here in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Feruren Oran has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Feruren Oran has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Feruren Oran.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Sarayn Sadus",
        id = "MT_WritSadus",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Sarayn Sadus. He may be found in Zaintirari. I should first head to the Erabenimsun Camp and then go northwest until I reach a steampit. Zaintirari is north of the steampit, but hidden from view.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sarayn Sadus has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Sarayn Sadus has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Sarayn Sadus.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Sarayn Sadus.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Toris Saren",
        id = "MT_WritSaren",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Toris Saren. He is in his home, Saren Manor, in the Plaza of the Redoran Canton here in Vivec.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Toris Saren has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Toris Saren has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Toris Saren.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Toris Saren.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Mistress Therana",
        id = "MT_WritTherana",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Mistress Therana. She may be found in the tower of Tel Branora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mistress Therana has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Mistress Therana has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Mistress Therana.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Mistress Therana.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Larrius Varro",
        id = "MT_WritVarro",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Larrius Varro. He may be found in Fort Moonmoth near Balmora.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Larrius Varro has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Larrius Varro has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Larrius Varro.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Larrius Varro.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Ethal Seloth and Idroso Vendu",
        id = "MT_WritVendu",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Ethal Seloth and Idroso Vendu. They may be found in the temporary housing of the Telvanni Plaza.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ethal Seloth has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 75 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Idroso Vendu has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Ethal Seloth has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 85 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Idroso Vendu has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Ethal Seloth and Idroso Vendu.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Ethal Seloth and Idroso Vendu.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
    {
        name = "Morag Tong: Writ for Odaishah Yasalmibaal",
        id = "MT_WritYasalmibaal",
        objectives = {
            {
                text = "I have been given a Writ for the honorable execution of Odaishah Yasalmibaal. To get to him, I should take a boat to Tel Aruhn and swim southwest until I reach the coast. Odaishah is in a yurt on the coast near the end of a small peninsula.",
                condition = { name = "Journal", stage = 10 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Odaishah Yasalmibaal has been slain according to the traditional and honorable doctrine of the Morag Tong. The execution was reported as a crime.",
                condition = { name = "Journal", stage = 80 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "Odaishah Yasalmibaal has been slain according to the traditional and honorable doctrine of the Morag Tong. None dared to report my actions.",
                condition = { name = "Journal", stage = 90 },
                pointer = nil,
                completesQuest = false,
            },
            {
                text = "I reported the honorable execution of Odaishah Yasalmibaal.",
                condition = { name = "Journal", stage = 100 },
                pointer = nil,
                completesQuest = true,
            },
            {
                text = "I reported the honorable execution of Odaishah Yasalmibaal.",
                condition = { name = "Journal", stage = 110 },
                pointer = nil,
                completesQuest = true,
            },
        },
    },
}


return { questLine = questLine }
