local controller=require("controller");
local param=require("parameter");
local ui=require("ui");
function main()
  init("0", 1); --以当前应用 Home 键在右边初始化
  
  local ret,result=ui.show(param);
  if ret==0 then
    return;
  end;
  local fightType={"dogFood","awake","rune"};
  param.repeatCount=tonumber(result['repeatCount']);
  param.fightType=fightType[tonumber(result['fightType'])+1];
  param.isBuyEnergy=false;
  if result['isBuyEnergy']=='0' then
    param.isBuyEnergy=true;
  end;
  if param.isBuyEnergy then
    param.buyEnergyCount=tonumber(result['buyEnergyCount']);
  else
    param.buyEnergyCount=0;
  end
  controller.exec(param);
end;

main();

function test()
local start=os.clock();
local i=0;
local x;
local y;
while i<15 do
--1.101354
--x, y = findColor({2013, 992, 2324, 1110}, 
--"0|0|0xf8e9ad,7|-5|0x412702,7|7|0x412702,9|20|0xc3943b,9|18|0x432803,111|-10|0xf8e9ad,110|-7|0x412702,142|12|0xddcf9a,-140|-95|0xd6af50,-136|-48|0xcfa449,-111|-61|0xd1a64b",
--95, 0, 0, 0)--1.103819
--x, y = findColor({2013, 992, 2324, 1110}, 
--"2136|1056|0xf8e9ad,2143|1051|0x412702,2143|1063|0x412702,2145|1076|0xc3943b,2145|1074|0x432803,2247|1046|0xf8e9ad,2246|1049|0x412702,2278|1068|0xddcf9a,1996|961|0xd6af50,2000|1008|0xcfa449,2025|995|0xd1a64b",
--95, 0, 0, 0)--1.012746
x, y = findColor({2129, 1042, 2153, 1061}, 
{
	{x=0,y=0,color=0xf8e9ad},
	{x=7,y=-5,color=0x412702},
	{x=7,y=7,color=0x412702},
	{x=9,y=20,color=0xc3943b},
	{x=9,y=18,color=0x432803},
	{x=111,y=-10,color=0xf8e9ad},
	{x=110,y=-7,color=0x412702},
	{x=142,y=12,color=0xddcf9a},
	{x=-140,y=-95,color=0xd6af50},
	{x=-136,y=-48,color=0xcfa449},
	{x=-111,y=-61,color=0xd1a64b},
	{x=-10,y=-21,color=0xcea64b},
	{x=-6,y=-14,color=0x563a0d}
},
95, 0, 0, 0)

--x, y = findColor({2013, 992, 2324, 1110}, 
--{
--	{x=2136,y=1056,color=0xf8e9ad},
--	{x=2143,y=1051,color=0x412702},
--	{x=2143,y=1063,color=0x412702},
--	{x=2145,y=1076,color=0xc3943b},
--	{x=2145,y=1074,color=0x432803},
--	{x=2247,y=1046,color=0xf8e9ad},
--	{x=2246,y=1049,color=0x412702},
--	{x=2278,y=1068,color=0xddcf9a},
--	{x=1996,y=961,color=0xd6af50},
--	{x=2000,y=1008,color=0xcfa449},
--	{x=2025,y=995,color=0xd1a64b}
--},
--95, 0, 0, 0)
i=i+1;end;
sysLog(os.clock()-start);
end;

--test();