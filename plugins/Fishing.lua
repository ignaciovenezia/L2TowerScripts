function OnCreate()
	activated = false
	pluginversion = "1.0"
	fishssid = 0; -- fishing shot id
	fishssname = "Not selected." -- fishing shot name
	
	fishbaitid = 0; -- fishing bait id
	fishbaitname = "Not Selected."  -- fishing bait name
	
	fishrodid = 0; -- fishing rod id
	fishrodname = "Not Selected." -- fishing rod name
	fishrodpossiblenames = {"Baby Duck Rod","Albatross Rod", "Pelican Rod","Kingfisher Rod","Cygnus Pole","Triton Pole"} -- all rod names
	fishpotid = 0; -- fishing potion id
	fishpotbuffid = 2274; -- fishing potion buff id
	fishpotname = "Not Selected." -- fishing potion name
	
	mainwepid = 0; -- main weapon id
	mainwepname = "Not Selected." -- main weapon name
	
	fishnames = {"Caught Frog","Caught Undine","Caught Rakul","Caught Sea Giant","Caught Sea Horse Soldier","Caught Homunculus","Caught Flava","Caught Gigantic Eye"}
	fishoid = 0; -- oid of fishmob
	
	fishcaught = 0; -- fish caught this session counter
	
	fishingspotFV = 0
	fishingspotrotation = 0;
	fishoid = 0;
	Event_PacketUnBlock(0xFE,0x28,2)
	this:RegisterCommand("fish", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("doaction", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setfishingshot", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setfishingbait", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setfishingrod", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setfishingpot", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("setmainweapon", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end

function OnCommand_fish(vCommandChatType, vNick, vCommandParam)
	MainWindow()
end

function OnCommand_doaction(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 1 then
		action = vCommandParam:GetParam(0):GetStr(true)
		if action == "Go Back" then
			MainWindow()
			
		elseif action == "Fish Start" then
			activated = true
			MainWindow()
			
		elseif action == "Fish Stop" then
			activated = false
			MainWindow()
			
		elseif action == "Fish Shot" then
			SubWindow("Fish Shot")
			
		elseif action == "Fish Bait" then
			SubWindow("Fish Bait")
			
		elseif action == "Fish Rod" then
			SubWindow("Fish Rod")
			
		elseif action == "Fish Potion" then
			SubWindow("Fish Potion")
			
		elseif action == "Main Weapon" then
			SubWindow("Main Weapon")


		end -- end of if action ==
	end
end

function OnCommand_setfishingshot(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 2 then
		fishssid = tonumber(vCommandParam:GetParam(0):GetStr(true))
		fishssname = vCommandParam:GetParam(1):GetStr(true)
		ShowToClient("ssid",tostring(fishssid))
		ShowToClient("ssname",tostring(fishssname))
		MainWindow()
	end
end
function OnCommand_setfishingbait(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 2 then
		fishbaitid  = tonumber(vCommandParam:GetParam(0):GetStr(true))
		fishbaitname  = vCommandParam:GetParam(1):GetStr(true)
		ShowToClient("baitid",tostring(fishbaitid))
		ShowToClient("baitname",tostring(fishbaitname))
		MainWindow()
	end
end
function OnCommand_setfishingrod(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 2 then
		fishrodid  = tonumber(vCommandParam:GetParam(0):GetStr(true))
		fishrodname  = vCommandParam:GetParam(1):GetStr(true)
		ShowToClient("rodid",tostring(fishrodid))
		ShowToClient("rodname",tostring(fishrodname))
		MainWindow()
	end
end
function OnCommand_setfishingpot(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 2 then
		fishpotid  = tonumber(vCommandParam:GetParam(0):GetStr(true))
		fishpotname  = vCommandParam:GetParam(1):GetStr(true)
		ShowToClient("potid",tostring(fishpotid))
		ShowToClient("potbuffid",tostring(fishpotbuffid))
		ShowToClient("potname",tostring(fishpotname))
		MainWindow()
	end
end
function OnCommand_setmainweapon(vCommandChatType, vNick, vCommandParam)
	if vCommandParam:GetCount() == 2 then
		mainwepid  = tonumber(vCommandParam:GetParam(0):GetStr(true))
		mainwepname  = vCommandParam:GetParam(1):GetStr(true)
		ShowToClient("wepid",tostring(mainwepid))
		ShowToClient("wepname",tostring(mainwepname))
		MainWindow()
	end
end
function SubWindow(param)
	local html = THtmlGenerator("Fishing Plugin - " .. param .. "");
	html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=1><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=0></td></tr></table>');	
	if param == "Fish Shot" then
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select the fishing shot you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local inv = GetInventory()
			for item in inv.list do
				if string.match(item.Name,"Fishing Shot") then
					html:AddButton(THtmlAction("/setfishingshot"):AddParam(item.objectId):AddParam(item.Name),THtmlButtonStyle.BUTTON_ACTION,item.Name,false,"","",200,25);
				end
			end;
			html:AddHtml("</br></br></br>")
		html:AddButton(THtmlAction("/setfishingshot"):AddParam(0):AddParam("Not Selected."),THtmlButtonStyle.BUTTON_ACTION,"Reset",false,"","",200,25);

		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center>');
	elseif param == "Fish Bait" then
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select the fishing bait you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local inv = GetInventory()
			for item in inv.list do
				if string.match(item.Name,"Lure") then
					html:AddButton(THtmlAction("/setfishingbait"):AddParam(item.objectId):AddParam(item.Name),THtmlButtonStyle.BUTTON_ACTION,item.Name,false,"","",200,25);
				end
			end;
			html:AddHtml("</br></br></br>")
			html:AddButton(THtmlAction("/setfishingbait"):AddParam(0):AddParam("Not Selected."),THtmlButtonStyle.BUTTON_ACTION,"Reset",false,"","",200,25);
		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center>');
	elseif param == "Fish Rod" then
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select the fishing rod you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local inv = GetInventory()
			for item in inv.list do
				if checkarray2(fishrodpossiblenames, item.Name) then
					html:AddButton(THtmlAction("/setfishingrod"):AddParam(item.objectId):AddParam(item.Name),THtmlButtonStyle.BUTTON_ACTION,item.Name,false,"","",200,25);
				end
			end;
			html:AddHtml("</br></br></br>")
			html:AddButton(THtmlAction("/setfishingrod"):AddParam(0):AddParam("Not Selected."),THtmlButtonStyle.BUTTON_ACTION,"Reset",false,"","",200,25);
		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center>');
	elseif param == "Fish Potion" then
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select the fishing potion you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local inv = GetInventory()
			for item in inv.list do
				if string.match(item.Name,"Fisherman's") then
					html:AddButton(THtmlAction("/setfishingpot"):AddParam(item.objectId):AddParam(item.Name),THtmlButtonStyle.BUTTON_ACTION,item.Name,false,"","",200,25);
				end
			end;
			html:AddHtml("</br></br></br>")
			html:AddButton(THtmlAction("/setfishingpot"):AddParam(0):AddParam("Not Selected."),THtmlButtonStyle.BUTTON_ACTION,"Reset",false,"","",200,25);
		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center>');
	elseif param == "Main Weapon" then
		html:AddHtml('<table width=270 border=0  ><tr><td><center>');
		html:AddHtml('</font>Select your main weapon you want to use.</br></center>');
		html:AddHtml('<tr><td><center>');
			local inv = GetInventory()
			for item in inv.list do
				if item.ItemType == 0 then 
					html:AddButton(THtmlAction("/setmainweapon"):AddParam(item.objectId):AddParam(item.Name),THtmlButtonStyle.BUTTON_ACTION,item.Name,false,"","",200,25);
				end
			end;
			html:AddHtml("</br></br></br>")
			html:AddButton(THtmlAction("/setmainweapon"):AddParam(0):AddParam("Not Selected."),THtmlButtonStyle.BUTTON_ACTION,"Reset",false,"","",200,25);
		html:AddHtml('</td>');
		html:AddHtml('</tr></table></center>');
	end
	
	html:AddHtml('<center><table><tr><td>');
	html:AddButton(THtmlAction("/doaction"):AddParam("Go Back"),THtmlButtonStyle.BUTTON_ACTION,"Back",false,"","",200,25);
	html:AddHtml("</br>")
	html:AddHtml('</td></tr></table></center>')
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;	
end

function MainWindow()
	local html = THtmlGenerator("Fishing Plugin " .. pluginversion);
	html:AddHtml('<center><table border=0 cellpadding=0 cellspacing=0 width=292 height=358><tr><td valign="top" align="center"><table border=0 cellpadding=0 cellspacing=0><tr><td width=0 height=35></td></tr></table>');	
	html:AddHtml('<table width=270 border=0><tr><td>');
	html:AddHtml('</td></tr><tr><td><center>');
	if activated == true then
		html:AddButton(THtmlAction("/doaction"):AddParam("Fish Stop"),THtmlButtonStyle.BUTTON_EXTRA,"FISHING ON",true,"","",250,25);
	else
		html:AddButton(THtmlAction("/doaction"):AddParam("Fish Start"),THtmlButtonStyle.BUTTON_EXTRA,"FISHING OFF",false,"","",250,25);
	end
	html:AddHtml("</br></td></tr></table><center>")
	html:AddHtml("<table><tr><td>")
	html:AddButton(THtmlAction("/doaction"):AddParam("Fish Shot"),THtmlButtonStyle.BUTTON_ON_OFF, "Fishing Shot",false,"","",122,25);
	html:AddHtml("</td><td>")
	html:AddHtml(fishssname)
	html:AddHtml("</td></tr><tr><td>")
	html:AddButton(THtmlAction("/doaction"):AddParam("Fish Bait"),THtmlButtonStyle.BUTTON_ON_OFF, "Fishing Bait",false,"","",122,25);
	html:AddHtml("</td><td>")
	html:AddHtml(fishbaitname)
	html:AddHtml("</td></tr><tr><td>")
	html:AddButton(THtmlAction("/doaction"):AddParam("Fish Rod"),THtmlButtonStyle.BUTTON_ON_OFF, "Fishing Rod",false,"","",122,25);
	html:AddHtml("</td><td>")
	html:AddHtml(fishrodname)
	html:AddHtml("</td></tr><tr><td>")
	html:AddButton(THtmlAction("/doaction"):AddParam("Fish Potion"),THtmlButtonStyle.BUTTON_ON_OFF, "Fishing Potion",false,"","",122,25);
	html:AddHtml("</td><td>")
	html:AddHtml(fishpotname)
	html:AddHtml("</td></tr><tr><td>")
	html:AddButton(THtmlAction("/doaction"):AddParam("Main Weapon"),THtmlButtonStyle.BUTTON_ON_OFF, "Main Weapon",false,"","",122,25);
	html:AddHtml("</td><td>")
	html:AddHtml(mainwepname .. "</td>")
	html:AddHtml('</tr></table></br>');	
	html:AddHtml('<center><table width=200><tr><td><center>Fish caught this session: ' .. fishcaught .. '</td></tr></table></center></br>')
	html:AddHtml('<center><table width=90 border=0><tr><td>Made by Vinter</td></tr></table></center>');
	HtmlBuild = html:GetString();	
	ShowHtmlStatus = true;
end

function checkarray2(array, int)
	for x,a in pairs(array) do
		if string.match(int,a) then
			return true;
		end
	end
end;

function OnFishingHPRegen(skill, isskillinverted) -- 1=revert, 0=skill1 fine
	if activated then
		--ShowToClient("HP REGEN SKILL",tostring(skill))
		if isskillinverted == 0 then
			if (GetIGTime() < 24) and (GetIGTime() > 6) then
			--	ShowToClient("","DAY")
				if skill == 0 then 
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1313,false,false)
				end
				if skill == 1 then
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1314,false,false)
				end
			else -- inverted
			--	ShowToClient("","NIGHT")
				if skill == 1 then 
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1313,false,false)
				end
				if skill == 0 then
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1314,false,false)
				end	
			end
		else
			if (GetIGTime() < 24) and (GetIGTime() > 6) then
			--	ShowToClient("","DAY")
				if skill == 1 then 
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1313,false,false)
				end
				if skill == 0 then
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1314,false,false)
				end
			else -- inverted
			--	ShowToClient("","NIGHT")
				if skill == 0 then 
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1313,false,false)
				end
				if skill == 1 then
					if fishssid ~= 0 then
						UseItemRaw(fishssid)
					end
					UseSkillRaw(1314,false,false)
				end	
			end
		end
	end
end

function OnFishingStart()
	if activated then
		fishingspotFV = GetMe():GetLocation()
		fishingspotrotation = GetMe():GetRotation()
	end
end

function OnNpcInfo(npc)
	if npc:GetName() == fishname then
		fishspanwed = true
		fishoid = npc:GetId()
	end
end

function OnFishingEnd(success)
	if activated then
		if success then
			fishcaught = fishcaught+1
			MainWindow()
		end
		if fishspawned ~= true then -- IF FISH DIDN'T SPAWN
			UseSkillRaw(1312,false,false)
		else -- IF FISH SPAWNED
			UseItemRaw(mainwepid)
			SetPause(false)
		end
	end
end

function OnLTick500ms()
	if (ShowHtmlStatus) then
		ShowHtmlStatus = false;
		ShowHtml(HtmlBuild);
	end;
end

function OnLTick1s()
	if activated then
	--	if fishpotid ~= 0 and not GetMe():GotBuff(fishpotbuffid) then
		--ShowToClient("",tostring(fishpotid))
		--	UseItemRaw(fishpotid); --
		--end
		if moving then
			if GetMe():GetRangeTo(fishingspotFV) < 20 then -- IF I'M AT THE FISHING SPOT
				moving = false
			end
		end
	end
end

function OnDie(user)
	if user:GetId() == fishoid then
		fishspawned = false
		UseItemRaw(fishingrodid)
		MoveToNoWait(fishingspotFV)
		moving = true
	end
end
