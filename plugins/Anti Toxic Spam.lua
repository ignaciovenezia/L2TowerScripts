function OnCreate()
Event_PacketUnBlock(0x4A,0xFF,1)
blacklist = {"==>","KILLS !!!","FATALITY","EVENT", "kill !!!", "made 70 KILLS","punished the 40th player"}
this:RegisterCommand("nospam", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
active = true
end

function checkarray2(array, int)
	for x,a in pairs(array) do
		if string.match(int,a) then
			return true;
		end
	end
end;

function OnCommand_nospam()
ShowToClient("","")
if active == true then
	active = false
else
	active = true
end
end

function OnIncomingPacket(packet)
	if active == true then
		if packet:GetID() == 0x4A then
			var1=packet:ReadInt(4)
			var2=packet:ReadInt(4)
			var3=packet:ReadString() -- NICKNAME OF THE CHAR TALKING
			text=packet:ReadString() -- WHAT HE'S SAYING
			var5=packet:ReadString()
			if checkarray2(blacklist,text) then
				packet:BlockMe()
			end
		end
	end
end
