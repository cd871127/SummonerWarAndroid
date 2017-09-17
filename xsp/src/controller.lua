local status=require("status");
local action=require("action");
local common=require("common");
local controller={};

function controller.exec(param)
  local loopCount=0;
	local failCount=0;
  local actionName=param.startStatus;
  local fightType=param.fightType;
  --action的完成状态
  local actionFlag=true;
  
  --防止重复集火boss的标记
  local littleBossFlag=false;
  local finalBossFlag=false;
	
	status['init'][fightType]();
  
  while loopCount<param.repeatCount do
		common.showMsg("战斗类型: "..fightType.."\n战斗计数: "..tostring(loopCount+1).."/"..tostring(param.repeatCount).."/"..tostring(failCount).."\n购买体力: "..'false');
    if actionFlag and (actionName=="again" or actionName=="nextLevel") then
      littleBossFlag=false;
      finalBossFlag=false;
      loopCount=loopCount+1;
    end;
    local cacheActionName=actionName;
    if cacheActionName=='littleBoss' then
      actionName,actionFlag=controller.doAction(actionName,status[fightType][actionName],param,littleBossFlag);
      if actionFlag then
        littleBossFlag=true;
      end;
    elseif cacheActionName=='finalBoss' then
		sysLog(tostring(finalBossFlag));
      actionName,actionFlag=controller.doAction(actionName,status[fightType][actionName],param,finalBossFlag);
      if actionFlag then
        finalBossFlag=true;
      end;
    else
      actionName,actionFlag=controller.doAction(actionName,status[fightType][actionName],param,false);
    end;
  end;
end;

--执行action
function controller.doAction(actionName,curStatus,param,bossFlag)
  sysLog("do: "..actionName);
 
  if (actionName=='finalBoss' or actionName=='littleBoss') and bossFlag==true then
    return curStatus.success,true;
  else	
    if action[actionName](param) then
      sysLog("success: "..curStatus.success)
      return curStatus.success,true;
    else
      sysLog("failed: "..curStatus.fail)
      return curStatus.fail,false;
    end
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