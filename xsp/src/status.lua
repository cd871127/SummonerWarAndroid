local status={};

--所有的action有三步,判断当前状态,执行action,判断是否执行成功,如果失败,重新执行,如果成功跳转到下一个action

--{success="",fail=""}
status.common={};
--通用状态
status.common.startFight={success="gear",fail="startFight"};
status.common.gear={success="autoFight",fail="resendFightInfo"};
--status.common.autoFight={success="",fail=""};
status.common.victory={success="noRGB",fail="defeat"};
status.common.defeat={success="noResurgence",fail="victory"};
--status.common.saleRune={success="",fail=""};
--status.common.keepRune={success="",fail=""};
--status.common.saleFiveStarRune={success="",fail=""};
status.common.noResurgence={success="again",fail="noResurgence"};
--status.common.littleBoss={success="",fail=""};
--status.common.finalBoss={success="",fail=""};
status.common.again={success="startFight",fail="again"};
--status.common.nextLevel={success="",fail=""};
status.common.notEnoughEnergyBuy={success="",fail=""};
status.common.notEnoughEnergyNotBuy={success="",fail=""};
status.common.resendFightInfo={success={"gear"},fail={"gear"}};
status.common.resendFightResult={success="victory",fail=""};
status.common.noRGB={success="",fail="victory"};


--狗粮状态
status.dogFood=status.common;
status.dogFood.autoFight={success="victory",fail="resendFightResult"};
status.dogFood.noRGB.success="saleRune";
status.dogFood.saleRune={success="again",fail="saleRune"};
status.dogFood.resendFightResult.fail="autoFight";


--觉醒状态

--符文状态

--三星碎片状态

--百塔状态


return status;