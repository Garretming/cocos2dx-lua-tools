-- 
-- Author: generation auto
-- Brief：RiskMainLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local RiskMainLayer = class('RiskMainLayer', gamecore.ui.BaseWidget);

function RiskMainLayer:create(...) 
    local instance = RiskMainLayer.new(...);
    return instance;
end

function RiskMainLayer:ctor(...) 
    if RiskMainLayer.super and RiskMainLayer.super.ctor then
        RiskMainLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function RiskMainLayer:initView()
    self.__LAYER_NAME = 'risk.RiskMainLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0012.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['background'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'background';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 340.0, height = WinSize.height - 110.00});
	localParams[2]:setPosition(WinSize.width/2 + (-297.00 * ccx.scaleX), WinSize.height/2 + (-40.00 * ccx.scaleY));
	self.__children['Image_2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_2';
	self:addChild(localParams[2]);

	localParams[3] = ScrollView:create();
	localParams[3]:setInnerContainerSize({width = 320.00, height = 510.00});
	localParams[3]:setDirection(1);
	localParams[3]:setBackGroundColorType(1);
	localParams[3]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[3]:setBackGroundColorOpacity(102);
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 320.0, height = WinSize.height - 130.00});
	localParams[3]:setPosition(10.0, 10.0);
	self.__children['Image_2#ScrollView_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_2#ScrollView_1';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0061.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 59.000000, y = 59.000000,width = 62.000000, height = 62.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 520.0, height = WinSize.height - 190.00});
	localParams[4]:setPosition(WinSize.width/2 + (207.00 * ccx.scaleX), WinSize.height/2 + (-80.00 * ccx.scaleY));
	self.__children['Image_4'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_4';
	self:addChild(localParams[4]);

	localParams[5] = ScrollView:create();
	localParams[5]:setInnerContainerSize({width = 500.00, height = 430.00});
	localParams[5]:setDirection(1);
	localParams[5]:setBackGroundColorType(1);
	localParams[5]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[5]:setBackGroundColorOpacity(102);
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 500.0, height = WinSize.height - 210.00});
	localParams[5]:setPosition(10.0, 8.6);
	self.__children['Image_4#ScrollView_2'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_4#ScrollView_2';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0235.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 238.0, height = 25.0});
	localParams[6]:setPosition(localParams[4]:getContentSize().width/2 + (58.58 * ccx.scaleX), localParams[4]:getContentSize().height - -35.00);
	self.__children['Image_4#uires_public_sheet_font_fontImg0235_8'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_4#uires_public_sheet_font_fontImg0235_8';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_icon/icon0093.png', 1);
	localParams[7]:loadTexturePressed('uires/public/sheet_icon/icon0116.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 15.000000, y = 11.000000, width = 40.000000, height = 38.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._onBox));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 70.0, height = 60.0});
	localParams[7]:setPosition(localParams[4]:getContentSize().width/2 + (215.37 * ccx.scaleX), localParams[4]:getContentSize().height - -35.00);
	self.__children['Image_4#Button_9'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_4#Button_9';
	localParams[4]:addChild(localParams[7]);

	localParams[8] = Layout:create();
	localParams[8]:setBackGroundColorOpacity(102);
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 1024.0, height = 640.0});
	localParams[8]:setPosition(0.0, 121.6);
	self.__children['__FULL_LAYER'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = '__FULL_LAYER';
	self:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[9]:setAnchorPoint(1.00, 1.00);
	localParams[9]:setContentSize({width = 800.0, height = 93.0});
	localParams[9]:setPosition(localParams[8]:getContentSize().width - 0.00, localParams[8]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#rightTopUnder_img'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = '__FULL_LAYER#rightTopUnder_img';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[10]:setAnchorPoint(0.00, 1.00);
	localParams[10]:setContentSize({width = 537.0, height = 164.0});
	localParams[10]:setPosition(0.0, localParams[8]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#leftTopUnder_img'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = '__FULL_LAYER#leftTopUnder_img';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_font/fontImg0239.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 122.0, height = 55.0});
	localParams[11]:setPosition(235.02, localParams[8]:getContentSize().height - 24.60);
	self.__children['__FULL_LAYER#title'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = '__FULL_LAYER#title';
	localParams[8]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._back_btn));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 116.0, height = 77.0});
	localParams[12]:setPosition(68.17, localParams[8]:getContentSize().height - 44.38);
	self.__children['__FULL_LAYER#back_btn'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = '__FULL_LAYER#back_btn';
	localParams[8]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[13]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._help_btn));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 58.0, height = 68.0});
	localParams[13]:setPosition(localParams[8]:getContentSize().width - 38.15, localParams[8]:getContentSize().height - 47.66);
	self.__children['__FULL_LAYER#help_btn'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = '__FULL_LAYER#help_btn';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = Node:create();
	localParams[14]:setAnchorPoint(0.00, 0.00);
	localParams[14]:setScaleX(0.90);
	localParams[14]:setScaleY(0.90);
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(104.14, 30.52);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 162.0, height = 51.0});
	localParams[15]:setPosition(localParams[8]:getContentSize().width - 376.00, localParams[8]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#rmb_money'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = '__FULL_LAYER#rmb_money';
	localParams[8]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[999999]]);
	localParams[16]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[16]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[16]:setAnchorPoint(1.00, 0.50);
	localParams[16]:setContentSize({width = 75.0, height = 22.0});
	localParams[16]:setPosition(141.77, localParams[15]:getContentSize().height - 18.98);
	self.__children['__FULL_LAYER#rmb_money#value'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = '__FULL_LAYER#rmb_money#value';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 44.0, height = 44.0});
	localParams[17]:setPosition(24.41, 25.4);
	self.__children['__FULL_LAYER#rmb_money#gem_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = '__FULL_LAYER#rmb_money#gem_sprite';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = Button:create();
	localParams[18]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[18]:setTitleFontSize(14);
	localParams[18]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 35.0, height = 37.0});
	localParams[18]:setPosition(160.89, 31.85);
	self.__children['__FULL_LAYER#rmb_money#gemAdd_btn'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = '__FULL_LAYER#rmb_money#gemAdd_btn';
	localParams[15]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:onClick(handler(self, self._onRMBMoney));
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 50.0, height = 30.0});
	localParams[19]:setPosition(156.91, 30.02);
	self.__children['__FULL_LAYER#rmb_money#Button'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = '__FULL_LAYER#rmb_money#Button';
	localParams[15]:addChild(localParams[19]);

	localParams[20] = Button:create();
	localParams[20]:setTitleFontSize(14);
	localParams[20]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[20]:setScale9Enabled(true);
	localParams[20]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 120.0, height = 30.0});
	localParams[20]:setPosition(64.86, 29.58);
	self.__children['__FULL_LAYER#rmb_money#btn_desc'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = '__FULL_LAYER#rmb_money#btn_desc';
	localParams[15]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 162.0, height = 51.0});
	localParams[21]:setPosition(localParams[8]:getContentSize().width - 186.00, localParams[8]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#game_money'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = '__FULL_LAYER#game_money';
	localParams[8]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 44.0, height = 44.0});
	localParams[22]:setPosition(24.79, 24.57);
	self.__children['__FULL_LAYER#game_money#coin_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = '__FULL_LAYER#game_money#coin_sprite';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 35.0, height = 37.0});
	localParams[23]:setPosition(162.16, 31.02);
	self.__children['__FULL_LAYER#game_money#coinAdd_btn'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = '__FULL_LAYER#game_money#coinAdd_btn';
	localParams[21]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[999999]]);
	localParams[24]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[24]:setAnchorPoint(1.00, 0.50);
	localParams[24]:setContentSize({width = 75.0, height = 22.0});
	localParams[24]:setPosition(143.96, 30.61);
	self.__children['__FULL_LAYER#game_money#value'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = '__FULL_LAYER#game_money#value';
	localParams[21]:addChild(localParams[24]);

	localParams[25] = Button:create();
	localParams[25]:setTitleFontSize(14);
	localParams[25]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[25]:setScale9Enabled(true);
	localParams[25]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 120.0, height = 30.0});
	localParams[25]:setPosition(62.86, 30.58);
	self.__children['__FULL_LAYER#game_money#btn_desc'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = '__FULL_LAYER#game_money#btn_desc';
	localParams[21]:addChild(localParams[25]);

	localParams[26] = Button:create();
	localParams[26]:setTitleFontSize(14);
	localParams[26]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[26]:setScale9Enabled(true);
	localParams[26]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:onClick(handler(self, self._onGameMoney));
	localParams[26]:setTouchEnabled(true);
	localParams[26]:setContentSize({width = 50.0, height = 30.0});
	localParams[26]:setPosition(154.91, 31.02);
	self.__children['__FULL_LAYER#game_money#Button'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = '__FULL_LAYER#game_money#Button';
	localParams[21]:addChild(localParams[26]);

end
function RiskMainLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0012.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function RiskMainLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RiskMainLayer:_onRMBMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRMBMoney then
        return self.m_ClickDelegate:onRMBMoney(sender);
    end
    if self.onRMBMoney then
        return self:onRMBMoney(sender);
    end
end


function RiskMainLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function RiskMainLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function RiskMainLayer:_onGameMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGameMoney then
        return self.m_ClickDelegate:onGameMoney(sender);
    end
    if self.onGameMoney then
        return self:onGameMoney(sender);
    end
end


function RiskMainLayer:_onBox(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onBox then
        return self.m_ClickDelegate:onBox(sender);
    end
    if self.onBox then
        return self:onBox(sender);
    end
end


return RiskMainLayer;