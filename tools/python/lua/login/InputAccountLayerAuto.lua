-- 
-- Author: generation auto
-- Brief：InputAccountLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local InputAccountLayer = class('InputAccountLayer', gamecore.ui.BaseWidget);

function InputAccountLayer:create(...) 
    local instance = InputAccountLayer.new(...);
    return instance;
end

function InputAccountLayer:ctor(...) 
    if InputAccountLayer.super and InputAccountLayer.super.ctor then
        InputAccountLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function InputAccountLayer:initView()
    self.__LAYER_NAME = 'login.InputAccountLayer';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_btn/btn0038.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onEnter));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 291.0, height = 111.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-204.48 * ccx.scaleY));
	self.__children['button1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'button1';
	self:addChild(localParams[1]);

	localParams[2] = Node:create();
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setScaleX(0.90);
	localParams[2]:setScaleY(0.90);
	localParams[2]:setContentSize({width = 0.0, height = 0.0});
	localParams[2]:setPosition(20.0, -20.0);
	self.__children['button1#__SELECTED_SCALE'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'button1#__SELECTED_SCALE';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0015.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 74.0, height = 31.0});
	localParams[3]:setPosition(WinSize.width/2 + (-219.96 * ccx.scaleX), WinSize.height/2 + (-35.52 * ccx.scaleY));
	self.__children['uires_login_sheet_fontImg0015_2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'uires_login_sheet_fontImg0015_2';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0016.png', 1);
	localParams[4]:setAnchorPoint(0.66, 0.22);
	localParams[4]:setContentSize({width = 73.0, height = 31.0});
	localParams[4]:setPosition(WinSize.width/2 + (-209.10 * ccx.scaleX), WinSize.height/2 + (-108.10 * ccx.scaleY));
	self.__children['uires_login_sheet_fontImg0016_3'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'uires_login_sheet_fontImg0016_3';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 49.000000, y = 16.000000,width = 52.000000, height = 18.000000);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 335.0, height = 50.0});
	localParams[5]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-36.99 * ccx.scaleY));
	self.__children['account'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'account';
	self:addChild(localParams[5]);

	localParams[6] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[6]:setFontSize(25);
	localParams[6]:setPlaceholderFontSize(25);
	localParams[6]:setPlaceHolder([[数字和字母（6-16位）]]);
	localParams[6]:setMaxLengthEnabled(true);
	localParams[6]:setMaxLength(16);
	localParams[6]:setPasswordEnabled(false);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:registerScriptEditBoxHandler(handler(self, self._onAccount));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 290.0, height = 40.0});
	localParams[6]:setPosition(22.5, 25.0);
	self.__children['account#input'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'account#input';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 49.000000, y = 16.000000,width = 52.000000, height = 18.000000);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 335.0, height = 50.0});
	localParams[7]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-99.97 * ccx.scaleY));
	self.__children['password'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'password';
	self:addChild(localParams[7]);

	localParams[8] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[8]:setFontSize(25);
	localParams[8]:setPlaceholderFontSize(25);
	localParams[8]:setPlaceHolder([[最小6位]]);
	localParams[8]:setMaxLengthEnabled(true);
	localParams[8]:setMaxLength(20);
	localParams[8]:setPasswordEnabled(true);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setColor({r = 0, g = 255, b = 255});
	localParams[8]:registerScriptEditBoxHandler(handler(self, self._onPassWord));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 290.0, height = 40.0});
	localParams[8]:setPosition(22.51, 25.0);
	self.__children['password#input'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'password#input';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_btn/btn0040.png', 1);
	localParams[9]:setTitleFontSize(30);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._onRegister));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 92.0, height = 92.0});
	localParams[9]:setPosition(WinSize.width/2 + (222.00 * ccx.scaleX), WinSize.height/2 + (-68.99 * ccx.scaleY));
	self.__children['button2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'button2';
	self:addChild(localParams[9]);

	localParams[10] = Node:create();
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setScaleX(0.90);
	localParams[10]:setScaleY(0.90);
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(20.0, -20.0);
	self.__children['button2#__SELECTED_SCALE'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'button2#__SELECTED_SCALE';
	localParams[9]:addChild(localParams[10]);

end
function InputAccountLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function InputAccountLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


--eventName:(began, ended, changed)
function InputAccountLayer:_onAccount(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAccount then
        return self.m_ClickDelegate:onAccount(eventName, editBox);
    end
    if self.onAccount then
        return self:onAccount(eventName, editBox);
    end
end


function InputAccountLayer:_onEnter(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onEnter then
        return self.m_ClickDelegate:onEnter(sender);
    end
    if self.onEnter then
        return self:onEnter(sender);
    end
end


function InputAccountLayer:_onRegister(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRegister then
        return self.m_ClickDelegate:onRegister(sender);
    end
    if self.onRegister then
        return self:onRegister(sender);
    end
end


--eventName:(began, ended, changed)
function InputAccountLayer:_onPassWord(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPassWord then
        return self.m_ClickDelegate:onPassWord(eventName, editBox);
    end
    if self.onPassWord then
        return self:onPassWord(eventName, editBox);
    end
end


return InputAccountLayer;