--config start
range = 5000; --Farm Range
skillid = 932; --Star Stone Gathering
deb = false;  --debug move
--config end
 
mypos = GetMe():GetLocation(); --Starting pos
function pos(text)
	return string.find(text,"Red Star Stone");
end;
 
function GetRangeFromPoint(pos)
	y = pos:GetLocation().Y - mypos.Y;
	x = pos:GetLocation().X - mypos.X;
	z = pos:GetLocation().Z - mypos.Z;
	return math.sqrt((x * x)+(y*y)+(z*z));
end;
 
function checkNPC(o)
	return pos(o) ~= nil
end;
 
function TargetNewStone()
	local a = GetNpcList();
	local stone;
	for b in a.list do
		if (GetRangeFromPoint(b) < range and checkNPC(b:GetName())) then
			stone = b;
		end;
	end;
	if (stone ~= nil) then
		Target(stone);
	end;
 end;
 
function MoveToNear()
	b=GetTarget():GetLocation();
	if deb then
		a=GetMe():GetLocation();
		a.Y=b.Y + 100;
		a.Z=b.Z;
		MoveTo(a,50); -- debug move
	end;
	b.X=(b.X + 100);
	b.Y=(b.Y + 100);
	MoveTo(b,50);
end;
 
 --main loop
repeat	
	Sleep(500)
	TargetNewStone();
	if GetTarget() ~= nil then
		MoveToNear();
		Sleep(500);
		if GetTarget() ~= nil then
			UseSkill(skillid);
			Sleep(2000);
		end;
	else
		MoveTo(mypos,100);
	end;
	Sleep(500); --loop sleep
until false