-- EDIT THIS TWO LINES WITH ITEM AND STONE NAME.
itemname = "Sacredium"
stonename = "Dark Jewel"
delay = 1100 -- Delay (in ms) between actions, lower if you want it faster, 1s seems ok tho.


-- DONT EDIT ANYTHING BELOW THIS LINE IF YOU DON'T KNOW WHAT YOU'RE DOING.
itemid = nil
stoneid = nil
stonecount = 0

invList = GetInventory();
for item in invList.list do
	if item.Name == itemname and item.IsEquipped then
		itemid = item.objectId
		ShowToClient("Item Found",tostring(item.Name))
	end
	if tostring(item.Name) == stonename then
		stoneid = item.displayId
		stonecount = item.ItemNum
		ShowToClient("Stone Found",tostring(item.Name))
	end
end;
repeat
	if itemid ~= nil then
		if stoneid ~= nil then
				stonecount = stonecount - 1
				UseItem(stoneid)
				Sleep(delay)
				packet = PacketBuilder();
				packet:AppendInt(0xD0,1);
				packet:AppendInt(0x35,2);
				packet:AppendInt(itemid,4);
				SendPacket(packet);
		else
			ShowToClient("AutoElement","Stone not found")
			break
		end
			
	else
		ShowToClient("AutoElement","Item not found.")
		break
	end
until false