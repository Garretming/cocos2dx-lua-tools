-- 
-- Author: generation auto
-- Brief：SettingLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SettingLayer = class('SettingLayer', gamecore.ui.BaseWidget);

function SettingLayer:create(...) 
    local instance = SettingLayer.new(...);
    return instance;
end

function SettingLayer:ctor(...) 
    if SettingLayer.super and SettingLayer.super.ctor then
        SettingLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function SettingLayer:initView()
    self.__LAYER_NAME = 'battle.ui.SettingLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 475.0, height = 345.0});
	localParams[1]:setPosition(512.0, 292.5);
	self.__children['Image_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Image_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 235.0, height = 270.0});
	localParams[2]:setPosition(142.5, 160.0);
	self.__children['Image_1#Image_2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_1#Image_2';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._onContinue));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 183.0, height = 68.0});
	localParams[3]:setPosition(117.5, 196.0);
	self.__children['Image_1#Image_2#Button_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_1#Image_2#Button_1';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Widget:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.90);
	localParams[4]:setScaleY(0.90);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(20.0, -20.0);
	self.__children['Image_1#Image_2#Button_1#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_1#Image_2#Button_1#__SELECTED_SCALE';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_common/fontImg0039.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 70.0, height = 29.0});
	localParams[5]:setPosition(91.5, 34.0);
	self.__children['Image_1#Image_2#Button_1#uires_battle_sheet_fontImg0039_3'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_1#Image_2#Button_1#uires_battle_sheet_fontImg0039_3';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._onExit));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 183.0, height = 68.0});
	localParams[6]:setPosition(117.5, 74.0);
	self.__children['Image_1#Image_2#Button_2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_1#Image_2#Button_2';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = Widget:create();
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setScaleX(0.90);
	localParams[7]:setScaleY(0.90);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(30.0, -30.0);
	self.__children['Image_1#Image_2#Button_2#__SELECTED_SCALE'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_1#Image_2#Button_2#__SELECTED_SCALE';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_common/fontImg0037.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 69.0, height = 30.0});
	localParams[8]:setPosition(91.5, 34.0);
	self.__children['Image_1#Image_2#Button_2#uires_battle_sheet_fontImg0037_54'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Image_1#Image_2#Button_2#uires_battle_sheet_fontImg0037_54';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/role/role008.png', 0);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 300.0, height = 464.0});
	localParams[9]:setPosition(357.0, 241.0);
	self.__children['Image_1#role008_1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Image_1#role008_1';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/battle/sheet/other0054.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 205.0, height = 60.0});
	localParams[10]:setPosition(126.0, 332.0);
	self.__children['Image_1#uires_battle_sheet_other0054_2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Image_1#uires_battle_sheet_other0054_2';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:onClick(handler(self, self._onWinBattle));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 183.0, height = 68.0});
	localParams[11]:setPosition(645.03, 254.61);
	self.__children['Button_1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Button_1';
	self:addChild(localParams[11]);

end
function SettingLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/battle/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/role/role008.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function SettingLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/battle/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SettingLayer:_onContinue(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onContinue then
        return self.m_ClickDelegate:onContinue(sender);
    end
    if self.onContinue then
        return self:onContinue(sender);
    end
end


function SettingLayer:_onExit(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onExit then
        return self.m_ClickDelegate:onExit(sender);
    end
    if self.onExit then
        return self:onExit(sender);
    end
end


function SettingLayer:_onWinBattle(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onWinBattle then
        return self.m_ClickDelegate:onWinBattle(sender);
    end
    if self.onWinBattle then
        return self:onWinBattle(sender);
    end
end


return SettingLayer;