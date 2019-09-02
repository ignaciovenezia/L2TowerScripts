function whereami()
	if GetZoneType() == 12 then
		if GetMe():GetRangeTo(-83042, 151187, -3120) > 500 then
			ShowToClient("AutoFarm","I don't know where I am, let's use SOE.")
			UseSkill(10002, false, false); -- Escape - The nearest Town. (100k)
			SetPause(true)
			WaitForTeleport()
			goback()
		else
			goback()
		end
	elseif GetZoneType() == 15 then
		if GetMe():GetRangeTo(-47513,212814,-5080) > 1200 then
			if not farming then
				ShowToClient("AutoFarm","I'm at cata, but dunno where. Let's use SOE.")
				UseSkill(10002, false, false); -- Escape - The nearest Town. (100k)
				SetPause(true)
				WaitForTeleport()
				goback()
			end
		else
			SetPause(false)
			farming = true
			catacomb()
		end
	end	
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
function deposit()
	MoveTo(-83034,153933,-3168,30)
	MoveTo(-82270,153932,-3168,30)
	MoveTo(-82272,153404,-3168,30)
	MoveTo(-81858,153402,-3168,30)
	TargetNpc("Norman", 30210);
	MoveTo(-81837, 153420, -3173, 30);
	GetWarehouseManager():Clear();
	if getItemCount("Festival Adena") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Festival Adena"),getItemCount("Festival Adena")  ) 
	end
	if getItemCount("Adena") > 500000000 then
		GetWarehouseManager():AddItem(getItemByName("Adena"),getItemCount("Adena") - 500000000) 
	end
	if getItemCount("Wind Energy Compression Stone") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Wind Energy Compression Stone"),getItemCount("Wind Energy Compression Stone") ) 
	end
	if getItemCount("Earth Energy Compression Stone") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Earth Energy Compression Stone"),getItemCount("Earth Energy Compression Stone") ) 
	end
	if getItemCount("Fire Energy Compression Stone") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Fire Energy Compression Stone"),getItemCount("Fire Energy Compression Stone") ) 
	end
	if getItemCount("Water Energy Compression Stone") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Water Energy Compression Stone"),getItemCount("Water Energy Compression Stone") ) 
	end
	if getItemCount("Sacred Energy Compression Stone") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Sacred Energy Compression Stone"),getItemCount("Sacred Energy Compression Stone") ) 
	end
	if getItemCount("Darkness Energy Compression Stone") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Darkness Energy Compression Stone"),getItemCount("Darkness Energy Compression Stone") ) 
	end
	if getItemCount("Event - Purple Paper") > 1 then
		GetWarehouseManager():AddItem(getItemByName("Event - Purple Paper"),getItemCount("Event - Purple Paper") ) 
	end
	if getItemCount("Ancient Adena") > 10000000 then
		if getItemCount("Green Seal Stone") > 1 then
			GetWarehouseManager():AddItem(getItemByName("Green Seal Stone"),getItemCount("Green Seal Stone")) 
		end
		if getItemCount("Red Seal Stone") > 1 then
			GetWarehouseManager():AddItem(getItemByName("Red Seal Stone"),getItemCount("Red Seal Stone") ) 
		end
		GetWarehouseManager():AddItem(getItemByName("Ancient Adena"),getItemCount("Ancient Adena") - 100000000) 
	end
	Talk();
	ClickLinkAndWait("warehouse_keeper_norman001b.htm");
	Sleep(100)
	Click("deposit_pledge", "Deposit an item. (Clan Warehouse)");
	Sleep(1000);
	GetWarehouseManager():DepositItems();
	MoveTo(-81858,153402,-3168,30)
	MoveTo(-82272,153404,-3168,30)
	MoveTo(-82270,153932,-3168,30)
	MoveTo(-83034,153933,-3168,30)
end

function needtodeposit()
	invList = GetInventory();
	for item in invList.list do
		if item.Name == "Wind Energy Compression Stone" then
			if item.ItemNum > 30 then
				return true
			else
				return false
			end
		end;
	end;
end

function repot()
	MoveTo(-80826, 150015, -3040, 30)
	MoveTo(-80754, 149800, -3040, 30)
	TargetNpc("Richlin", 30320);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	Click("teleport_-1006791856_2_57_1209020688_1", "[Aden GM Shop & Event Zone] - 10000 Adena");	
	MoveTo(147284,25868,-2008,30)
	MoveTo(147263,26605,-2192,30)
	MoveTo(146596,26603,-2200,30)
	MoveTo(146601,26361,-2184,30)
	MoveTo(146781,26347,-2184,30)
	TargetNpc("GM Shop", 36668);
	MoveTo(146779, 26342, -2187, 30);
	Talk();
	ClickLinkAndWait("gm_shop_co.htm");
	Click("menu_select?ask=-303&reply=1000", "Soulshots...");
	Sleep(1000)
	packet = PacketBuilder()
	packet:AppendDataFromHexString("B0 E8 03 00 00 09 00 00 00 A8 61 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FE FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00")
	SendPacket(packet)	
	if needrecovery then
		TargetNpc("GM Shop", 36668);
		MoveTo(146786, 26364, -2187, 30);
		Talk();
		ClickLinkAndWait("gm_shop_co.htm");
		Click("menu_select?ask=-303&reply=1004", "Consumables");
		Sleep(1000)
		packet = PacketBuilder()
		packet:AppendDataFromHexString("B0 EC 03 00 00 0D 00 00 00 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FE FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00")
		SendPacket(packet)
		needrecovery = false
	end
	MoveTo(146601,26361,-2184,30)
	MoveTo(146596,26603,-2200,30)
	MoveTo(147263,26605,-2192,30)
	MoveTo(147284,25868,-2008,30)
	MoveTo(146749,25792,-2008,30)
	TargetNpc("Elisa", 30848);
	MoveTo(146760, 25787, -2009, 30);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	Click("teleport_-981584544_2_57_1209021266_1", "[FARM ZONE] Necropolis 83+ - 1 Adena");
	Sleep(5000)
	UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
	WaitForTeleport()
	goback()
end

function needtorepot()	
	gotss = false
	invList = GetInventory();
	for item in invList.list do
		if item.Name == "Soulshot: S-grade" then
			gotss = true
			if item.ItemNum < 5000 then
				needss = true
				return true
			end
	elseif item.Name == "Scroll: Recovery (Grade S)" then
			if item.ItemNum < 20 then
				needrecovery = true
				return true
			end
		end
	end;
	if gotss == false then
		return true
	end
end

function getItemByName(name)
	invList = GetInventory();
	for item in invList.list do
		if item.Name == name then
			return item.objectId;
		end;
	end;
end;

function getItemCount(name)
invList = GetInventory();
lol=0;
	for item in invList.list do
		if (item.displayId == name or item.objectId==name or item.Name==name) then
			lol=item.ItemNum
		end
	end
return lol;
end;

function goback()
	ShowToClient("AutoFarm","5 sec to go!")
	SetPause(true)
	Sleep(5000)
	SetPause(true)
	if GetMe():GotBuff(222) then
		UseSkillRaw(222, false, false); -- Fury Fists
	end
	if needtodeposit() then
		deposit()
	end
	MoveTo(-83034, 151009, -3129, 30);
	TargetNpc("GM Buffer", 36666);
	Talk();
	ClickAndWait("menu_select?ask=100", "Get Buff");
	buffs()
	ClickAndWait("menu_select?ask=10", "Get Player's Buffs");
	Sleep(2000)
	UseSkillRaw(298,false,false)
	if needtorepot() then
		repot()
	end
	MoveTo(-80826, 150015, -3040, 30)
	MoveTo(-80754, 149800, -3040, 30)
	TargetNpc("Richlin", 30320);
	Talk();
	ClickAndWait("teleport_request", "Teleport");
	Click("teleport_-1006791856_3_57_1209020688_1", "[FARM ZONE] Necropolis 83+ - 1 Adena");
	Sleep(2000)
	ShowToClient("DEBUG","IM AT NECRO")
	MoveTo(-41573,208764,-5080,30)
		TargetNpc("Rabbit", 30741);
		UseSkillRaw(1177,true,false)
	MoveTo(-41570, 209316, -5080, 30);
	TargetNpc("Gatekeeper Ziggurat", 31095);
	Talk();
	Click("menu_select?ask=1506&reply=2", "[PVP Farm Zone] Necropolis of Sacrifice - 3");
	Sleep(2000)
	MoveTo(-50138,213817,-5080,30)
	MoveTo(-50098,212685,-5080,30)
	MoveTo(-49110,212688,-5080,30)
	MoveTo(-49081,212208,-5080,30)
	MoveTo(-48457,212193,-5080,30)
	MoveTo(-48478,212846,-5080,30)
	MoveTo(-47513,212814,-5080,30)
	ClearTargets()
	farming = true
	--UseSkill(337, false, false); -- Arcane Power
	SetPause(false);
	catacomb()
end

function catacomb()
	ShowToClient("Catacomb","farming: " .. tostring(farming))
	repeat
	Sleep(1000)
	--checkloc()	
	if GetMe():IsAlikeDeath() then
		ShowToClient("DEBUG","I'm DEAD!")
		WaitForTeleport()
		ShowToClient("DEBUG","WAITFORTELEPORT(death) FINISHED.")
		goback()
	end
	if GetMe():GetStatPhysicalAttack() < 1500 then
		TargetNpc("Rabbit", 30741);
		UseSkillRaw(346,true,false)
		ClearTargets()
		whereami()
	end
	if GetMe():GetMpPercent() < 10 then
		UseItem(726); -- Mana Drug
	end
	if GetMe():GetRangeTo(-79240,150827,-3040) < 200 then
		ShowToClient("DEBUG","WRONG CAPTCHA")
		whereami()
	end
	if GetMe():GetHpPercent() < 10 and GetMe():GetRangeTo(-45744,217216,-5085) > 1000 then
		ShowToClient("AutoFarm","Stuck at city, soe and go back.")
		UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
		WaitForTeleport()
		goback()
	end
	
	until false
end
needss = false
needrecovery = false
whereami()