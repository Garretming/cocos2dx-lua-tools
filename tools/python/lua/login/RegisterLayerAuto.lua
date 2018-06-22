-- 
-- Author: generation auto
-- Brief：RegisterLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local RegisterLayer = class('RegisterLayer', gamecore.ui.BaseWidget);

function RegisterLayer:create(...) 
    local instance = RegisterLayer.new(...);
    return instance;
end

function RegisterLayer:ctor(...) 
    if RegisterLayer.super and RegisterLayer.super.ctor then
        RegisterLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function RegisterLayer:initView()
    self.__LAYER_NAME = 'login.RegisterLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 49.000000, y = 22.000000,width = 52.000000, height = 6.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 335.0, height = 50.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (25.02 * ccx.scaleY));
	self.__children['account'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'account';
	self:addChild(localParams[1]);

	localParams[2] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[2]:setFontSize(25);
	localParams[2]:setPlaceholderFontSize(25);
	localParams[2]:setPlaceHolder([[数字和字母（6-16位）]]);
	localParams[2]:setMaxLengthEnabled(true);
	localParams[2]:setMaxLength(20);
	localParams[2]:setPasswordEnabled(false);
	localParams[2]:setAnchorPoint(0.00, 0.50);
	localParams[2]:registerScriptEditBoxHandler(handler(self, self._onAccount));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 290.0, height = 40.0});
	localParams[2]:setPosition(22.51, 25.0);
	self.__children['account#input'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'account#input';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create(, 0);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 46.0, height = 46.0});
	localParams[3]:setPosition(392.0, 25.0);
	self.__children['account#sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'account#sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 49.000000, y = 22.000000,width = 52.000000, height = 6.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 335.0, height = 50.0});
	localParams[4]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-35.01 * ccx.scaleY));
	self.__children['password'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'password';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create(, 0);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 46.0, height = 46.0});
	localParams[5]:setPosition(392.0, 25.0);
	self.__children['password#sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'password#sprite';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[6]:setFontSize(25);
	localParams[6]:setPlaceholderFontSize(25);
	localParams[6]:setPlaceHolder([[最小6位]]);
	localParams[6]:setMaxLengthEnabled(true);
	localParams[6]:setMaxLength(20);
	localParams[6]:setPasswordEnabled(true);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:registerScriptEditBoxHandler(handler(self, self._onPassWord));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 290.0, height = 40.0});
	localParams[6]:setPosition(22.51, 25.0);
	self.__children['password#input'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'password#input';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 49.000000, y = 22.000000,width = 52.000000, height = 6.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 335.0, height = 50.0});
	localParams[7]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-94.98 * ccx.scaleY));
	self.__children['password1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'password1';
	self:addChild(localParams[7]);

	localParams[8] = ImageView:create(, 0);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 46.0, height = 46.0});
	localParams[8]:setPosition(392.0, 25.0);
	self.__children['password1#sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'password1#sprite';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[9]:setFontSize(25);
	localParams[9]:setPlaceholderFontSize(25);
	localParams[9]:setPlaceHolder([[最小6位]]);
	localParams[9]:setMaxLengthEnabled(true);
	localParams[9]:setMaxLength(20);
	localParams[9]:setPasswordEnabled(true);
	localParams[9]:setAnchorPoint(0.00, 0.50);
	localParams[9]:registerScriptEditBoxHandler(handler(self, self._onPassWord1));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 290.0, height = 40.0});
	localParams[9]:setPosition(22.51, 25.0);
	self.__children['password1#input'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'password1#input';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:loadTextureNormal('uires/public/sheet_btn/btn0039.png', 1);
	localParams[10]:setTitleFontSize(36);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:onClick(handler(self, self._onSureRegisiter));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 291.0, height = 86.0});
	localParams[10]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-201.98 * ccx.scaleY));
	self.__children['Button_3'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Button_3';
	self:addChild(localParams[10]);

	localParams[11] = Node:create();
	localParams[11]:setAnchorPoint(0.00, 0.00);
	localParams[11]:setScaleX(0.90);
	localParams[11]:setScaleY(0.90);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(20.0, -20.0);
	self.__children['Button_3#__SELECTED_SCALE'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Button_3#__SELECTED_SCALE';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_font/fontImg0015.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 74.0, height = 31.0});
	localParams[12]:setPosition(WinSize.width/2 + (-210.02 * ccx.scaleX), WinSize.height/2 + (25.47 * ccx.scaleY));
	self.__children['uires_login_sheet_fontImg0015_2'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'uires_login_sheet_fontImg0015_2';
	self:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_font/fontImg0016.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 73.0, height = 31.0});
	localParams[13]:setPosition(WinSize.width/2 + (-211.56 * ccx.scaleX), WinSize.height/2 + (-34.50 * ccx.scaleY));
	self.__children['uires_login_sheet_fontImg0016_3'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'uires_login_sheet_fontImg0016_3';
	self:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_font/fontImg0020.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 117.0, height = 31.0});
	localParams[14]:setPosition(WinSize.width/2 + (-231.53 * ccx.scaleX), WinSize.height/2 + (-94.53 * ccx.scaleY));
	self.__children['uires_login_sheet_fontImg0020_1'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'uires_login_sheet_fontImg0020_1';
	self:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_icon/icon0051.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:onClick(handler(self, self._onAccountCenter));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 78.0, height = 98.0});
	localParams[15]:setPosition(WinSize.width - 64.00, WinSize.height - 74.00);
	self.__children['button1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'button1';
	self:addChild(localParams[15]);

	localParams[16] = Node:create();
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setScaleX(0.90);
	localParams[16]:setScaleY(0.90);
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(20.0, -20.0);
	self.__children['button1#__SELECTED_SCALE'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'button1#__SELECTED_SCALE';
	localParams[15]:addChild(localParams[16]);

end
function RegisterLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function RegisterLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


--eventName:(began, ended, changed)
function RegisterLayer:_onAccount(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAccount then
        return self.m_ClickDelegate:onAccount(eventName, editBox);
    end
    if self.onAccount then
        return self:onAccount(eventName, editBox);
    end
end


function RegisterLayer:_onSureRegisiter(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSureRegisiter then
        return self.m_ClickDelegate:onSureRegisiter(sender);
    end
    if self.onSureRegisiter then
        return self:onSureRegisiter(sender);
    end
end


function RegisterLayer:_onAccountCenter(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAccountCenter then
        return self.m_ClickDelegate:onAccountCenter(sender);
    end
    if self.onAccountCenter then
        return self:onAccountCenter(sender);
    end
end


--eventName:(began, ended, changed)
function RegisterLayer:_onPassWord1(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPassWord1 then
        return self.m_ClickDelegate:onPassWord1(eventName, editBox);
    end
    if self.onPassWord1 then
        return self:onPassWord1(eventName, editBox);
    end
end


--eventName:(began, ended, changed)
function RegisterLayer:_onPassWord(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPassWord then
        return self.m_ClickDelegate:onPassWord(eventName, editBox);
    end
    if self.onPassWord then
        return self:onPassWord(eventName, editBox);
    end
end


return RegisterLayer;