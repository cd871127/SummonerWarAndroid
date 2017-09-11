local status=require("status");
local action=require("action");
local controller={};

function controller.exec(param)
  local loopCount=0;
  local actionName=param.startStatus;
	local fightType=param.fightType;
 
  while loopCount<param.repeatCount do
    if actionName=="again" or actionName=="" then
      loopCount=loopCount+1;
    end;
    actionName=controller.doAction(actionName,status[fightType][actionName],param);
  end;
end;


function controller.doAction(actionName,nextStatus,param)
  sysLog("do: "..actionName);
  if action[actionName](param) then
    return nextStatus.success;
  else
    return nextStatus.fail;
  end
end;


return controller;