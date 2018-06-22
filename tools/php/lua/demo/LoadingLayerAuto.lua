-- 
-- Author: generation auto
-- Brief：LoadingLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local LoadingLayer = class('LoadingLayer', gamecore.ui.BaseWidget);

function LoadingLayer:create(...) 
    local instance = LoadingLayer.new(...);
    return instance;
end

function LoadingLayer:ctor(...) 
    if LoadingLayer.super and LoadingLayer.super.ctor then
        LoadingLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function LoadingLayer:initView()
    self.__LAYER_NAME = 'demo.LoadingLayer';
    local localParams = {};
	localParams[1] = LoadingBar:create(''uires/public/sheet_other/other0015.png'', 1, 0.00);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 611.0, height = 16.0});
	localParams[1]:setPosition(350.0, 600.0);
	self.__children['loading1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'loading1';
	self:addChild(localParams[1]);

	localParams[2] = LoadingBar:create(''uires/public/sheet_other/other0015.png'', 1, 0.00);
	localParams[2]:setDirection(1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 611.0, height = 16.0});
	localParams[2]:setPosition(350.0, 550.0);
	self.__children['loading2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'loading2';
	self:addChild(localParams[2]);

	localParams[3] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_bgframe/bgFrame0016.png''));
	localParams[3]:setType(1);
	localParams[3]:setMidpoint({x=0, y=0});
	localParams[3]:setBarChangeRate({x=0, y=1});
	localParams[3]:setPercentage(0.00);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 222.0, height = 222.0});
	localParams[3]:setPosition(200.0, 400.0);
	self.__children['loading3'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'loading3';
	self:addChild(localParams[3]);

	localParams[4] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_bgframe/bgFrame0016.png''));
	localParams[4]:setType(1);
	localParams[4]:setMidpoint({x=0, y=1});
	localParams[4]:setBarChangeRate({x=0, y=1});
	localParams[4]:setPercentage(0.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 222.0, height = 222.0});
	localParams[4]:setPosition(600.0, 400.0);
	self.__children['loading4'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'loading4';
	self:addChild(localParams[4]);

	localParams[5] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_bgframe/bgFrame0016.png''));
	localParams[5]:setType(0);
	localParams[5]:setMidpoint({x=0.5, y=0.5});
	localParams[5]:setReverseDirection(false);
	localParams[5]:setPercentage(0.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 222.0, height = 222.0});
	localParams[5]:setPosition(200.0, 150.0);
	self.__children['loading5'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'loading5';
	self:addChild(localParams[5]);

	localParams[6] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_bgframe/bgFrame0016.png''));
	localParams[6]:setType(0);
	localParams[6]:setMidpoint({x=0.5, y=0.5});
	localParams[6]:setReverseDirection(true);
	localParams[6]:setPercentage(84.00);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 222.0, height = 222.0});
	localParams[6]:setPosition(600.0, 150.0);
	self.__children['loading6'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'loading6';
	self:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._onClose));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 72.0, height = 72.0});
	localParams[7]:setPosition(WinSize.width - 73.00, WinSize.height - 68.00);
	self.__children['Button_3'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Button_3';
	self:addChild(localParams[7]);

end
function LoadingLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function LoadingLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function LoadingLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return LoadingLayer;