-- 
-- Author: generation auto
-- Brief：CallbackLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local CallbackLayer = class('CallbackLayer', gamecore.ui.BaseWidget);

function CallbackLayer:create(...) 
    local instance = CallbackLayer.new(...);
    return instance;
end

function CallbackLayer:ctor(...) 
    if CallbackLayer.super and CallbackLayer.super.ctor then
        CallbackLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);
end

function CallbackLayer:initView()
    self.__LAYER_NAME = 'demo.CallbackLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_btn/btn0045.png', 1);
	localParams[1]:setAnchorPoint(0.00, 0.50);
	localParams[1]:setRotationSkewX(90.00);
	localParams[1]:setRotationSkewY(90.00);
	localParams[1]:setContentSize({width = 54.0, height = 59.0});
	localParams[1]:setPosition(450.0, 100.0);
	self.__children['arrow_down'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'arrow_down';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_btn/btn0044.png', 1);
	localParams[2]:setAnchorPoint(1.00, 0.50);
	localParams[2]:setRotationSkewX(90.00);
	localParams[2]:setRotationSkewY(90.00);
	localParams[2]:setContentSize({width = 54.0, height = 59.0});
	localParams[2]:setPosition(450.0, 500.0);
	self.__children['arrow_up'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'arrow_up';
	self:addChild(localParams[2]);

	localParams[3] = ListView:create();
	localParams[3]:setDirection(1);
	localParams[3]:setGravity(0);
	localParams[3]:setBackGroundColorType(1);
	localParams[3]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[3]:setBackGroundColorOpacity(102);
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setEventCallback(handler(self, self._onTableView));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 500.0, height = 400.0});
	localParams[3]:setPosition(200.0, 100.0);
	self.__children['ListView_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'ListView_1';
	self:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._onClose));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 72.0, height = 72.0});
	localParams[4]:setPosition(WinSize.width - 73.00, WinSize.height - 68.00);
	self.__children['Button_3'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Button_3';
	self:addChild(localParams[4]);

end
function CallbackLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function CallbackLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function CallbackLayer:_onTableView(eventName, listView, row, column, index, cell)
    if self._clickDelegate and self._clickDelegate.onTableView then
        return self._clickDelegate:onTableView(eventName, listView, row, column, index, cell);
    end
    if self.onTableView then
        return self:onTableView(eventName, listView, row, column, index, cell);
    end
end


function CallbackLayer:_onClose(sender)
    if self._clickDelegate and self._clickDelegate.onClose then
        return self._clickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return CallbackLayer;