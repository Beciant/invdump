-- Unified augment table for LuAshitaCast + invdump

return {

    ----------------------------------------------------------------------
    -- 1. STANDARD AUGMENTS (Ambuscade / Odyssey / Unity / Escha / Skirmish)
    ----------------------------------------------------------------------
    Standard = {
        [1] = "HP",
        [2] = "MP",
        [3] = "STR",
        [4] = "DEX",
        [5] = "VIT",
        [6] = "AGI",
        [7] = "INT",
        [8] = "MND",
        [9] = "CHR",

        [10] = "Attack",
        [11] = "Ranged Attack",
        [12] = "Defense",
        [13] = "Accuracy",
        [14] = "Ranged Accuracy",
        [15] = "Magic Attack Bonus",
        [16] = "Magic Accuracy",
        [17] = "Magic Defense Bonus",
        [18] = "Magic Damage",
        [19] = "Magic Crit Rate",

        [20] = "Evasion",
        [21] = "Magic Evasion",
        [22] = "Parry Rate",
        [23] = "Guard Rate",

        [25] = "Store TP",
        [26] = "Dual Wield",
        [27] = "Subtle Blow",
        [28] = "Fast Cast",
        [29] = "Haste",
        [30] = "Critical Hit Rate",
        [31] = "Critical Hit Damage",
        [32] = "Double Attack",
        [33] = "Triple Attack",
        [34] = "Quadruple Attack",
        [35] = "Counter",
        [36] = "Kick Attacks",

        [40] = "Weapon Skill Damage",
        [41] = "Skillchain Damage",
        [42] = "TP Bonus",
        [43] = "WS Accuracy",
        [44] = "WS Attack",

        [50] = "Pet: Attack",
        [51] = "Pet: Accuracy",
        [52] = "Pet: Magic Attack Bonus",
        [53] = "Pet: Magic Accuracy",
        [54] = "Pet: Damage Taken",
        [55] = "Pet: Regen",
        [56] = "Pet: Refresh",
        [57] = "Pet: Haste",
        [58] = "Pet: Store TP",
        [59] = "Pet: Double Attack",
        [60] = "Pet: Crit Rate",
        [61] = "Pet: Magic Crit Rate",
        [62] = "Pet: Magic Burst Damage",

        [70] = "Damage Taken",
        [71] = "Magic Damage Taken",
        [72] = "Breath Damage Taken",

        [80] = "Magic Burst Damage",
        [81] = "Magic Burst Damage II",
        [82] = "Elemental Resist",
        [83] = "Enfeebling Potency",
        [84] = "Enhancing Duration",
        [85] = "Cure Potency",
        [86] = "Cure Potency II",
        [87] = "Conserve MP",
        [88] = "Spell Interruption Rate",

        [100] = "All Jobs",
        [101] = "Path A",
        [102] = "Path B",
        [103] = "Path C",
        [104] = "Path D",

        [200] = "Odyssey Rank Bonus",
        [201] = "Odyssey Path A",
        [202] = "Odyssey Path B",
        [203] = "Odyssey Path C",
        [204] = "Odyssey Path D",
        [205] = "Odyssey HP/MP Bonus",
        [206] = "Odyssey Combat Bonus",

        [300] = "Ambuscade Melee Bonus",
        [301] = "Ambuscade Magic Bonus",
        [302] = "Ambuscade Ranged Bonus",
        [303] = "Ambuscade Pet Bonus",

        [400] = "Arcane Augment",
        [401] = "Arcane Bonus",
        [402] = "Arcane Stat Bonus",

        [500] = "Escha Attack",
        [501] = "Escha Accuracy",
        [502] = "Escha Magic Attack Bonus",
        [503] = "Escha Magic Accuracy",
        [504] = "Escha Pet Bonus",

        [600] = "Unity Bonus",
        [601] = "Unity Accuracy",
        [602] = "Unity Attack",
        [603] = "Unity Magic Bonus",

        [700] = "Relic+1 Bonus",
        [701] = "Relic+2 Bonus",
        [702] = "Empyrean+1 Bonus",
        [703] = "Empyrean+2 Bonus",
        [704] = "Mythic Bonus",
        [705] = "Artifact Bonus",

        [800] = "Pet: Regen",
        [801] = "Pet: Refresh",
        [802] = "Pet: Haste",
        [803] = "Pet: Store TP",
        [804] = "Pet: Double Attack",
        [805] = "Pet: Crit Rate",
        [806] = "Pet: Magic Burst Bonus",

        [900] = "Enmity",
        [901] = "Snapshot",
        [902] = "Rapid Shot",
        [903] = "Shield Skill",
        [904] = "Parrying Skill",
        [905] = "Magic Crit Damage",
        [906] = "Magic Crit Rate",
        [907] = "Elemental Damage",
        [908] = "Status Resist",
        [909] = "Movement Speed",
        [910] = "Treasure Hunter",
        [911] = "Zanshin",
        [912] = "Martial Arts",
        [913] = "Kick Attacks",
        [914] = "Waltz Potency",
        [915] = "Samba Potency",
        [916] = "Jig Duration",
        [917] = "Song Duration",
        [918] = "Song Effect",
        [919] = "Rune Effect",
        [920] = "Ward Duration",
    },
	
	    ----------------------------------------------------------------------
    -- 2. PATH AUGMENTS (Ambuscade A/B/C/D) — EXACT ITEM NAMES
    ----------------------------------------------------------------------
    Paths = {

        ------------------------------------------------------------------
        -- NECK
        ------------------------------------------------------------------
        ["Loricate Torque +1"]      = "A",
        ["Moonlight Necklace"]      = "B",
        ["Twilight Torque"]         = "C",
        ["Warder's Charm +1"]       = "D",

        ------------------------------------------------------------------
        -- BELTS
        ------------------------------------------------------------------
        ["Zoran's Belt"]            = "A",
        ["Moonbow Belt"]            = "D",
        ["Sailfi Belt +1"]          = "B",
        ["Kentarch Belt +1"]        = "C",

        ------------------------------------------------------------------
        -- CAPES / MANTLES (Ambuscade Job Capes)
        ------------------------------------------------------------------
        ["Weard Mantle"]            = "A",
        ["Conveyance Cape"]         = "B",
        ["Lifestream Cape"]         = "B",
        ["Pahtli Cape"]             = "C",
        ["Bane Cape"]               = "A",
        ["Anchoret's Mantle"]       = "A",
        ["Moonbow Whistle"]         = "D",

        ------------------------------------------------------------------
        -- RINGS
        ------------------------------------------------------------------
        ["Barataria Ring"]          = "A",
        ["Puffin Ring"]             = "B",
        ["Noddy Ring"]              = "C",
        ["Enlivened Ring"]          = "A",
        ["Vehemence Ring"]          = "B",
        ["Longshot Ring"]           = "C",
        ["Fistmele Ring"]           = "D",
        ["Perception Ring"]         = "A",
        ["Acumen Ring"]             = "B",

        ------------------------------------------------------------------
        -- AMBUSCADE ARMOR (Path A/B/C/D)
        -- These are the Ambuscade sets with augment paths.
        ------------------------------------------------------------------

        -- Flamma (WAR)
        ["Flamma Zucchetto +2"]     = "A",
        ["Flamma Korazin +2"]       = "A",
        ["Flamma Manopolas +2"]     = "A",
        ["Flamma Dirs +2"]          = "A",
        ["Flamma Gambieras +2"]     = "A",

        -- Mummu (THF)
        ["Mummu Bonnet +2"]         = "B",
        ["Mummu Jacket +2"]         = "B",
        ["Mummu Wrists +2"]         = "B",
        ["Mummu Kecks +2"]          = "B",
        ["Mummu Gamashes +2"]       = "B",

        -- Ayanmo (RDM)
        ["Ayanmo Zucchetto +2"]     = "C",
        ["Ayanmo Corazza +2"]       = "C",
        ["Ayanmo Manopolas +2"]     = "C",
        ["Ayanmo Cosciales +2"]     = "C",
        ["Ayanmo Gambieras +2"]     = "C",

        -- Tali'ah (BST)
        ["Tali'ah Turban +2"]       = "D",
        ["Tali'ah Manteel +2"]      = "D",
        ["Tali'ah Gages +2"]        = "D",
        ["Tali'ah Seraweels +2"]    = "D",
        ["Tali'ah Crackows +2"]     = "D",

        -- Mallquis (BLM)
        ["Mallquis Chapeau +2"]     = "A",
        ["Mallquis Saio +2"]        = "A",
        ["Mallquis Cuffs +2"]       = "A",
        ["Mallquis Trews +2"]       = "A",
        ["Mallquis Clogs +2"]       = "A",

        -- Hizamaru (SAM)
        ["Hizamaru Somen +2"]       = "B",
        ["Hizamaru Haramaki +2"]    = "B",
        ["Hizamaru Kote +2"]        = "B",
        ["Hizamaru Hizayoroi +2"]   = "B",
        ["Hizamaru Sune-Ate +2"]    = "B",

        -- Inyanga (WHM)
        ["Inyanga Tiara +2"]        = "C",
        ["Inyanga Jubbah +2"]       = "C",
        ["Inyanga Dastanas +2"]     = "C",
        ["Inyanga Shalwar +2"]      = "C",
        ["Inyanga Crackows +2"]     = "C",

        -- Meghanada (RNG)
        ["Meghanada Visor +2"]      = "D",
        ["Meghanada Cuirie +2"]     = "D",
        ["Meghanada Gloves +2"]     = "D",
        ["Meghanada Chausses +2"]   = "D",
        ["Meghanada Jambeaux +2"]   = "D",

        -- Jhakri (BLU)
        ["Jhakri Coronal +2"]       = "A",
        ["Jhakri Robe +2"]          = "A",
        ["Jhakri Cuffs +2"]         = "A",
        ["Jhakri Slops +2"]         = "A",
        ["Jhakri Pigaches +2"]      = "A",

        -- Adhemar (THF/RNG)
        ["Adhemar Bonnet +1"]       = "B",
        ["Adhemar Jacket +1"]       = "B",
        ["Adhemar Wristbands +1"]   = "B",

        -- Amalric (BLM/RDM)
        ["Amalric Coif +1"]         = "C",
        ["Amalric Doublet +1"]      = "C",
        ["Amalric Gages +1"]        = "C",

        -- Kaykaus (WHM/RDM)
        ["Kaykaus Mitra +1"]        = "D",
        ["Kaykaus Bliaut +1"]       = "D",
        ["Kaykaus Cuffs +1"]        = "D",

        -- Rao (MNK)
        ["Rao Kabuto +1"]           = "A",
        ["Rao Togi +1"]             = "A",
        ["Rao Kote +1"]             = "A",
        ["Rao Haidate +1"]          = "A",
        ["Rao Sune-Ate +1"]         = "A",

        -- Ryuo (SAM/NIN)
        ["Ryuo Somen +1"]           = "B",
        ["Ryuo Togi +1"]            = "B",
        ["Ryuo Kote +1"]            = "B",
        ["Ryuo Hakama +1"]          = "B",
        ["Ryuo Sune-Ate +1"]        = "B",

        -- Carmine (RDM/BLU)
        ["Carmine Mask +1"]         = "C",
        ["Carmine Mail +1"]         = "C",
        ["Carmine Cuisses +1"]      = "C",

        -- Naga (PLD)
        ["Naga Helm +1"]            = "D",
        ["Naga Cuirass +1"]         = "D",
        ["Naga Gauntlets +1"]       = "D",
        ["Naga Breeches +1"]        = "D",
        ["Naga Sabatons +1"]        = "D",

    },
	
	    ----------------------------------------------------------------------
    -- 3. MAGIAN / TRIAL / RELIC / MYTHIC / EMPYREAN / HOMESTEAD AUGMENTS
    --    keyed by item ID, using EXACT ITEM NAMES
    ----------------------------------------------------------------------
    Magian = {

        ------------------------------------------------------------------
        -- MAGIAN DAGGERS
        ------------------------------------------------------------------
        [20536] = { -- Tinhaspa
            "Accuracy+15",
            "DEX+12",
            "DMG+5",
        },

        [19334] = { -- Kartika
            "STR+12",
            "Attack+20",
        },

        [19885] = { -- Astolfo
            "Pet:Attack+20",
            "Pet:Accuracy+20",
        },

        ------------------------------------------------------------------
        -- MAGIAN SWORDS
        ------------------------------------------------------------------
        [19554] = { -- Kila +2
            "DEX+12",
            "Attack+20",
        },

        [19566] = { -- Guichard's Axe +2
            "STR+12",
            "Attack+20",
        },

        ------------------------------------------------------------------
        -- MAGIAN AXES
        ------------------------------------------------------------------
        [19472] = { -- Taipan Fangs +1
            "Accuracy+15",
            "Attack+20",
        },

        ------------------------------------------------------------------
        -- MAGIAN POLEARMS
        ------------------------------------------------------------------
        [18086] = { -- Behourd Lance
            "STR+12",
            "Attack+20",
        },

        ------------------------------------------------------------------
        -- MAGIAN GREAT SWORDS
        ------------------------------------------------------------------
        [17664] = { -- Firmament
            "Accuracy+20",
            "Attack+20",
        },

        ------------------------------------------------------------------
        -- MAGIAN GREAT AXES
        ------------------------------------------------------------------
        [16663] = { -- Battleaxe +1
            "STR+12",
            "Attack+20",
        },

        ------------------------------------------------------------------
        -- MAGIAN KATANAS
        ------------------------------------------------------------------
        [18266] = { -- Relic Dagger (Trial)
            "DMG+10",
            "Accuracy+20",
        },

        ------------------------------------------------------------------
        -- MAGIAN CLUBS
        ------------------------------------------------------------------
        [17588] = { -- Treat Staff II
            "Cure Potency+10",
            "Healing Magic Skill+10",
        },

        ------------------------------------------------------------------
        -- MAGIAN STAVES (Elemental)
        ------------------------------------------------------------------
        [18633] = { -- Chatoyant Staff
            "Magic Accuracy+20",
            "Magic Attack Bonus+20",
        },

        [18612] = { -- Ram Staff
            "Pet:Magic Attack Bonus+20",
            "Pet:Magic Accuracy+20",
        },

        [18721] = { -- Soultrapper
            "Snapshot+10",
            "Ranged Accuracy+20",
        },

        ------------------------------------------------------------------
        -- HOMESTEAD WEAPONS
        ------------------------------------------------------------------
        [20617] = { -- Homestead Dagger
            "Accuracy+20",
            "Attack+20",
        },

        [21171] = { -- Homestead Staff
            "Magic Accuracy+20",
            "Magic Attack Bonus+20",
        },

        [21426] = { -- Achaq Grip
            "Magic Accuracy+10",
            "Magic Attack Bonus+10",
        },

        ------------------------------------------------------------------
        -- RELIC / MYTHIC / EMPYREAN (Augmented versions)
        ------------------------------------------------------------------
        [18260] = { -- Relic Knuckles
            "DMG+10",
            "Attack+20",
        },

        [18633] = { -- Chatoyant Staff (duplicate for reforged)
            "Magic Accuracy+20",
            "Magic Attack Bonus+20",
        },

        [18612] = { -- Ram Staff (duplicate for reforged)
            "Pet:Magic Attack Bonus+20",
            "Pet:Magic Accuracy+20",
        },

        [17527] = { -- Pole of Trials
            "DMG+5",
            "Accuracy+10",
        },

        ------------------------------------------------------------------
        -- SPECIAL CASES (Weapons with hidden augments)
        ------------------------------------------------------------------
        [19132] = { -- Twilight Knife
            "Triple Attack+3",
            "Accuracy+20",
        },

        [16480] = { -- Thief's Knife
            "Treasure Hunter+1",
        },

        [18254] = { -- Tiphia Sting
            "Accuracy+20",
            "Attack+20",
        },

        [17859] = { -- Animator
            "Pet:Attack+20",
            "Pet:Accuracy+20",
        },

        [21453] = { -- Em. Animator
            "Pet:Attack+25",
            "Pet:Accuracy+25",
        },

        ------------------------------------------------------------------
        -- PET / SUMMONING SPECIAL WEAPONS
        ------------------------------------------------------------------
        [11619] = { -- Caller's Pendant
            "Pet:Magic Attack Bonus+10",
            "Pet:Magic Accuracy+10",
        },

        [11651] = { -- Epona's Ring (special augment)
            "Double Attack+3",
            "Triple Attack+3",
        },

        ------------------------------------------------------------------
        -- HIGH-END SPECIAL AUGMENTS
        ------------------------------------------------------------------
        [11538] = { -- Nexus Cape
            "Fast Cast+10",
            "Magic Burst Damage+5",
        },

        [26340] = { -- Moonbow Belt
            "Store TP+10",
            "Accuracy+20",
        },

        [28523] = { -- Heartseeker Earring
            "Accuracy+10",
            "DEX+5",
        },

        [28520] = { -- Steelflash Earring
            "Attack+10",
            "STR+5",
        },

        [28521] = { -- Bladeborn Earring
            "Accuracy+10",
            "DEX+5",
        },

    },
	
	    ----------------------------------------------------------------------
    -- 4. ODYSSEY / ESCHA / UNITY / SKIRMISH / MODERN AUGMENTED ITEMS
    --    These items use STANDARD augment blocks, but require readable
    --    item-specific augment names for LuAshitaCast.
    ----------------------------------------------------------------------
    Modern = {

        ------------------------------------------------------------------
        -- ODYSSEY RANK GEAR (Sheol Gaol)
        ------------------------------------------------------------------
        ["Nyame Helm"] = {
            "HP+80",
            "Magic Evasion+80",
            "Damage Taken-7%",
        },

        ["Nyame Mail"] = {
            "HP+120",
            "Magic Evasion+80",
            "Damage Taken-9%",
        },

        ["Nyame Gauntlets"] = {
            "HP+80",
            "Magic Evasion+80",
            "Damage Taken-7%",
        },

        ["Nyame Flanchard"] = {
            "HP+100",
            "Magic Evasion+80",
            "Damage Taken-8%",
        },

        ["Nyame Sollerets"] = {
            "HP+70",
            "Magic Evasion+80",
            "Damage Taken-6%",
        },

        ------------------------------------------------------------------
        -- ESCHA / REISENJIMA AUGMENTED GEAR
        ------------------------------------------------------------------
        ["Herculean Helm"] = {
            "Accuracy+20",
            "Attack+20",
            "Critical Hit Damage+3%",
        },

        ["Herculean Vest"] = {
            "Accuracy+25",
            "Attack+25",
            "Weapon Skill Damage+5%",
        },

        ["Herculean Gloves"] = {
            "Accuracy+20",
            "Attack+20",
            "Double Attack+3%",
        },

        ["Herculean Trousers"] = {
            "Accuracy+25",
            "Attack+25",
            "Store TP+6",
        },

        ["Herculean Boots"] = {
            "Accuracy+20",
            "Attack+20",
            "Triple Attack+3%",
        },

        ["Merlinic Hood"] = {
            "Magic Attack Bonus+30",
            "Magic Accuracy+30",
            "Magic Burst Damage+5%",
        },

        ["Merlinic Jubbah"] = {
            "Magic Attack Bonus+35",
            "Magic Accuracy+35",
            "Fast Cast+5%",
        },

        ["Merlinic Dastanas"] = {
            "Magic Attack Bonus+25",
            "Magic Accuracy+25",
            "Magic Burst Damage+4%",
        },

        ["Merlinic Shalwar"] = {
            "Magic Attack Bonus+30",
            "Magic Accuracy+30",
            "Magic Burst Damage+5%",
        },

        ["Merlinic Crackows"] = {
            "Magic Attack Bonus+25",
            "Magic Accuracy+25",
            "Fast Cast+4%",
        },

        ["Valorous Mask"] = {
            "Accuracy+20",
            "Attack+20",
            "Weapon Skill Damage+4%",
        },

        ["Valorous Mail"] = {
            "Accuracy+25",
            "Attack+25",
            "Double Attack+4%",
        },

        ["Valorous Mitts"] = {
            "Accuracy+20",
            "Attack+20",
            "Store TP+6",
        },

        ["Valorous Hose"] = {
            "Accuracy+25",
            "Attack+25",
            "Critical Hit Rate+3%",
        },

        ["Valorous Greaves"] = {
            "Accuracy+20",
            "Attack+20",
            "Triple Attack+3%",
        },

        ------------------------------------------------------------------
        -- UNITY AUGMENTED GEAR
        ------------------------------------------------------------------
        ["Ammurapi Shield"] = {
            "Magic Accuracy+38",
            "Magic Attack Bonus+38",
        },

        ["Adad Amulet"] = {
            "Pet:Attack+25",
            "Pet:Accuracy+25",
        },

        ["Regal Ring"] = {
            "Magic Accuracy+10",
            "Magic Attack Bonus+10",
        },

        ["Regal Earring"] = {
            "Magic Accuracy+15",
            "Magic Attack Bonus+15",
        },

        ["Regal Necklace"] = {
            "Magic Accuracy+20",
            "Magic Attack Bonus+20",
        },

        ------------------------------------------------------------------
        -- SKIRMISH / ARCANE / ALLUVION SKIRMISH
        ------------------------------------------------------------------
        ["Acro Helm"] = {
            "Accuracy+20",
            "Attack+20",
            "Store TP+6",
        },

        ["Acro Surcoat"] = {
            "Accuracy+25",
            "Attack+25",
            "Double Attack+3%",
        },

        ["Acro Gauntlets"] = {
            "Accuracy+20",
            "Attack+20",
            "Weapon Skill Damage+4%",
        },

        ["Acro Breeches"] = {
            "Accuracy+25",
            "Attack+25",
            "Critical Hit Rate+3%",
        },

        ["Acro Leggings"] = {
            "Accuracy+20",
            "Attack+20",
            "Triple Attack+3%",
        },

        ["Taeon Chapeau"] = {
            "Accuracy+20",
            "Attack+20",
            "Dual Wield+3",
        },

        ["Taeon Tabard"] = {
            "Accuracy+25",
            "Attack+25",
            "Store TP+6",
        },

        ["Taeon Gloves"] = {
            "Accuracy+20",
            "Attack+20",
            "Fast Cast+5%",
        },

        ["Taeon Tights"] = {
            "Accuracy+25",
            "Attack+25",
            "Critical Hit Damage+3%",
        },

        ["Taeon Boots"] = {
            "Accuracy+20",
            "Attack+20",
            "Movement Speed+8%",
        },

        ------------------------------------------------------------------
        -- MODERN AUGMENTED ACCESSORIES
        ------------------------------------------------------------------
        ["Moonlight Ring"] = {
            "Damage Taken-5%",
            "HP+110",
        },

        ["Moonlight Cape"] = {
            "Damage Taken-6%",
            "HP+200",
        },

        ["Sacro Breastplate"] = {
            "Magic Evasion+80",
            "Damage Taken-10%",
        },

        ["Sacro Gauntlets"] = {
            "Magic Evasion+60",
            "Damage Taken-8%",
        },

        ["Sacro Sollerets"] = {
            "Magic Evasion+60",
            "Damage Taken-8%",
        },

        ------------------------------------------------------------------
        -- MODERN AUGMENTED WEAPONS
        ------------------------------------------------------------------
        ["Naegling"] = {
            "Accuracy+40",
            "Attack+40",
            "Weapon Skill Damage+5%",
        },

        ["Shining One"] = {
            "Accuracy+40",
            "Attack+40",
            "Critical Hit Rate+5%",
        },

        ["Kaja Sword"] = {
            "Accuracy+30",
            "Attack+30",
            "Weapon Skill Damage+4%",
        },

        ["Kaja Axe"] = {
            "Accuracy+30",
            "Attack+30",
            "Weapon Skill Damage+4%",
        },

        ["Kaja Staff"] = {
            "Magic Accuracy+30",
            "Magic Attack Bonus+30",
        },

        ["Kaja Bow"] = {
            "Ranged Accuracy+30",
            "Ranged Attack+30",
        },

        ["Kaja Knife"] = {
            "Accuracy+30",
            "Attack+30",
            "Triple Attack+3%",
        },

   },
   
 }
