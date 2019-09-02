function default()
line1 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
-- Variables that determinate if a certain function is enabled or not
-- Variables for AntiDagger
adagenabled = 0; -- Anti Daggers 1 = enabled, 0 = disabled.
abenabled = 0; -- Anti Backstab 1 = enabled, 0 = disabled.
adbenabled = 0; -- Anti Deadly Blow 1 = enabled, 0 = disabled.
albenabled = 0; -- Anti Lehtal Blow 1 = enabled, 0 = disabled.
adubenabled = 0; -- Anti Dual Blow 1 = enabled, 0 = disabled.
needtoretarget = false;
lasttarget = nil; -- LastTargeted by oID
atlenabled = 0; -- Anti Target Loss 1 = enabled, 0 = disabled.
abskillid = 0;

-- Variables for Anti Disarm
adenabled = 0; -- Anti Disarm 1 = enabled, 0 = disabled.

-- Variables for Anti Fear
afenabled = 0; -- Anti Fear 1 = enabled, 0 = disabled	
fearunstuck = false;

-- Variables for Anti Steal Divinity
asdenabled = 0; -- Anti Steal Divinity 1 = enabled, 0 = disabled
buffcount = 0
maxbuffcount = 24
usefishp = 0; -- Use Fisherman's Potion 1 = yes, 0 = no.
usecarp = 0; -- Use Caravaner's Remedy potion 1 = yes, 0 = no.
usewwp = 0; -- Use Wind Walk Potion 1 = yes, 0 = no.
useacup = 0; -- Use Acumen's Potion 1 = yes, 0 = no.
usehastep = 0; -- Use Haste's Potion 1 = yes, 0 = no.
useprip = 0; -- Use Primeval's Potion 1 = yes, 0 = no.
useelep = 0; -- Use different Elemental Potions 1 yes, 0 = no.
usemysp = 0; -- Use Mystery Potion 1 = yes 0 = no

-- Variables for Titles
titlenabled = 0; -- Class on title 1 = enabled, 0 = disabled
classontitle = 0;
mytitlemode = "off"; -- off, pvpcount, pvpsincelog
pvpsincelogtitle = "noobs killed:"

-- Variables for Summon & Pet
summonenabled = 0; -- Summon & Pet functions
beastss = 0; -- Use beast ss/bss
buffcontrol = 0; -- Use buff control
betraynoss = 0; -- Disable ss on betray
soulshots = true;
firsttime = 1;
needtoactivatesoulshot = true;
needtobuffcontrol = false

-- Variables for AOE Detection
aoenabled = 0; -- AoE hide detection 1 = enabled, 0 = disabled
aoeskillid = 0;

-- Variables for Auto Pots
potsenabled = 0; -- Check
hastepotenabled = 0; -- haste pot
wwpotenabled = 0; -- ww pot
acupotenabled = 0; -- acu pot
soulpotenabled = 0; -- souls
mentalpotenabled = 0;
soullevel = 10; -- soul level to set at
siegepotenabled = 0; -- siege dash
siegedashmode = 1; -- Siege dash mode: 0 = onmovetolocation 1 = always
usetier = {0,0} -- use tier pot (haste/ww/acu)

-- Remove Buffs Variable
removebuffsenabled = 0; -- check
profile = 1;
rblabel = {"P. Atk","P. Def","Accuracy","Evasion","Crit. Rate","Crit. Power","Attack Speed","Vampiric Rage","Speed","M. Atk","M. Def","Wild Magic","Concentration","C. Speed","HP","MP","Shield Def. Rate","Shield Def. Power","Berserker Spirit","Counter Critical (T)","Dagger Mastery (T)","Iron Shield (T)","Counter Critical","Chant of Protection","Eye of Pa'agrio","Fist of Pa'agrio","Mental Shield","Cancel Protection","Clarity","Decrease Weight","Resist Poison","Regeneration","Holy Weapon","Dark Weapon","Kiss of Eva","Resist Shock","Restring","Spike","Sharp Edge","Embroider","Case Harden","Hard Training","Greater Might","Greater Shield","Bless the Blood","Lord of Vampire","Invigor","Elemental Protection","Divine Protection","Resist Fire","Resist Aqua","Resist Earth","Resist Wind","Resist Dark","Resist Holy","Stealth","Iron Shield","Ultimate Defense","Vengeance","Shield of Faith","Talisman of Defense","Shield Deflect Magic","Sword Shield","Furious Soul","Spirit of Shilen","Flame Icon","Combat Aura","Prayer","Great Fury","Gift of Queen","Blessing of Queen","Gift of Seraphim","Blessing of Seraphim"}
removebuff = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
removebuff1 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
removebuff2 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
removebuff3 = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}

A = 0;
Me = GetMe()

-- Remove cele on fullheal variables
nocelestialenabled = 0 -- check
fullheal = {0,0,0,0,0,0,0,0}
fhslabel = {"Sacrifice","Touch of Life","Touch of Eva","Blessing of Eva","Elemental Heal","Life Force","Sublime","Miracle"}
FullHealSingle = {69,341,1506,3429,58}
FullHealParty = {1426,787,1505}
barrier = {0,0,0,0,0,0,0,0}
barrierlabel = {"Celes Shield","Barrier Augment","Olf's T-Shirt","FoI","Painkiller","Force Barrier","Sonic Barrier","Enchanter Barrier"}
CelestialSkills = {1418,3158,21237,1427,837,443,442,5576}

-- Pause on Hide variables
pohenabled = 0
needtounpause = 0
checkpause = 0

-- Disable Visuals
novisuals = 0

-- Variabled taht determinate the mode of a certain function
abwalk = 0; -- Anti Backstab walk mode (turn arround)
abskill = 0; -- Anti Backstab skill mode (if dagger is targetted, use certain skill)
rbmode = 0; -- 0 = rb, 1 = nocele

-- Back Variables
rbback = 0; -- Remove Buffs back

-- Auto Ripo variables
ripostanceenabled = 0
rslabel = {"Bleed","Entangle","Sand Bomb","Bluff","Critical Wound","Throwing Dagger","Freezing Strike","Hex","Power Break","Hamstring Shot","Stun Shot","Real Target","Soul Shock","Bleeding Shot","Imbue Dark Seed","Seed of Destruction","Poison","Sting","Psycho Symphony","Sword Symphony","Song of Silence","Entangle","Arrest","Poison","Sting","Freezing Strike","Hex","Power Break","Dreaming Spirit","Fear","Frost Flame","Venom","Freezing Flame","Blaze Quake","Burning Chop","Onslaught of Pa'agrio","Stun Attack","Hammer Crush","Seal of Poison","Seal of Binding","Seal of Chaos","Seal of Winter","Seal of Scourge","Seal of Suspension","Seal of Silence","Seal of Flame","Seal of Disease","Seal of Blockade","Seal of Limit","Seal of Despair","Oblivion","Thin Skin","Enervation","Weak Constitution","Spite","Mental Impoverish","Thunder Storm","Howl","Shock Stomp","Dread Pool","Shock Blast","Armor Crush","Stun Attack","Hammer Crush","Weapon Blockade","Rush Impact (W)","Cripple","Stunning Fist","Soul Breaker","Death Mark","Dark Flame","Shadow Bind","Voice Bind","Soul Web","Soul Vortex","Lightning Shock","Rush Impact (K)","Disarm","Mass Disarm","Surrender to Dark","Shoulder Charge","Violent Temper","Curse of Life Flow","Stigma of Shilen","Wind Shackle","Magical Backfire","Sleep","Trance","Block Shield","Block Wind Walk","Mass Block Shield","Mass Block WW","Ice Bolt","Thorn Root","Dryad Root","Word of Fear","Wind Shackle","Arcane Disruption","Arcane Disruption","Curse Poison","Whiplash","Panther Dark Claw","Hold of King","Curse of Shade","Mass Curse of Shade","Toxic Smoke","Cursed Strike","Divine Beast Stun","Dark Curse","Surrender to Earth","Surrender to Water","Surrender to Wind","Mass Surrender","Surrender to Fire","Freezing Shackle","Frost Bolt","Ice Dagger","Blizzard","Diamond Dust","Throne of Ice ","Light Vortex","Ice Vortex","Dark Vortex","Wind Vortex","Fire Vortex","Day of Doom","Vampiric Mist","Curse of Doom","Curse of Abyss","Anchor","Curse Gloom","Silence","Curse Disease","Curse Poison","Curse Chaos","Curse Fear","Slow","Decay","Arcane Chaos","Count of Fire","Curse Weakness","Throne of Wind","Surrender to Poison","Poisonous Cloud","Sleeping Cloud","Mass Fear","Shield Stun","Hamstring","Shackle","Shield Slam","Mass Shackle","Hell Scream","Insane Crusher","Touch of Death","Judgment","Tribunal","Freezing Strike","Hex","Power Break","Lightning Strike","Shield Bash","Entangle","Arrest","Poison","Sting","Curse of Darkness","Devil Seed","Doll Blader Sting","Stun Attack","Ranku Stun Attack","Zaken Hold","Golem Punch","Assault Attack","Bleed Attack","Stun Shot","Surrender to Divine","Gravity Control","Earthquake","Scope Bleed","Sand Cloud","Poison Dust","Blaze Quake","Gordon Press","Tiger Fear","Thunder Storm","Divine Cloud","Mass Binding","Detonation","Divine Beast Roar"}
ripostance={0,1,0,1,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,1,1,1,1,0,1,0,1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,0,0,0,0,0,1,1,1,1,0,0,1,0,1,1,1,0,0,1,1,1,1,0,0,0,0,1,1,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,0,0,1,1,0,0,0,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
rsmode = 0 -- 1,Rogue 2,enchanter 3,warrior 4,healer 5,summoner 6,wizzard 7,knight 8,tranfo
-- Kamael AutoCleanse
acenabled = 0
aclabel = {"Bleed","Entangle","Sand Bomb","Bluff","Critical Wound","Throwing Dagger","Freezing Strike","Hex","Power Break","Hamstring Shot","Stun Shot","Real Target","Soul Shock","Bleeding Shot","Imbue Dark Seed","Seed of Destruction","Poison","Sting","Psycho Symphony","Sword Symphony","Song of Silence","Entangle","Arrest","Poison","Sting","Freezing Strike","Hex","Power Break","Dreaming Spirit","Fear","Frost Flame","Venom","Freezing Flame","Blaze Quake","Burning Chop","Onslaught of Pa'agrio","Stun Attack","Hammer Crush","Seal of Poison","Seal of Binding","Seal of Chaos","Seal of Winter","Seal of Scourge","Seal of Suspension","Seal of Silence","Seal of Flame","Seal of Disease","Seal of Blockade","Seal of Limit","Seal of Despair","Oblivion","Thin Skin","Enervation","Weak Constitution","Spite","Mental Impoverish","Thunder Storm","Howl","Shock Stomp","Dread Pool","Shock Blast","Armor Crush","Stun Attack","Hammer Crush","Weapon Blockade","Rush Impact (W)","Cripple","Stunning Fist","Soul Breaker","Death Mark","Dark Flame","Shadow Bind","Voice Bind","Soul Web","Soul Vortex","Lightning Shock","Rush Impact (K)","Disarm","Mass Disarm","Surrender to Dark","Shoulder Charge","Violent Temper","Curse of Life Flow","Stigma of Shilen","Wind Shackle","Magical Backfire","Sleep","Trance","Block Shield","Block Wind Walk","Mass Block Shield","Mass Block WW","Ice Bolt","Thorn Root","Dryad Root","Word of Fear","Wind Shackle","Arcane Disruption","Arcane Disruption","Curse Poison","Whiplash","Panther Dark Claw","Hold of King","Curse of Shade","Mass Curse of Shade","Toxic Smoke","Cursed Strike","Divine Beast Stun","Dark Curse","Surrender to Earth","Surrender to Water","Surrender to Wind","Mass Surrender","Surrender to Fire","Freezing Shackle","Frost Bolt","Ice Dagger","Blizzard","Diamond Dust","Throne of Ice ","Light Vortex","Ice Vortex","Dark Vortex","Wind Vortex","Fire Vortex","Day of Doom","Vampiric Mist","Curse of Doom","Curse of Abyss","Anchor","Curse Gloom","Silence","Curse Disease","Curse Poison","Curse Chaos","Curse Fear","Slow","Decay","Arcane Chaos","Count of Fire","Curse Weakness","Throne of Wind","Surrender to Poison","Poisonous Cloud","Sleeping Cloud","Mass Fear","Shield Stun","Hamstring","Shackle","Shield Slam","Mass Shackle","Hell Scream","Insane Crusher","Touch of Death","Judgment","Tribunal","Freezing Strike","Hex","Power Break","Lightning Strike","Shield Bash","Entangle","Arrest","Poison","Sting","Curse of Darkness","Devil Seed","Doll Blader Sting","Stun Attack","Ranku Stun Attack","Zaken Hold","Golem Punch","Assault Attack","Bleed Attack","Stun Shot","Surrender to Divine","Gravity Control","Earthquake","Scope Bleed","Sand Cloud","Poison Dust","Blaze Quake","Gordon Press","Tiger Fear","Thunder Storm","Divine Cloud","Mass Binding","Detonation","Divine Beast Roar"}
autocleanse={0,1,0,1,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,1,1,1,1,0,1,0,1,1,1,1,0,0,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,0,0,0,0,0,1,1,1,1,0,0,1,0,1,1,1,0,0,1,1,1,1,0,0,0,0,1,1,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,0,0,1,1,0,0,0,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
acmode = 0 -- 1,Rogue 2,enchanter 3,warrior 4,healer 5,summoner 6,wizzard 7,knight 8,tranfo

-- Interrupt Skills
interruptenabled = 0
interrupterid = 0
interruptmode = 0 -- 0 = target / 1 = all
iskill = GetSkills():FindById(interrupterid)
interrupt = {0,0,0,0,0,0,0,0,0,0,0,0,0}
useinterrupt = false

-- Debuff landing party shout
debufflandenabled = 0
debufflandmode = "me"
checkaoe = 0
check = false
failed = false
landmsg = "landed on"
landedon = nil;




-- Show Hide
showhideenabled = 0
HideUserId = nil
showhide = false

-- List of skills to be casted on user
InterruptSkills = {1505,1506,69,58,1016,1254,2014,2049,3429,3284,3282,3428,3437}
InterruptSkillslabel = {"Sublime Self-Sacrifice","Blessing of Eva","Sacrifice","Elemental Heal","Resurrection","Mass Resurrection","Resurrection Scroll","Blessed Resu Scroll","Life Force","Divine Protection","Maximum Clarity","Explosion","Magic Explosion"}
DisarmSkills = {794,485,877,5260,775};
FearSkills = {763,65,1169,774,2459,2814,1092,627,1381};
TLossTarget = {12,11,101,821,3152,358,353,352,1436}
TLossAOE = {5144,1417,452,347,5694,361}

RogueDebuff = {ripostance[1],ripostance[2],ripostance[3],ripostance[4],ripostance[5],ripostance[6],ripostance[7],ripostance[8],ripostance[9],ripostance[10],ripostance[11],ripostance[12],ripostance[13],ripostance[14],ripostance[15],ripostance[16],ripostance[17],ripostance[18]}
EnchanterDebuff = {ripostance[19],ripostance[20],ripostance[21],ripostance[22],ripostance[23],ripostance[24],ripostance[25],ripostance[26],ripostance[27],ripostance[28],ripostance[29],ripostance[30],ripostance[31],ripostance[32],ripostance[33],ripostance[34],ripostance[35],ripostance[36],ripostance[37],ripostance[38],ripostance[39],ripostance[40],ripostance[41],ripostance[42],ripostance[43],ripostance[44],ripostance[45],ripostance[46],ripostance[47],ripostance[48],ripostance[49],ripostance[50],ripostance[51],ripostance[52],ripostance[53],ripostance[54],ripostance[55],ripostance[56]}
WarriorDebuff = {ripostance[57],ripostance[58],ripostance[59],ripostance[60],ripostance[61],ripostance[62],ripostance[63],ripostance[64],ripostance[65],ripostance[66],ripostance[67],ripostance[68],ripostance[69],ripostance[70],ripostance[71],ripostance[72],ripostance[73],ripostance[74],ripostance[75],ripostance[76],ripostance[77],ripostance[78],ripostance[79],ripostance[80],ripostance[81],ripostance[82],ripostance[83]}
HealerDebuff = {ripostance[84],ripostance[85],ripostance[86],ripostance[87],ripostance[88],ripostance[89],ripostance[90],ripostance[91],ripostance[92],ripostance[93],ripostance[94],ripostance[95],ripostance[96]}
SummonerDebuff = {ripostance[97],ripostance[98],ripostance[99],ripostance[100],ripostance[101],ripostance[102],ripostance[103],ripostance[104],ripostance[105],ripostance[106],ripostance[107],ripostance[108],ripostance[109]}
WizzardDebuff = {ripostance[110],ripostance[111],ripostance[112],ripostance[113],ripostance[114],ripostance[115],ripostance[116],ripostance[117],ripostance[118],ripostance[119],ripostance[120],ripostance[121],ripostance[122],ripostance[123],ripostance[124],ripostance[125],ripostance[126],ripostance[127],ripostance[128],ripostance[129],ripostance[130],ripostance[131],ripostance[132],ripostance[133],ripostance[134],ripostance[135],ripostance[136],ripostance[137],ripostance[138],ripostance[139],ripostance[140],ripostance[141],ripostance[142],ripostance[143],ripostance[144],ripostance[145],ripostance[146]}
KnightDebuff = {ripostance[147],ripostance[148],ripostance[149],ripostance[150],ripostance[151],ripostance[152],ripostance[153],ripostance[154],ripostance[155],ripostance[156],ripostance[157],ripostance[158],ripostance[159],ripostance[160],ripostance[161],ripostance[162],ripostance[163],ripostance[164],ripostance[165]}
TranfoDebuff  = {ripostance[166],ripostance[167],ripostance[168],ripostance[169],ripostance[170],ripostance[171],ripostance[172],ripostance[173],ripostance[174],ripostance[175],ripostance[176],ripostance[177],ripostance[178],ripostance[179],ripostance[180],ripostance[181],ripostance[182],ripostance[183],ripostance[184],ripostance[185],ripostance[186],ripostance[187],ripostance[188],ripostance[189]}

RogueDebuff2 = {autocleanse[1],autocleanse[2],autocleanse[3],autocleanse[4],autocleanse[5],autocleanse[6],autocleanse[7],autocleanse[8],autocleanse[9],autocleanse[10],autocleanse[11],autocleanse[12],autocleanse[13],autocleanse[14],autocleanse[15],autocleanse[16],autocleanse[17],autocleanse[18]}
EnchanterDebuff2 = {autocleanse[19],autocleanse[20],autocleanse[21],autocleanse[22],autocleanse[23],autocleanse[24],autocleanse[25],autocleanse[26],autocleanse[27],autocleanse[28],autocleanse[29],autocleanse[30],autocleanse[31],autocleanse[32],autocleanse[33],autocleanse[34],autocleanse[35],autocleanse[36],autocleanse[37],autocleanse[38],autocleanse[39],autocleanse[40],autocleanse[41],autocleanse[42],autocleanse[43],autocleanse[44],autocleanse[45],autocleanse[46],autocleanse[47],autocleanse[48],autocleanse[49],autocleanse[50],autocleanse[51],autocleanse[52],autocleanse[53],autocleanse[54],autocleanse[55],autocleanse[56]}
WarriorDebuff2 = {autocleanse[57],autocleanse[58],autocleanse[59],autocleanse[60],autocleanse[61],autocleanse[62],autocleanse[63],autocleanse[64],autocleanse[65],autocleanse[66],autocleanse[67],autocleanse[68],autocleanse[69],autocleanse[70],autocleanse[71],autocleanse[72],autocleanse[73],autocleanse[74],autocleanse[75],autocleanse[76],autocleanse[77],autocleanse[78],autocleanse[79],autocleanse[80],autocleanse[81],autocleanse[82],autocleanse[83]}
HealerDebuff2 = {autocleanse[84],autocleanse[85],autocleanse[86],autocleanse[87],autocleanse[88],autocleanse[89],autocleanse[90],autocleanse[91],autocleanse[92],autocleanse[93],autocleanse[94],autocleanse[95],autocleanse[96]}
SummonerDebuff2 = {autocleanse[97],autocleanse[98],autocleanse[99],autocleanse[100],autocleanse[101],autocleanse[102],autocleanse[103],autocleanse[104],autocleanse[105],autocleanse[106],autocleanse[107],autocleanse[108],autocleanse[109]}
WizzardDebuff2 = {autocleanse[110],autocleanse[111],autocleanse[112],autocleanse[113],autocleanse[114],autocleanse[115],autocleanse[116],autocleanse[117],autocleanse[118],autocleanse[119],autocleanse[120],autocleanse[121],autocleanse[122],autocleanse[123],autocleanse[124],autocleanse[125],autocleanse[126],autocleanse[127],autocleanse[128],autocleanse[129],autocleanse[130],autocleanse[131],autocleanse[132],autocleanse[133],autocleanse[134],autocleanse[135],autocleanse[136],autocleanse[137],autocleanse[138],autocleanse[139],autocleanse[140],autocleanse[141],autocleanse[142],autocleanse[143],autocleanse[144],autocleanse[145],autocleanse[146]}
KnightDebuff2 = {autocleanse[147],autocleanse[148],autocleanse[149],autocleanse[150],autocleanse[151],autocleanse[152],autocleanse[153],autocleanse[154],autocleanse[155],autocleanse[156],autocleanse[157],autocleanse[158],autocleanse[159],autocleanse[160],autocleanse[161],autocleanse[162],autocleanse[163],autocleanse[164],autocleanse[165]}
TranfoDebuff2  = {autocleanse[166],autocleanse[167],autocleanse[168],autocleanse[169],autocleanse[170],autocleanse[171],autocleanse[172],autocleanse[173],autocleanse[174],autocleanse[175],autocleanse[176],autocleanse[177],autocleanse[178],autocleanse[179],autocleanse[180],autocleanse[181],autocleanse[182],autocleanse[183],autocleanse[184],autocleanse[185],autocleanse[186],autocleanse[187],autocleanse[188],autocleanse[189]}

DebuffList = {96,102,412,358,531,991,105,122,115,354,101,522,627,509,523,835,129,223,407,98,437,102,402,129,223,105,122,115,1097,1092,1107,1095,1244,1101,927,949,100,260,1209,1208,1096,1104,1247,1248,1246,1108,1367,1462,1509,1366,1481,1483,1484,1482,1485,1486,48,116,452,774,361,362,100,260,775,995,95,120,281,1435,1437,1446,1447,1529,1512,791,793,485,794,1445,494,501,1511,1539,1206,1396,1069,1394,1358,1359,1360,1361,1184,1508,1201,1272,1206,1384,1168,5138,6095,5137,4705,4706,4259,4708,5581,5140,1223,1071,1074,1385,1083,1183,1236,1237,1290,1454,1455,1342,1340,1343,1341,1339,1422,1495,1336,1337,1170,1263,1064,1269,1168,1222,1169,1160,1233,1338,1452,1164,1458,1224,1167,1072,1381,92,127,403,353,404,763,762,342,401,400,105,122,115,279,352,102,402,129,223,588,736,752,749,732,716,808,798,688,686,696,564,573,582,581,571,578,730,747,683,695,708,905,5583}
DebuffTarget = {342,401,279,100,260,775,102,402,400,352,129,223,105,122,115,1481,1483,1484,1482,1485,1486,522,627,509,523,835,1435,1437,1446,1447,1511,1529,1512,791,793,794,1445,494,485,501,95,120,281,362,354,101,96,412,358,531,991,1206,1223,1071,1183,1236,1237,1290,1342,1340,1454,1455,1343,1336,1337,1386,1201,1396,1394,1358,1359,1170,1263,1064,1269,1168,1069,1222,1083,1169,1160,1074,1233,1339,1338,1452,1164,1184,1097,1092,1107,1095,1244,927,361,949,1539,1508,1385,1341,1458,1224,92,127,403,353,995,5138,6095,4259,4705,4708,5581,588,736,752,749,732,716,808,798,688,686,696}
DebuffAOE = {48,116,452,774,407,98,437,1422,1495,1360,1361,1272,1381,1167,1072,1209,1101,1208,1096,1101,1104,1247,1248,1246,1108,1367,1462,1509,404,763,762,4706,5137,5140,564,573,582,581,571,578,730,747,683,695,708,905,5583}
-- List of buffs by category
CombatImpro = {1517,1536,1499,23277,7088}
MovementImpro = {1535,1504,23282,7093}
CriticalImpro = {1518,1537,1502,7091,23280}
BloodAwakeningImpro = {1519,23241}
MagicImpro = {7089,23278,1500,1365}
ConditionImpro = {7090,23279,1501,1538}
ShieldDefenseImpro = {1503,23281,7092}
PAtkBuff = {9230,1432,1068,1003,1007,5586,22058,2873,9011,2387,2057,26033,2317,6808,23262,7050,871,22340,22335,4393,22256,2436,2280,2246}
PDefBuff = {9242,1009,1040,1010,1005,5587,9012,22059,2885,2380,2059,26034,2319,5628,4323,5209,7051,23263,22330,4344,22328,4392,22263,22347,2438}
AccuracyBuff = {9233,1240,1309,1249,5654,4358,5191,22061,9016,2888,2050,26036,2310,22144,22350,4403,22334,22266,2430}
EvasionBuff = {9250,1260,1252,1087,2315,22141,4403,4093,2434,21079,21071,21061,21056,22088,21005,2055}
EvasionBuff = {9250,1260,1252,1087,2315,22141,4403,4093,2434,21079,21071,21061,21056,22088,21005,2055}
CritRateBuff = {9231,1077,1308,5588,22337,22264,4404,22348,4359,22085,9014,2886,2052,2312,22154,2432,2284}
CritPowerBuff = {9232,1242,1253,5652,4360,21060,21070,9015,22060,2887,21078,2408,2051,26035,2311,22143,23057,22349,6811,4405,22332,22265,7042,23254}
AtkSpdBuff = {9234,2035,2012,1086,1563,1251,5186,5640,4327,4357,2875,2383,22057,21201,9019,2412,2429,26032,2054,2314,22140,5632,6803,22258,22342,22331,2282}
VampiricBuff = {9236,1268,1310,5187,22147,2413,2876,22064,9020,26039,5630,4325,5211,7053,23265,22343,22333,22259,4399,2512}
SpdBuff = {9241,2011,2034,1204,1282,5192,4322,22139,23037,23182,21055,22056,21004,2874,2406,2058,26031,2318,23065,5627,6804,5208,23267,7055,2437,2285}
MAtkBuff = {9239,1441,1059,5194,4356,2878,2417,22062,2385,9024,26037,2056,22145,2316,22345,875,6805,5636,4331,22326,4401,22261,5217,2435,2281,2247}
MDefBuff = {9244,1006,1008,1036,123,2381,22067,9022,26042,5637,4396,22322,4349,23264,7052,2415,5834,22150}
WildMagicBuff = {9240,1303,5646,23058,22153,22070,2890,26045,7053,23271,22268,22352}
ConcentrationBuff = {9237,1078,5201,4330,5635,4351,6807}
CSpdBuff = {9238,2169,1085,1002,1004,4355,4329,5193,9025,2879,2384,22146,22063,26038,2053,2313,22321,22262,22346,4400,2433,2283}
HPBuff = {9247,1045,5189,2411,22065,21153,21052,9018,26040,22148,4394,22336,4347,22325,7045,23257,4324,5629,5210,5638}
MPBuff = {9249,1048,5190,5639,2416,21170,21154,21053,9023,26043,22151,4395,4348,22324,7046,23258,4328,5633,5214}
ShieldRateBuff = {9251,1243,1250,9017,22155,2410,2382,22087,4398,4353,22338}
ShieldPowerBuff = {9252,1304,22090}
BerserkerBuff = {92461062,1562,1261,4352,22066,2390,21087,9021,2877,2414,26041,22149,22344,22339,22320,7056,23268}
CCTrigger = {6059}
DMTrigger = {5603}
ISTrigger = {5425}
CCBuff = {1542,23294,23246}
COPBuff = {1461}
EOPBuff = {1364,23238,23286}
FistBuff = {1416}
MentalShieldBuff = {9245,1035,22084,23068,4346,2396}
CancelProtBuff = {10007,1354,23248,23296,1415,1362}
ClarityBuff = {1397,5647,22152,2391,22069,9026,2889,2419,26044,22351,22323,22267,7060,23272,2439}
WeightLimitBuff = {1257,22156,23134,4343,6061,23261,7049}
ResistPoisonBuff = {1033}
RegenerationBuff = {1044,5188,1044,22089,5631,4326}
HolyWeaponBuff = {1043,4491}
DarkWeaponBuff = {1443}
KissOfEvaBuff = {1073}
ResistShockBuff = {9260,1259}
RestringBuff = {827}
SpikeBuff = {826}
SharpEdgeBuff = {825}
EmbroiderBuff = {830,23245,23293}
CaseHardenBuff = {23284,7095,828}
HardTrainingBuff = {23244,23292,829}
ElementalProtBuff = {1352,23247,23295,1549}
DivineProtBuff = {1353}
ResistFireBuff = {1191}
ResistAquaBuff = {1182}
ResistEarthBuff = {1548}
ResistWindBuff = {1189}
ResistDarkBuff = {1393}
ResistHolyBuff = {1392}
GMightBuff = {1388,7057,23269}
GShieldBuff = {1389,7058,23270}
StealthBuff = {411}
IronShieldBuff = {527}
UltimateDefenseBuff = {110}
VengeanceBuff = {368}
SofBuff = {528}
Zerktali = {3285}
SdmBuff = {916}
SosBuff = {789}
FiBuff = {785}
CombatAuraBuff = {982}
PrayerBuff = {1307}
GreatFuryBuff = {6060}
SwordShieldBuff = {483}
FuriousSoulBuff = {482}
InvigorBuff = {1032}
QGiftBuff = {4700}
QBlessBuff = {4699}
SGiftBuff = {4703}
SBlessBuff = {4702}
BloodBuff = {1531}
LordVampireBuff = {1507}

-- Variables that have to be predeterminated

ObjectID = nil; -- Equipped Weapon's oID
WeaponID = nil; -- Equipped Weapon's wID
Pot1ID = nil; -- Fisherman Potion's oID
Pot2ID = nil; -- Caravaner's Remedy's oID
Pot3ID = nil; -- Haste Potion's oID
Pot4ID = nil; -- Magic Haste's oID
Pot5ID = nil; -- Alarcity Potion's oID
Pot6ID = nil; -- Primeval Isle Potion's oID
Pot7ID = nil; -- Elemental Potion's oID
Pot8ID = nil; -- Mystery Potion's oID
Pot9ID = nil; -- Soul Potion
Pot10ID = nil; -- instant haste potion
Pot11ID = nil; -- Mental Potion
weapon = nil;
wep = nil;
needtoderipo = 0
needtoequipwep = false;
Skill = nil;
ShowHtmlStatus = false;
premium = true
action = nil;
licensetimer = 0
timer = {0,59,0,0}
defaultpause = 1
ppaused = 1
mypvps = 0
startingpvpcount = 0
pluginversion = "v1.2"
end
function OnCommand_changeprofile(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		profile1 = vCommandParam:GetParam(0):GetStr(true)
		if profile1 == "1" then
			removebuff = removebuff1
			removebuff1 = removebuff
			profile = 1
			if novisuals == 0 then
				ShowToClient("RemoveBuffs","Profile #1 selected.")
			end
			SubWindow("Remove Buffs")
	elseif profile1 == "2" then
			removebuff = removebuff2
			removebuff2 = removebuff
			profile = 2
			if novisuals == 0 then
				ShowToClient("RemoveBuffs","Profile #2 selected.")
			end
			SubWindow("Remove Buffs")
	elseif profile1 == "3" then
			removebuff = removebuff3
			removebuff3 = removebuff
			profile = 3
			if novisuals == 0 then
				ShowToClient("RemoveBuffs","Profile #3 selected.")
			end
			SubWindow("Remove Buffs")
		end
	end
end
function OnCommand_loadprofile(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		profile1 = vCommandParam:GetParam(0):GetStr(true)
		if profile1 == "1" then
			profile = 1
			removebuff = removebuff1
	elseif profile1 == "2" then
			profile = 2
			removebuff = removebuff2
	elseif profile1 == "3" then
			profile = 3
			removebuff = removebuff3
		end
	end
end
function OnCreate()
 --[[if string.upper(GetHardwareKey()) == "36W5UY7563E0Y5Y9CCYA286WE39E9506" then
	license=true
else
	license=false
	UseSkillRaw(1)
	UseSkillRaw(2)
	Sleep(1)
	KillMe()
end]]
if IsPremium() == true then
	Event_PacketUnBlock(0x08,0xFF,1);
end
if (IsLogedIn()) then
	default()
	LoadFile()
end
	this:RegisterCommand("title", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("t", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setstring", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setmsg", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setaoeskill", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setabskill", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);	
	this:RegisterCommand("setinterruptskill", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("doaction", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("test2", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("rb", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("barrier", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("loadfile", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("savefile", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("default", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("changeprofile", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("loadprofile", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	ProcessCommand("/loadprofile " .. tostring(profile))
end		

function OnCommand_t(vCommandChatType, vNick, vCommandParam)
	rbback = 0
	MainWindow() 
--ShowToClient("DEBUG",tostring(rbback))
end
function OnCommand_setstring(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		local str = vCommandParam:GetParam(0):GetStr(true)
		pvpsincelogtitle = string.gsub(str,"-"," ")
	end
	SubWindow("Title")
end
function OnCommand_setmsg(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		local str = vCommandParam:GetParam(0):GetStr(true)
		landmsg = string.gsub(str,"-"," ")
	end
	SubWindow("Debuff Landing")
end
function OnCommand_savefile(vCommandChatType, vNick, vCommandParam)
	MainWindow()
	SaveFile()
end

function OnDestroy()
	SaveFile();
end;
function OnLogout()
	SaveFile();
end;
function OnDisconnect(mode)
	SaveFile();
end
function OnLogin()
	--[[ if string.upper(GetHardwareKey()) == "36W5UY7563E0Y5Y9CCYA286WE39E9506" then
		license=true
	else
		license=false
		UseSkillRaw(1)
		UseSkillRaw(2)
		Sleep(1)
		KillMe()
	end]]
	default()
	LoadFile()
	pvpcount = GetMe():GetPvPCount()
end
function OnCommand_loadfile(vCommandChatType, vNick, vCommandParam)
	default()
	LoadFile()
end
function OnCommand_default(vCommandChatType, vNick, vCommandParam)
	default()
end
function translateSave(int)
	if (tostring(int) == "1") then
		return "Yes";
	elseif (tostring(int) == "0") then
		return "No";
	else
		return int
	end
end;
function translateLoad(str)
	if (tostring(str) == "Yes") then
		return 1;
	elseif (tostring(str) == "No") then
		return 0;
	else
		return str
	end
end;
function LoadFile()
	if IsLogedIn() then
		startingpvpcount = GetMe():GetPvPCount()
		local file = io.open(GetDir() .. "plugins\\UltimatePVP\\" .. GetMe():GetName() .. ".cfg", "r");
		if (file == nil) then
			file = io.open(GetDir() .. "plugins\\UltimatePVP\\" .. GetMe():GetName() .. ".cfg", "w");
			if (file == nil) then
				os.execute('mkdir "'..GetDir() .. 'plugins\\UltimatePVP"');
				file = io.open(GetDir() .. "plugins\\UltimatePVP\\" .. GetMe():GetName() .. ".cfg", "w");
			end;
		else
			local A = 0;
			for line in file:lines() do
				A = A+1
				line1[A] = translateLoad(line)
			end
			adagenabled =  line1[1] 
			abenabled =  line1[2] 
			adbenabled =  line1[3] 
			albenabled =  line1[4] 
			adubenabled =  line1[5] 
			atlenabled =  line1[6] 
			adenabled =  line1[7] 
			afenabled =  line1[8] 
			asdenabled =  line1[9] 
			usefishp =  line1[10] 
			usecarp =  line1[11] 
			usewwp =  line1[12] 
			useacup =  line1[13] 
			usehastep =  line1[14] 
			useprip =  line1[15] 	
			useelep =  line1[16] 
			usemysp =  line1[17] 
			titlenabled =  line1[18] 
			summonenabled =  line1[19] 
			beastss =  line1[20] 
			buffcontrol =  line1[21] 
			betraynoss =  line1[22] 
			aoenabled =  line1[23] 
			potsenabled =  line1[24] 
			hastepotenabled =  line1[25] 
			wwpotenabled =  line1[26] 
			acupotenabled =  line1[27] 
			soulpotenabled =  line1[28] 
			siegepotenabled =  line1[29] 
			removebuffsenabled =  line1[30] 
			pohenabled =  line1[31] 
			nocelestialenabled =  line1[32] 
			abwalk =  line1[33] 
			abskill =  line1[34] 
			abskillid = line1[35]
			aoeskillid = line1[36]
			profile = line1[37]
			novisuals = line1[38]
			classontitle = line1[39]
			mytitlemode = line1[40]
			pvpsincelogtitle = line1[41]
			ripostanceenabled = line1[42]
			defaultpause = line1[43]
			showhideenabled = line1[44]
			mentalpotenabled = line1[45]
			siegedashmode = line1[46]
			local X = 46 -- nº of lines up to this point
			local Z = 0
			repeat
			X = X+1
			Z = Z+1
			removebuff1[Z] = line1[X]
			until Z == 73
		--	X = X+Z
			Z = 0
			repeat
			X = X+1
			Z = Z+1
			fullheal[Z] =  line1[X] 
			until Z == 8
			Z = 0
			repeat
			X = X+1
			Z = Z+1
			barrier[Z] =  line1[X] 
			until Z == 8
			Z = 0
			repeat
			X = X+1
			Z = Z+1
			removebuff2[Z] = line1[X]
			until Z == 73
			Z = 0
			repeat
			X = X+1
			Z = Z+1
			removebuff3[Z] = line1[X]
			until Z == 73
			Z = 0
			repeat
			X = X+1
			Z = Z+1
			ripostance[Z] = line1[X]
			until Z == 189
			if (file ~= nil) then
				file:close();
			end;
			if IsPremium() == true then
				premium = true
				if novisuals == 0 then
					ShowToClient("UltimatePVP","Premium functions available.")
				end	
			else
				premium = false
				if novisuals == 0 then
					ShowToClient("UltimatePVP","Premium functions not available.")
				end
			end
			if novisuals == 0 then
				ShowToClient("UltimatePVP",GetMe():GetName().."'s configuration loaded.");	
			end
			if defaultpause == 0 then
				ppaused = 0 -- plugin not paused
			else
				ppaused = 1 -- plugin paused
			end
		end
	end
end
function OnLogout()
	SaveFile();
end;
function SaveFile()
	if IsLogedIn() then
		local file = io.open(GetDir() .. "plugins\\UltimatePVP\\" .. GetMe():GetName() .. ".cfg", "w+");
		if (file ~= nil) then
			file:write(translateSave(adagenabled) .. "\n");
			file:write(translateSave(abenabled) .. "\n");
			file:write(translateSave(adbenabled) .. "\n");
			file:write(translateSave(albenabled) .. "\n");
			file:write(translateSave(adubenabled) .. "\n");
			file:write(translateSave(atlenabled) .. "\n");
			file:write(translateSave(adenabled) .. "\n");
			file:write(translateSave(afenabled) .. "\n");
			file:write(translateSave(asdenabled) .. "\n");
			file:write(translateSave(usefishp) .. "\n");
			file:write(translateSave(usecarp) .. "\n");
			file:write(translateSave(usewwp) .. "\n");
			file:write(translateSave(useacup) .. "\n");
			file:write(translateSave(usehastep) .. "\n");
			file:write(translateSave(useprip) .. "\n");
			file:write(translateSave(useelep) .. "\n");
			file:write(translateSave(usemysp) .. "\n");
			file:write(translateSave(titlenabled) .. "\n");
			file:write(translateSave(summonenabled) .. "\n");
			file:write(translateSave(beastss) .. "\n");
			file:write(translateSave(buffcontrol) .. "\n");
			file:write(translateSave(betraynoss) .. "\n");
			file:write(translateSave(aoenabled) .. "\n");
			file:write(translateSave(potsenabled) .. "\n");
			file:write(translateSave(hastepotenabled) .. "\n");
			file:write(translateSave(wwpotenabled) .. "\n");
			file:write(translateSave(acupotenabled) .. "\n");
			file:write(translateSave(soulpotenabled) .. "\n");
			file:write(translateSave(siegepotenabled) .. "\n");
			file:write(translateSave(removebuffsenabled) .. "\n");
			file:write(translateSave(pohenabled) .. "\n");
			file:write(translateSave(nocelestialenabled) .. "\n");
			file:write(translateSave(abwalk) .. "\n");
			file:write(translateSave(abskill) .. "\n");
			file:write(translateSave(abskillid) .. "\n");
			file:write(translateSave(aoeskillid) .. "\n");
			file:write(translateSave(profile) .. "\n");
			file:write(translateSave(novisuals) .. "\n");
			file:write(translateSave(classontitle) .. "\n");
			file:write(translateSave(mytitlemode) .. "\n")
			file:write(translateSave(pvpsincelogtitle) .. "\n")
			file:write(translateSave(ripostanceenabled) .. "\n")
			file:write(translateSave(defaultpause) .. "\n")
			file:write(translateSave(showhideenabled) .. "\n")
			file:write(translateSave(mentalpotenabled) .. "\n")
			file:write(translateSave(siegedashmode) .. "\n");
			for x,a in pairs(removebuff1) do
			file:write(translateSave(removebuff1[x]) .. "\n");
			end
			for x,a in pairs(fullheal) do
			file:write(translateSave(fullheal[x]) .. "\n");
			end
			for x,a in pairs(barrier) do
			file:write(translateSave(barrier[x]) .. "\n");
			end
			for x,a in pairs(removebuff2) do
			file:write(translateSave(removebuff2[x]) .. "\n");
			end
			for x,a in pairs(removebuff3) do
			file:write(translateSave(removebuff3[x]) .. "\n");
			end
			for x,a in pairs(ripostance) do
			file:write(translateSave(ripostance[x]) .. "\n");
			end
			ShowToClient("UltimatePVP",GetMe():GetName().."'s configuration saved.");
			file:close();
		end;
	end;
end;

function OnCommand_barrier(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		B = vCommandParam:GetParam(0):GetInt()
		if barrier[B] == 0 then
			barrier[B] = 1
			--ShowToClient("DEBUG",barrierlabel[B] .. " ON.")
		else
			barrier[B] = 0	
			--ShowToClient("DEBUG",barrierlabel[B] .. " OFF.")
		end
		SubWindow("Remove Celestial")
	end
end
function OnCommand_rb(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		B = vCommandParam:GetParam(0):GetInt()
		if rbmode == 0 then
				if removebuff[B] == 0 then
					removebuff[B] = 1
				
				--ShowToClient("DEBUG",rblabel[B] .. " ON.")
				else
					removebuff[B] = 0	
				--ShowToClient("DEBUG",rblabel[B] .. " OFF.")
				end
				if B > 0 and B < 20 then
					SubWindow("Remove Buffs")
			elseif B > 22 and B < 48 then
					SubWindow("Special")
			elseif B > 47 and B < 56 then
					SubWindow("Elemental")
			elseif B > 19 and B < 23 then
					SubWindow("Trigger")
			elseif B > 55 and B < 65 then
					SubWindow("Stolen")
			elseif B > 64 and B < 70 then
					SubWindow("Party")
			elseif B > 69 and B < 74 then
					SubWindow("SummonBuffs")
				end
	elseif rbmode == 1 then
			if fullheal[B] == 0 then
				fullheal[B] = 1
			--	ShowToClient("DEBUG",fhslabel[B] .. " ON.")
			else
				fullheal[B] = 0	
			--	ShowToClient("DEBUG",fhslabel[B] .. " OFF.")
			end
			SubWindow("Remove Celestial")
	elseif rbmode == 2 then
---ShowToClient("DEBUG",tostring(B))
			if ripostance[B] == 0 then
				ripostance[B] = 1
			else
				ripostance[B] = 0
			end
			if rsmode == 1 then
				SubWindow("Rogue Debuffs")
		elseif rsmode == 2 then
				SubWindow("Enchanter Debuffs")
		elseif rsmode == 3 then
				SubWindow("Warrior Debuffs")
		elseif rsmode == 4 then
				SubWindow("Healer Debuffs")
		elseif rsmode == 5 then
				SubWindow("Summoner Debuffs")
		elseif rsmode == 6 then
				SubWindow("Wizzard Debuffs")
		elseif rsmode == 7 then
				SubWindow("Knight Debuffs")
		elseif rsmode == 8 then
				SubWindow("Transfo Debuffs")
			end
	elseif rbmode == 3 then
			if autocleanse[B] == 0 then
				autocleanse[B] = 1 
			else
				autocleanse[B] = 0
			end
			if acmode == 1 then
				SubWindow("Rogue Debuffs2")
		elseif acmode == 2 then
				SubWindow("Enchanter Debuffs2")
		elseif acmode == 3 then
				SubWindow("Warrior Debuffs2")
		elseif acmode == 4 then
				SubWindow("Healer Debuffs2")
		elseif acmode == 5 then
				SubWindow("Summoner Debuffs2")
		elseif acmode == 6 then
				SubWindow("Wizzard Debuffs2")
		elseif acmode == 7 then
				SubWindow("Knight Debuffs2")
		elseif acmode == 8 then
				SubWindow("Transfo Debuffs2")
			end
	elseif rbmode == 4 then
			if interrupt[B] == 0 then
				interrupt[B] = 1
			else
				interrupt[B] = 0
			end
			SubWindow("Interrupt Skills")
		end
	end
end
function OnCommand_doaction(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		action = vCommandParam:GetParam(0):GetStr(true)
		if action == "Go Back" then
			if rbback == 1 then
				rbback = 0
				SubWindow("Remove Buffs")
		elseif rbback == 2 then
				rbback = 0
				SubWindow("Ripo Stance")
		elseif rbback == 3 then
				abskill = 0;
				rbback = 0
				SubWindow("Anti Daggers")
		elseif rbback == 4 then
				rbback = 0
				SubWindow("Auto Cleanse")	
			else
				MainWindow()
			end
		-- ANTI DAGGER ACTIONS
	elseif action == "Anti Daggers" then
			SubWindow("Anti Daggers")		
	elseif action == "Daggers Enabled" then
			if adagenabled == 0 then
				adagenabled = 1;
				if novisuals == 0 then
					ShowToClient("AntiDaggers","Enabled")
				end
			else
				adagenabled = 0;
				if novisuals == 0 then
					ShowToClient("AntiDaggers","Disabled")
				end
			end
			SubWindow("Anti Daggers")
	elseif action == "Anti Deadly Blow" then
			if adbenabled == 1 then
				adbenabled = 0;
			else
				adbenabled = 1;
			end
			SubWindow("Anti Daggers")
	elseif action == "Anti Backstab" then
			if abenabled == 1 then
				abenabled = 0;
			else
				abenabled = 1;
			end
			SubWindow("Anti Daggers")
	elseif action == "Anti Lethal Blow" then
			if albenabled == 1 then
				albenabled = 0;
			else
				albenabled = 1;
			end
			SubWindow("Anti Daggers")
	elseif action == "Anti Dual Blow" then
			if adubenabled == 1 then
				adubenabled = 0;
			else
				adubenabled = 1;
			end
			SubWindow("Anti Daggers")
	elseif action == "Mode: Walk" then
			if abwalk == 1 then
				abwalk = 0;
			else
				abwalk = 1;
			end
			SubWindow("Anti Daggers");
	elseif action == "Mode: Skill" then
			if abskill == 1 then
				abskill = 0;
				SubWindow("Anti Daggers")
			else
				abskill = 1;
				SubWindow("Set Skill")		
			end
			
	elseif action == "Anti Target" then
			if atlenabled == 1 then
				atlenabled = 0;
			else
				atlenabled = 1;
			end
			SubWindow("Anti Daggers");
		-- ANTI DISARM ACTIONS	
	elseif action == "Anti Disarm" then
			if adenabled == 0 then
				adenabled = 1
				if novisuals == 0 then
				ShowToClient("AntiDisarm","Enabled")
				end
			else
				adenabled = 0;
				if novisuals == 0 then
				ShowToClient("AntiDisarm","Disabled")
				end
			end
			MainWindow()	
		-- ANTI FEAR ACTIONS
	elseif action == "Anti Fear" then
			if afenabled == 0 then
				afenabled = 1
				if novisuals == 0 then
				ShowToClient("AntiFear","Enabled")
				end
			else
				afenabled = 0;
				if novisuals == 0 then
				ShowToClient("AntiFear","Disabled")
				end
			end
			MainWindow()
		-- ANTI STEAL DIVINITY ACTIONS
	elseif action == "Anti Steal" then
			SubWindow("Anti Steal")
	elseif action == "Steal Enabled" then
			if asdenabled == 0 then
				asdenabled = 1
				if novisuals == 0 then
				ShowToClient("AntiSteal","Enabled")
				end
			else
				asdenabled = 0;
				if novisuals == 0 then
				ShowToClient("AntiSteal","Disabled")
				end
			end
			SubWindow("Anti Steal")
	elseif action == "Use Fish Potion" then
			if usefishp == 1 then
				usefishp = 0;
				buffcount = buffcount-1
			else
				usefishp = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")
	elseif action == "Use Caravaner's" then
			if usecarp == 1 then
				usecarp = 0;
				buffcount = buffcount-1
			else
				usecarp = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")
	elseif action == "Use WW Potion" then
			if usewwp == 1 then
				usewwp = 0;
				buffcount = buffcount-1
			else
				usewwp = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")
	elseif action == "Use Acu Potion" then
			if useacup == 1 then
				useacup = 0;
				buffcount = buffcount-1
			else
				useacup = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")
	elseif action == "Use Haste Potion" then
			if usehastep == 1 then
				usehastep = 0;
				buffcount = buffcount-1
			else
				usehastep = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")
	elseif action == "Use Primeval" then
			if useprip == 1 then
				useprip = 0;
				buffcount = buffcount-1
			else
				useprip = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")
	elseif action == "Use Elemental" then
			if useelep == 1 then
				useelep = 0;
				buffcount = buffcount-1
			else
				useelep = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")	
	elseif action == "Use Mystery" then
			if usemysp == 1 then
				usemysp = 0;
				buffcount = buffcount-1
			else
				usemysp = 1;
				buffcount = buffcount+1
			end
			SubWindow("Anti Steal")	
		-- AOE HIDE DETECTION ACTIONS
	elseif action == "AOE Hide detection" then
			if aoenabled == 0 then
				aoenabled = 1;
				if novisuals == 0 then
				ShowToClient("AoE Detection","Enabled")
				end
			else
				aoenabled = 0;
				if novisuals == 0 then
				ShowToClient("AoE Detection","Disabled")
				end
			end
			SubWindow("Anti Daggers")
	elseif action == "aoeskillid" then
			SubWindow("Set AOE Skill")
		-- SUMMON & PET ACTIONS
	elseif action == "Summon & Pet" then
			SubWindow("Summon")
	elseif action == "Summon Enabled" then
			if summonenabled == 0 then
				if novisuals == 0 then
				ShowToClient("Summon&Pet","Enabled")
				end
				summonenabled = 1
			else
				summonenabled = 0
				if novisuals == 0 then
				ShowToClient("Summon&Pet","Disabled")
				end
			end
			SubWindow("Summon")
	elseif action == "BeastSS" then
			if beastss == 0 then
				beastss = 1
			else
				beastss = 0
				firsttime = 1
			end
			SubWindow("Summon")
	elseif action == "Buff Control" then
			if buffcontrol == 0 then
				buffcontrol = 1
				if GetPet() ~= nil then
					Action(1070,false,false)
				end
				needtobuffcontrol = true
			else
				buffcontrol = 0
				needtobuffcontrol = false
			end
			SubWindow("Summon")
	elseif action == "BetrayNoSS" then
			if betraynoss == 0 then
				betraynoss = 1
			else
				betraynoss = 0
			end
			SubWindow("Summon")
	-- AUTO POTS ACTIONS
	elseif action == "Auto Pots" then
			SubWindow("Auto Pots")
	elseif action == "Pots Enabled" then
			if potsenabled == 0 then
				if novisuals == 0 then
				ShowToClient("AutoPots","Enabled")
				end
				potsenabled = 1
			else
				potsenabled = 0
				if novisuals == 0 then
				ShowToClient("AutoPots","Disabled")
				end
			end
			SubWindow("Auto Pots")
	elseif action == "ww pot" then
			if wwpotenabled == 0 then
				wwpotenabled = 1 
			else
				wwpotenabled = 0
			end
			SubWindow("Auto Pots")
	elseif action == "haste pot" then
			if hastepotenabled == 0 then
				hastepotenabled = 1
			else
				hastepotenabled = 0
			end
			SubWindow("Auto Pots")
	elseif action == "acu pot" then
			if acupotenabled == 0 then
				acupotenabled = 1
			else
				acupotenabled = 0
			end
			SubWindow("Auto Pots")
	elseif action == "soul pot" then
			if soulpotenabled == 0 then
				soulpotenabled = 1
			else
				soulpotenabled = 0
			end
			SubWindow("Auto Pots")
	elseif action == "mental pot" then
			if mentalpotenabled == 0 then
				mentalpotenabled = 1
			else
				mentalpotenabled = 0
			end
			SubWindow("Auto Pots")
	elseif action == "siege pot" then
			if siegepotenabled == 0 then
				siegepotenabled = 1
			else
				siegepotenabled = 0
			end
			SubWindow("Auto Pots")
	elseif action == "siegedashmode" then
			if siegedashmode == 0 then
				siegedashmode = 1
			else
				siegedashmode = 0
			end
			SubWindow("Auto Pots")
	-- REMOVE BUFFS ACTIONS
	elseif action == "Remove Buffs" then
			SubWindow("Remove Buffs")
	elseif action == "RBuff Enabled" then
			if removebuffsenabled == 0 then
				removebuffsenabled = 1
				if novisuals == 0 then
				ShowToClient("RemoveBuffs","Enabled")
				end
			else
				removebuffsenabled = 0
				if novisuals == 0 then
				ShowToClient("RemoveBuffs","Disabled")
				end
			end
			SubWindow("Remove Buffs")
	elseif action == "Special" then
			SubWindow("Special")
	elseif action == "Elemental" then
			SubWindow("Elemental")
	elseif action == "Triggers" then
			SubWindow("Trigger")
	elseif action == "Stolen" then
			SubWindow("Stolen")
	elseif action == "Party" then
			SubWindow("Party")
	elseif action == "SummonBuffs" then
			SubWindow("SummonBuffs")
	-- REMOVE CELESTIAL FUNCTIONS
	elseif action == "NoCelestial" then
			SubWindow("Remove Celestial")
	elseif action == "NoCelestial Enabled" then
			if nocelestialenabled == 0 then
				nocelestialenabled = 1
				if novisuals == 0 then
				ShowToClient("RemoveCele","Enabled")
				end
			else
				nocelestialenabled = 0
				if novisuals == 0 then
				ShowToClient("RemoveCele","Disabled")
				end
			end
			SubWindow("Remove Celestial")
	-- PLUGIN PAUSE FUNCTIONS
	elseif action == "Plugin Pause" then
			if ppaused == 0 then
				ppaused = 1
				if novisuals == 0 then
				ShowToClient("UltimatePVP","PAUSED")
				end
			else
				ppaused = 0
				if novisuals == 0 then
				ShowToClient("UltimatePVP","RESUMED")
				end
			end
			MainWindow()
	-- PAUSE ON HIDE ACTIONS
	elseif action == "Pause when Hide" then
			if pohenabled == 0 then
				pohenabled = 1
			else
				pohenabled = 0
			end
			MainWindow()
	elseif action == "config" then
			SubWindow("Configuration")
		-- TITLE ACTIONS
	elseif action == "Title" then
			SubWindow("Title")
	elseif action == "Title Enabled" then
			if novisuals == 1 then
				titlenabled = 0
				SubWindow("Title")
			end	
			if titlenabled == 0 then
				titlenabled = 1
				if novisuals == 0 then
					ShowToClient("Title","Enabled")
				end
			else
				titlenabled = 0
				if novisuals == 0 then
					ShowToClient("Title","Disabled")
				end
			end		
			SubWindow("Title")
	elseif action == "Class in Title" then
			if classontitle == 0 then
				classontitle = 1;
			else
				classontitle = 0;
			end
			SubWindow("Title")
	elseif action == "PVP On Title" then
			if mytitlemode == "off" then
				mytitlemode = "pvpcount"
		elseif mytitlemode == "pvpcount" then
				mytitlemode = "pvpsincelog";
		elseif mytitlemode == "pvpsincelog" then
				mytitlemode = "off"
			end
			SubWindow("Title")
	-- NOVISUALS ACTIONS
	elseif action == "novisuals" then
			if novisuals == 0 then
				novisuals = 1
			else
				novisuals = 0
			end
			SubWindow("Configuration")
	elseif action == "defaultpause" then
			if defaultpause == 0 then
				defaultpause = 1
			else
				defaultpause = 0
			end
			SubWindow("Configuration")
	-- AUTO RIPO STANCE
	elseif action == "Ripo Stance" then
			SubWindow("Ripo Stance")
	elseif action == "Ripo Enabled" then
			if ripostanceenabled == 0 then
				ripostanceenabled = 1
				if novisuals == 0 then
					ShowToClient("RipoStance","Enabled")
				end
			else
				ripostanceenabled = 0
				if novisuals == 0 then
					ShowToClient("RipoStance","Disabled")
				end
			end
			SubWindow("Ripo Stance")
	elseif action == "Rogue Debuffs" then
			SubWindow("Rogue Debuffs")
	elseif action == "Enchanter Debuffs" then
			SubWindow("Enchanter Debuffs")
	elseif action == "Warrior Debuffs" then
			SubWindow("Warrior Debuffs")
	elseif action == "Healer Debuffs" then
			SubWindow("Healer Debuffs")
	elseif action == "Summoner Debuffs" then
			SubWindow("Summoner Debuffs")
	elseif action == "Wizzard Debuffs" then
			SubWindow("Wizzard Debuffs")
	elseif action == "Knight Debuffs" then
			SubWindow("Knight Debuffs")
	elseif action == "Transfo Debuffs" then
			SubWindow("Transfo Debuffs")
	-- INTERRUPT SKILLS ACTIONS
	elseif action == "Interrupt Skills" then
			SubWindow("Interrupt Skills")
	elseif action == "Interrupt Enabled" then
			if interruptenabled == 0 then
				interruptenabled = 1
				if novisuals == 0 then
					ShowToClient("Interrupt","Enabled")
				end
			else
				interruptenabled = 0
				if novisuals == 0 then
					ShowToClient("Interrupt","Disabled")
				end
			end
			SubWindow("Interrupt Skills")
	elseif action == "Interrupt Mode" then
			if interruptmode == 0 then
				interruptmode = 1
			else
				interruptmode = 0
			end
			SubWindow("Interrupt Skills")
	elseif action == "Set Interrupter" then
			SubWindow("Set Interrupt Skill")
	-- DEBUFF LAND MSG
	elseif action == "Debuff Landing" then
			SubWindow("Debuff Landing")
	elseif action == "Debuff Enabled" then
			if debufflandenabled == 0 then
				debufflandenabled = 1
				if novisuals == 0 then
					ShowToClient("DebuffLandMsg","Enabled")
				end
			else
				debufflandenabled = 0
				if novisuals == 0 then
					ShowToClient("DebuffLandMsg","Disabled")
				end
			end
			SubWindow("Debuff Landing")
	elseif action == "Debuff Mode" then
			if debufflandmode == "me" then
				debufflandmode = "party"
				SubWindow("Debuff Landing")
		elseif debufflandmode == "party" then
				debufflandmode = "clan"
				SubWindow("Debuff Landing")
		elseif debufflandmode == "clan" then
				debufflandmode = "ally"
				SubWindow("Debuff Landing")
		elseif debufflandmode == "ally" then
				debufflandmode = "me"
				SubWindow("Debuff Landing")
			end
	elseif action == "AOECheck" then
			if checkaoe == 0 then
				checkaoe = 1
			else
				checkaoe = 0
			end
			SubWindow("Debuff Landing")
	elseif action == "ReqPremium" then
			ShowToClient("UltimatePVP","L2Tower Premium is required for this function to work.")
			MainWindow()
	elseif action == "Show Hide" then
			if showhideenabled == 0 then
				if novisuals == 0 then
					ShowToClient("ShowHide","Enabled")
				end
				showhideenabled = 1
			else
				if novisuals == 0 then
					ShowToClient("ShowHide","Disabled")
				end
				showhideenabled = 0
			end
			SubWindow("Anti Daggers")
	elseif action == "Auto Cleanse" then
		SubWindow("Auto Cleanse")
	elseif action == "Auto Cleanse Enabled"  then
		if acenabled == 0 then
			if novisuals == 0 then
				ShowToClient("AutoCleanse","Enabled")
			end
			acenabled = 1
		else
			if novisuals == 0 then
				ShowToClient("AutoCleanse","Disabled")
			end
			acenabled = 0
		end
		SubWindow("Auto Cleanse")
		elseif action == "Rogue Debuffs2" then
			SubWindow("Rogue Debuffs2")
		elseif action == "Enchanter Debuffs2" then
			SubWindow("Enchanter Debuffs2")
		elseif action == "Warrior Debuffs2" then
			SubWindow("Warrior Debuffs2")
		elseif action == "Healer Debuffs2" then
			SubWindow("Healer Debuffs2")
		elseif action == "Summoner Debuffs2" then
			SubWindow("Summoner Debuffs2")
		elseif action == "Wizzard Debuffs2" then
			SubWindow("Wizzard Debuffs2")
		elseif action == "Knight Debuffs2" then
			SubWindow("Knight Debuffs2")
		elseif action == "Transfo Debuffs2" then
			SubWindow("Transfo Debuffs2")
	end
end
end
function SubWindow(param)
	ShowToClient("",param)
	local html = THtmlGenerator("UltimatePVP - " .. param .. ".");
	html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=1><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=0></td></tr></table>');	
	pos = 3
	if param == "Set Skill" then
		rbback = 3
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select the skill you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local listskill = GetSkills()
			for skill in listskill.list do
				if skill.isPassive == false then
					if skill:IsSongOrDance() == false then
						html:AddButton(THtmlAction("/setabskill"):AddParam(skill.skillId),THtmlButtonStyle.BUTTON_ACTION,skill.name,false,"","",200,25);
					end
				end;
			end;
		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center></br></br></br>');
elseif param == "Debuff Landing" then
		rbmode = 2
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if debufflandenabled == 1 then
		html:AddButton(THtmlAction("/doaction"):AddParam("Debuff Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Debuff Landing Msg ON",true,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Debuff Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Debuff Landing Msg OFF",false,"","",200,25);
		end
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<table><tr><td>');
		if debufflandmode == "me" then
		html:AddButton(THtmlAction("/doaction"):AddParam("Debuff Mode"),THtmlButtonStyle.BUTTON_ON_OFF,"Only Me",true,"","",122,25);
	elseif debufflandmode == "party" then
		html:AddButton(THtmlAction("/doaction"):AddParam("Debuff Mode"),THtmlButtonStyle.BUTTON_ON_OFF,"Party",true,"","",122,25);
	elseif debufflandmode == "clan" then
		html:AddButton(THtmlAction("/doaction"):AddParam("Debuff Mode"),THtmlButtonStyle.BUTTON_ON_OFF,"Clan",true,"","",122,25)
	elseif debufflandmode == "ally" then
		html:AddButton(THtmlAction("/doaction"):AddParam("Debuff Mode"),THtmlButtonStyle.BUTTON_ON_OFF,"Ally",true,"","",122,25);
		end
		html:AddHtml('</td><td>')
		Condition = false
		if checkaoe == 1 then
			Condition = true
		end 
		html:AddButton(THtmlAction("/doaction"):AddParam("AOECheck"),THtmlButtonStyle.BUTTON_ON_OFF,"Check AOE",Condition,"","",122,25);
		html:AddHtml('</td></tr></table></center>')
		html:AddHtml('<center><table><tr><td></br>')
		html:AddEdit("debuff",false,97,12)
		html:AddHtml('</td><td></br>')
		html:AddButton(THtmlAction("/setmsg"):AddParam("$debuff",true),THtmlButtonStyle.BUTTON_ACTION,"Set msg",false,"","",97,19);
		html:AddHtml("</td></tr></table><table width = 292><tr><td>")
		html:AddHtml("<center>Tip: %debuff " .. landmsg .. " %target")
		html:AddHtml("</td></tr></table></center><table width = 292><tr><td>")
		html:AddHtml('</td></tr></table></center></br></br>')
elseif param == "Set Interrupt Skill" then
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select the skill you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local listskill = GetSkills()
			for skill in listskill.list do
				if skill.isPassive == false then
					if skill:IsSongOrDance() == false then
						html:AddButton(THtmlAction("/setinterruptskill"):AddParam(skill.skillId),THtmlButtonStyle.BUTTON_ACTION,skill.name,false,"","",200,25);
					end
				end;
			end;
		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center></br></br></br>');
elseif param == "Interrupt Skills" then
		rbmode = 4
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		html:AddHtml('<tr><td><center>');
		if interruptenabled == 1 then
			Condition = true;
		html:AddButton(THtmlAction("/doaction"):AddParam("Interrupt Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Interrupt Skills ON",Condition,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Interrupt Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Interrupt Skills OFF",Condition,"","",200,25);
		end
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table width=125 border=0  ><tr><td>');
		Condition = false;
		if interruptmode == 0 then
		html:AddButton(THtmlAction("/doaction"):AddParam("Interrupt Mode"),THtmlButtonStyle.BUTTON_ON_OFF,"Mode: Target",true,"","",97,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Interrupt Mode"),THtmlButtonStyle.BUTTON_ON_OFF,"Mode: All",true,"","",97,25);
		end
		html:AddHtml('</td><td>')
		html:AddButton(THtmlAction("/doaction"):AddParam("Set Interrupter"),THtmlButtonStyle.BUTTON_ACTION,"Set skill",false,"","",97,25);
		html:AddHtml('</td></tr></table></center>');
		html:AddHtml("</br></br>")
		html:AddHtml('<center><table width=125 border=0><tr><td>');
		A = 0
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if interrupt[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,InterruptSkillslabel[A],Condition,"","",122,25);
		until A == 13
		html:AddHtml('</td></tr></table></center></br>')
elseif param == "Rogue Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 0
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 18
		html:AddHtml('</td></tr></table></center>')
elseif param == "Enchanter Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 2
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 18
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 56
		html:AddHtml('</td></tr></table></center>')
elseif param == "Warrior Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 3
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 56
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 83
		html:AddHtml('</td></tr></table></center>')
elseif param == "Healer Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 4
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 83
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 96
		html:AddHtml('</td></tr></table></center>')
elseif param == "Summoner Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 5
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 96
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 109
		html:AddHtml('</td></tr></table></center>')
elseif param == "Wizzard Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 6
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 109
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 146
		html:AddHtml('</td></tr></table></center>')
elseif param == "Knight Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 7
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 146
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 165
		html:AddHtml('</td></tr></table></center>')
elseif param == "Transfo Debuffs2" then
		rbmode = 4
		rbback = 4
		acmode = 8
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 165
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 189
		html:AddHtml('</td></tr></table></center>')
elseif param == "Auto Cleanse" then
		RogueDebuff2 = {autocleanse[1],autocleanse[2],autocleanse[3],autocleanse[4],autocleanse[5],autocleanse[6],autocleanse[7],autocleanse[8],autocleanse[9],autocleanse[10],autocleanse[11],autocleanse[12],autocleanse[13],autocleanse[14],autocleanse[15],autocleanse[16],autocleanse[17],autocleanse[18]}
		EnchanterDebuff2 = {autocleanse[19],autocleanse[20],autocleanse[21],autocleanse[22],autocleanse[23],autocleanse[24],autocleanse[25],autocleanse[26],autocleanse[27],autocleanse[28],autocleanse[29],autocleanse[30],autocleanse[31],autocleanse[32],autocleanse[33],autocleanse[34],autocleanse[35],autocleanse[36],autocleanse[37],autocleanse[38],autocleanse[39],autocleanse[40],autocleanse[41],autocleanse[42],autocleanse[43],autocleanse[44],autocleanse[45],autocleanse[46],autocleanse[47],autocleanse[48],autocleanse[49],autocleanse[50],autocleanse[51],autocleanse[52],autocleanse[53],autocleanse[54],autocleanse[55],autocleanse[56]}
		WarriorDebuff2 = {autocleanse[57],autocleanse[58],autocleanse[59],autocleanse[60],autocleanse[61],autocleanse[62],autocleanse[63],autocleanse[64],autocleanse[65],autocleanse[66],autocleanse[67],autocleanse[68],autocleanse[69],autocleanse[70],autocleanse[71],autocleanse[72],autocleanse[73],autocleanse[74],autocleanse[75],autocleanse[76],autocleanse[77],autocleanse[78],autocleanse[79],autocleanse[80],autocleanse[81],autocleanse[82],autocleanse[83]}
		HealerDebuff2 = {autocleanse[84],autocleanse[85],autocleanse[86],autocleanse[87],autocleanse[88],autocleanse[89],autocleanse[90],autocleanse[91],autocleanse[92],autocleanse[93],autocleanse[94],autocleanse[95],autocleanse[96]}
		SummonerDebuff2 = {autocleanse[97],autocleanse[98],autocleanse[99],autocleanse[100],autocleanse[101],autocleanse[102],autocleanse[103],autocleanse[104],autocleanse[105],autocleanse[106],autocleanse[107],autocleanse[108],autocleanse[109]}
		WizzardDebuff2 = {autocleanse[110],autocleanse[111],autocleanse[112],autocleanse[113],autocleanse[114],autocleanse[115],autocleanse[116],autocleanse[117],autocleanse[118],autocleanse[119],autocleanse[120],autocleanse[121],autocleanse[122],autocleanse[123],autocleanse[124],autocleanse[125],autocleanse[126],autocleanse[127],autocleanse[128],autocleanse[129],autocleanse[130],autocleanse[131],autocleanse[132],autocleanse[133],autocleanse[134],autocleanse[135],autocleanse[136],autocleanse[137],autocleanse[138],autocleanse[139],autocleanse[140],autocleanse[141],autocleanse[142],autocleanse[143],autocleanse[144],autocleanse[145],autocleanse[146]}
		KnightDebuff2 = {autocleanse[147],autocleanse[148],autocleanse[149],autocleanse[150],autocleanse[151],autocleanse[152],autocleanse[153],autocleanse[154],autocleanse[155],autocleanse[156],autocleanse[157],autocleanse[158],autocleanse[159],autocleanse[160],autocleanse[161],autocleanse[162],autocleanse[163],autocleanse[164],autocleanse[165]}
		TranfoDebuff2  = {autocleanse[166],autocleanse[167],autocleanse[168],autocleanse[169],autocleanse[170],autocleanse[171],autocleanse[172],autocleanse[173],autocleanse[174],autocleanse[175],autocleanse[176],autocleanse[177],autocleanse[178],autocleanse[179],autocleanse[180],autocleanse[181],autocleanse[182],autocleanse[183],autocleanse[184],autocleanse[185],autocleanse[186],autocleanse[187],autocleanse[188],autocleanse[189]}
		rbmode = 3
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if acenabled == 1 then
		html:AddButton(THtmlAction("/doaction"):AddParam("Auto Cleanse Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Auto Cleanse ON",true,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Auto Cleanse Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Auto Cleanse OFF",false,"","",200,25);
		end
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table><tr><td>');
		html:AddHtml('</br>')
		A = 0;
		Condition = false
		if checkarray(RogueDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Rogue Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Rogue Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(EnchanterDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Enchanter Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Enchanter Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(WarriorDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Warrior Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Warrior Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(HealerDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Healer Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Healer Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(SummonerDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Summoner Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Summoner Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(WizzardDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Wizzard Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Wizzard Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(KnightDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Knight Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Knight Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(TranfoDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Transfo Debuffs2"),THtmlButtonStyle.BUTTON_ON_OFF,"Transformation Debuffs",Condition,"","",200,25);
		html:AddHtml('</td></tr></table></center></br></br>')
elseif param == "Rogue Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 0
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 18
		html:AddHtml('</td></tr></table></center>')
elseif param == "Enchanter Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 2
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 18
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 56
		html:AddHtml('</td></tr></table></center>')
elseif param == "Warrior Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 3
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 56
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 83
		html:AddHtml('</td></tr></table></center>')
elseif param == "Healer Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 4
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 83
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 96
		html:AddHtml('</td></tr></table></center>')
elseif param == "Summoner Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 5
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 96
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 109
		html:AddHtml('</td></tr></table></center>')
elseif param == "Wizzard Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 6
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 109
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 146
		html:AddHtml('</td></tr></table></center>')
elseif param == "Knight Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 7
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 146
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 165
		html:AddHtml('</td></tr></table></center>')
elseif param == "Transfo Debuffs" then
		rbmode = 2
		rbback = 2
		rsmode = 8
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 165
		repeat
		A = A+1
		if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
		Condition = false;
		if ripostance[A] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rslabel[A],Condition,"","",122,25);
		until A == 189
		html:AddHtml('</td></tr></table></center>')
elseif param == "Ripo Stance" then
		RogueDebuff = {ripostance[1],ripostance[2],ripostance[3],ripostance[4],ripostance[5],ripostance[6],ripostance[7],ripostance[8],ripostance[9],ripostance[10],ripostance[11],ripostance[12],ripostance[13],ripostance[14],ripostance[15],ripostance[16],ripostance[17],ripostance[18]}
		EnchanterDebuff = {ripostance[19],ripostance[20],ripostance[21],ripostance[22],ripostance[23],ripostance[24],ripostance[25],ripostance[26],ripostance[27],ripostance[28],ripostance[29],ripostance[30],ripostance[31],ripostance[32],ripostance[33],ripostance[34],ripostance[35],ripostance[36],ripostance[37],ripostance[38],ripostance[39],ripostance[40],ripostance[41],ripostance[42],ripostance[43],ripostance[44],ripostance[45],ripostance[46],ripostance[47],ripostance[48],ripostance[49],ripostance[50],ripostance[51],ripostance[52],ripostance[53],ripostance[54],ripostance[55],ripostance[56]}
		WarriorDebuff = {ripostance[57],ripostance[58],ripostance[59],ripostance[60],ripostance[61],ripostance[62],ripostance[63],ripostance[64],ripostance[65],ripostance[66],ripostance[67],ripostance[68],ripostance[69],ripostance[70],ripostance[71],ripostance[72],ripostance[73],ripostance[74],ripostance[75],ripostance[76],ripostance[77],ripostance[78],ripostance[79],ripostance[80],ripostance[81],ripostance[82],ripostance[83]}
		HealerDebuff = {ripostance[84],ripostance[85],ripostance[86],ripostance[87],ripostance[88],ripostance[89],ripostance[90],ripostance[91],ripostance[92],ripostance[93],ripostance[94],ripostance[95],ripostance[96]}
		SummonerDebuff = {ripostance[97],ripostance[98],ripostance[99],ripostance[100],ripostance[101],ripostance[102],ripostance[103],ripostance[104],ripostance[105],ripostance[106],ripostance[107],ripostance[108],ripostance[109]}
		WizzardDebuff = {ripostance[110],ripostance[111],ripostance[112],ripostance[113],ripostance[114],ripostance[115],ripostance[116],ripostance[117],ripostance[118],ripostance[119],ripostance[120],ripostance[121],ripostance[122],ripostance[123],ripostance[124],ripostance[125],ripostance[126],ripostance[127],ripostance[128],ripostance[129],ripostance[130],ripostance[131],ripostance[132],ripostance[133],ripostance[134],ripostance[135],ripostance[136],ripostance[137],ripostance[138],ripostance[139],ripostance[140],ripostance[141],ripostance[142],ripostance[143],ripostance[144],ripostance[145],ripostance[146]}
		KnightDebuff = {ripostance[147],ripostance[148],ripostance[149],ripostance[150],ripostance[151],ripostance[152],ripostance[153],ripostance[154],ripostance[155],ripostance[156],ripostance[157],ripostance[158],ripostance[159],ripostance[160],ripostance[161],ripostance[162],ripostance[163],ripostance[164],ripostance[165]}
		TranfoDebuff  = {ripostance[166],ripostance[167],ripostance[168],ripostance[169],ripostance[170],ripostance[171],ripostance[172],ripostance[173],ripostance[174],ripostance[175],ripostance[176],ripostance[177],ripostance[178],ripostance[179],ripostance[180],ripostance[181],ripostance[182],ripostance[183],ripostance[184],ripostance[185],ripostance[186],ripostance[187],ripostance[188],ripostance[189]}
		rbmode = 2
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if ripostanceenabled == 1 then
		html:AddButton(THtmlAction("/doaction"):AddParam("Ripo Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Riposte Stance ON",true,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Ripo Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Riposte Stance OFF",false,"","",200,25);
		end
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table><tr><td>');
		html:AddHtml('</br>')
		A = 0;
		Condition = false
		if checkarray(RogueDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Rogue Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Rogue Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(EnchanterDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Enchanter Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Enchanter Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(WarriorDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Warrior Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Warrior Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(HealerDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Healer Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Healer Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(SummonerDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Summoner Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Summoner Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(WizzardDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Wizzard Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Wizzard Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(KnightDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Knight Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Knight Debuffs",Condition,"","",200,25);
		Condition = false
		if checkarray(TranfoDebuff,1) then
			Condition = true
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Transfo Debuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Transformation Debuffs",Condition,"","",200,25);
		html:AddHtml('</td></tr></table></center></br></br>')
elseif param == "Title" then
		setstring = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if titlenabled == 1 then
		html:AddButton(THtmlAction("/doaction"):AddParam("Title Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Change Title ON",true,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Title Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Change Title OFF",false,"","",200,25);
		end
		html:AddHtml('</td></tr></table></br>')
		html:AddHtml('<center><table><tr><td>')
		html:AddHtml("<center>Change other's title</center>")
		Condition = false;
		if classontitle == 1 then
			Condition = true;
		end	
		html:AddButton(THtmlAction("/doaction"):AddParam("Class in Title"),THtmlButtonStyle.BUTTON_ON_OFF, "Current Class", Condition,"","",200,25);		
		html:AddHtml("<center>Change my title</center>")
	if premium == true then
		Condition = false
		if mytitlemode == "off" then
		html:AddButton(THtmlAction("/doaction"):AddParam("PVP On Title"),THtmlButtonStyle.BUTTON_ON_OFF, "Off", false,"","",200,25);
	elseif mytitlemode == "pvpcount" then
		html:AddButton(THtmlAction("/doaction"):AddParam("PVP On Title"),THtmlButtonStyle.BUTTON_ON_OFF, "PVP/PK Count", true,"","",200,25);
	elseif mytitlemode == "pvpsincelog" then
		html:AddButton(THtmlAction("/doaction"):AddParam("PVP On Title"),THtmlButtonStyle.BUTTON_ON_OFF, "PVPs since login", true,"","",200,25);
		end
elseif premium == false then
		html:AddButton(THtmlAction("/doaction"):AddParam("ReqPremium"),THtmlButtonStyle.BUTTON_NO_CLICK, "Off", true,"","",200,25);
	end
		html:AddHtml('</td></tr></table></center>')
		html:AddHtml('<center><table><tr><td>')
		html:AddEdit("title",false,97,12)
		html:AddHtml('</td><td>')
		html:AddButton(THtmlAction("/setstring"):AddParam("$title",true),THtmlButtonStyle.BUTTON_ACTION,"Set title",false,"","",97,19);
		html:AddHtml("</td></tr></table><table width = 292><tr><td>")
		if mytitlemode == "pvpsincelog" then
		html:AddHtml("<center>Tip: " .. pvpsincelogtitle .. " %Count")
		end
		html:AddHtml('</td></tr></table></center></br></br>')		
elseif param == "Configuration" then
		rbback = 0
		local Condition = false;
		html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=358><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=35></td></tr></table>');	
		html:AddHtml('<table width=270 border=0><tr><td><center>');
		html:AddHtml(param .. '</br></center>');
		html:AddHtml('<tr><td><center>');
		Condition = false;
		if novisuals == 1 then
			Condition = true;
		end	
		html:AddButton(THtmlAction("/doaction"):AddParam("novisuals"),THtmlButtonStyle.BUTTON_ON_OFF, "Disable Visuals", Condition,"","",200,25);
		Condition = false;
		if defaultpause == 1 then
		html:AddButton(THtmlAction("/doaction"):AddParam("defaultpause"),THtmlButtonStyle.BUTTON_EXTRA, "Default Pause: ON", true,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("defaultpause"),THtmlButtonStyle.BUTTON_EXTRA, "Default Pause: OFF", false,"","",200,25);
		end
		html:AddHtml('For any problem or bug please contact me on..</br>L2Tower forum: Vinter</br>Skype: vinterl2tower')
		html:AddHtml('</td></tr></table></center>')
elseif param == "Set AOE Skill" then
		html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=358><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=35></td></tr></table>');	
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select the skill you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local listskill = GetSkills()
			for skill in listskill.list do
				if skill.isPassive == false then
					if skill:IsSongOrDance() == false then
						html:AddButton(THtmlAction("/setaoeskill"):AddParam(skill.skillId),THtmlButtonStyle.BUTTON_ACTION,skill.name,false,"","",200,25);
					end
				end;
			end;
		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center></br></br></br>');
elseif param == "Remove Celestial" then
		rbmode = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if nocelestialenabled == 1 then
		html:AddButton(THtmlAction("/doaction"):AddParam("NoCelestial Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Remove Celestial ON",true,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("NoCelestial Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Remove Celestial OFF",false,"","",200,25);
		end
		html:AddHtml('</td></tr></table></br>')
		html:AddHtml('<center><table><tr><td>')
		html:AddHtml('<center>Heals to check</center>')
		A = 0;
		repeat
			A = A+1
			Condition = false;
			if fullheal[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,fhslabel[A],Condition,"","",122,25);
		until A == 8
		html:AddHtml('</td><td>')
		html:AddHtml('<center>Buffs to remove</center>')
		A = 0;
		repeat
			A = A+1
			Condition = false;
			if barrier[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/barrier"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,barrierlabel[A],Condition,"","",122,25);
		until A == 8
		html:AddHtml('</td></tr></table></center></br>')
elseif param == "SummonBuffs" then
		rbmode = 0
		rbback = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 69;
		repeat
			A = A+1
			if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
			Condition = false;
			if removebuff[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rblabel[A],Condition,"","",122,25);
		until A == 73
		html:AddHtml('</td></tr></table></center></br></br>')
elseif param == "Elemental" then
		rbback = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 47;
		repeat
			A = A+1
			if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
			Condition = false;
			if removebuff[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rblabel[A],Condition,"","",122,25);
		until A == 55
		html:AddHtml('</td></tr></table></center></br></br>')	
elseif param == "Party" then
		rbmode = 0
		rbback = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 64;
		repeat
			A = A+1
			if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
			Condition = false;
			if removebuff[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rblabel[A],Condition,"","",122,25);
		until A == 69
		html:AddHtml('</td></tr></table></center></br></br>')	
elseif param == "Stolen" then
		rbmode = 0
		rbback = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 55
		repeat
			A = A+1
			if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
			Condition = false;
			if removebuff[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rblabel[A],Condition,"","",122,25);
		until A == 64
		html:AddHtml('</td></tr></table></center></br></br>')			
elseif param == "Trigger" then
		rbmode = 0
		rbback = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 19;
		repeat
			A = A+1
			if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
			Condition = false;
			if removebuff[A] == 1 then
					Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rblabel[A],Condition,"","",122,25);
		until A == 22
		html:AddHtml('</td></tr></table></center></br></br>')	
elseif param == "Special" then
		rbmode = 0
		rbback = 1
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		A = 22;
		repeat
			A = A+1
			if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
			Condition = false;
			if removebuff[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rblabel[A],Condition,"","",122,25);
		until A == 47
		html:AddHtml('</td></tr></table></center></br></br>')		
elseif param == "Remove Buffs" then
		rbmode = 0
	--[[	html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=358><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=35></td></tr></table>');	
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml(param .. '</font> buffs.</br></center>');
		html:AddHtml('<tr><td><center>');]]
		html:AddHtml('</br><center><table><tr><td>');
		local Condition = false;
		if removebuffsenabled == 1 then
		html:AddButton(THtmlAction("/doaction"):AddParam("RBuff Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Remove Buffs ON",true,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("RBuff Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Remove Buffs OFF",false,"","",200,25);
		end
		html:AddHtml('</td></tr></table></center>');	
		--html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table><tr><td>');
		Condition = false;
		if profile == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/changeprofile"):AddParam(1),THtmlButtonStyle.BUTTON_ON_OFF,"Profile #1",Condition,"","",63,25);
		Condition = false;
		if profile == 2 then
			Condition = true;
		end
		html:AddHtml('</td><td>')
		html:AddButton(THtmlAction("/changeprofile"):AddParam(2),THtmlButtonStyle.BUTTON_ON_OFF,"Profile #2",Condition,"","",63,25);
		Condition = false;
		if profile == 3 then
			Condition = true;
		end
		html:AddHtml('</td><td>')
		html:AddButton(THtmlAction("/changeprofile"):AddParam(3),THtmlButtonStyle.BUTTON_ON_OFF,"Profile #3",Condition,"","",63,25);
		html:AddHtml('</td></tr></table></center>');
		html:AddHtml('<center><table><tr><td>');
		html:AddHtml('</br>')
		pos = 3
		A = 0;
		repeat
			A = A+1
			if pos == 0 then
				html:AddHtml("</td><td>")
				pos = 1
			else
				html:AddHtml("</td></tr><tr><td>")
				pos = 0
			end
			if pos == 3 then pos = 0 end
			Condition = false;
			if removebuff[A] == 1 then
				Condition = true;
			end
			html:AddButton(THtmlAction("/rb"):AddParam(A),THtmlButtonStyle.BUTTON_ON_OFF,rblabel[A],Condition,"","",122,25);
		until A == 19
		html:AddHtml("</br></td></tr><tr><td>")
		Condition = false;
		if removebuff[23] == 1 or removebuff[24] == 1 or removebuff[25] == 1 or removebuff[26] == 1 or removebuff[27] == 1 or removebuff[28] == 1 or removebuff[29] == 1 or removebuff[30] == 1 or removebuff[31] == 1 or removebuff[32] == 1 or removebuff[33] == 1 or removebuff[34] == 1 or removebuff[35] == 1 or removebuff[36] == 1 or removebuff[37] == 1 or removebuff[38] == 1 or removebuff[39] == 1 or removebuff[40] == 1 or removebuff[41] == 1 or removebuff[42] == 1 or removebuff[43] == 1 or removebuff[44] == 1 or removebuff[45] == 1 or removebuff[46] == 1 or removebuff[47] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Special"),THtmlButtonStyle.BUTTON_ON_OFF,"Special",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if removebuff[48] == 1 or removebuff[49] == 1 or removebuff[50] == 1 or removebuff[51] == 1 or removebuff[52] == 1 or removebuff[53] == 1 or removebuff[54] == 1 or removebuff[55] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Elemental"),THtmlButtonStyle.BUTTON_ON_OFF,"Elemental Resists",Condition,"","",122,25);
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if removebuff[56] == 1 or removebuff[57] == 1 or removebuff[58] == 1 or removebuff[59] == 1 or removebuff[60] == 1 or removebuff[61] == 1 or removebuff[62] == 1 or removebuff[63] == 1 or removebuff[64] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Stolen"),THtmlButtonStyle.BUTTON_ON_OFF,"Stolen",Condition,"","",122,25);		
		html:AddHtml("</td><td>")
		Condition = false;
		if removebuff[20] == 1 or removebuff[21] == 1 or removebuff[22] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Triggers"),THtmlButtonStyle.BUTTON_ON_OFF,"Triggers",Condition,"","",122,25);
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if removebuff[65] == 1 or removebuff[66] == 1 or removebuff[67] == 1 or removebuff[68] == 1 or removebuff[69] == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Party"),THtmlButtonStyle.BUTTON_ON_OFF,"Party",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if removebuff[70] == 1 or removebuff[71] == 1 or removebuff[72] == 1 or removebuff[73] == 1 then	
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("SummonBuffs"),THtmlButtonStyle.BUTTON_ON_OFF,"Queen/Seraphim",Condition,"","",122,25);
		html:AddHtml('</td></tr></table></center></br></br>')
		
elseif param == "Auto Pots" then
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if potsenabled == 1 then
			Condition = true;
		html:AddButton(THtmlAction("/doaction"):AddParam("Pots Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Auto Pots ON",Condition,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Pots Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Auto Pots OFF",Condition,"","",200,25);
		end
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table width=125 border=0  ><tr><td>');
		html:AddHtml('</br>')
		Condition = false;
		if wwpotenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("ww pot"),THtmlButtonStyle.BUTTON_ON_OFF,"Wind Walk Potion",Condition,"","",200,25);		
		Condition = false;
		if hastepotenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("haste pot"),THtmlButtonStyle.BUTTON_ON_OFF,"Haste Potion",Condition,"","",200,25);		
		Condition = false;
		if acupotenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("acu pot"),THtmlButtonStyle.BUTTON_ON_OFF,"Acumen Potion",Condition,"","",200,25);		
		Condition = false;
		if soulpotenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("soul pot"),THtmlButtonStyle.BUTTON_ON_OFF,"Bottle of Souls",Condition,"","",200,25);		
		Condition = false;
		if mentalpotenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("mental pot"),THtmlButtonStyle.BUTTON_ON_OFF,"Mental Strengthening Potion",Condition,"","",200,25);		
		Condition = false;
		if siegepotenabled == 1 then
			Condition = true;
		end
		html:AddHtml('</br>')
		html:AddButton(THtmlAction("/doaction"):AddParam("siege pot"),THtmlButtonStyle.BUTTON_ON_OFF,"Instant Haste Potion",Condition,"","",200,25);		
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table width=125 border=0><tr><td>');
		Condition = false;
		if siegedashmode == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("siegedashmode"),THtmlButtonStyle.BUTTON_ON_OFF,"Mode: Always",Condition,"","",97,25);
		Condition = false;
		if siegedashmode == 0 then
			Condition = true;
		end
		html:AddHtml('</td><td>')
		html:AddButton(THtmlAction("/doaction"):AddParam("siegedashmode"),THtmlButtonStyle.BUTTON_ON_OFF,"Mode: Walk",Condition,"","",97,25);
		html:AddHtml('</td></tr></table></center>');
		html:AddHtml("</br></br>")
elseif param == "Summon" then
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if summonenabled == 1 then
			Condition = true;
		html:AddButton(THtmlAction("/doaction"):AddParam("Summon Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Support & Pet ON",Condition,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Summon Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Support & Pet OFF",Condition,"","",200,25);
		end
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table width=125 border=0  ><tr><td>');
		html:AddHtml('</br>')
		Condition = false;
		if beastss == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("BeastSS"),THtmlButtonStyle.BUTTON_ON_OFF,"Beast SS/BSS",Condition,"","",200,25);
		Condition = false;
		if buffcontrol == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Buff Control"),THtmlButtonStyle.BUTTON_ON_OFF,"Buff Control",Condition,"","",200,25);
		Condition = false;
		if betraynoss == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("BetrayNoSS"),THtmlButtonStyle.BUTTON_ON_OFF,"Betray SS Disable",Condition,"","",200,25);
		html:AddHtml('</td></tr></table></center></br></br>')
elseif param == "Anti Daggers" then
		local Condition = false;
		html:AddHtml('</br><center><table><tr><td>');
		if adagenabled == 1 then
			Condition = true;
		html:AddButton(THtmlAction("/doaction"):AddParam("Daggers Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Daggers ON",Condition,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Daggers Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Daggers OFF",Condition,"","",200,25);
		end
		html:AddHtml('</td></tr></table>');	
		html:AddHtml('<center><table width=125 border=0  ><tr><td>');
		Condition = false;
		if abwalk == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Mode: Walk"),THtmlButtonStyle.BUTTON_ON_OFF,"Mode: Walk",Condition,"","",97,25);
		html:AddHtml('</td><td>')
		Condition = false;
		if abskill == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Mode: Skill"),THtmlButtonStyle.BUTTON_ON_OFF,"Mode: Skill",Condition,"","",97,25);
		html:AddHtml('</td></tr></table></center>');
		html:AddHtml("</br></br>")
		html:AddHtml('<center><table width=125 border=0  ><tr><td>');
		Condition = false;
		if adbenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Deadly Blow"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Deadly Blow",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if abenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Backstab"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Backstab",Condition,"","",122,25);
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if albenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Lethal Blow"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Lethal Blow",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if adubenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Dual Blow"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Dual Blow",Condition,"","",122,25);
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if atlenabled == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Anti Target"),THtmlButtonStyle.BUTTON_ON_OFF,"Fast Retarget",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if showhideenabled == 1 then
			Condition = true;
		end	
		html:AddButton(THtmlAction("/doaction"):AddParam("Show Hide"),THtmlButtonStyle.BUTTON_ON_OFF, "Show Hide",Condition,"","",122,25);	
		html:AddHtml('</td></tr></table>');
		html:AddHtml('<center><table><tr><td>')
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if aoenabled == 1 then
			Condition = true;
		end	
		html:AddButton(THtmlAction("/doaction"):AddParam("AOE Hide detection"),THtmlButtonStyle.BUTTON_ON_OFF, "Hide Detection",Condition,"","",122,25);			
		html:AddHtml('</td><td>')
		Condition = false;
		if aoeskillid ~= 0 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("aoeskillid"),THtmlButtonStyle.BUTTON_ON_OFF, "Config",Condition,"","",44,25);	
		html:AddHtml('</td></tr></table></center></br></br>')
elseif param == "Anti Steal" then
		html:AddHtml('<table><tr><td><center>');
		Condition = false;
		if asdenabled == 1 then
			Condition = true;
		html:AddButton(THtmlAction("/doaction"):AddParam("Steal Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Steal ON",Condition,"","",200,25);
		else
		html:AddButton(THtmlAction("/doaction"):AddParam("Steal Enabled"),THtmlButtonStyle.BUTTON_ON_OFF,"Anti Steal OFF",Condition,"","",200,25);
		end
		html:AddHtml("</br></br>")
		html:AddHtml('<center><table><tr><td>');
		Condition = false;
		if usefishp == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use Fish Potion"),THtmlButtonStyle.BUTTON_ON_OFF,"Fisherman's Potion",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if usecarp == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use Caravaner's"),THtmlButtonStyle.BUTTON_ON_OFF,"Caravaner's Potion",Condition,"","",122,25);
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if usewwp == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use WW Potion"),THtmlButtonStyle.BUTTON_ON_OFF,"Speed Potion",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if useacup == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use Acu Potion "),THtmlButtonStyle.BUTTON_ON_OFF,"Acumen Potion",Condition,"","",122,25);
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if usehastep == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use Haste Potion"),THtmlButtonStyle.BUTTON_ON_OFF,"Atk. Spd. Potion",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if useprip == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use Primeval"),THtmlButtonStyle.BUTTON_ON_OFF,"Primeval Potion",Condition,"","",122,25);
		html:AddHtml("</td></tr><tr><td>")
		Condition = false;
		if useelep == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use Elemental"),THtmlButtonStyle.BUTTON_ON_OFF,"Element Potion",Condition,"","",122,25);
		html:AddHtml("</td><td>")
		Condition = false;
		if usemysp == 1 then
			Condition = true;
		end
		html:AddButton(THtmlAction("/doaction"):AddParam("Use Mystery"),THtmlButtonStyle.BUTTON_ON_OFF,"Mystery Potion",Condition,"","",122,25);
		html:AddHtml('</td></tr></table></center></br></br>')
	end
	html:AddHtml('<center><table><tr><td>');
	html:AddButton(THtmlAction("/doaction"):AddParam("Go Back"),THtmlButtonStyle.BUTTON_ACTION,"Back",false,"","",200,25);
	html:AddHtml("</br>")
	html:AddHtml('</td></tr></table></center>')
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;	
end

function MainWindow()
	local html = THtmlGenerator("UltimatePVP " .. pluginversion);
	local Condition = false;
	html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=358><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=35></td></tr></table>');	
	html:AddHtml('<table width=270 border=0><tr><td>');
	html:AddHtml('</br>');
	html:AddHtml('</td></tr><tr><td><center>');
	Condition = false;
	if ppaused == 1 then
	html:AddButton(THtmlAction("/doaction"):AddParam("Plugin Pause"),THtmlButtonStyle.BUTTON_EXTRA,"PAUSE ON",true,"","",250,25);
	else
	html:AddButton(THtmlAction("/doaction"):AddParam("Plugin Pause"),THtmlButtonStyle.BUTTON_EXTRA,"PAUSE OFF",false,"","",250,25);
	end
	html:AddHtml("</br></td></tr></table><center>")
	html:AddHtml("<table><tr><td>")

	Condition = false;
	if adagenabled == 1 then
		Condition = true;
	end
	html:AddButton(THtmlAction("/doaction"):AddParam("Anti Daggers"),THtmlButtonStyle.BUTTON_ON_OFF, "Anti Daggers", Condition,"","",122,25);
	html:AddHtml("</td><td>")
	Condition = false;
	if afenabled == 1 then
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Anti Fear"),THtmlButtonStyle.BUTTON_ON_OFF, "Anti Fear", Condition,"","",122,25);
	html:AddHtml("</td></tr><tr><td>")
	Condition = false;
	if adenabled == 1 then
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Anti Disarm"),THtmlButtonStyle.BUTTON_ON_OFF, "Anti Disarm", Condition,"","",122,25);
	html:AddHtml("</td><td>")
	Condition = false;
	if asdenabled == 1 then
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Anti Steal"),THtmlButtonStyle.BUTTON_ON_OFF, "Anti Steal", Condition,"","",122,25);
	html:AddHtml("</td></tr><tr><td>")
	Condition = false;
	if titlenabled == 1 then
		Condition = true;
	end
	html:AddButton(THtmlAction("/doaction"):AddParam("Title"),THtmlButtonStyle.BUTTON_ON_OFF, "Change Title", Condition,"","",122,25);
	html:AddHtml("</td><td>")
	Condition = false;
	if potsenabled == 1 then
		Condition = true;
	end
	html:AddButton(THtmlAction("/doaction"):AddParam("Auto Pots"),THtmlButtonStyle.BUTTON_ON_OFF, "Auto Pots", Condition,"","",122,25);
	html:AddHtml("</td></tr><tr><td>")
	Condition = false;
	if removebuffsenabled == 1 then
		Condition = true;
	end
	if premium == true then
		html:AddButton(THtmlAction("/doaction"):AddParam("Remove Buffs"),THtmlButtonStyle.BUTTON_ON_OFF, "Remove Buffs", Condition,"","",122,25);
elseif premium == false then
		html:AddButton(THtmlAction("/doaction"):AddParam("ReqPremium"),THtmlButtonStyle.BUTTON_NO_CLICK, "Remove Buffs", false,"","",122,25);
	end
	html:AddHtml("</td><td>")
	Condition = false;
	if nocelestialenabled == 1 then
		Condition = true;
	end
	html:AddButton(THtmlAction("/doaction"):AddParam("NoCelestial"),THtmlButtonStyle.BUTTON_ON_OFF, "Remove Celestial", Condition,"","",122,25);
	html:AddHtml("</td></tr><tr><td>")
	Condition = false;
	if pohenabled == 1 then
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Pause when Hide"),THtmlButtonStyle.BUTTON_ON_OFF, "Pause when Hide", Condition,"","",122,25);
	html:AddHtml("</td><td>")
	Condition = false;
	if summonenabled == 1 then
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Summon & Pet"),THtmlButtonStyle.BUTTON_ON_OFF, "Summon & Pet", Condition,"","",122,25);	Condition = false;
	html:AddHtml("</td></tr><tr><td>")
	Condition = false
	if ripostanceenabled == 1 then
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Ripo Stance"),THtmlButtonStyle.BUTTON_ON_OFF, "Auto Riposte Stance", Condition,"","",122,25);
	html:AddHtml("</td><td>")
	Condition = false
	if interruptenabled == 1 then
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Interrupt Skills"),THtmlButtonStyle.BUTTON_ON_OFF, "Interrupt Skills", Condition,"","",122,25);
	html:AddHtml("</td></tr><tr><td>")
	Condition = false
	if debufflandenabled == 1 then
		Condition = true;
		Condition = true;
	end	
	html:AddButton(THtmlAction("/doaction"):AddParam("Debuff Landing"),THtmlButtonStyle.BUTTON_ON_OFF, "Debuff Land msg", Condition,"","",122,25)
	html:AddHtml("</td><td>")
	Condition = false
	if acenabled == 1 then
		Condition = true
	end
	html:AddButton(THtmlAction("/doaction"):AddParam("Auto Cleanse"),THtmlButtonStyle.BUTTON_ON_OFF, "Auto Cleanse", Condition,"","",122,25)
	html:AddHtml('</td></tr></table></br>');	
	html:AddHtml('<center><table width=125 border=0><tr><td>');
	html:AddButton(THtmlAction("/savefile"),THtmlButtonStyle.BUTTON_ACTION,"Save",false,"","",97,25);
	html:AddHtml('</td><td>')
	html:AddButton(THtmlAction("/doaction"):AddParam("config"),THtmlButtonStyle.BUTTON_ACTION,"Config.",false,"","",97,25);
	html:AddHtml('</td></tr></table></br>Made by Vinter</center>');
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;
end

function OnLTick500ms()
	if (ShowHtmlStatus) then
		ShowHtmlStatus = false;
		ShowHtml(HtmlBuild);
	end;
	if (timer[4] == 2) then
		timer[4] = 1;
elseif (timer[4] == 1) then
		if (failed == false) then
			if debufflandmode == "me" then
				ShowToClient(tostring(skillname(lastDebuffUsed)),landmsg .. " " .. tostring(landedon));
		elseif debufflandmode == "party" then
				Command("#" .. tostring(skillname(lastDebuffUsed)) .. " " .. landmsg .. " " .. tostring(landedon));
		elseif debufflandmode == "clan" then
				Command("@" .. tostring(skillname(lastDebuffUsed)) .. " " .. landmsg .. " " .. tostring(landedon));		
		elseif debufflandmode == "ally" then
				Command("$" .. tostring(skillname(lastDebuffUsed)) .. " " .. landmsg .. " " .. tostring(landedon));
			end
		
		end;
		timer[4] = 0;
	end;
end;

function skillname(skillid)
	local Skills = GetSkills();
	for Skill in Skills.list do
		if (Skill.skillId == skillid) then
			return Skill.name;
		end;
	end;
end

function OnLTick()
	if useinterrupt == true then
		UseSkillRaw(interrupterid,true,false)
		useinterrupt = false
	end
end

function OnCommand_setaoeskill(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		aoeskillid = tonumber(vCommandParam:GetParam(0):GetStr(true))
		SubWindow("Anti Daggers");
	--	ShowToClient("SET SKILL",tostring(aoeskillid))
	end
end
function OnCommand_setabskill(vCommandChatType, vNick, vCommandParam)
	rbback = 0
	if vCommandParam:GetCount() == 1 then
		abskillid = tonumber(vCommandParam:GetParam(0):GetStr(true))
		SubWindow("Anti Daggers");
	--	ShowToClient("SET SKILL",tostring(abskillid))
	end
end
function OnCommand_setinterruptskill(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		interrupterid = tonumber(vCommandParam:GetParam(0):GetStr(true))
		iskill = GetSkills():FindById(interrupterid)
		SubWindow("Interrupt Skills");
		--ShowToClient("SET SKILL",tostring(interrupterid))
	end
end


function RawTarget(userNm)
	if (userNm ~= nil) then
		if (GetUserByName(userNm) ~= nil) then
			if (GetUserByName(userNm):IsValid()) then
				if (GetTarget() ~= nil) then
					if (GetTarget():GetName() ~= userNm) then
						Command("/target "..userNm);
					end;
				else
					Command("/target "..userNm);
				end;
			end;
		end;
	end;
end;

function arrayGotBuff(check)
	for x,a in pairs(check) do
		if (GetMe():GotBuff(a)) then
			return true;  
		end;
	end;
	return false;
end;
function arrayGotDebuff(check)
	for x,a in pairs(check) do
		if (GetMe():GotBuff(a)) then
			if autocleanse[x] == 1 then
				return true;  
			else
				return false
			end
		end;
	end;
	return false;
end;
function arrayGotBuffDelete(check)
	for x,a in pairs(check) do
		if (GetMe():GotBuff(a)) then
			DeleteMyBuff(a)
		end;
	end;
	return false;
end;

function checkarray(array, int)
	for x,a in pairs(array) do
		if a == int then
			return true;
		end
	end
end;
function checkarrayforactivebyid(idarray,actarray,skillid)
	for x,a in pairs(idarray) do
		if a == skillid then
		--	ShowToClient("DEBUG","ID FOUND: " .. tostring(skillid))
				if actarray[x] == 1 then
					--ShowToClient("DEBUG","RETURN TRUE")
					return true
				else
					--ShowToClient("DEBUG","RETURN FALSE")
					return false
				end
		end
	end
end;

function MustTurnFront(skillId)
		if (skillId == 263) then
			if adbenabled == 1 then
				return true; 
			end
		end;
		if (skillId == 30) then
			if abenabled == 1 then
				return true; 
			end
		end;
		if (skillId == 344) then
			if albenabled == 1 then
				return true;
			end
		end;
		if (skillId == 928) then
			if adubenabled == 1 then
				return true;
			end
		end;
		if (skillId == 37) then
			return true;
		end
		if (skillId == 1) then
			return true;
		end
end

function GetWeaponID()
	local InventoryList = GetInventory();
	for weapon in InventoryList.list do
		if ((weapon.ItemType == 0) and (weapon.IsEquipped)) then
				ObjectID = weapon.objectId;
				WeaponID = weapon.displayId
		end;
	end;
end;
function GetPotsID()
	usetier = {0,0,0}
	local InventoryList = GetInventory();
	for item in InventoryList.list do
		if item.Name == "Fisherman's Potion - White"
		or item.Name == "Fisherman's Potion - Red"
		or item.Name == "Fisherman's Potion - Purple"
		or item.Name == "Fisherman's Potion - Orange"
		or item.Name == "Fisherman's Potion - Yellow"
		or item.Name == "Fisherman's Potion - Blue"
		or item.Name == "Fisherman's Potion - Jade"
		or item.Name == "Fisherman's Potion - Green"
		then
			Pot1ID = item.objectId;
		--	ShowToClient("DEBUG","ITEM: " .. item.Name .. "OID: " .. item.objectId)
		end
		if item.Name == "Caravaner's Remedy" then
			Pot2ID = item.objectId;
		end
		if item.Name == "Greater Haste Potion" then
		usetier[2] = 2
		Pot3ID = item.objectId;
		elseif item.Name == "Haste Potion" then
			if usetier[2] < 2 then
				Pot3ID = item.objectId;
			end
		end
		if item.Name == "Greater Magic Haste Potion" then 
			usetier[3] = 2
			Pot4ID = item.objectId;
		elseif item.Name == "Magic Haste Potion" then
			if usetier[3] < 2 then
				Pot4ID = item.objectId;
			end
		end
		if item.Name == "Greater Swift Attack Potion" then
			usetier[1] = 2
			Pot5ID = item.objectId;
		elseif item.Name == "Alacrity Potion" then
			if usetier[1] < 2 then
				Pot5ID = item.objectId;
			end
		end
		if item.Name == "Primeval Potion" then
			Pot6ID = item.objectId
		end
		if item.Name == "Fire Potion"
		or item.Name == "Wind Potion"
		or item.Name == "Dark Potion"
		or item.Name == "Water Potion"
		or item.Name == "Earth Potion"
		or item.Name == "Divine Potion"
		then
			Pot7ID = item.objectId;
		end
		if item.Name == "Mystery Potion" then
			Pot8ID = item.objectId;
		end
		if item.Name == "Full Bottle of Souls - 5 Souls (For Combat)" then
			Pot9ID = item.objectId;
		elseif item.Name == "Full Bottle of Souls - 5 Souls" then
			Pot9ID = item.objectId;
		end
		if item.Name == "Mental Strengthening Potion" then
			Pot11ID = item.objectId;
		end
		if item.Name == "Instant Haste Potion" then
			Pot10ID = item.objectId;
		end
	end
end

function amiwearingit()
	if ObjectID ~= nil then
		local wep = GetInventory():FindById(ObjectID);
	end
	if	(wep ~= nil) then
		--ShowToClient("DEBUG","Weapon ID not nil!")
		if (wep.IsEquipped) then
			return true;
		else
			return false;
		end
	else
		ObjecttID = nil;
		WeaponID = nil;
		return true;
	end;
end;

function OnMyTargetSelected(target)
user1 = target
if ppaused == 0 then
	if adagenabled == 1 then
		if (atlenabled == 1) then
			if (target ~= nil) then
				if (target:IsMe() == false) then
					lasttarget = target:GetName()
					--ShowToClient("DEBUG",tostring(target:GetId()))
				end;
			end;
		end;
	end
end
end;
function OnDeleteUser(user)
if ppaused == 0 then
	if adagenabled == 1 then
		if (atlenabled == 1) then
			if (user:GetName() == lasttarget) then
		--	ShowToClient("DEBUG","DeleteUser!")
				lasttarget = nil;
			end;	
		end;
	end
end
end;
function OnMoveToLocation(user,oldloc,newloc)
	if ppaused == 0 then
		if user:IsMe() then -- Only react if I move
		--	ShowToClient("DEBUG","ITSME")
			if potsenabled == 1 then -- autopots check
			--			ShowToClient("DEBUG","AUTOPOTSON")
				if siegepotenabled == 1 then
						--	ShowToClient("DEBUG","SIEGEDASH ON")
					GetPotsID()
					if siegedashmode == 0 then
							--	ShowToClient("DEBUG","SIEGEDASHMODE = 0")
						if not GetMe():GotBuff(2398) then
							if Pot10ID ~= nil then
							--		ShowToClient("DEBUG","NOT GETME GOTBUFF")
								UseItemRaw(Pot10ID)
							--		ShowToClient("DEBUG","USEPOTION")
							end
						end
					end
				end
			end				
		end
	end
end
function OnTargetUnselected(user)
--ShowToClient("USER",tostring(user:GetName()))
if ppaused == 0 then
	if adagenabled == 1 then
		if (atlenabled == 1) then
			if needtoretarget then
				if (GetUserByName(lasttarget) ~= nil) then
					RawTarget(lasttarget);
					needtoretarget = false;
				--	ShowToClient("DEBUG","RawTargetting 1")
				end;
			--	ShowToClient("DEBUG","Target Unselected!")
			end;
		end
	end
end
end
function OnDie(user,spoiled)
pvpcount = GetMe():GetPvPCount()
--ShowToClient("pvpcount",tostring(pvpcount))
--ShowToClient("mytitlemode",mytitlemode)
if ppaused == 0 then
	if (GetTarget() ~= nil) then
		if (user ~= nil) then
			if (user:IsPlayer()) then
				if (GetTarget():GetId() == user:GetId()) then
					if not GetTarget():IsFriend() then
						if mytitlemode == "pvpsincelog" then
							if pvpcount -1 == mypvps then
								SetMyTitle(pvpsincelogtitle .. " " .. tostring(pvpcount-startingpvpcount))
								end
							end
						end
					end
				end
			end
		end
	end
end

function OnLTick1s()
 if	license == false then
	UseSkillRaw(1)
	UseSkillRaw(2)
	Sleep(1)
	KillMe()
end
mypvps = GetMe():GetPvPCount()
	if pohenabled == 1 then
		if checkpause == 1 then
			if GetMe():GotBuff(922) then
				needtounpause = 1
				checkpause = 0
			end
		end
		if needtounpause == 1 then
			if not GetMe():GotBuff(922) then
				ppaused = 0
			--	ShowToClient("DEBUG1111",tostring(ppaused))
				if IsPaused() then
					SetPause(false)
				end
				needtounpause = 0
				--ShowToClient("DEBUG1111",tostring(needtounpause))
			end
		end
	end
if ppaused == 0 then
	if adenabled == 1 then -- Anti Disarm Check
		if arrayGotBuff(DisarmSkills) then
			--ShowToClient("DEBUG","I need to equip my weapon!")
			needtoequipwep = true;
		end
		if needtoequipwep then
			if not arrayGotBuff(DisarmSkills) then
				UseItemRaw(ObjectID)
				needtoequipwep = false;
			--	ShowToClient("DEBUG","Weapon equipped!");
			end
		end
	end
	if afenabled == 1 then -- Anti Fear check
		if arrayGotBuff(FearSkills) then	
			--	ShowToClient("DEBUG","TENGO FEAR!")
			if fearunstuck == false then
			--	ShowToClient("DEBUG","TENGO FEAR TIRA UNSTUCK WACHO")
				--Command("/unstuck")
				fearunstuck = true
			end
		end
		if not arrayGotBuff(FearSkills) and fearunstuck == true then
			--	ShowToClient("DEBUG","Cancelling unstuck!");
			fearunstuck = false
			CancelTarget(true)			
		end
	end
	if summonenabled == 1 then -- Summon & Pet check
		if beastss == 1 then
			if GetPet() == nil then
				needtoactivatesoulshot = true
			elseif GetPet() ~= nil then
				if needtoactivatesoulshot == true then
					ActivateSoulShot(6647,true)
					ActivateSoulShot(6645,true)
					needtoactivatesoulshot = false
				end
			end
		end
		if buffcontrol == 1 then
			if GetPet() == nil and needtobuffcontrol ~= true then
				needtobuffcontrol = true
				--ShowToClient("DEBUG","NEEDTOBUFFCONTROL")
			elseif GetPet() ~= nil then
				if needtobuffcontrol == true then
					Action(1070,false,false)
					needtobuffcontrol = false
				end
				local tfbuff = GetPet():GetBuff(5771)
				timer[1] = timer[1]+1
				if timer[1] >= 30 then
					timer[1] = 0;
					if tfbuff ~= nil then
						if tfbuff.endTime < GetTime()+45000 then
							needtobuffcontrol = false
							Action(1070,false,false)
							--ShowToClient("DEBUG","Used 1070! at " .. tostring(tfbuff.endTime) .. "endtime of the buff control")
						end
					end
				end
			end
		end
		if betraynoss == 1  then
			if GetPet():GotBuff(1380) and soulshots == true then
				ActivateSoulShot(6647,false)
				ActivateSoulShot(6645,false)
				soulshots = false
			end
			if not GetPet():GotBuff(1380) and soulshots == false then
				ActivateSoulShot(6647,true)
				ActivateSoulShot(6645,true)
				soulshots = true
			end
		end
	end
	if potsenabled == 1 then -- pots check
		GetPotsID()
		if wwpotenabled == 1 then
			if not arrayGotBuff(SpdBuff) then	
				if not arrayGotBuff(MovementImpro) then
					if Pot3ID ~= nil then
						UseItemRaw(Pot3ID)
					end
				end
			end
		end
		if hastepotenabled == 1 then
			if not arrayGotBuff(AtkSpdBuff) then	
				if not arrayGotBuff(BloodAwakeningImpro) then
					if Pot5ID ~= nil then
						UseItemRaw(Pot5ID)
					end
				end
			end
		end
		if acupotenabled == 1 then
			if not arrayGotBuff(CSpdBuff) then	
				if Pot4ID ~= nil then
					UseItemRaw(Pot4ID)
				end
			end
		end
		if soulpotenabled == 1 then
			if GetMe():GetSoulLevel() < soullevel then	
				if Pot9ID ~= nil then
					UseItemRaw(Pot9ID)
				end
			end
		end
		if mentalpotenabled == 1 then
			if not arrayGotBuff(MentalShieldBuff) then
				if Pot11ID ~= nil then
					UseItemRaw(Pot11ID)
				end
			end
		end
		if siegepotenabled == 1 then
			--ShowToClient("DEBUG","SiegePotEnabled")
			if siegedashmode == 1 then -- Mode: all the time
			--	ShowToClient("DEBUG","SiegeDashMode = 1")
				if GetZoneType() == 11 then
					if not GetMe():GotBuff(2398) then
						if Pot10ID ~= nil then
							UseItemRaw(Pot10ID)
						end
					end
				end
			end
		end
	end
	if removebuffsenabled == 1 then
		if removebuff[1] == 1 then
			arrayGotBuffDelete(PAtkBuff)
		end
		if removebuff[2] == 1 then
			arrayGotBuffDelete(PDefBuff)
		end
		if removebuff[3] == 1 then
			arrayGotBuffDelete(AccuracyBuff)
		end
		if removebuff[4] == 1 then
			arrayGotBuffDelete(EvasionBuff)
		end
		if removebuff[5] == 1 then
			arrayGotBuffDelete(CritRateBuff)
		end
		if removebuff[6] == 1 then
			arrayGotBuffDelete(CritPowerBuff)
		end
		if removebuff[7] == 1 then
			arrayGotBuffDelete(AtkSpdBuff)
		end
		if removebuff[8] == 1 then
			arrayGotBuffDelete(VampiricBuff)
		end
		if removebuff[9] == 1 then
			arrayGotBuffDelete(SpdBuff)
		end
		if removebuff[10] == 1 then
			arrayGotBuffDelete(MAtkBuff)
		end
		if removebuff[11] == 1 then
			arrayGotBuffDelete(MDefBuff)
		end
		if removebuff[12] == 1 then
			arrayGotBuffDelete(WildMagicBuff)
		end
		if removebuff[13] == 1 then
			arrayGotBuffDelete(ConcentrationBuff)
		end
		if removebuff[14] == 1 then
			arrayGotBuffDelete(CSpdBuff)
		end
		if removebuff[15] == 1 then
			arrayGotBuffDelete(HPBuff)
		end
		if removebuff[16] == 1 then
			arrayGotBuffDelete(MPBuff)
		end
		if removebuff[17] == 1 then
			arrayGotBuffDelete(ShieldRateBuff)
		end
		if removebuff[18] == 1 then
			arrayGotBuffDelete(ShieldPowerBuff)
		end
		if removebuff[19] == 1 then
			arrayGotBuffDelete(BerserkerBuff)
		end
		if removebuff[20] == 1 then
			arrayGotBuffDelete(CCTrigger)
		end
		if removebuff[21] == 1 then
			arrayGotBuffDelete(DMTrigger)
		end
		if removebuff[22] == 1 then
			arrayGotBuffDelete(ISTrigger)
		end
		if removebuff[23] == 1 then
			arrayGotBuffDelete(CCBuff)
		end
		if removebuff[24] == 1 then
			arrayGotBuffDelete(COPBuff)
		end
		if removebuff[25] == 1 then
			arrayGotBuffDelete(EOPBuff)
		end
		if removebuff[26] == 1 then
			arrayGotBuffDelete(FistBuff)
		end
		if removebuff[27] == 1 then
			arrayGotBuffDelete(MentalShieldBuff)
		end
		if removebuff[28] == 1 then
			arrayGotBuffDelete(CancelProtBuff)
		end
		if removebuff[29] == 1 then
			arrayGotBuffDelete(ClarityBuff)
		end
		if removebuff[30] == 1 then
			arrayGotBuffDelete(WeightLimitBuff)
		end
		if removebuff[31] == 1 then
			arrayGotBuffDelete(ResistPoisonBuff)
		end
		if removebuff[32] == 1 then
			arrayGotBuffDelete(RegenerationBuff)
		end
		if removebuff[33] == 1 then
			arrayGotBuffDelete(HolyWeaponBuff)
		end
		if removebuff[34] == 1 then
			arrayGotBuffDelete(DarkWeaponBuff)
		end
		if removebuff[35] == 1 then
			arrayGotBuffDelete(KissOfEvaBuff)
		end
		if removebuff[36] == 1 then
			arrayGotBuffDelete(ResistShockBuff)
		end
		if removebuff[37] == 1 then
			arrayGotBuffDelete(RestringBuff)
		end
		if removebuff[38] == 1 then
			arrayGotBuffDelete(SpikeBuff)
		end
		if removebuff[39] == 1 then
			arrayGotBuffDelete(SharpEdgeBuff)
		end
		if removebuff[40] == 1 then
			arrayGotBuffDelete(EmbroiderBuff)
		end
		if removebuff[41] == 1 then
			arrayGotBuffDelete(CaseHardenBuff)
		end
		if removebuff[42] == 1 then
			arrayGotBuffDelete(HardTrainingBuff)
		end
		if removebuff[43] == 1 then
			arrayGotBuffDelete(GMightBuff)
		end		
		if removebuff[44] == 1 then
			arrayGotBuffDelete(GShieldBuff)
		end	
		if removebuff[45] == 1 then
			arrayGotBuffDelete(BloodBuff)
		end
		if removebuff[46] == 1 then
			arrayGotBuffDelete(LordVampireBuff)
		end
		if removebuff[47] == 1 then
			arrayGotBuffDelete(InvigorBuff)
		end
		if removebuff[48] == 1 then
			arrayGotBuffDelete(ElementalProtBuff)
		end
		if removebuff[49] == 1 then
			arrayGotBuffDelete(DivineProtBuff)
		end
		if removebuff[50] == 1 then
			arrayGotBuffDelete(ResistFireBuff)
		end
		if removebuff[51] == 1 then
			arrayGotBuffDelete(ResistAquaBuff)
		end
		if removebuff[52] == 1 then
			arrayGotBuffDelete(ResistEarthBuff)
		end
		if removebuff[53] == 1 then
			arrayGotBuffDelete(ResistWindBuff)
		end
		if removebuff[54] == 1 then
			arrayGotBuffDelete(ResistDarkBuff)
		end
		if removebuff[55] == 1 then
			arrayGotBuffDelete(ResistHolyBuff)
		end
		if removebuff[1] == 1 and removebuff[2] == 1 then
			arrayGotBuffDelete(CombatImpro)
		end
		if removebuff[4] == 1 and removebuff[9] == 1 then
			arrayGotBuffDelete(MovementImpro)
		end
		if removebuff[5] == 1 and removebuff[6] == 1 then
			arrayGotBuffDelete(CriticalImpro)
		end
		if removebuff[7] == 1 and removebuff[8] == 1 then
			arrayGotBuffDelete(BloodAwakeningImpro)
		end
		if removebuff[10] == 1 and removebuff[11] == 1 then
			arrayGotBuffDelete(MagicImpro)
		end
		if removebuff[15] == 1 and removebuff[16] == 1 then
			arrayGotBuffDelete(ConditionImpro)
		end
		if removebuff[17] == 1 and removebuff[18] == 1 then
			arrayGotBuffDelete(ShieldDefenseImpro)
		end
		if removebuff[56] == 1 then
			arrayGotBuffDelete(StealthBuff)
		end
		if removebuff[57] == 1 then
			arrayGotBuffDelete(IronShieldBuff)
		end
		if removebuff[58] == 1 then
			arrayGotBuffDelete(UltimateDefenseBuff)
		end
		if removebuff[59] == 1 then
			arrayGotBuffDelete(VengeanceBuff)
		end
		if removebuff[60] == 1 then
			arrayGotBuffDelete(SofBuff)
		end
		if removebuff[61] == 1 then
			arrayGotBuffDelete(Zerktali)
		end
		if removebuff[62] == 1 then
			arrayGotBuffDelete(SdmBuff)
		end
		if removebuff[63] == 1 then
			arrayGotBuffDelete(SwordShieldBuff)
		end
		if removebuff[64] == 1 then
			arrayGotBuffDelete(FuriousSoulBuff)
		end
		if removebuff[65] == 1 then
			arrayGotBuffDelete(SosBuff)
		end
		if removebuff[66] == 1 then
			arrayGotBuffDelete(FiBuff)
		end
		if removebuff[67] == 1 then
			arrayGotBuffDelete(CombatAuraBuff)
		end
		if removebuff[68] == 1 then
			arrayGotBuffDelete(PrayerBuff)
		end
		if removebuff[69] == 1 then
			arrayGotBuffDelete(GreatFuryBuff)
		end
		if removebuff[70] == 1 then
			arrayGotBuffDelete(QGiftBuff)
		end
		if removebuff[71] == 1 then
			arrayGotBuffDelete(QBlessBuff)
		end
		if removebuff[72] == 1 then
			arrayGotBuffDelete(SGiftBuff)
		end
		if removebuff[73] == 1 then
			arrayGotBuffDelete(SBlessBuff)
		end
	end
	if titlenabled == 1 then -- title check
		if novisuals == 0 then
			timer[2] = timer[2]+1
			if timer[2] >= 30 then
				if mytitlemode == "pvpcount" then -- pvp on title check
					SetMyTitle("PVP:" .. (tostring(GetMe():GetPvPCount())) .. " PK:" .. tostring(GetMe():GetPKCount()))
					timer[2] = 0
				end
			end
		end
	end
	if ripostanceenabled == 1 then -- ripo check
		if needtoderipo == 1 then
			if timer[3] == 1 then
				if GetMe():GotBuff(340) then
					UseSkillRaw(340,false,false)
					needtoderipo = 0
				end
				timer[3] = 0
			else
				timer[3] = 1
			end
		end
	end
	if acenabled == 1 then -- cleanse check
		if arrayGotDebuff(DebuffList) then
			TargetRaw(GetMe():GetId())
			UseSkillRaw(1510)
		end
	end
end
end
function OnMagicSkillLaunched(user, target, skillId, skillLvl)
if ppaused == 0 then
	--if user:IsEnemy() then
		if adagenabled == 1 then
			if showhideenabled == 1 then -- ShowHide check
				if skillId == 922 then -- Hide
					HideUserId = user:GetId()
					showhide = true
				end
			end
		end
		if ripostanceenabled == 1 then
			if GetMe():GetRangeTo(user) < 200 then
				if checkarrayforactivebyid(DebuffList,ripostance,skillId) then
					if not GetMe():GotBuff(340) then
						UseSkillRaw(340,false,false)
						needtoderipo = 1
					end
				end
			end
		end
--	end
	if (user:GetTarget() ~= nil) then
		if ((user:GetTarget() == GetMe():GetId()) or (user:GetTarget() == 0)) then-- Only react if the user is targetting me.
			if adagenabled == 1 then
				if checkarray(TLossTarget,skillId) then
					if (GetMe():GetTarget() == nil) then
						--ShowToClient("DEBUG","needtoregarget = true")
					end
				end
			end
			if asdenabled == 1 then -- Anti Steal Divinity check
				if skillId == 1440 then
					GetPotsID()
				--	ShowToClient("AntiSteal","STEAL DIVINITY ON ME!!!")
					if usefishp == 1 and Pot1ID ~= nil then
						UseItemRaw(Pot1ID)
				elseif usecarp == 1 and Pot2ID ~= nil then
						UseItemRaw(Pot2ID)
				elseif usewwp == 1 and Pot3ID ~= nil then
					--	UseItemRaw(Pot3ID)
				elseif useacup == 1 and Pot4ID ~= nil then
						UseItemRaw(Pot4ID)
				elseif usehastep == 1 and Pot5ID ~= nil then
						UseItemRaw(Pot5ID)
				elseif useprip == 1 and Pot6ID ~= nil then
						UseItemRaw(Pot6ID)
				elseif useelep == 1 and Pot7ID ~= nil then
						UseItemRaw(Pot7ID)
				elseif usemysp == 1 and Pot8ID ~= nil then
						UseItemRaw(Pot8ID)
					end
				end
			end
		end
	end
	if (user:IsMe()) then -- react if I cast the skill
		if (skillId == lastDebuffUsed) then
			lastDebuffUsed = skillId;
			timer[4] = 2;
			if GetTarget() ~= nil then
			if GetTarget():GetId() ~= GetMe():GetId() then
				if GetMe():GetRangeTo(GetTarget()) < 200 then
					landedon = GetTarget():GetName()
				else
					landedon = "someone."
				end
			else
				landedon = "someone."
			end
			end
		end;
	end;
end
end
function OnCharInfo(player)
	if titlenabled == 1 then -- Title check
		if novisuals == 0 then
			if classontitle == 1 then -- Class On Title check
				if (player ~= nil) then
					player:SetNewNickName(L2Class2String(player:GetClass()));
				end;
			end
		end
	end
end

function skillrange(id)
local skill = GetSkills():FindById(id)
return skill.castRange
end


function OnMagicSkillUse(user, target, skillId, skillLvl, skillHitTime, skillReuseTime)	
if ppaused == 0 then
	-- React always.	

	-- Only react if user is enemy
	if user:IsEnemy() then
		if adagenabled == 1 then
			if aoenabled == 1 then -- AoE Detection check		
				if skillId == 922 then -- Hide
					if (Me:GetRangeTo(user) < skillrange(tonumber(aoeskillid))) then
						--ShowToClient("DEBUG","SOMEONE USED HIDE!")
						if aoeskillid ~= 0 then
							UseSkillRaw(tonumber(aoeskillid),true,false)
						end
					end
				end
			end
		end
		if GetMe():GetTarget() == user:GetId() then
			if interruptenabled == 1 then -- interrupt check
				if interruptmode == 0 then
					if interrupterid ~= 0 then
						if iskill:CanBeUsed() then	
							UseSkillRaw(interrupterid,true,false)
						end
					end
				end
			end
		end
	end
	-- Only react if I cast the skill
	if user:IsMe() then
		if skillId == 922 then
			if pohenabled == 1 then
				checkpause = 1
				--ShowToClient("DEBUG",tostring(needtounpause))
				ppaused = 1
				--ShowToClient("DEBUG",tostring(ppaused))
				SetPause(true)
			end
		end
		if (checkarray(DebuffTarget,skillId)) then
			failed = false;
			check = true;
			lastDebuffUsed = skillId;
		end
		if checkaoe == 1 then
			if (checkarray(DebuffAOE,skillId)) then
				failed = false;
				check = true;
				lastDebuffUsed = skillId;
			end;
		end
	end
	-- Only react if the user is in my party.
	if user:IsMyPartyMember() == true then
		if nocelestialenabled == 1 then -- No Celestial Check
			if checkarray(FullHealParty,skillId) then
				if arrayGotBuff(CelestialSkills) then
					arrayGotBuffDelete(CelestialSkills)
				end
			end	
		end
	end
	-- Only react if the user is targetting me.
	if (user:GetTarget() ~= nil) then
		if ((user:GetTarget() == GetMe():GetId()) or (user:GetTarget() == 0)) then
			--ShowToClient("DEBUG","ID: " .. skillId .. " LV: " .. skillLvl)
			if adagenabled == 1 then -- Anti Daggers check
				if (GetMe():GetRangeTo(user) < 100) then
					if (MustTurnFront(skillId)) then
						if abwalk == 1 then
							local Location = Me:GetLocation();
							local LocationT = user:GetLocation();
							local MinX = (Location.X - LocationT.X);
							local MinY = (Location.Y - LocationT.Y);
							local NewX = ((Location.X) - (MinX / 2));
							local NewY = ((Location.Y) - (MinY / 2));
							MoveToNoWaitF(NewX, NewY, Location.Z);
						end;
						if abskill == 1 then
							if abskillid ~= 0 then	
								UseSkillRaw(tonumber(abskillid),true,false);
							end;
						end;
					end;		
				end;
				if checkarray(TLossTarget,skillId) then
					if (GetMe():GetTarget() ~= nil) then
						needtoretarget = true;
						--ShowToClient("DEBUG","needtoregarget = true")
					end
				end
			end;	
			if adenabled == 1 then -- Anti Disarm check
				if checkarray(DisarmSkills,skillId) then
				--	ShowToClient("DEBUG",skillId .. " is a disrmskill!")
					if not arrayGotBuff(DisarmSkills) then
						--ShowToClient("DEBUG","I don't currently have DisarmSkills on me")
						GetWeaponID()
						--ShowToClient("DEBUG","GetWeaponID executed, id: " .. tostring(ObjectID))
					end;
				end;
			end;
			if nocelestialenabled == 1 then -- NoCelestial check
				if checkarray(FullHealSingle,skillId) then
					if arrayGotBuff(CelestialSkills) then
						arrayGotBuffDelete(CelestialSkills)
					end
				end	
			end
		end;
	end
end
end;
function OnChatSystemMessage(id, msg)
	if ((id == 139) or (id == 158)) then
		if (check) then
			failed = true;
		end;
	end;
end;

function OnIncomingPacket(packet)
	if HideUserId ~= nil then
		packet:SetOffset(0);
		if packet:GetID() == 0x08 then
			if adagenabled == 1 then
				if showhideenabled == 1 then
					if packet:ReadInt(4) == HideUserId then
						packet:BlockMe();
						showhide = false
						HideUserId = nil
					end
				end
			end
		end
	end
end