local status=require("status");
local action=require("action");
local controller={};

function controller.exec(param)
  local loopCount=0;
  local actionName=param.startStatus;
	local fightType=param.fightType;
	--action的完成状态
  local actionFlag=true;
	
  while loopCount<param.repeatCount do
		if actionFlag and (actionName=="again" or actionName=="") then
      loopCount=loopCount+1;
    end;
    actionName,actionFlag=controller.doAction(actionName,status[fightType][actionName],param);
  end;
end;

--执行action
function controller.doAction(actionName,nextStatus,param)
  sysLog("do: "..actionName);
  if action[actionName](param) then
		sysLog("success: "..nextStatus.success)
    return nextStatus.success,true;
  else
		sysLog("failed: "..nextStatus.fail)
    return nextStatus.fail,false;
  end
end;

--检查当前状态,如果不检查,默认为paramter.startStatus
function controller.checkStatus(param)
	if param.isCheckStatus then
		for keyStatus in status[param.fightType][keyStatus] do
			sysLog(1);
		end;
	end;
	return param.startStatus;
end;

return controller;