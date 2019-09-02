function Move(x, y, z, distance)
    local TimeNow = GetTime();
    MoveToNoWait(x, y, z);
    repeat
        if ((GetTime() - TimeNow) > 500) then
            TimeNow = GetTime();
            MoveToNoWait(x, y, z);
        end;
        Sleep(50);
    until (GetMe():GetRangeTo(x, y, z) < 150);
end;


SCONFIG = L2TConfig.GetConfig();
SCONFIG_FILE = GetDir() .. '\\scripts\\mtmte.l2b';
L2TConfig.SaveConfig(SCONFIG_FILE);
moveDistance = 30;

TargetNpc("Hardin", 30832);
MoveTo(105747, 114194, -3134, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=7&option=1", "[More Than Meets The Eye]");
ClickAndWait("quest_accept?quest_id=136", "It sounds interesting. Say that you will help.");
ClickAndWait("menu_select?ask=136&reply=1", "Continue listening.");
ClickAndWait("menu_select?ask=136&reply=2", "Does that mean the soul has to be transformed as well?");
Click("menu_select?ask=136&reply=3", "Is it even possible to transform the soul? Moreover, if the soul transforms, wouldn't there be a loss of identity?");
Move(105697,111722,-3064,30)
Move(104922,111610,-3064,30)
Move(105155,111281,-3064,30)
Move(105632,110937,-3064,30)
Move(105875,109825,-3184,30)
TargetNpc("Minerva", 30836);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-992442992_2_57_1209021972_1", "Hunters Village - 3400 Adena");
Sleep(2000)
Move(117903,76073,-2688,30)
Move(119732,76632,-2272,30)
MoveTo(119612,76027,-2272,30)
MoveTo(119962,76026,-2264,30)
Move(120166,75816,-2264,30)
TargetNpc("Errickin", 30701);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("menu_select?ask=136&reply=1", "Can you get me Stabilized Ectoplasm? What will be the price?");
Move(120166,75816,-2264,30)
MoveTo(119962,76026,-2264,30)
MoveTo(119612,76027,-2272,30)
Move(119732,76632,-2272,30)
Move(117903,76073,-2688,30)
Move(117088,76906,-2688,30)
TargetNpc("Esmeralda", 30233);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-1014958896_8_57_1209022235_1", "Forest of Mirrors - 2000 Adena");
Sleep(2000)
Move(142603,82006,-3120,30)
Move(142154,83692,-3400,30)
Move(139914,84156,-3424,30)
SCONFIG.melee.me.enabled = true;
SCONFIG.melee.me.attackRange = 50;
local tempPoint = L2TConfig.L2Point();
tempPoint.X = 140576;
tempPoint.Y = 84428;
tempPoint.Z = -3291;
SCONFIG.targeting.polygonPoints:Add(tempPoint);
local tempPoint = L2TConfig.L2Point();
tempPoint.X = 138636;
tempPoint.Y = 84631;
tempPoint.Z = -3480;
SCONFIG.targeting.polygonPoints:Add(tempPoint);
local tempPoint = L2TConfig.L2Point();
tempPoint.X = 139087;
tempPoint.Y = 89385;
tempPoint.Z = -3282;
SCONFIG.targeting.polygonPoints:Add(tempPoint);
local tempPoint = L2TConfig.L2Point();
tempPoint.X = 140493;
tempPoint.Y = 88862;
tempPoint.Z = -3241;
SCONFIG.targeting.polygonPoints:Add(tempPoint);
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_INSIDE_POLYGON;
SetPause(false)
repeat
Sleep(1000)
until GetQuestManager():GetQuestItemCount(9787) >= 35;
ShowToClient("","FINISHED ECTOPLASM")
SetPause(true)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
myz = math.floor(GetMe():GetLocation().Z)
if GetZoneType() ~= 12 and myz > 2200 then
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
end
if GetZoneType() ~= 12 and myz > 2200 then
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
end
if GetZoneType() ~= 12 and myz > 2200 then
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
end
Sleep(2000)
Move(117088,76906,-2688,30)
Move(117903,76073,-2688,30)
Move(119732,76632,-2272,30)
MoveTo(119612,76027,-2272,30)
MoveTo(119962,76026,-2264,30)
Move(120166,75816,-2264,30)
TargetNpc("Errickin", 30701);
MoveTo(120166, 75815, -2260, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
Talk();
ClickAndWait("talk_select", "Quest");
Move(120166,75816,-2264,30)
MoveTo(119962,76026,-2264,30)
MoveTo(119612,76027,-2272,30)
Move(119732,76632,-2272,30)
Move(117903,76073,-2688,30)
Move(117088,76906,-2688,30)	
TargetNpc("Esmeralda", 30233);
MoveTo(117080, 76884, -2696, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-1014958896_5_57_1209022235_1", "Hardin's Private Academy - 3400 Adena");
Sleep(2000)
Move(105875,109825,-3184,30)
Move(105632,110937,-3064,30)
Move(105155,111281,-3064,30)
Move(104922,111610,-3064,30)
Move(105697,111722,-3064,30)
TargetNpc("Hardin", 30832);
MoveTo(105746, 114184, -3134, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=12&option=1", "[More Than Meets The Eye (In Progress)]");
ClickAndWait("menu_select?ask=136&reply=4", "Keep listening.");
ClickAndWait("menu_select?ask=136&reply=5", "Seal of Transformation?");
ClickAndWait("menu_select?ask=136&reply=6", "\"How do I do that?\"");
ClickAndWait("menu_select?ask=136&reply=7", "How do I make this empty Book of Seal?");
Move(105697,111722,-3064,30)
Move(104922,111610,-3064,30)
Move(105155,111281,-3064,30)
Move(105632,110937,-3064,30)
Move(105875,109825,-3184,30)
TargetNpc("Minerva", 30836);
MoveTo(105865, 109898, -3185, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-992442992_0_57_1209021972_1", "The Town of Giran - 4400 Adena");
repeat
Sleep(1000)
until TargetNpc("Clarissa", 30080);
MoveTo(83393, 147886, -3401, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-1027930656_10_57_1209021931_1", "The Town of Dion - 6800 Adena");
Sleep(2000)
Move(17983,146186,-3080,30)
MoveTo(17451,146850,-3096,30)
MoveTo(17295,146795,-3080,30)
TargetNpc("Clayton", 30464);
MoveTo(17298, 146840, -3083, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
Click("menu_select?ask=136&reply=1", "Hand him Hardin's order form.");
MoveTo(17295,146795,-3080,30)
MoveTo(17451,146850,-3096,30)
Move(17983,146186,-3080,30)
Move(15668,142920,-2696,30)
TargetNpc("Trisha", 30059);
MoveTo(15676, 142919, -2702, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-1027949376_13_57_1209021809_1", "Plains of Dion - 1500 Adena");
Sleep(5000)
SCONFIG.targeting.option = L2TConfig.ETargetingType.TT_RANGE_FROM_POINT;
SCONFIG.targeting.centerPoint.X = 1608;
SCONFIG.targeting.centerPoint.Y = 179331;
SCONFIG.targeting.centerPoint.Z = -3704;
SCONFIG.targeting.range = 2000;
repeat
Sleep(1000)
Command("/target Glass Jaguar")
until GetQuestManager():GetQuestItemCount(9789) >= 5;
ShowToClient("","FINISHED GLASS JAGUAR")
SetPause(true)
UseSkillRaw(10002, false, false); -- Escape - The nearest Town. (100k)
WaitForTeleport()
Sleep(2000)
Move(17983,146186,-3080,30)
MoveTo(17451,146850,-3096,30)
MoveTo(17295,146795,-3080,30)
TargetNpc("Clayton", 30464);
MoveTo(17298, 146840, -3083, moveDistance);
Talk();
Click("talk_select", "Quest");
MoveTo(17295,146795,-3080,30)
MoveTo(17451,146850,-3096,30)
Move(17983,146186,-3080,30)
Move(15668,142920,-2696,30)
TargetNpc("Trisha", 30059);
MoveTo(15676, 142919, -2702, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-1027949376_3_57_1209021809_1", "The Town of Giran - 6800 Adena");
repeat
Sleep(1000)
until TargetNpc("Clarissa", 30080);
MoveTo(83393, 147886, -3401, moveDistance);
Talk();
ClickAndWait("teleport_request", "Teleport");
Click("teleport_-1027930656_16_57_1209021931_1", "Hardin's Private Academy - 4400 Adena");
Move(105875,109825,-3184,30)
Move(105632,110937,-3064,30)
Move(105155,111281,-3064,30)
Move(104922,111610,-3064,30)
Move(105697,111722,-3064,30)
TargetNpc("Hardin", 30832);
MoveTo(105748, 114150, -3135, moveDistance);
Talk();
ClickAndWait("talk_select", "Quest");
ClickAndWait("quest_choice?choice=16&option=1", "[More Than Meets The Eye (In Progress)]");
ClickAndWait("menu_select?ask=136&reply=8", "Drink the concoction.");
ClickAndWait("menu_select?ask=136&reply=9", "Then can I transform now?");
Click("menu_select?ask=136&reply=10", "Wait.");