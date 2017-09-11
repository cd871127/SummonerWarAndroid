local common=require("common");
local action={};

function action.startFight()
  return true;
end;

function action.gear()
  return true;
end;

function action.victory()
  return true;
end;

function action.defeat()
  return true;
end;

function action.noResurgence()
  return true;
end;

function action.again()
  return true;
end;

function action.notEnoughEnergyBuy()
  return true;
end;

function action.notEnoughEnergyNotBuy()
  return true;
end;

function action.resendFightInfo()
  return true;
end;

function action.resendFightResult()
  return true;
end;

function action.noRGB()
  return true;
end;

function action.autoFight()
  return true;
end;

function action.saleRune()
  return true;
end;

--function action.noResurgence()
--  return true;
--end;

--function action.noResurgence()
--  return true;
--end;

--function action.noResurgence()
--  return true;
--end;

--function action.noResurgence()
--  return true;
--end;

--function action.noResurgence()
--  return true;
--end;

--function action.noResurgence()
--  return true;
--end;

--function action.noResurgence()
--  return true;
--end;


return action;