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



function action.notEnoughEnergyBuy()
  return false;
end;

function action.notEnoughEnergyNotBuy()
  return false;
end;

function action.resendFightInfo()
  return false;
end;

function action.resendFightResult()
  return false;
end;





return action;