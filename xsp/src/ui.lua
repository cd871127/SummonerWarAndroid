local ui={};
local obj = require('uiLib')
ui.json={};
ui.json.decode = function(x) return obj:decode(x) end
ui.json.encode = function(x) return obj:encode(x) end
ui.json.encode_pretty = function(x) return obj:encode_pretty(x) end;

ui.content={};


ui.show=function(param)
 local uiJson = getUIContent("ui.json")
 local uiTable = ui.json.decode(uiJson);
 
 uiTable.height=param.height*3/4;
 uiTable.width=param.width*3/4;
 uiTable.views[2].width=param.width*3/4;
 uiTable.views[3].width=param.width*3/4;
 uiTable.views[6].width=param.width*3/4; 
 uiJson=ui.json.encode_pretty(uiTable); 
 return showUI(uiJson);
end;

return ui;
