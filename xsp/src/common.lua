local common={};
--点击坐标x,y
common.click=function(x,y)
  touchDown(1, x, y);
  common.sleep(0.2);
  touchUp(1, x, y);
end

--随机睡眠从minTime到maxTime 单位：秒
common.sleepRandom=function(minTime,maxTime)
  mSleep((minTime*1000+(maxTime-minTime)*math.random()*1000));
end

--睡眠 单位：秒
common.sleep=function(second)
  mSleep(second*1000);
end

common.hudId = createHUD();     --创建一个HUD

common.showMsg=function(message)
  local fontSize=50;
  showHUD(common.hudId,message,fontSize,"0xffff0000","0x00ffffff",3,0,0,500,180);     --变更显示的HUD内容
end;

common.exit=function()
  lockDevice();
  lua_exit();
end;

commom.checkPoint=function(colorPoint)
  keepScreen(true);
--  local x, y = findColor(colorPoint);
  keepScreen(false);
  if x>-1 and y>-1 then
    return true,x,y;
  else
    return false,x,y;	
  end;
end;

common.clickPoint=function(colorPoint)
  local flag,x,y=commom.checkPoint(colorPoint);
  if flag then
    common.click(x,y);
  end
  return flag;
end;


return common;