function OnCreate()
Event_PacketUnBlock(0x4A,0xFF,1) -- Unblocks Say2
Event_PacketUnBlock(0x31,0xFF,1) -- Unblocks the usage of CIPacket (PLAYER SPAWNING)
Event_PacketUnBlock(0xFE,0x7C,0) -- exolymode?
this:RegisterCommand("spam", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
this:RegisterCommand("list", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
this:RegisterCommand("loadfile", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
this:RegisterCommand("savefile", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
active = true
playerlist = {}
	if IsLogedIn() then
		LoadFile()
	end
end

function OnLogin()
	LoadFile()
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

function OnCommand_loadfile(vCommandChatType, vNick, vCommandParam)
	LoadFile()
end

function OnCommand_savefile(vCommandChatType, vNick, vCommandParam)
	SaveFile()
end

function OnCommand_spam()
	ShowToClient("","")
	active = !active
end

function OnCommand_list()
	ShowToClient("",tostring(table.	getn(playerlist)))
end


function LoadFile()
	if IsLogedIn() then
		local file = io.open(GetDir() .. "plugins\\SpamList\\spamlist.txt", "r");
		if (file == nil) then
			file = io.open(GetDir() .. "plugins\\SpamList\\spamlist.txt", "w");
			if (file == nil) then
				os.execute('mkdir "'..GetDir() .. 'plugins\\SpamList"');
				file = io.open(GetDir() .. "plugins\\SpamList\\spamlist.txt", "w");
			end;
		else
			local A = 0;
			for line in file:lines() do
				A = A+1
				playerlist[A] = line
			end
		end
		ShowToClient("system","file loaded.")
	end
end

function OnLogout()
	SaveFile();
end;

function SaveFile()
	if IsLogedIn() then
		local file = io.open(GetDir() .. "plugins\\SpamList\\spamlist.txt", "w+");
		if (file ~= nil) then
			for x,a in pairs(playerlist) do
				file:write(a ..  "\n");
			end
			file:close();
		end;
		ShowToClient("system","file saved.")
	end;
end;

function checkarray(array, int)
	for x,a in pairs(array) do
		if a == int then
			return true;
		end
	end
end;

function OnIncomingPacket(packet)
	if packet:GetID() == 0x31 then -- CIPacket
		civar1 = packet:ReadInt(4) civar2 = packet:ReadInt(4) civar3 = packet:ReadInt(4) civar4 = packet:ReadInt(4) civar5 = packet:ReadInt(4)
		name = packet:ReadString()
		if checkarray(playerlist,name) ~= true then -- if player isn't in our list, add him!
			table.insert(playerlist,name);
		end
	end
	if packet:GetID() == 0x4A then
		 oid=packet:ReadInt(4)
		 chattype=packet:ReadInt(4)
		 name=packet:ReadString() -- NICKNAME OF THE CHAR TALKING
		 text=packet:ReadString() -- WHAT HE'S SAYING
		 var5=packet:ReadString()
		 if checkarray(playerlist,name) ~= true then
			table.insert(playerlist,name)
		end
	end
end