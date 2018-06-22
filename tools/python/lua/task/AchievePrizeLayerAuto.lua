-- 
-- Author: generation auto
-- Brief：AchievePrizeLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local AchievePrizeLayer = class('AchievePrizeLayer', gamecore.ui.BaseWidget);

function AchievePrizeLayer:create(...) 
    local instance = AchievePrizeLayer.new(...);
    return instance;
end

function AchievePrizeLayer:ctor(...) 
    if AchievePrizeLayer.super and AchievePrizeLayer.super.ctor then
        AchievePrizeLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function AchievePrizeLayer:initView()
    self.__LAYER_NAME = 'task.AchievePrizeLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 740.0, height = 540.0});
	localParams[1]:setPosition(WinSize.width/2 + (5.22 * ccx.scaleX), WinSize.height/2 + (-8.64 * ccx.scaleY));
	self.__children['achievePrize_bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'achievePrize_bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 680.0, height = 470.0});
	localParams[2]:setPosition(369.96, 268.21);
	self.__children['achievePrize_bg#Image_17'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'achievePrize_bg#Image_17';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 660.0, height = 450.0});
	localParams[3]:setPosition(369.96, 267.2);
	self.__children['achievePrize_bg#Image_17_0'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'achievePrize_bg#Image_17_0';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ScrollView:create();
	localParams[4]:setInnerContainerSize({width = 640.00, height = 430.00});
	localParams[4]:setDirection(1);
	localParams[4]:setBackGroundColorType(1);
	localParams[4]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[4]:setBackGroundColorOpacity(102);
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 640.0, height = 430.0});
	localParams[4]:setPosition(49.46, 52.61);
	self.__children['achievePrize_bg#prizeScrollView'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'achievePrize_bg#prizeScrollView';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 268.0, height = 55.0});
	localParams[5]:setPosition(376.5, 513.92);
	self.__children['achievePrize_bg#bg2_0'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'achievePrize_bg#bg2_0';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(24);
	localParams[6]:setString([[成就奖励]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 255, g = 240, b = 155});
	localParams[6]:setContentSize({width = 100.0, height = 26.0});
	localParams[6]:setPosition(133.54, 34.31);
	self.__children['achievePrize_bg#bg2_0#amendName_0'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'achievePrize_bg#bg2_0#amendName_0';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[7]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 50.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._closeBtn));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 72.0, height = 72.0});
	localParams[7]:setPosition(718.37, 518.1);
	self.__children['achievePrize_bg#close'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'achievePrize_bg#close';
	localParams[1]:addChild(localParams[7]);

end
function AchievePrizeLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function AchievePrizeLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function AchievePrizeLayer:_closeBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.closeBtn then
        return self.m_ClickDelegate:closeBtn(sender);
    end
    if self.closeBtn then
        return self:closeBtn(sender);
    end
end


return AchievePrizeLayer;