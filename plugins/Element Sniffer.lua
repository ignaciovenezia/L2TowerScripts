function OnCreate()
Event_PacketUnBlock(0x48,0xFF,1)
-- Power Cost Fire Water Wind Earth Duel
Regular={190,1,5,6,7,9,261,36,263,30,19,284,54,17,35,315,494,496,493,497,504,505,507,508}
-- Chance Cost Fire Water Wind Earth
Chance={260}
-- Power Cost Modify Critical Holy
Tribunal={400}
Judgment={401}
-- Power Cost Chance Fire Water Wind Earth Duel
RushImpact={793}
this:RegisterCommand("e", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
pluginversion = "BETA"
end

function OnCommand_e(vCommandChatType, vNick, vCommandParam)
if vCommandParam:GetCount() == 1 then
	tempname = vCommandParam:GetParam(0):GetStr(true)
		if not igotinfo(tempname) then
			ShowToClient("E-Sniffer","Information not found, try again later.")
		else
			ShowToClient("E-Sniffer",tempname .. " : " .. loadinfo(tempname))
		end
else
	if GetMe():GetTarget() ~= nil then
	tempname = GetTarget():GetName()
		if not igotinfo(tempname) then
			ShowToClient("E-Sniffer","Information not found, try again later.")
		else
			ShowToClient("E-Sniffer",tempname .. " : " .. loadinfo(tempname))
		end
	end
end
end

function saveinfo(name,route)
if route ~= false then
local file = io.open(GetDir() .. "plugins\\ElementSniffer\\" .. name .. ".txt", "r");
	if (file == nil) then
		file = io.open(GetDir() .. "plugins\\ElementSniffer\\" .. name .. ".txt", "w+");
	end
	if file ~= nil then
		file:write(route)
		file:close()
	end
end
end

function loadinfo(name)
	file = io.open(GetDir() .. "plugins\\ElementSniffer\\" .. name .. ".txt", "r");
	for line in file:lines() do
		tempele = line
		file:close();
		return tostring(tempele)
	end
end

function igotinfo(name)
local file = io.open(GetDir() .. "plugins\\ElementSniffer\\" .. name .. ".txt", "r");
	if (file == nil) then
		return false
	else
	file:close();
	return true
	end
end


function checkarray(array, int)
	for x,a in pairs(array) do
		if a == int then
			return true;
		end
	end
end;

function Tell(skillId,route)
--ShowToClient("TellRoute",tostring(route))
	if checkarray(Tribunal,skillId) then
		if route == "4" then
		return "HOLY"
		else
			return false
		end
	elseif checkarray(Judgment,skillId) then
		if route == "4" then
		return "DARK"
		else
			return false
		end
	elseif checkarray(Regular,skillId) then
		if route == "3" then
			return "FIRE"
		elseif route == "4" then
			return "WATER"
		elseif route == "5" then
			return "WIND"
		elseif route == "6" then
			return "EARTH"
		elseif route == "7" then
			return "DUEL"
		else
			return "power/duel"
		end
	elseif checkarray(RushImpact,skillId) then
		if route == "4" then
			return "FIRE"
		elseif route == "5" then
			return "WATER"
		elseif route == "6" then
			return "WIND"
		elseif route == "7" then
			return "EARTH"
		elseif route == "8" then
			return "DUEL"
		else
			return "power/duel"
		end
	else
		return false
	end
end

function OnIncomingPacket(packet)
packet:SetOffset(0)
if packet:GetID() == 0x48 then
	userObjId = packet:ReadInt(4)
	targetid = packet:ReadInt(4)
	SkillId = packet:ReadInt(4)
	SkillLvl = packet:ReadInt(4)
	if SkillLvl > 100 then
	SkillLvl = tostring(SkillLvl)
	else
		return
	end
	user1 = GetUserById(userObjId)
	route=string.match(SkillLvl,'%d')
	if user1 ~= nil then
		--ShowToClient("",Tell(SkillId,SkillLvl))
		saveinfo(user1:GetName(),Tell(SkillId,route))
	end
end
end

