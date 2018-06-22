-- 
-- Author: generation auto
-- Brief：FriendsRequestLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local FriendsRequestLayer = class('FriendsRequestLayer', gamecore.ui.BaseWidget);

function FriendsRequestLayer:create(...) 
    local instance = FriendsRequestLayer.new(...);
    return instance;
end

function FriendsRequestLayer:ctor(...) 
    if FriendsRequestLayer.super and FriendsRequestLayer.super.ctor then
        FriendsRequestLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function FriendsRequestLayer:initView()
    self.__LAYER_NAME = 'friends.FriendsRequestLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 440.0, height = 285.0});
	localParams[1]:setPosition(WinSize.width/2 + (-13.62 * ccx.scaleX), WinSize.height/2 + (10.11 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 390.0, height = 148.0});
	localParams[2]:setPosition(220.0, 185.25);
	self.__children['bg#bg1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#bg1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 268.0, height = 55.0});
	localParams[3]:setPosition(220.0, 262.2);
	self.__children['bg#titleUnder'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#titleUnder';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(30);
	localParams[4]:setString([[好友申请]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 255, g = 240, b = 155});
	localParams[4]:setContentSize({width = 125.0, height = 34.0});
	localParams[4]:setPosition(134.0, 33.55);
	self.__children['bg#titleUnder#titleFont_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#titleUnder#titleFont_txt';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[5]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._onRequest));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 183.0, height = 68.0});
	localParams[5]:setPosition(321.2, 59.85);
	self.__children['bg#request_btn'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#request_btn';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Widget:create();
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setScaleX(0.90);
	localParams[6]:setScaleY(0.90);
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(72.93, -31.77);
	self.__children['bg#request_btn#__SELECTED_SCALE'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#request_btn#__SELECTED_SCALE';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(30);
	localParams[7]:setString([[申 请]]);
	localParams[7]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 230, g = 230, b = 250});
	localParams[7]:setContentSize({width = 79.0, height = 32.0});
	localParams[7]:setPosition(91.5, 34.0);
	self.__children['bg#request_btn#font_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#request_btn#font_txt';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:onClick(handler(self, self._onCancel));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 183.0, height = 68.0});
	localParams[8]:setPosition(118.8, 59.85);
	self.__children['bg#cancel_btn'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#cancel_btn';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Widget:create();
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setScaleX(0.90);
	localParams[9]:setScaleY(0.90);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(62.93, -21.77);
	self.__children['bg#cancel_btn#__SELECTED_SCALE'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#cancel_btn#__SELECTED_SCALE';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(30);
	localParams[10]:setString([[取 消]]);
	localParams[10]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setTextColor({r = 230, g = 230, b = 250});
	localParams[10]:setContentSize({width = 80.0, height = 34.0});
	localParams[10]:setPosition(91.5, 34.0);
	self.__children['bg#cancel_btn#font_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg#cancel_btn#font_txt';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[申请后需等待对方通过]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 255, g = 140, b = 0});
	localParams[11]:setContentSize({width = 205.0, height = 24.0});
	localParams[11]:setPosition(220.0, 213.75);
	self.__children['bg#cue_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg#cue_txt';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[12]:ignoreContentAdaptWithSize(false);
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 49.000000, y = 0.000000,width = 52.000000, height = 50.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 336.0, height = 50.0});
	localParams[12]:setPosition(220.0, 156.75);
	self.__children['bg#bg4'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg#bg4';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[13]:setFontSize(18);
	localParams[13]:setPlaceholderFontSize(18);
	localParams[13]:setPlaceHolder([[点击输入文字]]);
	localParams[13]:setMaxLength(12);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:registerScriptEditBoxHandler(handler(self, self._onInputApply));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 300.0, height = 40.0});
	localParams[13]:setPosition(168.0, 25.0);
	self.__children['bg#bg4#text_name'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg#bg4#text_name';
	localParams[12]:addChild(localParams[13]);

end
function FriendsRequestLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function FriendsRequestLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function FriendsRequestLayer:_onRequest(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRequest then
        return self.m_ClickDelegate:onRequest(sender);
    end
    if self.onRequest then
        return self:onRequest(sender);
    end
end


function FriendsRequestLayer:_onCancel(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCancel then
        return self.m_ClickDelegate:onCancel(sender);
    end
    if self.onCancel then
        return self:onCancel(sender);
    end
end


--eventName:(began, ended, changed)
function FriendsRequestLayer:_onInputApply(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onInputApply then
        return self.m_ClickDelegate:onInputApply(eventName, editBox);
    end
    if self.onInputApply then
        return self:onInputApply(eventName, editBox);
    end
end


return FriendsRequestLayer;