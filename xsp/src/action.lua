local common=require("common");
local action={};

function action.startFight(param)
  return common.clickPoint(param.points.startFight);
end;

function action.gear(param)
  local res=common.checkPoint(param.points.gear);
  return res;
end;

function action.noAutoFight(param)
  return common.clickPoint(param.points.noAutoFight);
end;

function action.autoFight(param)
  return common.checkPoint(param.points.autoFight);
end;

function action.victory(param)
  return common.clickPoint(param.points.victory);
end;

function action.noRGB(param)
  local isVictory=common.checkPoint(param.points.victory);
  if isVictory then
    return false;
  else
    return common.clickPoint(param.points.noRGB);
  end;
end;

function action.confirmReward(param)
  return common.clickPoint(param.points.confirmReward);
end;

function action.noResurgence(param)
  return common.clickPoint(param.points.noResurgence);
end;

function action.saleRune(param)
  return common.clickPoint(param.points.saleRune);
end;

function action.keepRune(param)
  return common.clickPoint(param.points.keepRune);
end;

function action.again(param)
  return common.clickPoint(param.points.again);
end;

function action.defeat(param)
  return common.clickPoint(param.points.defeat);
end;

function action.notEnoughEnergy(param)
  --判断是否能量不够
  local isNotEnoughEnergy=common.checkPoint(param.points.notEnoughEnergy);
  
  if isNotEnoughEnergy then
    --判断是否要买体力
    if param.isBuyEnergy and param.buyEnergyCount>0 then
      param.buyEnergyCount=param.buyEnergyCount-1
      --购买体力的逻辑
			while not common.clickPoint(param.points.notEnoughEnergy) do
			end
			
			while not common.clickPoint(param.points.energy) do
			end
			
			while not common.clickPoint(param.points.confirmBuyEnergy) do
			end
			
			while not common.clickPoint(param.points.finishBuy) do
			end
			
			while not common.clickPoint(param.points.closeEnergyUI) do
			end
			
      return true;
    else
      common.exit();
    end
  else
    return false;
  end
  
end;


function action.resendFightInfo(param)
  return common.clickPoint(param.points.resendFightInfo);
end;

function action.resendFightResult(param)
  return common.clickPoint(param.points.resendFightResult);
end;

function action.finalBoss(param)
  local flag=common.checkPoint(param.points.finalBoss);
  if flag then
    common.click(1263,661);
    return true;
  else
    return false;
  end
end;

function action.littleBoss(param)
  local flag=common.checkPoint(param.points.littleBoss);
  if flag then
    common.click(1601,335);
    return true;
  else
    return false;
  end
end;

function action.nextLevel(param)
  return common.clickPoint(param.points.nextLevel);
end;

function action.stop(param)
  common.exit();
end;

function action.saleFiveStarRune(param)
return common.clickPoint(param.points.saleFiveStarRune);
end;

return action;