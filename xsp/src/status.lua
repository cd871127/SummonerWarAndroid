local status={};

--所有的action有三步,判断当前状态,执行action,判断是否执行成功,如果失败,重新执行,如果成功跳转到下一个action
status.init={};
--{success="",fail=""}
function status.init.common()
  status.common={};
  --通用状态
  status.common.startFight={success="gear",fail="startFight"};
  status.common.gear={success="autoFight",fail="resendFightInfo"};
  status.common.victory={success="noRGB",fail="noResurgence"};
  status.common.defeat={success="again",fail="defeat"};
  status.common.noResurgence={success="defeat",fail="victory"};
  status.common.again={success="startFight",fail="again"};
  status.common.notEnoughEnergyBuy={success="",fail=""};
  status.common.notEnoughEnergyNotBuy={success="",fail=""};
  status.common.resendFightInfo={success="gear",fail="gear"};
  status.common.resendFightResult={success="victory",fail=""};
  status.common.noRGB={success="",fail="victory"};
  status.common.confirmReward={success="again",fail=""};
end;
--status.common.keyStatus={"startFight","autoFight","noAutoFight","noResurgence"};


--狗粮状态
function status.init.dogFood()
  status.init.common();
  status.dogFood=status.common;
  status.dogFood.noAutoFight={success="autoFight",fail="autoFight"};
  status.dogFood.autoFight={success="victory",fail="noAutoFight"};
  status.dogFood.noRGB.success="saleRune";
  status.dogFood.saleRune={success="again",fail="confirmReward"};
  status.dogFood.resendFightResult.fail="autoFight";
  status.dogFood.confirmReward.fail="saleRune";
  --status.common.saleFiveStarRune={success="",fail=""};
end;
--觉醒状态
function status.init.awake()
  status.init.dogFood();
  status.awake=status.dogFood;
  status.awake.noRGB.success="confirmReward";
  status.awake.confirmReward.fail="confirmReward";
  status.awake.autoFight.success="finalBoss";
  status.awake.finalBoss={success="victory",fail="autoFight"};
end;
--符文状态
function status.init.rune()
  status.init.awake();
  status.rune=status.awake;
  status.rune.noRGB.success="keepRune";
  status.rune.confirmReward.fail="keepRune";
  status.rune.autoFight.success="littleBoss";
  status.rune.keepRune={success="again",fail="confirmReward"};
  status.rune.littleBoss={success="finalBoss",fail="finalBoss"};
end;
--三星碎片状态
--status.threeStar=status.awake;
--百塔状态
--status.common.nextLevel={success="",fail=""};




return status;