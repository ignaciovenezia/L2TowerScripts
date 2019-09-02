buffs1 = {9242,9241,9247,9245,9249,9244,9237,92638,9239,9240,9260,9246,9275,9319,9327,9318,9333,9334,9330,9340,9328,9336,9329,9341}

function WriteWhere(where1)
file = io.open(GetDir() .. "scripts\\1-76\\1-76_" .. GetMe():GetName() .. ".txt", "w+"); 
file:write(tostring(where1));
file:close();
end

function IsThereMobsAround()
	local monsterlist = GetMonsterList();
	local count = 0;
	for mob in monsterlist.list do
		if math.floor(mob:GetRangeTo(GetMe())) < 300 then
			count = count +1;
		end;
		if mob:GetTarget() == GetMe():GetId() then
			count = count+1
		end
	end;
	if (count > 1) then 
		return true;
	end;
	return false;
end;


function arrayGotBuff(check)
	for x,a in pairs(check) do
		if (GetMe():GotBuff(a)) then
			return true;  
		end;
	end;
	return false;
end;


function checkbuffs()
if arrayGotBuff(buffs1) then
	return true
else
--	MoveTo(146269,25819,-2008,30)
	TargetNpc("GM Buffer", 36666);
	Talk();
	ClickAndWait("menu_select?ask=100", "Get Buff");
	buffs()
	Click("menu_select?ask=10", "Get Player's Buffs");
	Sleep(2000)
end
end

function equipaq()
	InventoryList = GetInventory();
	for item in InventoryList.list do
		if item.Name == "Ring of Queen Ant" then
			UseItemRaw(item.objectId)
		end
	end
end
function switchequipment(grade)
	local InventoryList = GetInventory();
	for item in InventoryList.list do
	 ---- UNEQUIPPING ITEMS
		if item.ItemType == 2 and item.IsEquipped then
			UseItemRaw(item.objectId)
			Sleep(50)
		end
		if item.ItemType == 1 and item.IsEquipped then
			UseItemRaw(item.objectId)
			Sleep(50)
		end
	end;
	Sleep(1000)
	if grade == "C" then	
	---- C GRADE
		InventoryList = GetInventory();
		for item in InventoryList.list do
			if item.Name == "Plated Leather" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Plated Leather Gaiters" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Plated Leather Boots" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Bracer" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Wooden Helmet" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Common Item - Nassen's Earring" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Common Item - Ring of Binding" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Common Item - Necklace of Binding" and not item.IsEquipped then
				UseItemRaw(item.objectId)
			end
		end
	end
	if grade == "S" then
		---- S GRADE
		InventoryList = GetInventory();
		for item in InventoryList.list do
			if item.Name == "Draconic Leather Armor" then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Draconic Leather Gloves" then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Draconic Leather Helmet" then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Draconic Leather Boots" then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Sealed Tateossian Earring" then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Sealed Tateossian Ring" then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Sealed Tateossian Necklace" then
				UseItemRaw(item.objectId)
			end
			if item.Name == "Ring of Queen Ant" then
				UseItemRaw(item.objectId)
			end
		end
	end
end

function checkdeath()
		if GetMe():IsAlikeDeath() then
			ShowToClient("","I'm dead!")
			SetPause(true)
			Sleep(1000)
			RequestRestartPoint(2)
			Sleep(10000)
		if status == 2 then
			MoveTo(-117032,46620,360,30)
			stronghold()
		elseif status == 3 then
			gludio()
			antnest()
		elseif status == 4 then
			aden()
			checkbuffs()
			sealofshilen()
		elseif status == 5 then
			aden()
			checkbuffs()
			toi()
		elseif status == 6 then
			aden()
			checkbuffs()
			sv()
		elseif status == 7 then
			rune()
			checkbuffs()
			backto62()
			SetPause(false)
		end
	end
end

function buystar()
MoveTo(147263,25825,-2008,30)
MoveTo(147246,26676,-2200,30)
MoveTo(146591,26649,-2200,30)
MoveTo(146620,26278,-2184,30)
MoveTo(146789,26335,-2184,30)
SetDefaultTimeout(1000)
TargetNpc("GM Shop", 36668);
MoveTo(146787, 26328, -2188, 30);
Talk();
ClickLinkAndWait("gm_shop_co.htm");
Click("menu_select?ask=-303&reply=1015", "Quest's Items");
Sleep(1000)
packet = PacketBuilder()
packet:AppendDataFromHexString("B0 F7 03 00 00 07 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FE FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00")
SendPacket(packet)
SetDefaultTimeout(60000)
end


function gludio()
	MoveTo(-14327,123616,-3112,30)
	MoveTo(-14014,122092,-2984,30)
	MoveTo(-13277,122458,-2984,30)
	MoveTo(-13285,122680,-3048,30)
	MoveTo(-12821,122695,-3112,30)
end


function antnest()
	TargetNpc("GM Buffer", 36666);
	Talk();
	ClickAndWait("menu_select?ask=100", "Get Buff");
	buffs()
	ClickAndWait("menu_select?ask=10", "Get Player's Buffs");
	TargetNpc("Bella", 30256);
	MoveTo(-12782, 122774, -3115, 30);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	Click("teleport_-1011614256_18_57_1209021508_3", "The Ant Nest");
	--WaitForTeleport();
	Sleep(5000)
	MoveTo(-9954, 176179, -4163, 30);
	MoveTo(-10139, 174775, -4298, 30);
	MoveTo(-10941, 174144, -4580, 30);
	MoveTo(-11463, 174015, -4642, 30);
	MoveTo(-12017, 174189, -4852, 30);
	MoveTo(-12801, 174828, -5170, 30);
	MoveTo(-13321, 175778, -5309, 30);
	MoveTo(-14881, 176674, -5309, 30);
	MoveTo(-16537, 177709, -5309, 30);
	ClearTargets()
	SetPause(false)
end
function IsThereMobsAround2()
	local monsterlist = GetMonsterList();
	local count = 0;
	for mob in monsterlist.list do
		if math.floor(mob:GetLocation().Z) <= GetMe():GetLocation().Z + 100 then
			if math.floor(mob:GetRangeTo(GetMe())) < 300 then
				count = count +1;
			end;
			if mob:GetTarget() == GetMe():GetId() then
				count = count+1
			end
		end
	end;
	if (count > 1) then 
		return true;
	end;
	return false;
end;

function rune()
	Sleep(1000)
	myz = math.floor(GetMe():GetLocation().Z)
	if myz < 0 then
		if GetMe():GetRangeTo(45824,-49056,-792) < 100 then
			MoveTo(45854,-48122,-792,30)
			MoveTo(43786,-47934,-792,30)
	elseif GetMe():GetRangeTo(44000,-49952,-792) < 100 then
			MoveTo(43786,-47934,-792,30)
	elseif GetMe():GetRangeTo(43744,-47920,-792) < 100 then
			MoveTo(43786,-47934,-792,30)
	elseif GetMe():GetRangeTo(43408,-51120,-792) < 100 then
			MoveTo(43744,-47920,-792,30)
			MoveTo(43786,-47934,-792,30)
	elseif GetMe():GetRangeTo(45632,-47968,-792) < 100 then
			MoveTo(43786,-47934,-792,30)
	elseif GetMe():GetRangeTo(45056,-50092,-792) < 100 then
			MoveTo(43916,-49705,-792,30)
			MoveTo(43786,-47934,-792,30)
	else
			ShowToClient("UNKNOWN XY",tostring(math.floor(GetMe():GetLocation().X)).. " " ..  tostring(math.floor(GetMe():GetLocation().Y)))
			MoveTo(43786,-47934,-792,30)
	end
	else
		MoveTo(38641,-48224,896,30)
		MoveTo(38228,-48054,896,30)
		TargetNpc("Arisha", 31698);
		Talk();
		ClickAndWait("teleport_request", "Teleport");
		Click("teleport_-939485200_0_57_1209021571_1", "Rune Township Store - 150 Adena");
	repeat
		Sleep(1000)
	until TargetNpc("Ilyana", 31320);
	end
end
function gotorock()
TargetNpc("Ilyana", 31320);
MoveTo(43847, -47825, -795, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-976766976_18_57_1209021488_1", "Valley of Saints - 3800 Adena");
Sleep(5000)
MoveTo(66484,-71811,-3800,30)
MoveTo(68167,-75213,-3712,30)
MoveTo(69590,-77520,-3952,30)
MoveTo(70873,-78197,-3840,30)
MoveTo(71738,-78896,-4464,30)
MoveTo(71873,-79799,-4448,30)
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_CHAR;
SCONFIG.targeting.range = 1550;
--MoveTo(71738,-78896,-4464,30)
end
function Dialog()
SetDefaultTimeout(1000)
end

function FinishedDialog()
SetDefaultTimeout(60000)
end
function backto62()
TargetNpc("Ilyana", 31320);
MoveTo(43847, -47825, -795, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-976766976_18_57_1209021488_1", "Valley of Saints - 3800 Adena");
MoveTo(66484,-71811,-3800,30)
MoveTo(68167,-75213,-3712,30)
MoveTo(69590,-77520,-3952,30)
MoveTo(70873,-78197,-3840,30)
MoveTo(71738,-78896,-4464,30)
MoveTo(70104,-80214,-4432,30)
MoveTo(70967,-80441,-4272,30)
MoveTo(69124,-81034,-4056,30)
MoveTo(70429,-81442,-3920,30)
MoveTo(68858,-82007,-3584,30)
MoveTo(70778,-84344,-3216,30)
MoveTo(70906,-87421,-2792,30)
MoveTo(71165,-89247,-2344,30)
MoveTo(74717,-92516,-1664,30)
MoveTo(76150,-91620,-3288,30)
MoveTo(80457,-91873,-3112,30)
end

function aden()
	if GetMe():GetRangeTo(144559,22835,-2136) < 100 then
		MoveTo(145489,24241,-2128,30)
		MoveTo(146349,24410,-2008,30)
		MoveTo(146370,25657,-2008,30)
elseif GetMe():GetRangeTo(144635,26664,-2264) < 100 then
		MoveTo(145006,26011,-2256,30)
		MoveTo(145019,24428,-2136,30)
		MoveTo(146288,24392,-2008,30)
		MoveTo(146498,25706,-2008,30)
elseif GetMe():GetRangeTo(146819,28063,-2264) < 100 then
		MoveTo(147273,26620,-2192,30)
		MoveTo(147254,25814,-2008,30)
		MoveTo(146771,25815,-2008,30)
elseif GetMe():GetRangeTo(144526,24661,-2136) < 100 then
		MoveTo(146353,24280,-2008,30)
		MoveTo(146489,25725,-2008,30)
elseif GetMe():GetRangeTo(145686,21114,-2136) < 100 then
		MoveTo(145595,21896,-2136,30)
		MoveTo(145020,23097,-2136,30)
		MoveTo(145368,24200,-2136,30)
		MoveTo(146301,24314,-2008,30)
		MoveTo(146516,25735,-2008,30)
elseif GetMe():GetRangeTo(146814,27108,-2200) < 100 then
		MoveTo(147307,26550,-2192,30)
		MoveTo(147272,25863,-2008,30)
		MoveTo(146667,25842,-2008,30)
elseif GetMe():GetRangeTo(148946,21121,-2136) < 100 then
		MoveTo(149817,23485,-2136,30)
		MoveTo(149411,24281,-2120,30)
		MoveTo(148583,24422,-2008,30)
		MoveTo(148491,25749,-2008,30)
		MoveTo(146855,25837,-2008,30)
elseif GetMe():GetRangeTo(148010,27996,-2264) < 100 then
		MoveTo(147257,25849,-2008,30)
		MoveTo(146670,25838,-2008,30)
elseif GetMe():GetRangeTo(146038,30519,-2456) < 100 or 
       GetMe():GetRangeTo(146494,30584,-2456) < 100 or
	   GetMe():GetRangeTo(148112,30439,-2456) < 100 or 
	   GetMe():GetRangeTo(148565,30463,-2456) < 100  then
		MoveTo(147449,29981,-2456,30)
		MoveTo(147463,28622,-2264,30)
		MoveTo(147841,27306,-2200,30)
		MoveTo(147197,25813,-2008,30)
		MoveTo(146731,25834,-2008,30)
elseif GetMe():GetRangeTo(144626,29145,-2456) < 100 then
		MoveTo(144992,28780,-2432,30)
		MoveTo(145062,27688,-2264,30)
		MoveTo(146542,27574,-2240,30)
		MoveTo(147286,26515,-2192,30)
		MoveTo(147233,25865,-2008,30)
elseif GetMe():GetRangeTo(150227,29104,-2456) < 100 then
		MoveTo(147233,25865,-2008,30)
		MoveTo(149777,27605,-2264,30)
		MoveTo(148382,27625,-2240,30)
		MoveTo(147214,25901,-2008,30)
		MoveTo(146735,25833,-2008,30)
	else
		ShowToClient("UNKNOWN XY",tostring(math.floor(GetMe():GetLocation().X)).. " " ..  tostring(math.floor(GetMe():GetLocation().Y)))
		UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
		WaitForTeleport()
		Sleep(1000)
		aden()
	end
end

function sealofshilen()
TargetNpc("Elisa", 30848);
MoveTo(146732, 25788, -2011, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
if GetMe():GetLevel() > 40 then
Click("teleport_-988964976_20_57_1209021247_1", "Seal of Shilen - 3000 Adena");
else
Click("teleport_-988964976_20_57_1209021247_3", "Seal of Shilen");
end
Sleep(2000)
MoveTo(183296,19687,-3168,30)
SetPause(false)
end

function toi()
TargetNpc("Elisa", 30848);
MoveTo(146710, 25835, -2011, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-988964976_26_57_1209021247_1", "Tower of Insolence - 4200 Adena");
Sleep(2000)
-- Quest state changed, ID: 281, STATE: 1
MoveTo(114654, 11110, -5124, 30);
MoveTo(114688, 13517, -5098, 30);
MoveTo(114713, 15246, -5098, 30);
MoveTo(115463, 15233, -5098, 30);
SetPause(false)
end

function sv()
TargetNpc("Elisa", 30848);
MoveTo(146787, 25832, -2011, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-988964976_25_57_1209021247_1", "Silent Valley - 6100 Adena");
Sleep(2000)
-- Quest state changed, ID: 281, STATE: 1
MoveTo(170843, 55771, -5282, 30);
MoveTo(171954, 55446, -5918, 30);
SetPause(false)
end


function stronghold()
	TargetNpc("Ragara", 32163);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	Click("teleport_-933215744_11_57_1209021277_3", "Stronghold III");
	Sleep(5000)
	MoveTo(-87432,36766,-2128,30);
	SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_OFFLINE;
	SetPause(false);
end


function buffs()
	html = GetDialogHtml()
	if string.find(html, "Ok.") then
		ClickAndWait("menu_select?ask=100", "Ok");
		buffs()
elseif string.find(html, "2 sec") or string.find(html,"1 sec") then
		ShowToClient("DEBUG","1 / 2")
		ClickAndWait("menu_select?ask=100", "awaiting...");
		buffs()
elseif string.find(html, "3 sec") then
		return
	end
end

function one20(where)
--L2TConfig.LoadConfig("1-76")

SCONFIG = L2TConfig.GetConfig();

--[[SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_CHAR;
SCONFIG.targeting.range = 2400;
SCONFIG.melee.me.enabled = true;
SCONFIG.potions.enabled = true;
SCONFIG.pickup.userPickup.mode = L2TConfig.EPickupMode.PICKUP_AFTER;]]
if where <= 0 then where = where+1 WriteWhere(where)

if GetMe():GetRangeTo(-120014,44518,360) > 100 then

UseItem(12753); -- Kamael Village Teleportation Scroll
WaitForTeleport()
end

one20(where) end  if where == 1 then ShowToClient("6",tostring(where))where = where+1  WriteWhere(where)
MoveTo(-119138,46597,360,30)
one20(where) end if where == 2 then ShowToClient("7",tostring(where))where = where+1  WriteWhere(where)
MoveTo(-117592,46624,368,30)
one20(where) end if where == 3 then ShowToClient("8",tostring(where))where = where+1  WriteWhere(where)
MoveTo(-116816,46856,360,30)
one20(where) end if where == 4 then ShowToClient("9",tostring(where))where = where+1  WriteWhere(where)
TargetNpc("GM Buffer", 36666);
Talk();
ClickAndWait("menu_select?ask=100", "Get Buff");
buffs()
ClickAndWait("menu_select?ask=21", "Reset all selected");
ClickAndWait("menu_select?ask=1101&reply=604897283", "Might");
ClickAndWait("menu_select?ask=1102&reply=605683715", "Shield");
ClickAndWait("menu_select?ask=1103&reply=605159426", "Haste");
ClickAndWait("menu_select?ask=1104&reply=604962819", "Focus");
ClickAndWait("menu_select?ask=1106&reply=605618178", "Windwalk");
ClickAndWait("menu_select?ask=1107&reply=605093891", "Guidance");
ClickAndWait("menu_select?ask=1108&reply=605028355", "Death Whisper");
ClickAndWait("menu_select?ask=1109&reply=605880324", "Mental Shield");
ClickAndWait("menu_select?ask=1110&reply=606011398", "Blessed Body");
ClickAndWait("menu_select?ask=1121&reply=605945858", "Berserker Spirit");
ClickAndWait("menu_select?ask=1125&reply=607846401", "Chant of Victory");
ClickAndWait("menu_select?ask=1111&reply=606142470", "Blessed Soul");
ClickAndWait("menu_select?ask=1112&reply=605290500", "Vampiric Rage");
ClickAndWait("menu_select?ask=1113&reply=605814786", "Magic Barrier");
ClickAndWait("menu_select?ask=1115&reply=605421571", "Acumen");
ClickAndWait("menu_select?ask=1118&reply=606863364", "Resist Shock");
ClickAndWait("menu_select?ask=101", "Dances and Songs");
ClickAndWait("menu_select?ask=1152&reply=610861057", "Fury");
ClickAndWait("menu_select?ask=1153&reply=610467841", "Fire");
ClickAndWait("menu_select?ask=1155&reply=610795521", "Warrior");
ClickAndWait("menu_select?ask=1156&reply=611123201", "Vampire");
ClickAndWait("menu_select?ask=1160&reply=610729985", "Concentration");
ClickAndWait("menu_select?ask=1161&reply=611647489", "Earth");
ClickAndWait("menu_select?ask=1163&reply=611450881", "Wind");
ClickAndWait("menu_select?ask=1164&reply=611516417", "Hunter");
ClickAndWait("menu_select?ask=1165&reply=611319809", "Warding");
ClickAndWait("menu_select?ask=1166&reply=611844097", "Vitality");
ClickAndWait("menu_select?ask=1167&reply=612106241", "Renewal");
ClickAndWait("menu_select?ask=1169&reply=612171777", "Champion");
ClickAndWait("menu_select?ask=10", "Get Player's Buffs");
Sleep(3000)
ClickAndWait("menu_select?ask=100", "awaiting...");
Click("menu_select?ask=2000&reply=2", "= Save Buffs.");
ActivateSoulShot(1467,true)
ActivateSoulShot(3952,true)
one20(where) end if where == 5 then   where = where+1  WriteWhere(where)
status = 2
stronghold()
one20(where) end if where == 6 then where = where+1  WriteWhere(where)
repeat
Sleep(1000)
checkdeath()
until GetMe():GetLevel() >= 20 and IsThereMobsAround() == false
SetPause(true)
one20(where) end if where == 7 then where = where+1  WriteWhere(where)
UseItem(12753); -- Kamael Village Teleportation Scroll
WaitForTeleport()
one20(where) end if where == 8 then where = where+1  WriteWhere(where)
MoveTo(-119138,46597,360,30)
one20(where) end if where == 9 then where = where+1  WriteWhere(where)
MoveTo(-117592,46624,368,30)
one20(where) end if where == 10 then where = where+1  WriteWhere(where)
MoveTo(-116816,46856,360,30)
one20(where) end if where == 11 then where = where+1  WriteWhere(where)
TargetNpc("Ragara", 32163);
MoveTo(-116871, 46739, 369, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-933215744_3_57_1209021277_3", "The Town of Gludio");
Sleep(5000)
one20(where) end if where == 12 then where = where+1  WriteWhere(where)
--WaitForTeleport();
TargetNpc("Class Transfer", 36667);
MoveTo(-12815, 122722, -3115, 30);
Talk();
Click("menu_select?ask=1&reply=125", "Trooper");
one20(where) end if where == 13 then where = where+1  WriteWhere(where)
status = 3
antnest()
one20(where) end if where == 14 then where = where+1  WriteWhere(where)
repeat
Sleep(1000)
checkdeath()
until GetMe():GetLevel() >= 40 and IsThereMobsAround() == false
SetPause(true)
one20(where) end if where == 15 then where = where+1  WriteWhere(where)
UseItem(10650); -- Adventurer's Scroll of Escape
WaitForTeleport()
one20(where) end if where == 16 then where = where+1  WriteWhere(where)
gludio()
one20(where) end if where == 17 then where = where+1  WriteWhere(where)
TargetNpc("Class Transfer", 36667);
MoveTo(-12823, 122689, -3115, 30);
Talk();
Click("menu_select?ask=2&reply=127", "Berserker");
Sleep(1000)
end
if where >= 18 and where < 38 then
x4076(where)
elseif where >= 38 then
subquest(where)
end
end

function x4076(where)
if where == 18 then where = where+1 WriteWhere(where)
TargetNpc("Bella", 30256);
MoveTo(-12763, 122790, -3115, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
if GetMe():GetLevel() > 40 then
Click("teleport_-1011483232_2_57_1209022225_1", "[Aden GM Shop & Event Zone] - 10000 Adena");
else
Click("teleport_-1011483232_2_57_1209022225_3", "[Aden GM Shop & Event Zone]");
end
repeat
Sleep(1000)
until TargetNpc("Elisa", 30848);
x4076(where) end if where == 19 then where = where+1  WriteWhere(where)
checkbuffs()
switchequipment("C")
status = 4
x4076(where) end if where == 20 then where = where+1  WriteWhere(where)
sealofshilen()
x4076(where) end if where == 21 then where = where+1  WriteWhere(where)
repeat
Sleep(1000)
checkdeath()
until GetMe():GetLevel() > 56 and IsThereMobsAround() == false
equipaq()
x4076(where) end if where == 22 then where = where+1  WriteWhere(where)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
SetPause(true)

x4076(where) end if where == 23 then where = where+1  WriteWhere(where)
status = 5
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
SCONFIG.targeting.centerPoint.X = 115864;
SCONFIG.targeting.centerPoint.Y = 14867;
SCONFIG.targeting.centerPoint.Z = -5098;
SCONFIG.targeting.range = 1000;
x4076(where) end if where == 24 then where = where+1  WriteWhere(where)

aden()
x4076(where) end if where == 25 then where = where+1  WriteWhere(where)

checkbuffs()
x4076(where) end if where == 26 then where = where+1  WriteWhere(where)

toi()
x4076(where) end if where == 27 then where = where+1  WriteWhere(where)

repeat
Sleep(1000)
checkdeath()
until GetMe():GetLevel() > 65 and IsThereMobsAround() == false
x4076(where) end if where == 28 then where = where+1  WriteWhere(where)

UseSkill(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
SetPause(true)
x4076(where) end if where == 29 then where = where+1  WriteWhere(where)

status = 6
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_CHAR;
SCONFIG.targeting.range = 2500;
x4076(where) end if where == 30 then where = where+1  WriteWhere(where)

aden()
x4076(where) end if where == 31 then where = where+1  WriteWhere(where)

checkbuffs()
x4076(where) end if where == 32 then where = where+1  WriteWhere(where)

sv()
x4076(where) end if where == 33 then where = where+1  WriteWhere(where)
if GetZoneType() == 12 then
aden()
checkbuffs()
sv()
end
repeat
Sleep(1000)
checkdeath()
until GetMe():GetLevel() > 76 and IsThereMobsAround() == false
x4076(where) end if where == 34 then where = where+1  WriteWhere(where)
SetPause(true)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
x4076(where) end if where == 35 then where = where+1  WriteWhere(where)
aden()
x4076(where) end if where == 36 then where = where+1  WriteWhere(where)
buystar()
aden()
x4076(where) end if where == 37 then where = where+1  WriteWhere(where)
if sub ~= 1 then
subquest(where)
end
end
end

function subquest(where)
SetPause(true)
if where == 38 then where = where+1  WriteWhere(where)
TargetNpc("Elisa", 30848);
MoveTo(146710, 25835, -2011, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat
Click("teleport_-989161584_16_57_1209021212_1", "Kamael Village - 26000 Adena");
Sleep(1000)
until TargetNpc("Ragara", 32163);
subquest(where) end if where == 39 then where = where+1  WriteWhere(where)
MoveTo(-118062,45058,368,30)
subquest(where) end if where == 40 then where = where+1  WriteWhere(where)
MoveTo(-118073,43714,544,30)
subquest(where) end if where == 41 then where = where+1  WriteWhere(where)
MoveTo(-117716,43253,552,30)
subquest(where) end if where == 42 then where = where+1  WriteWhere(where)
MoveTo(-117751,42893,680,30)
subquest(where) end if where == 43 then where = where+1  WriteWhere(where)
MoveTo(-118067,42884,712,30)
subquest(where) end if where == 44 then where = where+1  WriteWhere(where)
TargetNpc("Kekropus", 32138);
Talk();
Dialog()
ClickAndWait("talk_select", "Quest.");
ShowToClient("1","")
ClickAndWait("quest_choice?choice=43&option=1", "[Seeds of Chaos]");
ShowToClient("2","")
ClickLinkAndWait("kekrops_q0236_02.htm")
ShowToClient("3","")
ClickAndWait("menu_select?ask=236&reply=1", "......");
ShowToClient("4","")
Click("quest_accept?quest_id=236", "Tell him that you are ready.");
FinishedDialog()
if not quest:GotThisQuest(seeds) then
	where = 44 
	subquest(where) 
else
ShowToClient("",tostring(quest:GetQuestProgress(seeds)))
subquest(where) end end if where == 45 then where = where+1  WriteWhere(where)
MoveTo(-117760,42891,680,30)
subquest(where) end if where == 46 then where = where+1  WriteWhere(where)
MoveTo(-117785,43306,544,30)
subquest(where) end if where == 47 then where = where+1  WriteWhere(where)
MoveTo(-118092,43980,544,30)
subquest(where) end if where == 48 then where = where+1  WriteWhere(where)
MoveTo(-118068,44377,544,30)
subquest(where) end if where == 49 then where = where+1  WriteWhere(where)
TargetNpc("Ragara", 32163);
MoveTo(-116895, 46592, 369, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat
Click("teleport_-933281280_2_57_1209022090_1", "[Aden GM Shop & Event Zone] - 10000 Adena");
Sleep(1000)
until TargetNpc("Elisa", 30848)
subquest(where) end if where == 50 then where = where+1  WriteWhere(where)
MoveTo(146710, 25835, -2011, 30);
TargetNpc("Elisa", 30848)
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat
Click("teleport_-989161584_15_57_1209021212_1", "Rune Township - 37000 Adena");

Sleep(1000)
until TargetNpc("Ilyana", 31320);
subquest(where) end if where == 51 then where = where+1  WriteWhere(where)
TargetNpc("Ilyana", 31320);
MoveTo(43840, -47754, -795, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat
Click("teleport_-976766976_19_57_1209021488_1", "Forest of the Dead - 1200 Adena");
Sleep(1000)
until TargetNpc("Mysterious Wizard", 31522);
subquest(where) end if where == 52 then where = where+1  WriteWhere(where)
TargetNpc("Mysterious Wizard", 31522);
MoveTo(51973, -54615, -3161, 30);
Talk();
Dialog()
ClickAndWait("talk_select", "Quest.");
ClickAndWait("quest_choice?choice=23&option=1", "[Seeds of Chaos (In Progress)]");
ClickLinkAndWait("shadow_hardin_q0236_02.htm");
ClickLinkAndWait("shadow_hardin_q0236_03.htm");
ClickAndWait("menu_select?ask=236&reply=1", "\"What is it?\"");
FinishedDialog()
Click("menu_select?ask=236&reply=3", "Ask what he wants with them.");
subquest(where) end if where == 53 then where = where+1  WriteWhere(where)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
subquest(where) end if where == 54 then where = where+1  WriteWhere(where)
rune()
TargetNpc("Ilyana", 31320);
MoveTo(43838, -47829, -795, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-976766976_20_57_1209021488_1", "Swamp of Screams - 3000 Adena");
subquest(where) end if where == 55 then where = where+1  WriteWhere(where)
MoveTo(72165,-49265,-3200,30)
subquest(where) end if where == 56 then where = where+1  WriteWhere(where)
MoveTo(75041,-48708,-3088,30)
subquest(where) end if where == 57 then where = where+1  WriteWhere(where)
MoveTo(78053,-47257,-3120,30)
subquest(where) end if where == 58 then where = where+1  WriteWhere(where)
MoveTo(84329,-47803,-3184,30)
subquest(where) end if where == 59 then where = where+1  WriteWhere(where)
MoveTo(85705,-51010,-2784,30)
subquest(where) end if where == 60 then where = where+1  WriteWhere(where)
MoveTo(84119,-51861,-2328,30)
subquest(where) end if where == 61 then where = where+1  WriteWhere(where)
MoveTo(82721,-51612,-2336,30)
subquest(where) end if where == 62 then where = where+1  WriteWhere(where)
MoveTo(82480,-50921,-2336,30)
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
SCONFIG.targeting.range = 600;
SCONFIG.targeting.centerPoint.X = 82898;
SCONFIG.targeting.centerPoint.Y = -50723;
SCONFIG.targeting.centerPoint.Z = -2336;
SetPause(false)
repeat
Sleep(1000)
until GetQuestManager():GetQuestItemCount(9745) >= 1 and IsThereMobsAround() == false
SetPause(true)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
subquest(where) end if where == 63 then where = where+1  WriteWhere(where)
rune()
MoveTo(43840, -47754, -795, 30);
TargetNpc("Ilyana", 31320)
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat
Click("teleport_-976766976_19_57_1209021488_1", "Forest of the Dead - 1200 Adena");

Sleep(1000)
until TargetNpc("Mysterious Wizard", 31522);
subquest(where) end if where == 64 then where = where+1  WriteWhere(where)

TargetNpc("Mysterious Wizard", 31522);
MoveTo(51973, -54615, -3161, 30);
Talk();
Dialog()
ClickAndWait("talk_select", "Quest.");
ClickAndWait("quest_choice?choice=25&option=1", "[Seeds of Chaos (In Progress)]");
ClickLinkAndWait("shadow_hardin_q0236_08a.htm");
ClickAndWait("menu_select?ask=236&reply=6", "Give him the crystal.");
ClickLinkAndWait("shadow_hardin_q0236_11a.htm");
FinishedDialog()
Click("menu_select?ask=236&reply=7", "\"I am ready.\"");
Sleep(5000)
TargetNpc("Katenar", 32235);
MoveTo(51967, -54670, -3162, 30);
Talk();
Dialog()
ClickAndWait("talk_select", "Quest.");
ClickLinkAndWait("keitnat_q0236_q0236_02a.htm");
ClickLinkAndWait("keitnat_q0236_q0236_03a.htm");
ClickLinkAndWait("keitnat_q0236_q0236_04a.htm");
ClickLinkAndWait("keitnat_q0236_q0236_05a.htm");
ClickLinkAndWait("keitnat_q0236_q0236_06a.htm");
ClickLinkAndWait("keitnat_q0236_q0236_08a.htm");
ClickAndWait("menu_select?ask=236&reply=6", "Wait.");
FinishedDialog()
Click("menu_select?ask=236&reply=8", "\"Wait!\"");
subquest(where) end if where == 65 then where = where+1  WriteWhere(where)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
rune()
gotorock()
subquest(where) end if where == 66 then where = where+1  WriteWhere(where)
TargetNpc("Rock", 32238);
MoveTo(71682, -78950, -4468, 30);
Talk();
ClickAndWait("talk_select", "Quest.");
Click("menu_select?ask=236&reply=1", "Draw closer.");
Sleep(2000)
TargetNpc("Harkilgamed", 32236);
MoveTo(71683, -78948, -4468, 30);
Talk();
Dialog()
ClickAndWait("talk_select", "Quest.");
ClickLinkAndWait("harlkil_q0236_q0236_03.htm");
ClickLinkAndWait("harlkil_q0236_q0236_04.htm");
ClickLinkAndWait("harlkil_q0236_q0236_05.htm");
ClickLinkAndWait("harlkil_q0236_q0236_06.htm");
ClickAndWait("menu_select?ask=236&reply=2", "Agree.");
FinishedDialog()
Click("menu_select?ask=236&reply=3", "Agree.");
subquest(where) end if where == 67 then where = where+1  WriteWhere(where)
MoveTo(70104,-80214,-4432,30)
subquest(where) end if where == 68 then where = where+1  WriteWhere(where)
MoveTo(70967,-80441,-4272,30)
subquest(where) end if where == 69 then where = where+1  WriteWhere(where)
MoveTo(69124,-81034,-4056,30)
subquest(where) end if where == 70 then where = where+1  WriteWhere(where)
MoveTo(70429,-81442,-3920,30)
subquest(where) end if where == 71 then where = where+1  WriteWhere(where)
MoveTo(68858,-82007,-3584,30)
subquest(where) end if where == 72 then where = where+1  WriteWhere(where)
MoveTo(70778,-84344,-3216,30)
subquest(where) end if where == 73 then where = where+1  WriteWhere(where)
MoveTo(70906,-87421,-2792,30)
subquest(where) end if where == 74 then where = where+1  WriteWhere(where)
MoveTo(71165,-89247,-2344,30)
subquest(where) end if where == 75 then where = where+1  WriteWhere(where)
MoveTo(74717,-92516,-1664,30)
subquest(where) end if where == 76 then where = where+1  WriteWhere(where)
MoveTo(76150,-91620,-3288,30)
subquest(where) end if where == 77 then where = where+1  WriteWhere(where)
MoveTo(80457,-91873,-3112,30)
subquest(where) end if where == 78 then where = where+1  WriteWhere(where)
SetPause(false)
status = 7
repeat
checkdeath()
Sleep(1000)
until GetQuestManager():GetQuestItemCount(9743) >= 62 and IsThereMobsAround() == false
SetPause(true)
subquest(where) end if where == 79 then where = where+1  WriteWhere(where)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
SetPause(true)
rune()
gotorock() 
subquest(where) end if where == 80 then where = where+1  WriteWhere(where)
TargetNpc("Rock", 32238);
MoveTo(71746, -78847, -4470, 30);
Talk();
ClickAndWait("talk_select", "Quest.");
ClickAndWait("menu_select?ask=236&reply=2", "Call him.");
Sleep(2000)
TargetNpc("Harkilgamed", 32334);
MoveTo(71746, -78847, -4470, 30);
Talk();
Dialog()
ClickAndWait("talk_select", "Quest.");
ClickLinkAndWait("harlkil_q0236a_q0236_10.htm");
ClickLinkAndWait("harlkil_q0236a_q0236_11.htm");
ClickLinkAndWait("harlkil_q0236a_q0236_11.htm");
ClickLinkAndWait("harlkil_q0236a_q0236_12.htm");
ClickLinkAndWait("harlkil_q0236a_q0236_13.htm");
ClickLinkAndWait("harlkil_q0236a_q0236_14.htm");
ClickLinkAndWait("harlkil_q0236a_q0236_15.htm");
ClickLinkAndWait("harlkil_q0236a_q0236_16.htm");
ClickAndWait("menu_select?ask=236&reply=4", "Ask where she is.");
FinishedDialog()
Click("menu_select?ask=236&reply=5", "\"Mother?\"");
subquest(where) end if where == 81 then where = where+1  WriteWhere(where)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
rune()
TargetNpc("Ilyana", 31320);
MoveTo(43842, -47787, -795, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat 
Click("teleport_-976766976_2_57_1209021488_1", "[Aden GM Shop & Event Zone] - 10000 Adena");

Sleep(1000)
until TargetNpc("Elisa", 30848);
subquest(where) end if where == 82 then where = where+2  WriteWhere(where)

TargetNpc("Elisa", 30848);
MoveTo(146710, 25835, -2011, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat
Click("teleport_-989161584_16_57_1209021212_1", "Kamael Village - 26000 Adena");
Sleep(1000)
until TargetNpc("Ragara", 32163);
subquest(where) end if where == 84 then where = where+1  WriteWhere(where)
MoveTo(-118062,45058,368,30)
subquest(where) end if where == 85 then where = where+1  WriteWhere(where)
MoveTo(-118073,43714,544,30)
subquest(where) end if where == 86 then where = where+1  WriteWhere(where)
MoveTo(-117716,43253,552,30)
subquest(where) end if where == 87 then where = where+1  WriteWhere(where)
MoveTo(-117751,42893,680,30)
subquest(where) end if where == 88 then where = where+1  WriteWhere(where)
MoveTo(-118067,42884,712,30)
subquest(where) end if where == 89 then where = where+1  WriteWhere(where)
TargetNpc("Kekropus", 32138);
MoveTo(-118055, 42879, 717, 30);
Talk();
Dialog()
ClickAndWait("talk_select", "Quest.");
ClickAndWait("quest_choice?choice=46&option=1", "[Seeds of Chaos (In Progress)]");
ClickLinkAndWait("kekrops_q0236_07.htm");
ClickLinkAndWait("kekrops_q0236_08.htm");
ClickLinkAndWait("kekrops_q0236_09.htm");
ClickLinkAndWait("kekrops_q0236_10.htm");
ClickLinkAndWait("kekrops_q0236_11.htm");
FinishedDialog()
Click("menu_select?ask=236&reply=34", "Ask what you must do now.");
subquest(where) end if where == 90 then where = where+1  WriteWhere(where)
MoveTo(-117751,42893,680,30)
subquest(where) end if where == 91 then where = where+1  WriteWhere(where)
MoveTo(-117716,43253,552,30)
subquest(where) end if where == 92 then where = where+1  WriteWhere(where)
MoveTo(-118073,43714,544,30)
subquest(where) end if where == 93 then where = where+1  WriteWhere(where)
MoveTo(-118062,45058,368,30)
subquest(where) end if where == 94 then where = where+1  WriteWhere(where)
MoveTo(-116904,46582,360,30)
subquest(where) end if where == 95 then where = where+2  WriteWhere(where)
TargetNpc("Ragara", 32163);
MoveTo(-116905, 46573, 369, 30);
Talk();
ClickAndWait("teleport_request", "Teleport");
repeat
Click("teleport_-933281280_12_57_1209022090_1", "Isle of Souls Harbor - 4300 Adena");
Sleep(1000)
until TargetNpc("Mao", 32190);
subquest(where) end if where == 97 then where = where+1  WriteWhere(where)
MoveTo(-73739,51692,-3680,30)
subquest(where) end if where == 98 then where = where+1  WriteWhere(where)
MoveTo(-73763,53173,-3680,30)
subquest(where) end if where == 99 then where = where+1  WriteWhere(where)
MoveTo(-73985,52925,-3680,30)
subquest(where) end if where == 100 then where = where+1  WriteWhere(where)
TargetNpc("Mao", 32190);
MoveTo(-74012, 52837, -3679, 30);
Talk();
ClickAndWait("talk_select", "Quest.");
repeat
Click("menu_select?ask=236&reply=1", "Go to Mother Nornil.");
Sleep(1000)
until TargetNpc("Rodenpicula", 32237);
MoveTo(-119793,87120,-12592,30)
TargetNpc("Rodenpicula", 32237);
Talk();
ClickAndWait("talk_select", "Quest.");
Dialog()
ClickLinkAndWait("roden_q0236_q0236_02.htm");
ClickLinkAndWait("roden_q0236_q0236_03.htm");
ClickLinkAndWait("roden_q0236_q0236_04.htm");
ClickLinkAndWait("roden_q0236_q0236_05.htm");
ClickLinkAndWait("roden_q0236_q0236_06.htm");
ClickLinkAndWait("roden_q0236_q0236_07.htm");
ClickLinkAndWait("roden_q0236_q0236_08.htm");
ClickAndWait("menu_select?ask=236&reply=1", "Ask what you must do.");
Click("menu_select?ask=236&reply=2", "\"I will.\"");
FinishedDialog()
TargetNpc("Mother Nornil", 32239);
MoveTo(-120015, 87174, -12592, 30);
Talk();
ClickAndWait("talk_select", "Quest.");
ClickLinkAndWait("mother_nornil_q0236_q0236_03.htm");
ClickAndWait("menu_select?ask=236&reply=4", "Nod head.");
TargetNpc("Rodenpicula", 32237);
MoveTo(-119965, 87152, -12592, 30);
Talk();
ClickAndWait("talk_select", "Quest.");
ClickAndWait("menu_select?ask=236&reply=4", "Ask if she will grant contact.");
TargetNpc("Mother Nornil", 32239);
MoveTo(-119977, 87154, -12592, 30);
Talk();
ClickAndWait("talk_select", "Quest.");
ClickAndWait("menu_select?ask=236&reply=5", "\"Yes.\"");
ClickAndWait("menu_select?ask=236&reply=6", "......");
TargetNpc("Rodenpicula", 32237);
MoveTo(-119926, 87133, -12592, 30);
Talk();
ClickAndWait("talk_select", "Quest.");
ClickAndWait("menu_select?ask=236&reply=5", "Ask if there is some sort of problem.");
ClickAndWait("menu_select?ask=236&reply=6", "\"Still?\"");
ClickLinkAndWait("roden_q0236_q0236_18.htm");
TargetNpc("Mother Nornil", 32239);
MoveTo(-119978, 87146, -12592, 30);
Talk();
ClickAndWait("menu_select?ask=236&reply=100", "Go outside.");
FinishedDialog()
subquest(where) end if where == 101 then where = where+1  WriteWhere(where)
repeat
Sleep(1000)
until TargetNpc("Largo", 32189);
subquest(where) end if where == 102 then where = where+1  WriteWhere(where)
MoveTo(-73763,53173,-3680,30)
subquest(where) end if where == 103 then where = where+1  WriteWhere(where)
MoveTo(-73739,51692,-3680,30)
subquest(where) end if where == 104 then where = where+1  WriteWhere(where)
MoveTo(-74035,51882,-3680,30)
subquest(where) end if where == 105 then where = where+1  WriteWhere(where)
TargetNpc("Largo", 32189);
MoveTo(-74023, 51873, -3679, 30);
Talk();
ClickAndWait("teleport_request", "Teleport.");
Click("teleport_-933274224_1_57_1209020566_1", "Town of Aden - 22000 Adena");
subquest(where) end if where == 106 then where = where+1  WriteWhere(where)
repeat
Sleep(1000)
until TargetNpc("Elisa", 30848)
subquest(where) end if where == 107 then where = where+1  WriteWhere(where)
MoveTo(146329,25463,-2008,30)
subquest(where) end if where == 108 then where = where+1  WriteWhere(where)
MoveTo(145400,23998,-2136,30)
subquest(where) end if where == 109 then where = where+1  WriteWhere(where)
MoveTo(144808,23370,-2136,30)
subquest(where) end if where == 110 then where = where+1  WriteWhere(where)
MoveTo(143946,22732,-2120,30)
subquest(where) end if where == 111 then where = where+1  WriteWhere(where)
TargetNpc("Brome", 32221);
Talk();
ClickAndWait("menu_select?ask=-2&reply=5", "Sub Class.");
ClickAndWait("menu_select?ask=-2&reply=10", "Add subclass.");
Click("menu_select?ask=-2&reply=12", "Soul Breaker.");
subquest(where) end if where == 112 then where = where+1  WriteWhere(where)
switchequipment("C")
aden()
sub = 1
status = 4
where = 19
one20(where)
end
end

quest = GetQuestManager()
seed = 236 --- Seeds of Chaos
meets = 0 --- More Than Meets the Eye
local file = io.open(GetDir() .. "scripts\\1-76\\1-76_" .. GetMe():GetName() .. ".txt", "r");
if (file == nil) then
	file = io.open(GetDir() .. "scripts\\1-76\\1-76_" .. GetMe():GetName() .. ".txt", "w");
	if (file == nil) then
		os.execute('mkdir "'..GetDir() .. 'scripts\\1-76"');
		local file = io.open(GetDir() .. "scripts\\1-76\\1-76_" .. GetMe():GetName() .. ".txt", "r");
	end;
end
for line in file:lines() do
	ShowToClient("",tostring(line))
	if line ~= nil then
		where = tonumber(line)
	end
end
file:close()
if where == nil then
	--ShowToClient("","NIL")
	where = 0
end
SCONFIG = L2TConfig.GetConfig();
if where > 5 and where < 13 then
	status = 2 -- stronghold
elseif where > 13 and where < 18 then
	status = 3 -- ant nest
elseif where > 18 and where < 23 then
	ShowToClient("","4")
	status = 4 -- sos
elseif where > 23 and where < 29 then
	status = 5 -- toi
	SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
	SCONFIG.targeting.centerPoint.X = 115864;
	SCONFIG.targeting.centerPoint.Y = 14867;
	SCONFIG.targeting.centerPoint.Z = -5098;
	SCONFIG.targeting.range = 1000;

elseif where > 29 then
	ShowToClient("","6")
	status = 6 -- sv
end

where = where-1
one20(where)