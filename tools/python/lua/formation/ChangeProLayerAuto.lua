-- 
-- Author: generation auto
-- Brief：ChangeProLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ChangeProLayer = class('ChangeProLayer', gamecore.ui.BaseWidget);

function ChangeProLayer:create(...) 
    local instance = ChangeProLayer.new(...);
    return instance;
end

function ChangeProLayer:ctor(...) 
    if ChangeProLayer.super and ChangeProLayer.super.ctor then
        ChangeProLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function ChangeProLayer:initView()
    self.__LAYER_NAME = 'formation.ChangeProLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0066.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 320.0, height = 350.0});
	localParams[1]:setPosition(WinSize.width/2 + (-18.53 * ccx.scaleX), WinSize.height/2 + (11.07 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 268.0, height = 55.0});
	localParams[2]:setPosition(localParams[1]:getContentSize().width/2 + (0.99 * ccx.scaleX), 334.85);
	self.__children['bg#bg1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#bg1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0083.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setColor({r = 255, g = 255, b = 0});
	localParams[3]:setContentSize({width = 110.0, height = 30.0});
	localParams[3]:setPosition(161.8, 339.22);
	self.__children['bg#bg2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#bg2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_other/other0090.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._profession1_btn));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 234.0, height = 64.0});
	localParams[4]:setPosition(157.39, 258.89);
	self.__children['bg#profession1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#profession1';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0075.png', 1);
	localParams[5]:setAnchorPoint(1.00, 1.00);
	localParams[5]:setScaleX(0.70);
	localParams[5]:setScaleY(0.70);
	localParams[5]:setContentSize({width = 84.0, height = 44.0});
	localParams[5]:setPosition(localParams[4]:getContentSize().width/2 + (48.13 * ccx.scaleX), 48.98);
	self.__children['bg#profession1#name'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#profession1#name';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_other/other0092.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._profession2_btn));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 234.0, height = 64.0});
	localParams[6]:setPosition(157.31, 171.34);
	self.__children['bg#profession2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#profession2';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_font/fontImg0075.png', 1);
	localParams[7]:setAnchorPoint(1.00, 1.00);
	localParams[7]:setScaleX(0.70);
	localParams[7]:setScaleY(0.70);
	localParams[7]:setContentSize({width = 84.0, height = 44.0});
	localParams[7]:setPosition(localParams[6]:getContentSize().width/2 + (48.63 * ccx.scaleX), 47.8);
	self.__children['bg#profession2#name'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#profession2#name';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_other/other0091.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:onClick(handler(self, self._profession3_btn));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 234.0, height = 64.0});
	localParams[8]:setPosition(157.31, 83.17);
	self.__children['bg#profession3'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#profession3';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0075.png', 1);
	localParams[9]:setAnchorPoint(1.00, 1.00);
	localParams[9]:setScaleX(0.70);
	localParams[9]:setScaleY(0.70);
	localParams[9]:setContentSize({width = 84.0, height = 44.0});
	localParams[9]:setPosition(localParams[8]:getContentSize().width/2 + (48.63 * ccx.scaleX), 47.8);
	self.__children['bg#profession3#name'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#profession3#name';
	localParams[8]:addChild(localParams[9]);

end
function ChangeProLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function ChangeProLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ChangeProLayer:_profession2_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.profession2_btn then
        return self.m_ClickDelegate:profession2_btn(sender);
    end
    if self.profession2_btn then
        return self:profession2_btn(sender);
    end
end


function ChangeProLayer:_profession3_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.profession3_btn then
        return self.m_ClickDelegate:profession3_btn(sender);
    end
    if self.profession3_btn then
        return self:profession3_btn(sender);
    end
end


function ChangeProLayer:_profession1_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.profession1_btn then
        return self.m_ClickDelegate:profession1_btn(sender);
    end
    if self.profession1_btn then
        return self:profession1_btn(sender);
    end
end


return ChangeProLayer;