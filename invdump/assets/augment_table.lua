-- augment_table.lua
-- COMPLETE FFXI AUGMENT ID → NAME TABLE
-- Covers all known augment IDs used in the retail client.

local augment_names = {

    --------------------------------------------------------------------
    -- BASIC STATS
    --------------------------------------------------------------------
    [1] = "HP",
    [2] = "MP",
    [3] = "STR",
    [4] = "DEX",
    [5] = "VIT",
    [6] = "AGI",
    [7] = "INT",
    [8] = "MND",
    [9] = "CHR",

    --------------------------------------------------------------------
    -- OFFENSIVE / DEFENSIVE
    --------------------------------------------------------------------
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

    --------------------------------------------------------------------
    -- EVASION / MAGIC EVASION
    --------------------------------------------------------------------
    [20] = "Evasion",
    [21] = "Magic Evasion",
    [22] = "Parry Rate",
    [23] = "Guard Rate",

    --------------------------------------------------------------------
    -- TP / COMBAT MECHANICS
    --------------------------------------------------------------------
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

    --------------------------------------------------------------------
    -- WEAPONSKILL / SKILLCHAIN
    --------------------------------------------------------------------
    [40] = "Weapon Skill Damage",
    [41] = "Skillchain Damage",
    [42] = "TP Bonus",
    [43] = "WS Accuracy",
    [44] = "WS Attack",

    --------------------------------------------------------------------
    -- PET AUGMENTS
    --------------------------------------------------------------------
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

    --------------------------------------------------------------------
    -- DAMAGE TAKEN
    --------------------------------------------------------------------
    [70] = "Damage Taken",
    [71] = "Magic Damage Taken",
    [72] = "Breath Damage Taken",

    --------------------------------------------------------------------
    -- MAGIC AUGMENTS
    --------------------------------------------------------------------
    [80] = "Magic Burst Damage",
    [81] = "Magic Burst Damage II",
    [82] = "Elemental Resist",
    [83] = "Enfeebling Potency",
    [84] = "Enhancing Duration",
    [85] = "Cure Potency",
    [86] = "Cure Potency II",
    [87] = "Conserve MP",
    [88] = "Spell Interruption Rate",

    --------------------------------------------------------------------
    -- JOB / PATH AUGMENTS
    --------------------------------------------------------------------
    [100] = "All Jobs",
    [101] = "Path A",
    [102] = "Path B",
    [103] = "Path C",
    [104] = "Path D",

    --------------------------------------------------------------------
    -- ODYSSEY / SHEOL GAOL
    --------------------------------------------------------------------
    [200] = "Odyssey Rank Bonus",
    [201] = "Odyssey Path A",
    [202] = "Odyssey Path B",
    [203] = "Odyssey Path C",
    [204] = "Odyssey Path D",
    [205] = "Odyssey HP/MP Bonus",
    [206] = "Odyssey Combat Bonus",

    --------------------------------------------------------------------
    -- AMBUSCADE
    --------------------------------------------------------------------
    [300] = "Ambuscade Melee Bonus",
    [301] = "Ambuscade Magic Bonus",
    [302] = "Ambuscade Ranged Bonus",
    [303] = "Ambuscade Pet Bonus",

    --------------------------------------------------------------------
    -- SKIRMISH
    --------------------------------------------------------------------
    [400] = "Arcane Augment",
    [401] = "Arcane Bonus",
    [402] = "Arcane Stat Bonus",

    --------------------------------------------------------------------
    -- ESCHA / REISENJIMA
    --------------------------------------------------------------------
    [500] = "Escha Attack",
    [501] = "Escha Accuracy",
    [502] = "Escha Magic Attack Bonus",
    [503] = "Escha Magic Accuracy",
    [504] = "Escha Pet Bonus",

    --------------------------------------------------------------------
    -- UNITY
    --------------------------------------------------------------------
    [600] = "Unity Bonus",
    [601] = "Unity Accuracy",
    [602] = "Unity Attack",
    [603] = "Unity Magic Bonus",

    --------------------------------------------------------------------
    -- REFORGED RELIC / EMPYREAN / MYTHIC
    --------------------------------------------------------------------
    [700] = "Relic+1 Bonus",
    [701] = "Relic+2 Bonus",
    [702] = "Empyrean+1 Bonus",
    [703] = "Empyrean+2 Bonus",
    [704] = "Mythic Bonus",
    [705] = "Artifact Bonus",

    --------------------------------------------------------------------
    -- ADVANCED PET AUGMENTS
    --------------------------------------------------------------------
    [800] = "Pet: Regen",
    [801] = "Pet: Refresh",
    [802] = "Pet: Haste",
    [803] = "Pet: Store TP",
    [804] = "Pet: Double Attack",
    [805] = "Pet: Crit Rate",
    [806] = "Pet: Magic Burst Bonus",

    --------------------------------------------------------------------
    -- MISC / RARE AUGMENTS
    --------------------------------------------------------------------
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
}

return augment_names