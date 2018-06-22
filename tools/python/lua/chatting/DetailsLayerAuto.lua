-- 
-- Author: generation auto
-- Brief：DetailsLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local DetailsLayer = class('DetailsLayer', gamecore.ui.BaseWidget);

function DetailsLayer:create(...) 
    local instance = DetailsLayer.new(...);
    return instance;
end

function DetailsLayer:ctor(...) 
    if DetailsLayer.super and DetailsLayer.super.ctor then
        DetailsLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function DetailsLayer:initView()
    self.__LAYER_NAME = 'chatting.DetailsLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 490.0, height = 350.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 430.0, height = 290.0});
	localParams[2]:setPosition(247.11, 176.68);
	self.__children['bg_img#bg_img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 410.0, height = 270.0});
	localParams[3]:setPosition(247.11, 177.73);
	self.__children['bg_img#bg_img2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 280.0, height = 30.0});
	localParams[4]:setPosition(254.2, 239.14);
	self.__children['bg_img#bg_img2#under_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#bg_img2#under_1';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(18);
	localParams[5]:setString([[昵称：]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[5]:setAnchorPoint(1.00, 0.50);
	localParams[5]:setTextColor({r = 155, g = 125, b = 100});
	localParams[5]:setContentSize({width = 52.0, height = 22.0});
	localParams[5]:setPosition(61.0, 15.52);
	self.__children['bg_img#bg_img2#under_1#cue_txt_0'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#bg_img2#under_1#cue_txt_0';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(18);
	localParams[6]:setString([[邀请您进行竞技...]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setTextColor({r = 255, g = 255, b = 0});
	localParams[6]:setContentSize({width = 156.0, height = 22.0});
	localParams[6]:setPosition(66.39, 15.59);
	self.__children['bg_img#bg_img2#under_1#name'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#bg_img2#under_1#name';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.75);
	localParams[7]:setScaleY(0.75);
	localParams[7]:setContentSize({width = 96.0, height = 96.0});
	localParams[7]:setPosition(54.41, 217.08);
	self.__children['bg_img#bg_img2#icon_1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#bg_img2#icon_1';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 111.0, height = 111.0});
	localParams[8]:setPosition(48.0, 48.0);
	self.__children['bg_img#bg_img2#icon_1#iconUnder'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#bg_img2#icon_1#iconUnder';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[LV:25]]);
	localParams[9]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setTextColor({r = 240, g = 202, b = 60});
	localParams[9]:setContentSize({width = 55.0, height = 24.0});
	localParams[9]:setPosition(20.01, 0.97);
	self.__children['bg_img#bg_img2#icon_1#level'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#bg_img2#icon_1#level';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 280.0, height = 30.0});
	localParams[10]:setPosition(254.2, 202.47);
	self.__children['bg_img#bg_img2#under_2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#bg_img2#under_2';
	localParams[3]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(18);
	localParams[11]:setString([[uid：]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[11]:setAnchorPoint(1.00, 0.50);
	localParams[11]:setTextColor({r = 155, g = 125, b = 100});
	localParams[11]:setContentSize({width = 43.0, height = 22.0});
	localParams[11]:setPosition(61.0, 15.52);
	self.__children['bg_img#bg_img2#under_2#cue_txt_0'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#bg_img2#under_2#cue_txt_0';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(18);
	localParams[12]:setString([[邀请您进行竞技...]]);
	localParams[12]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[12]:setAnchorPoint(0.00, 0.50);
	localParams[12]:setTextColor({r = 255, g = 140, b = 0});
	localParams[12]:setContentSize({width = 156.0, height = 22.0});
	localParams[12]:setPosition(66.39, 15.59);
	self.__children['bg_img#bg_img2#under_2#achieve'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#bg_img2#under_2#achieve';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._onFriendApply));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 183.0, height = 68.0});
	localParams[13]:setPosition(147.0, 168.0);
	self.__children['bg_img#friendApply'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#friendApply';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = Node:create();
	localParams[14]:setAnchorPoint(0.00, 0.00);
	localParams[14]:setScaleX(0.90);
	localParams[14]:setScaleY(0.90);
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(20.0, -20.0);
	self.__children['bg_img#friendApply#__SELECTED_SCALE'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#friendApply#__SELECTED_SCALE';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_font/fontImg0209.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 110.0, height = 30.0});
	localParams[15]:setPosition(91.5, 34.0);
	self.__children['bg_img#friendApply#font_sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#friendApply#font_sprite';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = Button:create();
	localParams[16]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[16]:setTitleFontSize(14);
	localParams[16]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:onClick(handler(self, self._onRefuseFight));
	localParams[16]:setTouchEnabled(true);
	localParams[16]:setContentSize({width = 183.0, height = 68.0});
	localParams[16]:setPosition(147.0, 91.45);
	self.__children['bg_img#refuse_btn'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#refuse_btn';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = Node:create();
	localParams[17]:setAnchorPoint(0.00, 0.00);
	localParams[17]:setScaleX(0.90);
	localParams[17]:setScaleY(0.90);
	localParams[17]:setContentSize({width = 0.0, height = 0.0});
	localParams[17]:setPosition(20.0, -20.0);
	self.__children['bg_img#refuse_btn#__SELECTED_SCALE'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#refuse_btn#__SELECTED_SCALE';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_font/fontImg0211.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 108.0, height = 30.0});
	localParams[18]:setPosition(91.5, 34.0);
	self.__children['bg_img#refuse_btn#font_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#refuse_btn#font_sprite';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:onClick(handler(self, self._onPersonalInfo));
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 183.0, height = 68.0});
	localParams[19]:setPosition(344.76, 168.0);
	self.__children['bg_img#personalInfo'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#personalInfo';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = Node:create();
	localParams[20]:setAnchorPoint(0.00, 0.00);
	localParams[20]:setScaleX(0.90);
	localParams[20]:setScaleY(0.90);
	localParams[20]:setContentSize({width = 0.0, height = 0.0});
	localParams[20]:setPosition(20.0, -20.0);
	self.__children['bg_img#personalInfo#__SELECTED_SCALE'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#personalInfo#__SELECTED_SCALE';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_font/fontImg0210.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 106.0, height = 29.0});
	localParams[21]:setPosition(91.5, 34.0);
	self.__children['bg_img#personalInfo#font_sprite'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#personalInfo#font_sprite';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = Button:create();
	localParams[22]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[22]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[22]:setTitleFontSize(14);
	localParams[22]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[22]:setScale9Enabled(true);
	localParams[22]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 50.000000});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:onClick(handler(self, self._onClose));
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setContentSize({width = 72.0, height = 72.0});
	localParams[22]:setPosition(470.87, 330.06);
	self.__children['bg_img#close_btn'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#close_btn';
	localParams[1]:addChild(localParams[22]);

	localParams[23] = Node:create();
	localParams[23]:setAnchorPoint(0.00, 0.00);
	localParams[23]:setScaleX(0.90);
	localParams[23]:setScaleY(0.90);
	localParams[23]:setContentSize({width = 0.0, height = 0.0});
	localParams[23]:setPosition(121.67, 20.06);
	self.__children['bg_img#close_btn#__SELECTED_SCALE'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg_img#close_btn#__SELECTED_SCALE';
	localParams[22]:addChild(localParams[23]);

end
function DetailsLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function DetailsLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function DetailsLayer:_onFriendApply(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onFriendApply then
        return self.m_ClickDelegate:onFriendApply(sender);
    end
    if self.onFriendApply then
        return self:onFriendApply(sender);
    end
end


function DetailsLayer:_onRefuseFight(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRefuseFight then
        return self.m_ClickDelegate:onRefuseFight(sender);
    end
    if self.onRefuseFight then
        return self:onRefuseFight(sender);
    end
end


function DetailsLayer:_onPersonalInfo(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPersonalInfo then
        return self.m_ClickDelegate:onPersonalInfo(sender);
    end
    if self.onPersonalInfo then
        return self:onPersonalInfo(sender);
    end
end


function DetailsLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return DetailsLayer;