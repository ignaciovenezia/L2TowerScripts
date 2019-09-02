function init()
HtmlString = ""
end

function OnCreate()
		A = 0
	Event_PacketUnBlock(0xA6,0xFF,1) -- Unblocks TutorialHtml packet.
	this:RegisterCommand("test2", CommandChatType.CHAT_ALLY, CommandAccessLevel.ACCESS_ME);
end

function OnCommand_test2(v,v,vCommandParam)
	local file = io.open(GetDir() .. "html_anticaptcha.txt", "w");
	local B = 808080
	repeat
	B = B+1
	if string.match(tostring(B),"8%d8%d8%d") then
	file:write(tostring(B).. ", ");
	end
	until B == 858585
	file:close();
end

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function OnIncomingPacket(packet)
	packet:SetOffset(0)
	if packet:GetID() == 0xA6 then
		HtmlString = packet:ReadString()
		if not string.find(HtmlString,'Click <font color="%x+">L2Toxic.com</font> with the same color!') then
			return
		end
		if string.match(HtmlString,'Click <font color="%x+">L2Toxic.com</font> with the same color!') then
			local file = io.open(GetDir() .. "html_anticaptcha_" .. tostring(GetMe():GetName()) .. "_" .. A+1 .. ".txt", "w");
			file:write(tostring(HtmlString).. "\n");
			file:close();
		end
		getcolor = string.match(HtmlString,'reply=%d+"><font color="%x+">L2Toxic.com</font></a><font color="%a%a%a%a%d%d"> <=<')	
		var1 = string.match(getcolor,'=%d+"')
		finalreply = string.match(var1,'%d+')
		if finalreply == nil then
			ShowToClient("WARNING","Unknown link, saving html window!")
			A = A+1
			file = io.open(GetDir() .. "html_warning_" .. A .. ".cfg", "w")
			file:write(tostring(HtmlString).. "\n");
			file:close();			
		else
			packet2 = PacketBuilder()
			packet2:AppendDataFromHexString("86 6D 00 65 00 6E 00 75 00 5F 00 73 00 65 00 6C 00 65 00 63 00 74 00 3F 00 61 00 73 00 6B 00 3D 00 31 00")
			packet2:AppendString("05&reply=" .. finalreply)
			SendPacket(packet2)
		end
	end
end