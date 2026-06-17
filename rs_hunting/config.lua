------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------- VORP HUNTING SCRIPT ------------------------------------------------------------------------

Config = {}

Config.DevMode = false        -- DIABLE THIS IF YOUR SERVER IS LIVE
Config.Linux = false          -- If they use a Linux server, then true
Config.butcherfunction = true -- set to true if you want to use butcher functions

----------------------------- TRANSLATE HERE -------------------------------------
Config.Language = {
    NotHoldingAnimal = "You Got Nothing To Sell",
    NotInTheButcher = "I won't buy that animal",
    AnimalSold = "Thanks for the deal you got ",
    SkinnableAnimalstowed = "You have obtained",
    stow = "Store pelt",
    press = "Press",
    sell = "Sell",
    notabutcher = "You Dont Have The Right Job",
    dollar = " $",
    join = ", ",
    FullInventory = "Inventory is too full.",
    action = "Hunting",
}

Config.keys = {
    sellButcher = 0x760A9C6F, -- butcher sell and Stow
}

Config.joblocked = false   -- lock the butcher so only people with the job can access. u can change access to each butcher by editing this  butcherjob = "butcher"

Config.Butchers = {
    {
        butchername = "Valentine Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-339.0141, 767.6358, 115.5645),
        heading = 100.41544342041,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenario = "PROP_HUMAN_BUTCHER_DEER_ALWAYS",
        prop = false
    },

    {
        butchername = "Strawberry Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-1753.143, -392.4201, 155.2578),
        heading = 181.37438964844,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(-1751.92, -393.60, 155.26),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = false
    },

    {
        butchername = "Blackwater Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-754.0, -1285.158, 43.03),
        heading = 273.579,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(-752.46, -1283.62, 42.40),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = false
    },

    {
        butchername = "Roanokee Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(2075.11, 1000.05, 112.54),
        heading = -80.0,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(2075.59, 1001.45, 111.55),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = false
    },

    {
        butchername = "Tall Trees Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-2251.60, -1915.00, 117.01),
        heading = -160.0,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenario = "PROP_HUMAN_BUTCHER_DEER_ALWAYS",
        prop = false
    },

    {
        butchername = "Rhodes Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(1297.58, -1277.74, 75.87),
        heading = 146.0,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(1298.05, -1279.03, 74.86),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = false
    },

    {
        butchername = "Riggs Station Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-1008.29, -541.27, 99.13),
        heading = -80.0,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(-1007.30, -540.16, 98.09),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = false
    },

    {
        butchername = "Tumbleweed Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-5509.83, -2947.17, -1.89),
        heading = -109.0,
        radius = 3.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(-5508.89, -2946.32, -2.88),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = false
    },

    {
        butchername = "Big Valley Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-2844.13, 136.78, 184.76),
        heading = 1.15,
        radius = 4.0,
        showblip = true,
        butcherped = true,
        scenario = "PROP_HUMAN_BUTCHER_DEER_ALWAYS",
        prop = false
    },

    {
        butchername = "Saint Denis Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(2817.72, -1330.05, 46.51),
        heading = -133.0,
        radius = 4.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(2819.05, -1329.38, 45.50),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = false
    },

    {
        butchername = "Armadillo Butcher",
        butcherjob = "butcher",
        blip = 1369919445,
        npcmodel = "S_M_M_UNIBUTCHERS_01",
        coords = vector3(-3691.4, -2622.95, -13.75 ),
        heading = 13.83,
        radius = 4.0,
        showblip = true,
        butcherped = true,
        scenariocoords = vector3(-3692.4, -2622.50, -14.75),
        scenariotype = "PROP_HUMAN_BUTCHER_DEER",
        prop = "p_barrelsalt01x",
        propcoords = vector3(-3692.5852, -2622.6535, -14.8016),
    }

}

Config.SkinnableAnimals = {
    [`a_c_alligator_01`] = {
        name = "Northen American Alligator",
        items = { 
            [1] = { item = "aligatormeat", label = "Alligator Meat", quantity = 1 },  
            [2] = { item = "aligatorto", label = "Alligator Tooth", quantity = 1 },
            [3] = { item = "aligatorpelt", label = "Alligator Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_alligator",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_alligator_03`] = {
        name = "Small Alligator",
        items = { 
            [1] = { item = "aligatormeat", label = "Alligator Meat", quantity = 1 },  
            [2] = { item = "aligatorto", label = "Alligator Tooth", quantity = 1 },
            [3] = { item = "aligatorpelt", label = "Alligator Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_alligator",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_armadillo_01`] = {
        name = "Armadillo",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "armadillos", label = "Armadillo Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_armadillo",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_badger_01`] = {
        name = "American Badger",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "badgers", label = "Badger Pelt", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_badger",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_bear_01`] = {
        name = "Bear",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "bearg", label = "Bear Claw", quantity = 1 },    	
            [3] = { item = "bbears", label = "Bear Pelt", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_bear",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_bearblack_01`] = {
        name = "Black Bear",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "bearg", label = "Bear Claw", quantity = 1 }, 
            [3] = { item = "bearc", label = "Black Bear Pelt", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_bear_black",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_beaver_01`] = {
        name = "Beaver",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "scentg", label = "Scent Gland", quantity = 1 },    	
            [3] = { item = "beawers", label = "Beaver Pelt", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_beaver",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_bighornram_01`] = {
        name = "Big Horn Ram",
        items = { 
            [1] = { item = "mutton", label = "Mutton", quantity = 1 },  
            [2] = { item = "ramhorn", label = "Ram Horn", quantity = 1 }, 
            [3] = { item = "rams", label = "Ram Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_bighornram",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_boar_01`] = {
        name = "Boar",
        items = { 
            [1] = { item = "pork", label = "Pork", quantity = 1 },  
            [2] = { item = "boarmusk", label = "Boar Tusk", quantity = 1 },  	
            [3] = { item = "porkfat", label = "Pork Fat", quantity = 1},
            [4] = { item = "jabapelt", label = "Boar Pelt", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_boar",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_buck_01`]  = {
        name = "Buck",
        items = { 
            [1] = { item = "meat",  label = "Meat", quantity = 1 },  
            [2] = { item = "buckantler", label = "Buck Antler", quantity = 1 },  
            [3] = { item = "deerskin", label = "Deer Pelt", quantity = 1 },
			[4] = { item = "deerheart", label = "Deer Heart", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_buck",
        action = "Skinned",
        type = "satchel_textures" 
    },
    [`a_c_buffalo_01`]   = {
        name = "Bison",
        items = { 
            [1] = { item = "beef", label = "Beef", quantity = 1 },  
            [2] = { item = "bisonhorn", label = "Bison Horn", quantity = 1 }, 
            [3] = { item = "bisons", label = "Bison Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture =  "animal_buffalo",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_bull_01`]  = {
        name = "Bull",
        items = { 
            [1] = { item = "beef", label = "Beef", quantity = 1 },  
            [2] = { item = "bullhorn", label = "Bull Horn", quantity = 1 }, 
            [3] = { item = "bulls", label = "Bull Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_bull_devon",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_deer_01`]  = {
        name = "Deer",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "deerheart", label = "Deer Heart", quantity = 1 }, 
            [3] = { item = "deerskin", label = "Deer Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_deer",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_chipmunk_01`] = {
        name = "Chipmunk",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_chipmunk",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_bat_01`]  = {
        name = "bat",
        items = {},
        money = 0,
        gold = 0,
        texture = "animal_bat",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_cougar_01`]   = {
        name = "Cougar",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "cougars", label = "Cougar Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_bobcat",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_cow`]   = {
        name = "Cow",
        items = { 
            [1] = { item = "beef", label = "Beef", quantity = 1 }, 
            [2] = { item = "cows", label = "Cow Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_cow",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_coyote_01`] = {
        name = "Coyote",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "coyotes", label = "Coyote Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_coyote",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_crab_01`]  = {
        name = "Crab",
        items = { 
            [1] = { item = "provision_meat_crustacean", label = "Crab Meat", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_crab",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_crawfish_01`]  = {
        name = "Crawfish",
        items = { 
            [1] = { item = "provision_meat_crustacean", label = "Crab Meat", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_crawfish",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_elk_01`]  = {
        name = "Elk",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "elkantler", label = "Elk Antler", quantity = 1 }, 
            [3] = { item = "elks", label = "Elk Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_elk",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_fox_01`]  = {
        name = "Red Fox",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "foxskin", label = "Fox Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_fox_red",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_frogbull_01`]  = {
        name = "Frog bull",
        items = {},
        money = 0,
        gold = 0,
        texture = "animal_frogbull",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_gilamonster_01`] = {
        name = "Gila Monster",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat", quantity = 1 }, 
            [2] = { item = "lizards", label = "Lizard Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_gila_monster",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_goat_01`]  = {
        name = "Goat",
        items = { 
            [1] = { item = "mutton", label = "Mutton", quantity = 1 },  
            [2] = { item = "goats", label = "Goat Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_goat",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_iguana_01`]   = {
        name = "Iguana",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat", quantity = 1 },  
            [2] = { item = "lizards", label = "Lizard Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_iguana",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_iguanadesert_01`]  = {
        name = "Desert Iguana",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat", quantity = 1 },  
            [2] = { item = "lizards", label = "Lizard Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_iguanadesert",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_javelina_01`] = {
        name = "Collared peccary pig",
        items = { 
            [1] = { item = "pork", label = "Pork", quantity = 1 },  
            [2] = { item = "porkfat", label = "Pork Fat", quantity = 1 }, 
            [3] = { item = "pecaris", label = "Peccary Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_javelina",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_moose_01`]  = {
        name = "Moose",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "mooseantler", label = "Moose Antler", quantity = 1 }, 
            [3] = { item = "mooses", label = "Moose Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_moose",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_muskrat_01`]   = {
        name = "Muskrat",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "scentg", label = "Scent Gland", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_muskrat",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_ox_01`]   = {
        name = "Angus Ox",
        items = { 
            [1] = { item = "beef", label = "Beef", quantity = 1 },  
            [2] = { item = "oxhorn", label = "Ox Horn", quantity = 1 }, 
            [3] = { item = "oxs", label = "Ox Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_ox_angus",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_panther_01`]  = {
        name = "Panther",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "panthers", label = "Panther Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_panther",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_sheep_01`]    = {
        name = "Merino Sheep",
        items = { 
            [1] = { item = "mutton", label = "Mutton", quantity = 1 },  
            [2] = { item = "wool", label = "Wool", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_sheep",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_pig_01`]  = {
        name = "Pig",
        items = { 
            [1] = { item = "pork", label = "Pork", quantity = 1 },  
            [2] = { item = "porkfat", label = "Pork Fat", quantity = 1 },
            [3] = { item = "pigpelt", label = "Pig Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_pig_berkshire",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_possum_01`] = {
        name = "Opossum",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "opossums", label = "Opossum Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_opossum",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_pronghorn_01`]  = {
        name = "American pronghorn doe",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "pronghornh", label = "Pronghorn Horn", quantity = 1 }, 
            [3] = { item = "prongs", label = "Pronghorn Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_pronghorn",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_rabbit_01`]  = {
        name = "Rabbit",
        items = { 
            [1] = { item = "meatconejo", label = "Rabbit Meat", quantity = 1 },  
            [2] = { item = "rabbits", label = "Rabbit Pelt", quantity = 1 }, 
            [3] = { item = "rabbitpaw", label = "Rabbit Paw", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_rabbit",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_raccoon_01`]  = {
        name = "Raccoon",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "raccoons", label = "Raccoon Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_raccoon",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_rat_01`]  = {
        name = "Rat",
        items = {},
        money = 0,
        gold = 0,
        texture = "animal_rat",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_skunk_01`]  = {
        name = "Skunk",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "resource_pelt_skunk", label = "Skunk Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_skunk",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_squirrel_01`]  = {
        name = "Squirrel",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_squirrel_grey",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_toad_01`] = {
        name = "Toad",
        items = {},
        money = 0,
        gold = 0,
        texture = "animal_toad",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_turtlesea_01`]  = {
        name = "Sea ​​turtle",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "turtleshell", label = "Turtle Shell", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_snapping_turtle",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_turtlesnapping_01`]  = {
        name = "Snapping turtle",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 1 },  
            [2] = { item = "turtleshell", label = "Turtle Shell", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_snapping_turtle",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_wolf`]  = {
        name = "Wolf gray",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "wolfheart", label = "Wolf Heart", quantity = 1 }, 
            [3] = { item = "wolfpelt", label = "Wolf Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_wolf_gray",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_wolf_medium`] = {
        name = "Wolf medium",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "wolfheart", label = "Wolf Heart", quantity = 1 }, 
            [3] = { item = "wolfpelt", label = "Wolf Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_wolf_gray",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_wolf_small`]  = {
        name = "Wolf small",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 1 },  
            [2] = { item = "wolfheart", label = "Wolf Heart", quantity = 1 }, 
            [3] = { item = "wolfpelt", label = "Wolf Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_wolf_gray",
        action = "Skinned",
        type = "satchel_textures"
    },


    -- ============================ Birds ==============================

    [`a_c_californiacondor_01`]   = {
        name = "American Condor",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_condor",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_cardinal_01`]   = {
        name = "Cardinal",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_cardinal",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_carolinaparakeet_01`]   = {
        name = "Parakeet",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_parakeet",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_cedarwaxwing_01`]   = {
        name = "Cedar waxwing",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_cedarwaxwing",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_chicken_01`]   = {
        name = "Chicken",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_chicken_leghorn",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_bluejay_01`]   = {
        name = "Blue Jay",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_bluejay",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_cormorant_01`]   = {
        name = "Double-crested Cormorant",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_cormorant",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_cranewhooping_01`]   = {
        name = "Crane",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_crane",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_crow_01`]   = {
        name = "Crow",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_crow",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_duck_01`]   = {
        name = "Duck",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_duck_mallard",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_eagle_01`]   = {
        name = "Eagle",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_eagle_bald",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_egret_01`]   = {
        name = "Egret",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_egret_little",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_goosecanada_01`]   = {
        name = "Goose Canada",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_goosecanada",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_hawk_01`]   = {
        name = "Hawk",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_hawk_ferruginous",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_heron_01`]   = {
        name = "Heron",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_heron_greatblue",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_loon_01`]   = {
        name = "Common Loon",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_loon_common",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_oriole_01`]   = {
        name = "Hooded Oriol",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_oriole_hooded",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_owl_01`]   = {
        name = "Owl",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_owl_great",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_parrot_01`]   = {
        name = "Parrot",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_parrot_blueyellow",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_pelican_01`]   = {
        name = "Pelican",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_pelican_white",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_pheasant_01`]   = {
        name = "Collared pheasant",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_pheasant_ringneck",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_pigeon`]   = {
        name = "Pigeon",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_pigeon",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_prairiechicken_01`]   = {
        name = "Prairie Chicken",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_prairie_chicken",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_quail_01`]   = {
        name = "California Quail",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_quail",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_raven_01`]   = {
        name = "Raven",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_raven",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_redfootedbooby_01`]   = {
        name = "Red-footed booby",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_red_footed_booby",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_robin_01`]   = {
        name = "Robin",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_robin",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_rooster_01`]   = {
        name = "Rooster",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_rooster_dominique",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_roseatespoonbill_01`]   = {
        name = "Poonbill Roseates",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_roseatespoonbill",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_seagull_01`]   = {
        name = "Seagull",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_seagull_herring",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_songbird_01`]   = {
        name = "Song Bird",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_songbird",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_sparrow_01`]   = {
        name = "Sparrow",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_sparrow_golden",
        action = "Skinned",
        type = "satchel_textures"
    }, 
    [`a_c_turkey_01`]   = {
        name = "Turkey",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_turkey_eastern",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_turkey_02`]   = {
        name = "Turkey",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_turkey_eastern",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_turkeywild_01`]   = {
        name = "Turkey",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_turkey_eastern",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_vulture_01`]   = {
        name = "Vulture",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_vulture_western",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_woodpecker_01`]   = {
        name = "Woodpecker",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_woodpecker_redbellied",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_cormorant_01`]   = {
        name = "Neotropical Cormorant",
        items = { 
            [1] = { item = "bird", label = "Bird Meat", quantity = 1 },            
            [2] = { item = "feathers", label = "Feathers", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "animal_cormorant",
        action = "Skinned",
        type = "satchel_textures"
    },

    -- ============================== Snakes ===========================

    [`a_c_snake_01`]   = {
        name = "Diamondback Snake",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat" , quantity = 1 },  
            [2] = { item = "resource_skin_lizard", label = "Snake Skin", quantity = 1 },    	
            [3] = { item = "snake_poison", label = "Snake Venom", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_snakeblacktailrattle",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_snakeblacktailrattle_01`]   = {
        name = "Rattlesnake",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat" , quantity = 1 },  
            [2] = { item = "resource_skin_lizard", label = "Snake Skin", quantity = 1 },    	
            [3] = { item = "snake_poison", label = "Snake Venom", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_snakeblacktailrattle",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_snakeferdelance_01`]   = {
        name = "Fer de lance snake",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat" , quantity = 1 },  
            [2] = { item = "resource_skin_lizard", label = "Snake Skin", quantity = 1 },    	
            [3] = { item = "snake_poison", label = "Snake Venom", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_snakeferdelance",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_snakeredboa_01`]   = {
        name = "Boa",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat" , quantity = 1 },  
            [2] = { item = "resource_skin_lizard", label = "Snake Skin", quantity = 1 },    	
            [3] = { item = "snake_poison", label = "Snake Venom", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_snakeredboa",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_snakewater_01`]   = {
        name = "Midland Water Snake",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat" , quantity = 1 },  
            [2] = { item = "resource_skin_lizard", label = "Snake Skin", quantity = 1 },    	
            [3] = { item = "snake_poison", label = "Snake Venom", quantity = 1},
        },
        money = 0,
        gold = 0,
        texture = "animal_snakewater",
        action = "Skinned",
        type = "satchel_textures"
    },

    -- ===================================== Legendary Animals ================================

    [`a_c_alligator_02`] = {
        name = "Legendary Sun Alligator",
        items = { 
            [1] = { item = "aligatormeat", label = "Alligator Meat", quantity = 1 },  
            [2] = { item = "aligatorto", label = "Alligator Tooth", quantity = 1 },
            [3] = { item = "aligatorpelt", label = "Alligator Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_alligator_legendary_02",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_alligator_01`] = {
        name = "Legendary Teca Alligator",
        items = { 
            [1] = { item = "aligatormeat", label = "Alligator Meat", quantity = 1 },  
            [2] = { item = "aligatorto", label = "Alligator Tooth", quantity = 1 },
            [3] = { item = "aligatorpelt", label = "Alligator Pelt", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_alligator_legendary_01",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_boarlegendary_01`]   = {
        name = "Legendary Boar",
        items = { 
            [1] = { item = "pork", label = "Pork", quantity = 10 }, 
            [2] = { item = "porkfat", label = "Pork Fat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "animal_boar",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_snakeredboa10ft_01`]   = {
        name = "Legendary Boa",
        items = { 
            [1] = { item = "provision_meat_herptile", label = "Reptile Meat", quantity = 5 },  
            [2] = { item = "snake_poison", label = "Snake Venom", quantity = 5 },
        },
        money = 0,
        gold = 0,
        texture = "animal_snakeblacktailrattle",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`a_c_buffalo_tatanka_01`]   = {
        name = "Legendary Tatanka Bison",
        items = { 
            [1] = { item = "beef", label = "Beef", quantity = 10 },                        
        },
        money = 0,
        gold = 0,
        texture = "animal_legendary_buffalo_takanta",
        action = "Skinned",
        type = "satchel_textures"
    },
    [`mp_a_c_beaver_01`]   = {
        name = "Legendary Grey Beaver",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_beaver_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_boar_01`]   = {
        name = "Legendary Wakpa Boar",
        items = { 
            [1] = { item = "pork", label = "Pork", quantity = 10 }, 
            [2] = { item = "porkfat", label = "Pork Fat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_boar_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_cougar_01`]   = {
        name = "Legendary Maza Cougar",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_cougar_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_coyote_01`]   = {
        name = "Legendary Red-Striped Coyote",
        items = { 
            [1] = { item = "meat", label = "Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_coyote_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_panther_01`]   = {
        name = "Legendary Night Panther",
        items = { 
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_panther_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_wolf_01`]   = {
        name = "Legendary Emerald Wolf",
        items = {
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_wolf_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_bear_01`]   = {
        name = "Legendary Owiza Bear",
        items = {
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_bear_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_bighornram_01`]   = {
        name = "Legendary Gabbro Horn Ram",
        items = {
            [1] = { item = "mutton", label = "Mutton", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_ram_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_buck_01`]   = {
        name = "Legendary Mudrunner Deer",
        items = {
            [1] = { item = "meat", label = "Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_buck_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_buffalo_01`]   = {
        name = "Legendary Winyan Bison",
        items = {
            [1] = { item = "beef", label = "Beef", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_bison_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_elk_01`]   = {
        name = "Legendary Katata Elk",
        items = {
            [1] = { item = "meat", label = "Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_elk_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_fox_01`]   = {
        name = "Legendary Ota Fox",
        items = {
            [1] = { item = "meat", label = "Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_fox_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
    [`mp_a_c_moose_01`]   = {
        name = "Legendary Snowflake Moose",
        items = {
            [1] = { item = "biggame", label = "Big Game Meat", quantity = 10 },
        },
        money = 0,
        gold = 0,
        texture = "mp_animal_moose_legendary_01",
        action = "Skinned",
        type = "inventory_items_mp"
    },
   

    --DIRECT INVENTORY ITEMS (small animal which are directly added to the inventory)-------

    [703712157]   = {
        name = "Large Bullhead Catfish",
        items = {
            [1] = { item = "a_c_fishbullheadcat_01_ms", label = "Large Bullhead Catfish", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_bullhead_catfish",
        action = "Picked",
        type = "inventory_items"
    },
    [264156159]   = {
        name = "Chain Pickerel",
        items = {
            [1] = { item = "a_c_fishchainpickerel_01_sm", label = "Chain Pickerel", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_chain_pickerel",
        action = "Picked",
        type = "inventory_items"
    },
    [-1182983171] = {
        name = "Large Chain Pickerel",
        items = {
            [1] = { item = "a_c_fishchainpickerel_01_ms", label = "Large Chain Pickerel", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_chain_pickerel",
        action = "Picked",
        type = "inventory_items"
    },
    [122748261]   = {
        name = "Largemouth Bass",
        items = {
            [1] = { item = "a_c_fishlargemouthbass_01_ms", label = "Largemouth Bass", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_largemouth_bass",
        action = "Picked",
        type = "inventory_items"
    },
    [706485280]   = {
        name = "Perch",
        items = {
            [1] = { item = "a_c_fishperch_01_sm", label = "Perch", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_perch",
        action = "Picked",
        type = "inventory_items"
    },
    [-452224784]  = {
        name = "Large Perch",
        items = {
            [1] = { item = "a_c_fishperch_01_ms", label = "Large Perch", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_perch",
        action = "Picked",
        type = "inventory_items"
    },
    [490159652]   = {
        name = "Steelhead Trout",
        items = {
            [1] = { item = "a_c_fishrainbowtrout_01_ms", label = "Steelhead Trout", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_steelhead_trout",
        action = "Picked",
        type = "inventory_items"
    },
    [513249462]   = {
        name = "Redfin Pickerel",
        items = {
            [1] = { item = "a_c_fishredfinpickerel_01_sm", label = "Redfin Pickerel", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_redfin_pickerel",
        action = "Picked",
        type = "inventory_items"
    },
    [-243188398]  = {
        name = "Large Redfin Pickerel",
        items = {
            [1] = { item = "a_c_fishredfinpickerel_01_ms", label = "Large Redfin Pickerel", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_redfin_pickerel",
        action = "Picked",
        type = "inventory_items"
    },
    [1520661]     = {
        name = "Rock Bass",
        items = {
            [1] = { item = "a_c_fishrockbass_01_sm", label = "Rock Bass", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_rock_bass",
        action = "Picked",
        type = "inventory_items"
    },
    [-1981561472] = {
        name = "Large Rock Bass",
        items = {
            [1] = { item = "a_c_fishrockbass_01_ms", label = "Large Rock Bass", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_rock_bass",
        action = "Picked",
        type = "inventory_items"
    },
    [41707457]    = {
        name = "Salmon",
        items = {
            [1] = { item = "a_c_fishsalmonsockeye_01_ms", label = "Salmon", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_sockeye_salmon",
        action = "Picked",
        type = "inventory_items"
    },
    [1860580756]  = {
        name = "Smallmouth Bass",
        items = {
            [1] = { item = "a_c_fishsmallmouthbass_01_ms", label = "Smallmouth Bass", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_smallmouth_bass",
        action = "Picked",
        type = "inventory_items"
    },
    [1867262572]  = {
        name = "Large Blue Gill",
        items = {
            [1] = { item = "a_c_fishbluegil_01_ms", label = "Large Blue Gill", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_bluegill",
        action = "Picked",
        type = "inventory_items"
    },
    [1493541632]  = {
        name = "Bullhead Catfish",
        items = {
            [1] = { item = "a_c_fishbullheadcat_01_sm", label = "Bullhead Catfish", quantity = 1 },
        },
        money = 0,
        gold = 0,
        texture = "provision_fish_bullhead_catfish",
        action = "Picked",
        type = "inventory_items"
    },

}

-- Animals that are traded in to the butcher

Config.Animals = {
    -- =========================== PRICE STRUCTURE PER ANIMAL =======================================

    -- carcassMoney = price of whole animal without skinning
    -- skinnedBodyMoney = price of skinned body (without skin)
    -- peltMoneyPoor = price of low-quality pelt
    -- peltMoneyGood = price of good-quality pelt
    -- peltMoneyPerfect = price of perfect pelt

    -- ==============================================================================================

    [`a_c_bighornram_01`]  = {
        name = "Big Horn Ram",
        carcassMoney     = 3.50,
        skinnedBodyMoney = 2.00,
        peltMoneyPoor    = 1.75,
        peltMoneyGood    = 2.62,
        peltMoneyPerfect = 3.50,
        gold = 0,
        poor    = 1796037447,
        good    = -476045512,
        perfect = 1795984405
    },
    [-511163808] = {
        name = "Legendary Gabbro Horn Ram",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -675142890
    },
    [`a_c_armadillo_01`] = {
        name = "Armadillo",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = 1760886130,
        good    = 143941906,
        perfect = -662726703
    },
    [`a_c_badger_01`] = {
        name = "Badger",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_boar_01`]   = {
        name = "Boar",
        carcassMoney     = 2.10,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.05,
        peltMoneyGood    = 1.57,
        peltMoneyPerfect = 2.10,
        gold = 0,
        poor    = 1248540072,
        good    = 2116849039,
        perfect = -1858513856
    },
    [`a_c_buck_01`]  = {
        name = "Buck",
        carcassMoney     = 3.15,
        skinnedBodyMoney = 1.80,
        peltMoneyPoor    = 1.57,
        peltMoneyGood    = 2.36,
        peltMoneyPerfect = 3.15,
        gold = 0,
        poor    = 1603936352,
        good    = -868657362,
        perfect = -702790226
    },
    [`a_c_buffalo_01`]   = {
        name = "Bison",
        carcassMoney     = 3.00,
        skinnedBodyMoney = 1.75,
        peltMoneyPoor    = 1.50,
        peltMoneyGood    = 2.25,
        peltMoneyPerfect = 3.00,
        gold = 0,
        poor    = -1730060063,
        good    = -591117838,
        perfect = -237756948
    },
    [`a_c_bull_01`]   = {
        name = "Bull",
        carcassMoney     = 2.50,
        skinnedBodyMoney = 1.50,
        peltMoneyPoor    = 1.25,
        peltMoneyGood    = 1.87,
        peltMoneyPerfect = 2.50,
        gold = 0,
        poor    = 9293261,
        good    = -336086818,
        perfect = -53270317
    },
    [`a_c_deer_01`]   = {
        name = "Deer",
        carcassMoney     = 3.50,
        skinnedBodyMoney = 2.00,
        peltMoneyPoor    = 1.75,
        peltMoneyGood    = 2.62,
        peltMoneyPerfect = 3.50,
        gold = 0,
        poor    = -662178186,
        good    = -1827027577,
        perfect = -1035515486
    },
    [`a_c_duck_01`]  = {
        name = "Duck",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_eagle_01`]   = {
        name = "Eagle",
        carcassMoney     = 2.10,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.05,
        peltMoneyGood    = 1.57,
        peltMoneyPerfect = 2.10,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_egret_01`]    = {
        name = "Egret",
        carcassMoney     = 2.10,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.05,
        peltMoneyGood    = 1.57,
        peltMoneyPerfect = 2.10,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_elk_01`]  = {
        name = "Elk",
        carcassMoney     = 3.90,
        skinnedBodyMoney = 2.25,
        peltMoneyPoor    = 1.95,
        peltMoneyGood    = 2.92,
        peltMoneyPerfect = 3.90,
        gold = 0,
        poor    = 2053771712,
        good    = 1181652728,
        perfect = -1332163079
    },
    [`a_c_fox_01`]    = {
        name = "American Red Fox",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = 1647012424,
        good    = 238733925,
        perfect = 500722008
    },
    [`a_c_wolf`]  = {
        name = "Big Grey Wolf",
        carcassMoney     = 3.15,
        skinnedBodyMoney = 1.80,
        peltMoneyPoor    = 1.57,
        peltMoneyGood    = 2.36,
        peltMoneyPerfect = 3.15,
        gold = 0,
        poor    = 85441452,
        good    = 1145777975,
        perfect = 653400939
    },
    [`a_c_wolf_medium`]   = {
        name = "Medium Grey Wolf",
        carcassMoney     = 4.15,
        skinnedBodyMoney = 2.40,
        peltMoneyPoor    = 2.07,
        peltMoneyGood    = 3.11,
        peltMoneyPerfect = 4.15,
        gold = 0,
        poor    = 85441452,
        good    = 1145777975,
        perfect = 653400939
    },
    [`a_c_wolf_small`]   = {
        name = "Small Grey Wolf",
        carcassMoney     = 4.80,
        skinnedBodyMoney = 2.75,
        peltMoneyPoor    = 2.40,
        peltMoneyGood    = 3.60,
        peltMoneyPerfect = 4.80,
        gold = 0,
        poor    = 85441452,
        good    = 1145777975,
        perfect = 653400939
    },
    [1104697660]   = {
        name = "Vulture",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_turtlesnapping_01`]   = {
        name = "Snapping Turtle",
        carcassMoney     = 1.75,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.87,
        peltMoneyGood    = 1.31,
        peltMoneyPerfect = 1.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_turtlesea_01`]   = {
        name = "Sea Turtle",
        carcassMoney     = 1.75,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.87,
        peltMoneyGood    = 1.31,
        peltMoneyPerfect = 1.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_turkey_01`]   = {
        name = "Wild Turkey",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_turkey_02`]  = {
        name = "Wild Turkey",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_turkeywild_01`]   = {
        name = "Wild Turkey",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_snake_pelt_01`]    = {
        name = "Water Snake",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_snakeredboa_01`]  = {
        name = "Snake Red Boa",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_snakeferdelance_01`]   = {
        name = "Snake Fer-De-Lance",
        carcassMoney     = 3.00,
        skinnedBodyMoney = 1.75,
        peltMoneyPoor    = 1.50,
        peltMoneyGood    = 2.25,
        peltMoneyPerfect = 3.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_snakeblacktailrattle_01`]    = {
        name = "Black-Tailed Rattlesnake",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_snakeblacktailrattle_01`]    = {
        name = "Western Rattlesnake",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_snake_01`]    = {
        name = "Diamondback Snake",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_snakewater_01`]    = {
        name = "Midland Water Snake",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_skunk_01`]   = {
        name = "Striped Skunk",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_sheep_01`]     = {
        name = "Merino Sheep",
        carcassMoney     = 1.00,
        skinnedBodyMoney = 0.60,
        peltMoneyPoor    = 0.50,
        peltMoneyGood    = 0.75,
        peltMoneyPerfect = 1.00,
        gold = 0,
        poor    = 1729948479,
        good    = -1317365569,
        perfect = 1466150167
    },
    [`a_c_seagull_01`]   = {
        name = "Herring Seagull",
        carcassMoney     = 1.50,
        skinnedBodyMoney = 0.90,
        peltMoneyPoor    = 0.75,
        peltMoneyGood    = 1.12,
        peltMoneyPerfect = 1.50,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_roseatespoonbill_01`]  = {
        name = "Roseate Spoonbill",
        carcassMoney     = 1.95,
        skinnedBodyMoney = 1.15,
        peltMoneyPoor    = 0.97,
        peltMoneyGood    = 1.46,
        peltMoneyPerfect = 1.95,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_rooster_01`]   = {
        name = "Dominique Rooster",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_redfootedbooby_01` ]   = {
        name = "Red-Footed Booby",
        carcassMoney     = 1.95,
        skinnedBodyMoney = 1.15,
        peltMoneyPoor    = 0.97,
        peltMoneyGood    = 1.46,
        peltMoneyPerfect = 1.95,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_raven_01`]   = {
        name = "Raven",
        carcassMoney     = 1.75,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.87,
        peltMoneyGood    = 1.31,
        peltMoneyPerfect = 1.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_raccoon_01`]   = {
        name = "North American Racoon",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_rabbit_01`]   = {
        name = "Black-Tailed Jackrabbit",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_pronghorn_01`]   = {
        name = "American Pronghorn Doe",
        carcassMoney     = 3.75,
        skinnedBodyMoney = 2.15,
        peltMoneyPoor    = 1.87,
        peltMoneyGood    = 2.81,
        peltMoneyPerfect = 3.75,
        gold = 0,
        poor    = -983605026,
        good    = 554578289,
        perfect = -1544126829
    },
    [`a_c_prairiechicken_01`]   = {
        name = "Greater Prairie Chicken",
        carcassMoney     = 1.00,
        skinnedBodyMoney = 0.60,
        peltMoneyPoor    = 0.50,
        peltMoneyGood    = 0.75,
        peltMoneyPerfect = 1.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_possum_01`]  = {
        name = "Wirginia Possum",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_pig_01`]   = {
        name = "Berkshire Pig",
        carcassMoney     = 1.75,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.87,
        peltMoneyGood    = 1.31,
        peltMoneyPerfect = 1.75,
        gold = 0,
        poor    = -308965548,
        good    = -57190831,
        perfect = -1102272634
    },
    [`a_c_pheasant_01`]   = {
        name = "Ring-Necked Pheasant",
        carcassMoney     = 1.25,
        skinnedBodyMoney = 0.75,
        peltMoneyPoor    = 0.62,
        peltMoneyGood    = 0.93,
        peltMoneyPerfect = 1.25,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_pelican_01`]   = {
        name = "American White Pelican",
        carcassMoney     = 1.50,
        skinnedBodyMoney = 0.90,
        peltMoneyPoor    = 0.75,
        peltMoneyGood    = 1.12,
        peltMoneyPerfect = 1.50,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_parrot_01`]  = {
        name = "Blue And Yellow Macaw",
        carcassMoney     = 2.50,
        skinnedBodyMoney = 1.50,
        peltMoneyPoor    = 1.25,
        peltMoneyGood    = 1.87,
        peltMoneyPerfect = 2.50,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_panther_01` ]   = {
        name = "Panther",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.30,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = 1584468323,
        good    = -395646254,
        perfect = 1969175294
    },
    [`a_c_californiacondor_01`]    = {
        name = "Californian Condor",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_chicken_01`]  = {
        name = "Dominique Chicken",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_cormorant_01`]  = {
        name = "Double-Crested Cormorant",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_cougar_01`]     = {
        name = "Cougar",
        carcassMoney     = 4.25,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.12,
        peltMoneyGood    = 3.18,
        peltMoneyPerfect = 4.25,
        gold = 0,
        poor    = 1914602340,
        good    = 459744337,
        perfect = -1791452194
    },
    [`a_c_cow`]    = {
        name = "Florida Cracker Cow",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = 334093551,
        good    = 120594075,
        perfect = -845037222
    },
    [`a_c_coyote_01`]    = {
        name = "Coyote",
        carcassMoney     = 3.25,
        skinnedBodyMoney = 1.90,
        peltMoneyPoor    = 1.62,
        peltMoneyGood    = 2.43,
        peltMoneyPerfect = 3.25,
        gold = 0,
        poor    = -258096473,
        good    = 120939141,
        perfect = -794277189
    },
    [`a_c_cranewhooping_01`]   = {
        name = "Whooping Crane",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_gilamonster_01`]     = {
        name = "Gila Monster",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_goat_01`]   = {
        name = "Alpine Goat",
        carcassMoney     = 2.50,
        skinnedBodyMoney = 1.50,
        peltMoneyPoor    = 1.25,
        peltMoneyGood    = 1.87,
        peltMoneyPerfect = 2.50,
        gold = 0,
        poor    = 699990316,
        good    = 171071442,
        perfect = -1648383828
    },
    [`a_c_goosecanada_01`]    = {
        name = "Canada Goose",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_hawk_01`]  = {
        name = "Ferruinous Hawk",
        carcassMoney     = 2.50,
        skinnedBodyMoney = 1.50,
        peltMoneyPoor    = 1.25,
        peltMoneyGood    = 1.87,
        peltMoneyPerfect = 2.50,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_heron_01`]   = {
        name = "Great Blue Heron",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_iguana_01`]  = {
        name = "Green Iguana",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_iguanadesert_01`]   = {
        name = "Desert Iguana",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_javelina_01`]   = {
        name = "Peccary Pig",
        carcassMoney     = 2.00,
        skinnedBodyMoney = 1.20,
        peltMoneyPoor    = 1.00,
        peltMoneyGood    = 1.50,
        peltMoneyPerfect = 2.00,
        gold = 0,
        poor    = -99092070,
        good    = -1379330323,
        perfect = 1963510418
    },
    [`a_c_loon_01`]    = {
        name = "Common Loon",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_moose_01`]  = {
        name = "Moose",
        carcassMoney     = 3.50,
        skinnedBodyMoney = 2.00,
        peltMoneyPoor    = 1.75,
        peltMoneyGood    = 2.62,
        peltMoneyPerfect = 3.50,
        gold = 0,
        poor    = 1868576868,
        good    = 1636891382,
        perfect = -217731719
    },
    [`a_c_muskrat_01`]  = {
        name = "American Muskrat",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_owl_01`]    = {
        name = "Great Horned Owl",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [`a_c_ox_01`]    = {
        name = "Angus Ox",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = 4623248928,
        good    = 1208128650,
        perfect = 659601266
    },
    [`a_c_alligator_03`]  = {
        name = "Small Alligator",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = 180623689,
        good    = -802026654,
        perfect = -1625078531
    },
    [-1892280447]  = {
        name = "American Alligator",
        carcassMoney     = 2.25,
        skinnedBodyMoney = 1.25,
        peltMoneyPoor    = 1.12,
        peltMoneyGood    = 1.68,
        peltMoneyPerfect = 2.25,
        gold = 0,
        poor    = 180623689,
        good    = -802026654,
        perfect = -1625078531
    },
    [-2004866590]  = {
        name = "Alligator",
        carcassMoney     = 3.00,
        skinnedBodyMoney = 1.75,
        peltMoneyPoor    = 1.50,
        peltMoneyGood    = 2.25,
        peltMoneyPerfect = 3.00,
        gold = 0,
        poor    = -1243878166,
        good    = -2102079544,
        perfect = -1475338121
    },
    [-1804478060]  = {
        name = "Legendary Teca Alligator",
        carcassMoney     = 3.00,
        skinnedBodyMoney = 1.75,
        peltMoneyPoor    = 1.50,
        peltMoneyGood    = 2.25,
        peltMoneyPerfect = 3.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -1924159110
    },
    [674287411] = {
        name = "Legendary Sun Alligator",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = 1806153689,
        good    = -802026654,
        perfect = -1625078531
    },
    [`a_c_beaver_01`]    = {
        name = "North American Beaver",
        carcassMoney     = 2.75,
        skinnedBodyMoney = 1.60,
        peltMoneyPoor    = 1.37,
        peltMoneyGood    = 2.06,
        peltMoneyPerfect = 2.75,
        gold = 0,
        poor    = -1569450319,
        good    = -2059726619,
        perfect = 854596618
    },
    [`a_c_bearblack_01`]    = {
        name = "American Black Bear",
        carcassMoney     = 3.50,
        skinnedBodyMoney = 2.00,
        peltMoneyPoor    = 1.75,
        peltMoneyGood    = 2.62,
        peltMoneyPerfect = 3.50,
        gold = 0,
        poor    = 1083865179,
        good    = 1490032862,
        perfect = 663376218
    },
    [`a_c_bear_01`]  = {
        name = "Grizzly Bear",
        carcassMoney     = 3.50,
        skinnedBodyMoney = 2.00,
        peltMoneyPoor    = 1.75,
        peltMoneyGood    = 2.62,
        peltMoneyPerfect = 3.50,
        gold = 0,
        poor    = 957520252,
        good    = 143941906,
        perfect = 1292673537
    },
    [55897452] = {
        name = "Legendary Owiza Bear",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = 1181154860
    },
    [499820607] = {
        name = "Legendary Ridgeback Spirit Bear",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = 1418435161
    },
    [98597207] = {
        name = "Legendary Golden Spirit Bear",
        carcassMoney     = 1.65,
        skinnedBodyMoney = 1.00,
        peltMoneyPoor    = 0.82,
        peltMoneyGood    = 1.23,
        peltMoneyPerfect = 1.65,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = 1511236969
    },
    [-1307757043]   = {
        name = "Legendary Coyote",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = 1728819413
    },
    ['mp_a_c_elk_01']   = {
        name = "Legendary Elk",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -420237085
    },
   [`mp_a_c_wolf_01`]   = {
        name = "Legendary Wolf",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -1548204069
    },
    [`mp_a_c_fox_01`]   = {
        name = "Legendary Ota Fox",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -1262044528
    },
    [`mp_a_c_panther_01`]   = {
        name = "Legendary Night Panther",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = 836208559
    },
    [-1149999295]   = {
        name = "Legendary Beaver",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -251416414
    },
    [`mp_a_c_buffalo_01`]   = {
        name = "Legendary Winyan Bison",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -1087205695
    },
    [`a_c_buffalo_tatanka_01`]   = {
        name = "Legendary Tatanka Bison",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -260181673
    },
    [`mp_a_c_cougar_01`]   = {
        name = "Legendary Maza Cougar",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = 397926876
    },
    [`mp_a_c_moose_01`]   = {
        name = "Legendary Snowflake Moose",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = 739090883
    },
    [`mp_a_c_boar_01`]   = {
        name = "Legendary Wakpa Boar",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = -1249752300
    },

    -- =============== Fish ==================
    [-711779521]   = {
        name = "Longnose Gar",
        carcassMoney     = 6.00,
        skinnedBodyMoney = 4.00,
        peltMoneyPoor    = 3.00,
        peltMoneyGood    = 4.50,
        peltMoneyPerfect = 6.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [-1553593715]  = {
        name = "Muskie",
        carcassMoney     = 6.00,
        skinnedBodyMoney = 4.00,
        peltMoneyPoor    = 3.00,
        peltMoneyGood    = 4.50,
        peltMoneyPerfect = 6.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [-300867788]   = {
        name = "Lake Sturgeon",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [1538187374]   = {
        name = "Channel Catfish",
        carcassMoney     = 5.00,
        skinnedBodyMoney = 3.00,
        peltMoneyPoor    = 2.50,
        peltMoneyGood    = 3.75,
        peltMoneyPerfect = 5.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [697075200]    = {
        name = "Northern Pike",
        carcassMoney     = 5.00,
        skinnedBodyMoney = 3.00,
        peltMoneyPoor    = 2.50,
        peltMoneyGood    = 3.75,
        peltMoneyPerfect = 5.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [1867262572]   = {
        name = "Bluegill",
        carcassMoney     = 5.00,
        skinnedBodyMoney = 3.00,
        peltMoneyPoor    = 2.50,
        peltMoneyGood    = 3.75,
        peltMoneyPerfect = 5.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [1493541632]   = {
        name = "Bullhead catfish",
        carcassMoney     = 5.00,
        skinnedBodyMoney = 3.00,
        peltMoneyPoor    = 2.50,
        peltMoneyGood    = 3.75,
        peltMoneyPerfect = 5.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [3111984125]   = {
        name = "Chain Pickerl",
        carcassMoney     = 5.00,
        skinnedBodyMoney = 3.00,
        peltMoneyPoor    = 2.50,
        peltMoneyGood    = 3.75,
        peltMoneyPerfect = 5.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [463643368]    = {
        name = "bigmouth bass",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [3842742512]   = {
        name = "Perch",
        carcassMoney     = 3.00,
        skinnedBodyMoney = 1.75,
        peltMoneyPoor    = 1.50,
        peltMoneyGood    = 2.25,
        peltMoneyPerfect = 3.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [134747314]    = {
        name = "Rainbow trout",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [4051778898]   = {
        name = "Redfin Pickerl",
        carcassMoney     = 3.00,
        skinnedBodyMoney = 1.75,
        peltMoneyPoor    = 1.50,
        peltMoneyGood    = 2.25,
        peltMoneyPerfect = 3.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [2313405824]   = {
        name = "Rock Bass",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [2410477101]   = {
        name = "Smallmouth bass",
        carcassMoney     = 3.00,
        skinnedBodyMoney = 1.75,
        peltMoneyPoor    = 1.50,
        peltMoneyGood    = 2.25,
        peltMoneyPerfect = 3.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [543892122]    = {
        name = "Salmon Redfish",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
    [1702636991]   = {
        name = "Salmon sockeye",
        carcassMoney     = 4.00,
        skinnedBodyMoney = 2.50,
        peltMoneyPoor    = 2.00,
        peltMoneyGood    = 3.00,
        peltMoneyPerfect = 4.00,
        gold = 0,
        poor    = nil,
        good    = nil,
        perfect = nil
    },
}
