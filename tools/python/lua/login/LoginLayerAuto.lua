-- 
-- Author: generation auto
-- Brief：LoginLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local LoginLayer = class('LoginLayer', gamecore.ui.BaseWidget);

function LoginLayer:create(...) 
    local instance = LoginLayer.new(...);
    return instance;
end

function LoginLayer:ctor(...) 
    if LoginLayer.super and LoginLayer.super.ctor then
        LoginLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function LoginLayer:initView()
    self.__LAYER_NAME = 'login.LoginLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0006.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1704.0, height = 1098.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (2.88 * ccx.scaleY));
	self.__children['background'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'background';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0048.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 479.0, height = 283.0});
	localParams[2]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (129.02 * ccx.scaleY));
	self.__children['uires_login_sheet_other0048_2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'uires_login_sheet_other0048_2';
	self:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(20);
	localParams[3]:setString([[抵制不良游戏 拒绝盗版游戏 注意自我保护 谨防受骗上当 适度游戏益脑 沉迷游戏伤身 合理安排时间 享受健康生活]]);
	localParams[3]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[3]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 1000.0, height = 27.0});
	localParams[3]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 32.0);
	self.__children['Text_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Text_1';
	self:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[4]:setTitleFontSize(30);
	localParams[4]:setTitleColor({r = 255, g = 255, b = 255});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._onSetting));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 350.0, height = 84.0});
	localParams[4]:setPosition(185.0, 92.0);
	self.__children['setting'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'setting';
	self:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 103.0, height = 24.0});
	localParams[5]:setPosition(175.0, 42.0);
	self.__children['setting#text'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'setting#text';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Widget:create();
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setScaleX(0.90);
	localParams[6]:setScaleY(0.90);
	localParams[6]:setRotationSkewX(10.00);
	localParams[6]:setRotationSkewY(10.00);
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(20.0, -20.0);
	self.__children['setting#__SELECTED_SCALE'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'setting#__SELECTED_SCALE';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0306.png', 1);
	localParams[7]:setAnchorPoint(0.50, 1.00);
	localParams[7]:setContentSize({width = 1136.0, height = 13.0});
	localParams[7]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 0.00);
	self.__children['uires_public_sheet_other_other0306_1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'uires_public_sheet_other_other0306_1';
	self:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0306.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.00);
	localParams[8]:setFlippedY(true);
	localParams[8]:setContentSize({width = 1136.0, height = 13.0});
	localParams[8]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 0.0);
	self.__children['uires_public_sheet_other_other0306_1_0'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'uires_public_sheet_other_other0306_1_0';
	self:addChild(localParams[8]);

end
function LoginLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0006.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function LoginLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function LoginLayer:_onSetting(sender)
    if self._clickDelegate and self._clickDelegate.onSetting then
        return self._clickDelegate:onSetting(sender);
    end
    if self.onSetting then
        return self:onSetting(sender);
    end
end


return LoginLayer;