-- 
-- Author: generation auto
-- Brief：ProfessionLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local ProfessionLayer = class('ProfessionLayer', gamecore.ui.BaseWidget);

function ProfessionLayer:create(...) 
    local instance = ProfessionLayer.new(...);
    return instance;
end

function ProfessionLayer:ctor(...) 
    if ProfessionLayer.super and ProfessionLayer.super.ctor then
        ProfessionLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function ProfessionLayer:initView()
    self.__LAYER_NAME = 'activity.goldgame.ProfessionLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0009.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 800.0, height = 93.0});
	localParams[2]:setPosition(WinSize.width - 400.00, WinSize.height - 46.50);
	self.__children['bg2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg2';
	self:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(22);
	localParams[3]:setString([[01:02:03后活动结束]]);
	localParams[3]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[3]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[3]:setAnchorPoint(0.00, 0.50);
	localParams[3]:setTextColor({r = 240, g = 200, b = 60});
	localParams[3]:setContentSize({width = 195.0, height = 29.0});
	localParams[3]:setPosition(160.0, 65.0);
	self.__children['bg2#time_txt'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg2#time_txt';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 537.0, height = 164.0});
	localParams[4]:setPosition(268.5, WinSize.height - 82.00);
	self.__children['bg1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg1';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0071.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 431.0, height = 92.0});
	localParams[5]:setPosition(WinSize.width/2 + (-3.48 * ccx.scaleX), WinSize.height/2 + (188.99 * ccx.scaleY));
	self.__children['img1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'img1';
	self:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0082.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 141.0, height = 38.0});
	localParams[6]:setPosition(215.5, 44.0);
	self.__children['img1#img2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'img1#img2';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_btn/btn0080.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 15.000000, y = 11.000000, width = 180.000000, height = 188.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.90);
	localParams[7]:setScaleY(0.90);
	localParams[7]:onClick(handler(self, self._profession2));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 210.0, height = 210.0});
	localParams[7]:setPosition(93.55, -150.4);
	self.__children['img1#btn1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'img1#btn1';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_btn/btn0082.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 15.000000, y = 11.000000, width = 180.000000, height = 188.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:onClick(handler(self, self._profession3));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 210.0, height = 210.0});
	localParams[8]:setPosition(339.93, -150.4);
	self.__children['img1#btn2'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'img1#btn2';
	localParams[5]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0077.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 84.0, height = 44.0});
	localParams[9]:setPosition(338.01, -290.71);
	self.__children['img1#name2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'img1#name2';
	localParams[5]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_font/fontImg0076.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 83.0, height = 44.0});
	localParams[10]:setPosition(90.01, -290.71);
	self.__children['img1#name1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'img1#name1';
	localParams[5]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_font/fontImg0250.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 195.0, height = 58.0});
	localParams[11]:setPosition(235.0, WinSize.height - 30.50);
	self.__children['bg4'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg4';
	self:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._help_btn));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 58.0, height = 68.0});
	localParams[12]:setPosition(WinSize.width - 37.02, WinSize.height - 49.83);
	self.__children['help_btn'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'help_btn';
	self:addChild(localParams[12]);

	localParams[13] = Node:create();
	localParams[13]:setAnchorPoint(0.00, 0.00);
	localParams[13]:setScaleX(1.20);
	localParams[13]:setScaleY(1.20);
	localParams[13]:setContentSize({width = 0.0, height = 0.0});
	localParams[13]:setPosition(52.93, -11.77);
	self.__children['help_btn#__SELECTED_SCALE'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'help_btn#__SELECTED_SCALE';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[14]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:onClick(handler(self, self._back_btn));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 116.0, height = 77.0});
	localParams[14]:setPosition(68.17, WinSize.height - 44.38);
	self.__children['back_btn'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'back_btn';
	self:addChild(localParams[14]);

end
function ProfessionLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0009.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function ProfessionLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ProfessionLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function ProfessionLayer:_profession3(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.profession3 then
        return self.m_ClickDelegate:profession3(sender);
    end
    if self.profession3 then
        return self:profession3(sender);
    end
end


function ProfessionLayer:_profession2(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.profession2 then
        return self.m_ClickDelegate:profession2(sender);
    end
    if self.profession2 then
        return self:profession2(sender);
    end
end


function ProfessionLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


return ProfessionLayer;