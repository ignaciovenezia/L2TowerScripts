function A124j1JKFk3()
qwufgeuilaga = nil
hri1hr12o4jk = false
end
function OnCreate()

	Event_PacketUnBlock(0x08,0xFF,1);
	this:RegisterCommand("ah", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
	if IsLogedIn() then
		ShowToClient("AntiHide","Loaded properly. '/ah' to enable/disable plugin.")
		ShowToClient("AntiHide","Any problems contact me. skype: vinterl2tower")
	end
end;

function OnCommand_ah(vCommandChatType, vNick, vCommandParam)
	if hri1hr12o4jk == false then
		hri1hr12o4jk = true
		ShowToClient("AntiHide","Enabled")
	else
		hri1hr12o4jk = false
		ShowToClient("AntiHide","Disabled")
	end
end


function OnLogin()

	A124j1JKFk3()
		ShowToClient("AntiHide","Loaded properly. '/ah' to enable/disable plugin.")
		ShowToClient("AntiHide","Any problems contact me. skype: vinterl2tower")
end

function OnIncomingPacket(packet)
	if hri1hr12o4jk == true then
		packet:SetOffset(0);
		if packet:GetID() == 0x08 then
			if packet:ReadInt(4) == qwufgeuilaga then
				packet:BlockMe();
				qwufgeuilaga = nil
			end
		end
	end
end
function OnMagicSkillLaunched(user,target,skillId,skillLvl)
	if hri1hr12o4jk == true then
		if skillId == 922 then
			qwufgeuilaga = user:GetId()
		end
	end
end