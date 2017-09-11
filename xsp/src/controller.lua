local status=require("status");
local action=require("action");
local controller={};

function controller.exec()
  local loopCount=0;
  local actionName="startFight";
  while loopCount<20 do
    if actionName=="again" or actionName=="" then
      loopCount=loopCount+1;
    end;
    actionName=controller.doAction(actionName,status.dogFood[actionName]);
  end;
end;

--
function controller.doAction(actionName,v)
  print("do: "..actionName);
  if action[actionName]() then
    return v.success;
  else
    return v.fail;
  end
end;


return controller;