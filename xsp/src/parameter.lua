local paramter={};
paramter.height,paramter.width = getScreenSize();
paramter.startStatus="startFight";
--paramter.startStatus="finalBoss";

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
	points.confirmReward={{1203,1058,1247,1281},{{x=0,y=0,color=0xf4e5a9},{x=12,y=37,color=0x533810},{x=11,y=41,color=0xf4e5a9},{x=7,y=27,color=0xf4e5a9},{x=81,y=49,color=0xf4e5a9},{x=113,y=48,color=0xf4e5a9},{x=116,y=53,color=0x533810},{x=116,y=42,color=0x533810},{x=95,y=-2,color=0xf4e5a9}},95,0,0,0};
	--再来一次按钮
	points.again={{757,758,833,794},{{x=0,y=0,color=0xf8e9ad},{x=5,y=0,color=0xf8e9ad},{x=15,y=0,color=0xf8e9ad},{x=21,y=0,color=0xf8e9ad},{x=40,y=0,color=0xf8e9ad},{x=49,y=0,color=0xf8e9ad},{x=-117,y=-19,color=0xf8e9ad},{x=112,y=25,color=0xf8e9ad},{x=-34,y=27,color=0xf8e9ad}},95,0,0,0};
  --不复活的按钮
	points.noResurgence={{1621,899,1689,956},{{x=0,y=0,color=0xf8e9ad},{x=-2,y=25,color=0xf8e9ad},{x=24,y=-4,color=0xf8e9ad},{x=-29,y=-4,color=0xf8e9ad},{x=-148,y=-199,color=0xffffff},{x=-303,y=-211,color=0xffffff},{x=-440,y=-209,color=0xffffff},{x=-559,y=-225,color=0xffffff},{x=-757,y=-176,color=0xffffff}},95,0,0,0};
	--失败的图标
	points.defeat={{1160,173,1200,205},{{x=0,y=0,color=0xffff40},{x=31,y=-7,color=0xf7f630},{x=116,y=2,color=0xffff3b},{x=180,y=-7,color=0xffff37},{x=220,y=17,color=0xffff7c},{x=187,y=82,color=0x9ab934},{x=79,y=95,color=0x80a12e},{x=-20,y=95,color=0x7b972a}},95,0,0,0};
	--出售符文的按钮
	points.saleRune={{946,928,1185,1191},{{x=0,y=0,color=0xf4e5a9},{x=0,y=-3,color=0x533810},{x=11,y=-4,color=0x533810},{x=15,y=-4,color=0xf4e5a9},{x=20,y=-3,color=0x5c4219},{x=27,y=0,color=0x533810},{x=32,y=0,color=0xf4e5a9},{x=84,y=42,color=0xf4e5a9},{x=78,y=34,color=0x533810}},95,0,0,0};
	--保留符文的按钮
	points.keepRune={{1351,870,1444,1230},{{x=0,y=0,color=0xc99954},{x=0,y=-2,color=0x533810},{x=0,y=4,color=0xc89753},{x=0,y=8,color=0x533810},{x=1,y=12,color=0xf4e5a9},{x=0,y=-8,color=0xf4e5a9},{x=39,y=-6,color=0xf4e5a9},{x=34,y=-10,color=0x533810},{x=34,y=-16,color=0xcb9d57}},95,0,0,0};
	--重新发送战斗信息
	points.resendFightInfo={{1025,833,1062,864},{{x=0,y=0,color=0xf8e9ad},{x=1,y=4,color=0x412702},{x=0,y=12,color=0x412702},{x=99,y=-277,color=0xe2c582},{x=99,y=-274,color=0x482e1f},{x=94,y=-271,color=0xe2c582},{x=97,y=-271,color=0x482e1f},{x=102,y=-264,color=0xe2c582},{x=102,y=-267,color=0x482e1f},{x=108,y=-272,color=0xe2c582}},95,0,0,0};
	--重新发送战斗结果
	points.resendFightResult={{1025,833,1062,864},{{x=0,y=0,color=0xf8e9ad},{x=2,y=5,color=0x412702},{x=2,y=8,color=0xf8e9ad},{x=-67,y=-269,color=0xe2c582},{x=-74,y=-270,color=0x482e1f},{x=-74,y=-257,color=0xe2c582},{x=-78,y=-257,color=0x482e1f},{x=-75,y=-248,color=0xe2c582},{x=-80,y=-248,color=0x482e1f},{x=-75,y=-235,color=0xe2c582}},95,0,0,0};
	--大boss
	points.finalBoss={{83,313,95,323},{{x=0,y=0,color=0x371c14},{x=9,y=-1,color=0xd5cfc4},{x=16,y=-1,color=0x371c14},{x=28,y=-1,color=0xfffcec},{x=39,y=0,color=0x3d2319},{x=46,y=0,color=0xd9d1bf},{x=-13,y=0,color=0xf5ecd6},{x=-1,y=14,color=0xf3e9d2},{x=-2,y=-7,color=0xdad3c1}},95,0,0,0};
	--小boss
	points.littleBoss={{91,204,95,210},{{x=0,y=0,color=0x371c14},{x=9,y=-1,color=0xd5cfc4},{x=16,y=-1,color=0x371c14},{x=28,y=-1,color=0xfffcec},{x=39,y=0,color=0x3d2319},{x=46,y=0,color=0xd9d1bf},{x=-13,y=0,color=0xf5ecd6},{x=-1,y=14,color=0xf3e9d2},{x=-2,y=-7,color=0xdad3c1}},95,0,0,0};
	--刷塔下一层
	points.nextLevel={{649,738,712,792},{{x=0,y=0,color=0xf8e9ad},{x=21,y=0,color=0xf8e9ad},{x=21,y=16,color=0xf8e9ad},{x=43,y=25,color=0xf8e9ad},{x=21,y=45,color=0xf8e9ad},{x=59,y=21,color=0xf8e9ad},{x=88,y=20,color=0xf8e9ad},{x=107,y=20,color=0xf8e9ad},{x=163,y=-2,color=0xf8e9ad},{x=164,y=45,color=0xf8e9ad}},95,0,0,0};
	--能量不够
	points.notEnoughEnergy={{1015,825,1084,897},{{x=0,y=0,color=0xf8e9ad},{x=0,y=6,color=0xf8e9ad},{x=11,y=4,color=0x412702},{x=406,y=-267,color=0xe2c582},{x=408,y=-262,color=0x482e1f},{x=414,y=-262,color=0xe2c582},{x=402,y=-261,color=0xe2c582},{x=406,y=-244,color=0x482e1f},{x=406,y=-238,color=0xe2c582}},95,0,0,0};
	--点能量
	points.energy={{663,859,773,927},{{x=0,y=0,color=0xf5e5c1},{x=0,y=-3,color=0x8c2f07},{x=0,y=-10,color=0x8c2f07},{x=0,y=-12,color=0xf5e5c1},{x=-13,y=162,color=0xda1a4b},{x=522,y=-532,color=0x0b7dd3},{x=1025,y=-560,color=0xdb1c4c},{x=87,y=-573,color=0xfad36b},{x=9,y=-220,color=0xffcc66},{x=31,y=-176,color=0xeec455}},95,0,0,0};
	--确定购买能量
	points.confirmBuyEnergy={{1030,850,1098,904},{{x=0,y=0,color=0xf8e9ad},{x=1,y=4,color=0x412702},{x=1,y=9,color=0xf8e9ad},{x=1,y=12,color=0x412702},{x=-278,y=-543,color=0xbb9d4e},{x=214,y=-518,color=0x002d6b},{x=661,y=-540,color=0xa21236},{x=643,y=-519,color=0xab0f35},{x=210,y=-523,color=0x002560},{x=-286,y=-513,color=0xbb9d4e}},95,0,0,0};
	--购买完毕的确认按钮
	points.finishBuy={{0,0,2559,1439},{{x=0,y=0,color=0xf8e9ad,offset=0x000555},{x=4,y=8,color=0xf8e9ad},{x=8,y=29,color=0x412702},{x=-1,y=-531,color=0x00567d},{x=491,y=-523,color=0x6f0c24},{x=-437,y=-538,color=0x826e38},{x=-53,y=-310,color=0xe2c582},{x=-52,y=-307,color=0x503624}},95,0,0,0};
	--关闭买能量的界面
	points.closeEnergyUI={{1210,1199,1344,1268},{{x=0,y=0,color=0xf8f0cf},{x=4,y=-6,color=0x412702},{x=7,y=-11,color=0xcda05b},{x=-461,y=-904,color=0xf8cf67},{x=-25,y=-870,color=0x0b80d6},{x=482,y=-901,color=0xdc1c4d},{x=643,y=-486,color=0x003388},{x=-564,y=-169,color=0xe02050}},95,0,0,0};
	--出售5星符文
	points.saleFiveStarRune={{1003,826,1102,910},{{x=0,y=0,color=0xf8e9ad},{x=6,y=4,color=0x412702},{x=5,y=8,color=0xf8e9ad},{x=5,y=12,color=0x412702},{x=448,y=0,color=0xf8e9ad},{x=461,y=12,color=0xf8e9ad},{x=465,y=33,color=0xf8e9ad},{x=464,y=38,color=0x412702},{x=458,y=47,color=0xf8e9ad}},95,0,1,0};
	return points;
end;


paramter.points=paramter["d"..paramter.height..paramter.width]();
return paramter;