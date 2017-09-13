local paramter={};
paramter.height,paramter.width = getScreenSize();
paramter.startStatus="startFight";

--分辨率为1440 2560的设备
function paramter.d14402560()
  local points={};
  
  --开始战斗的按钮
  points.startFight={{2129,1042,2153,1061},{{x=0,y=0,color=0xf8e9ad},{x=7,y=-5,color=0x412702},{x=7,y=7,color=0x412702},{x=9,y=20,color=0xc3943b},{x=9,y=18,color=0x432803},{x=111,y=-10,color=0xf8e9ad},{x=110,y=-7,color=0x412702},{x=142,y=12,color=0xddcf9a},{x=-140,y=-95,color=0xd6af50},{x=-136,y=-48,color=0xcfa449},{x=-111,y=-61,color=0xd1a64b},{x=-10,y=-21,color=0xcea64b},{x=-6,y=-14,color=0x563a0d}},95,0,0,0};
  --战斗状态的齿轮
	points.gear={{52,1299,135,1379},{{x=0,y=0,color=0xffffff},{x=-19,y=9,color=0xffffff},{x=-34,y=33,color=0xffffff},{x=-25,y=60,color=0xffffff},{x=3,y=71,color=0xffffff},{x=-21,y=104,color=0xffffff},{x=64,y=-25,color=0xffffff},{x=154,y=-27,color=0xffffff}},95,0,0,0};
	--自动战斗的三角形
	points.noAutoFight={{456,1321,485,1372},{{x=0,y=0,color=0xffffff},{x=0,y=12,color=0xffffff},{x=-17,y=-11,color=0xffffff},{x=-17,y=15,color=0xffffff},{x=18,y=9,color=0xffffff},{x=29,y=-57,color=0xffffff},{x=-310,y=-2,color=0xffffff},{x=-350,y=5,color=0xffffff},{x=-444,y=62,color=0xffffff},{x=-19,y=-17,color=0xffffff}},95,0,0,0};
	--自动战斗的竖线
	points.autoFight={{490,1306,509,1331},{{x=0,y=0,color=0xffffff},{x=0,y=57,color=0xffffff},{x=-93,y=-28,color=0xffffff},{x=-37,y=-36,color=0xffffff},{x=26,y=-34,color=0xffffff},{x=41,y=41,color=0xffffff},{x=-223,y=95,color=0xffffff},{x=-283,y=20,color=0xffffff},{x=-344,y=-30,color=0xffffff}},95,0,0,0};
	--胜利的时候,可以看到蓝黄红
	points.victory={{1148,173,1200,219},{{x=0,y=0,color=0xffff32},{x=-3,y=54,color=0xfef7ae},{x=81,y=20,color=0xfffe34},{x=163,y=52,color=0xfffded},{x=223,y=106,color=0xffb70a},{x=158,y=547,color=0xf3c860},{x=-485,y=544,color=0x2c92ed},{x=814,y=534,color=0xd61846}},95,0,0,0};
	--可以看到胜利,但是看不到蓝黄红
	points.noRGB={{1148,173,1200,219},{{x=0,y=0,color=0xffff32},{x=-3,y=54,color=0xfef7ae},{x=81,y=20,color=0xfffe34},{x=163,y=52,color=0xfffded},{x=223,y=106,color=0xffb70a},{x=162,y=3,color=0xffff33},{x=-485,y=544,color=0x2c92ed},{x=814,y=534,color=0xd61846}},95,0,0,0};
	--奖励的确认按钮
	points.confirmReward={{1110,781,1442,1328},{{x=0,y=0,color=0xf4e5a9},{x=-2,y=-1,color=0x533810},{x=11,y=23,color=0x533810},{x=11,y=19,color=0xf4e5a9},{x=12,y=36,color=0x533810},{x=11,y=38,color=0xf4e5a9},{x=95,y=-4,color=0xf4e5a9},{x=91,y=-4,color=0x533810},{x=111,y=48,color=0xf4e5a9},{x=115,y=49,color=0x533810}},95,0,0,0};
	--再来一次按钮
	points.again={{769,773,821,795},{{x=0,y=0,color=0xf8e9ad},{x=47,y=-20,color=0xf8e9ad},{x=47,y=19,color=0xf8e9ad},{x=-16,y=1,color=0xf8e9ad},{x=-131,y=-20,color=0xf8e9ad},{x=-124,y=6,color=0x573e16},{x=78,y=-10,color=0x8b7547},{x=94,y=-13,color=0xf8e9ad}},95,0,0,0};
  --不复活的按钮
	points.noResurgence={{1613,901,1688,935},{{x=0,y=0,color=0xf8e9ad},{x=52,y=1,color=0xf8e9ad},{x=-2,y=22,color=0xf8e9ad},{x=56,y=21,color=0xf8e9ad},{x=-444,y=-722,color=0xffff37},{x=-414,y=-707,color=0xfcfd34},{x=-296,y=-698,color=0xeff22e},{x=-257,y=-645,color=0x9fbb33}},95,0,0,0};
	--失败的图标
	points.defeat={{1160,173,1200,205},{{x=0,y=0,color=0xffff40},{x=31,y=-7,color=0xf7f630},{x=116,y=2,color=0xffff3b},{x=180,y=-7,color=0xffff37},{x=220,y=17,color=0xffff7c},{x=187,y=82,color=0x9ab934},{x=79,y=95,color=0x80a12e},{x=-20,y=95,color=0x7b972a}},95,0,0,0};
	--出售符文的按钮
	points.saleRune={{946,928,1185,1191},{{x=0,y=0,color=0xf4e5a9},{x=0,y=-3,color=0x533810},{x=11,y=-4,color=0x533810},{x=15,y=-4,color=0xf4e5a9},{x=20,y=-3,color=0x5c4219},{x=27,y=0,color=0x533810},{x=32,y=0,color=0xf4e5a9},{x=84,y=42,color=0xf4e5a9},{x=78,y=34,color=0x533810}},95,0,0,0};
	--保留符文的按钮
	points.keepRune={{1351,870,1444,1230},{{x=0,y=0,color=0xc99954},{x=0,y=-2,color=0x533810},{x=0,y=4,color=0xc89753},{x=0,y=8,color=0x533810},{x=1,y=12,color=0xf4e5a9},{x=0,y=-8,color=0xf4e5a9},{x=39,y=-6,color=0xf4e5a9},{x=34,y=-10,color=0x533810},{x=34,y=-16,color=0xcb9d57}},95,0,0,0};
	
	return points;
end;


paramter.points=paramter["d"..paramter.height..paramter.width]();
return paramter;