-- 
-- Author: generation auto
-- Brief：FightRequestLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local FightRequestLayer = class('FightRequestLayer', gamecore.ui.BaseWidget);

function FightRequestLayer:create(...) 
    local instance = FightRequestLayer.new(...);
    return instance;
end

function FightRequestLayer:ctor(...) 
    if FightRequestLayer.super and FightRequestLayer.super.ctor then
        FightRequestLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function FightRequestLayer:initView()
    self.__LAYER_NAME = 'friends.FightRequestLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 530.0, height = 390.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 460.0, height = 240.0});
	localParams[2]:setPosition(265.0, 237.9);
	self.__children['bg_img#bg_img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 440.0, height = 215.0});
	localParams[3]:setPosition(265.0, 237.9);
	self.__children['bg_img#bg_img2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0189.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 118.0, height = 118.0});
	localParams[4]:setPosition(220.0, 101.05);
	self.__children['bg_img#bg_img2#Sprite_21'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#bg_img2#Sprite_21';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0058.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 71.0, height = 65.0});
	localParams[5]:setPosition(59.0, 59.0);
	self.__children['bg_img#bg_img2#Sprite_21#Sprite_22'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#bg_img2#Sprite_21#Sprite_22';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[邀请您进行竞技...]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 255, g = 140, b = 0});
	localParams[6]:setContentSize({width = 173.0, height = 24.0});
	localParams[6]:setPosition(220.0, 187.05);
	self.__children['bg_img#bg_img2#cue_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#bg_img2#cue_txt';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.75);
	localParams[7]:setScaleY(0.75);
	localParams[7]:setContentSize({width = 96.0, height = 96.0});
	localParams[7]:setPosition(96.8, 107.5);
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
	localParams[9]:setFontSize(24);
	localParams[9]:setString([[]]);
	localParams[9]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setTextColor({r = 255, g = 240, b = 155});
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(48.0, -33.6);
	self.__children['bg_img#bg_img2#icon_1#name'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#bg_img2#icon_1#name';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(26);
	localParams[10]:setString([[]]);
	localParams[10]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setTextColor({r = 255, g = 140, b = 0});
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(-7.68, 3.84);
	self.__children['bg_img#bg_img2#icon_1#level'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#bg_img2#icon_1#level';
	localParams[7]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setScaleX(0.75);
	localParams[11]:setScaleY(0.75);
	localParams[11]:setContentSize({width = 96.0, height = 96.0});
	localParams[11]:setPosition(343.2, 107.5);
	self.__children['bg_img#bg_img2#icon_2'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#bg_img2#icon_2';
	localParams[3]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 111.0, height = 111.0});
	localParams[12]:setPosition(48.0, 49.44);
	self.__children['bg_img#bg_img2#icon_2#iconUnder'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#bg_img2#icon_2#iconUnder';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(24);
	localParams[13]:setString([[]]);
	localParams[13]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[13]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setTextColor({r = 255, g = 240, b = 155});
	localParams[13]:setContentSize({width = 0.0, height = 0.0});
	localParams[13]:setPosition(48.0, -33.6);
	self.__children['bg_img#bg_img2#icon_2#name'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#bg_img2#icon_2#name';
	localParams[11]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(26);
	localParams[14]:setString([[]]);
	localParams[14]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setTextColor({r = 255, g = 140, b = 0});
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(-7.68, 3.84);
	self.__children['bg_img#bg_img2#icon_2#level'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#bg_img2#icon_2#level';
	localParams[11]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 268.0, height = 55.0});
	localParams[15]:setPosition(265.0, 364.65);
	self.__children['bg_img#titleUnder_sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#titleUnder_sprite';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(24);
	localParams[16]:setString([[竞技邀请]]);
	localParams[16]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[16]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 255, g = 240, b = 155});
	localParams[16]:setContentSize({width = 101.0, height = 28.0});
	localParams[16]:setPosition(134.0, 33.48);
	self.__children['bg_img#titleUnder_sprite#titleFont_txt'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#titleUnder_sprite#titleFont_txt';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Button:create();
	localParams[17]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[17]:setTitleFontSize(14);
	localParams[17]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:onClick(handler(self, self._onAcceptFight));
	localParams[17]:setTouchEnabled(true);
	localParams[17]:setContentSize({width = 183.0, height = 68.0});
	localParams[17]:setPosition(371.0, 70.2);
	self.__children['bg_img#accept_btn'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#accept_btn';
	localParams[1]:addChild(localParams[17]);

	localParams[18] = Node:create();
	localParams[18]:setAnchorPoint(0.00, 0.00);
	localParams[18]:setScaleX(0.90);
	localParams[18]:setScaleY(0.90);
	localParams[18]:setContentSize({width = 0.0, height = 0.0});
	localParams[18]:setPosition(20.0, -20.0);
	self.__children['bg_img#accept_btn#__SELECTED_SCALE'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#accept_btn#__SELECTED_SCALE';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_font/fontImg0219.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 69.0, height = 29.0});
	localParams[19]:setPosition(91.5, 34.0);
	self.__children['bg_img#accept_btn#font_sprite'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#accept_btn#font_sprite';
	localParams[17]:addChild(localParams[19]);

	localParams[20] = Button:create();
	localParams[20]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[20]:setTitleFontSize(14);
	localParams[20]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:onClick(handler(self, self._onRefuseFight));
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 183.0, height = 68.0});
	localParams[20]:setPosition(159.0, 70.2);
	self.__children['bg_img#refuse_btn'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#refuse_btn';
	localParams[1]:addChild(localParams[20]);

	localParams[21] = Node:create();
	localParams[21]:setAnchorPoint(0.00, 0.00);
	localParams[21]:setScaleX(0.90);
	localParams[21]:setScaleY(0.90);
	localParams[21]:setContentSize({width = 0.0, height = 0.0});
	localParams[21]:setPosition(20.0, -20.0);
	self.__children['bg_img#refuse_btn#__SELECTED_SCALE'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#refuse_btn#__SELECTED_SCALE';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_font/fontImg0218.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 68.0, height = 29.0});
	localParams[22]:setPosition(91.5, 34.0);
	self.__children['bg_img#refuse_btn#font_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#refuse_btn#font_sprite';
	localParams[20]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setVisible(false);
	localParams[23]:onClick(handler(self, self._onCancel));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 183.0, height = 68.0});
	localParams[23]:setPosition(265.0, 70.2);
	self.__children['bg_img#cancel_btn'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg_img#cancel_btn';
	localParams[1]:addChild(localParams[23]);

	localParams[24] = Node:create();
	localParams[24]:setAnchorPoint(0.00, 0.00);
	localParams[24]:setScaleX(0.90);
	localParams[24]:setScaleY(0.90);
	localParams[24]:setContentSize({width = 0.0, height = 0.0});
	localParams[24]:setPosition(20.0, -20.0);
	self.__children['bg_img#cancel_btn#__SELECTED_SCALE'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg_img#cancel_btn#__SELECTED_SCALE';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_font/fontImg0033.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 70.0, height = 30.0});
	localParams[25]:setPosition(91.5, 34.0);
	self.__children['bg_img#cancel_btn#font_sprite'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg_img#cancel_btn#font_sprite';
	localParams[23]:addChild(localParams[25]);

end
function FightRequestLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function FightRequestLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function FightRequestLayer:_onRefuseFight(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRefuseFight then
        return self.m_ClickDelegate:onRefuseFight(sender);
    end
    if self.onRefuseFight then
        return self:onRefuseFight(sender);
    end
end


function FightRequestLayer:_onCancel(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCancel then
        return self.m_ClickDelegate:onCancel(sender);
    end
    if self.onCancel then
        return self:onCancel(sender);
    end
end


function FightRequestLayer:_onAcceptFight(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAcceptFight then
        return self.m_ClickDelegate:onAcceptFight(sender);
    end
    if self.onAcceptFight then
        return self:onAcceptFight(sender);
    end
end


return FightRequestLayer;