function init()
	active = true -- default state of the plugin (true recommended)
	blockplayers = false -- Blocks players? Whitelist
	playernames = {"Sameer","Lawk","Tamsen","Ngozi","Almas","Chioma","Femma","Karile","MyCuteWarehouse","Vump","Vixxen","Vep","Dechristianize","Vinter","Siinh","Femlind","Mansur","Xindra","Esfir"} -- List of Player Names, works as a Whitelist
	blocknpcs = false -- Block NPCs?
	 -- List of NpcIds, works as a Whit eList
	npcids = {31275 ,14256 ,22124, 22126, 22125, 22123, 22122, 31078, 31095, 30080, 30256, 30081, 30086, 36668, 36666, 30320, 30741, 21189, 21211, 21167, 21210}
	blockskills = false -- Block all skill animations? (WARRIORS ONLY)
	blockattackstance = false -- Block Attacking Stance
	warriorname = {"Femlind","Esfir","Tamsen","Ngozi","Almas","Chioma","Karile","Femma"} -- Used on blocking skiill animation (OnMagicSkillUse)
	blockitems = false	 -- Block items on the ground.
	itemnames = {"Parnassus Essence","Adena","Stone","Enchant"} -- List of Item Names, works as a Whitelist
end
-------------------------------------------------------------
------------- DON'T CHANGE ANYTHING BELOW THIS LINE ---------
-------------- IF YOU DON'T KNOW WHAT YOU'RE DOING ----------
-------------------------------------------------------------
function OnCreate()

	init()
	if IsLogedIn() then
		OnLogin()
	end
	this:RegisterCommand("easyload", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("npcinfo", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end
function OnLogin()
	init()
	PacketBlock(0x31,0xFF,1) -- Blocks Players (CIPacket)
	Event_PacketUnBlock(0x31,0xFF,1) -- Unblocks the usage of CIPacket (PLAYER SPAWNING)
	if blockattackstance then
		PacketBlock(0x25,0xFF,1) -- Blocks Attack Stance (AutoAttackStart)
	end
	if checkarray(warriorname,GetMe():GetName()) and blockskills then
		PacketBlock(0x48,0xFF,1) -- Blocks Skill Casting animation (OnMagicSkillUse)
	end
	Event_PacketUnBlock(0x0C,0xFF,1) -- Unblocks the usage of NpcInfoPacket (NPC SPAWNING)
	Event_PacketUnBlock(0x05,0xFF,1) -- SpawnItemPacket
	Event_PacketUnBlock(0x16,0xFF,1) -- DropItemPacket
end

function OnCommand_npcinfo()
	if GetTarget() ~= nil then
		ShowToClient("NPCID",tostring(GetTarget():GetNpcId()))
		ShowToClient("OBJECTID",tostring(GetTarget():GetId()))
	end
end
function OnCommand_easyload()
	if not active then
		active = true
		OnLogin()
		ShowToClient("EasyLoad","ENABLED")
	else
		active = false
		ShowToClient("EasyLoad","DISABLED")
		PacketUnBlock(0x31,0xFF,1) 
		PacketUnBlock(0x25,0xFF,1)
		Event_PacketBlock(0x0C,0xFF,1)
	end
end

function checkarray(array, int)
	for x,a in pairs(array) do
		if a == int then
			return true;
		end
	end
end;

function checkarray2(array, int)
	for x,a in pairs(array) do
		if string.match(int,a) then
			return true;
		end
	end
end;

function OnIncomingPacket(packet)
	if active then
		packet:SetOffset(0)
		if packet:GetID() == 0x0C then -- NpcInfo
			if blocknpcs then
				objectId = packet:ReadInt(4)
				npcid = packet:ReadInt(4) - 1000000
				if checkarray(npcids,npcid) ~= true then
					packet:BlockMe()
				end
			end
		end
		if blockplayers then
		if packet:GetID() == 0x31 and blockplayers == true then -- CIPacket
			civar1 = packet:ReadInt(4) civar2 = packet:ReadInt(4) civar3 = packet:ReadInt(4) civar4 = packet:ReadInt(4) civar5 = packet:ReadInt(4)
			name = packet:ReadString()
			if checkarray(playernames,name) ~= true then
				packet:BlockMe()
			end
		end
		end
		if blockitems then
		if packet:GetID() == 0x05 then -- SpawnItem
		sivar1 = packet:ReadInt(4)
		itemid = packet:ReadInt(4)
			if checkarray2(itemnames,GetItemName(itemid)) ~= true then
				packet:BlockMe()
			end
		end
		if packet:GetID() == 0x16 then -- DropItem
		divar1 = packet:ReadInt(4) divar2 = packet:ReadInt(4)
		itemid = packet:ReadInt(4)
			if checkarray2(itemnames,GetItemName(itemid)) ~= true then
				packet:BlockMe()
			end
		end
		end
	end
end