-- 
-- Author: generation auto
-- Brief：DivinationLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local DivinationLayer = class('DivinationLayer', gamecore.ui.BaseWidget);

function DivinationLayer:create(...) 
    local instance = DivinationLayer.new(...);
    return instance;
end

function DivinationLayer:ctor(...) 
    if DivinationLayer.super and DivinationLayer.super.ctor then
        DivinationLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function DivinationLayer:initView()
    self.__LAYER_NAME = 'divination.DivinationLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0023.png', 0);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 374.000000, y = 253.000000,width = 388.000000, height = 262.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-1.43 * ccx.scaleX), WinSize.height/2 + (1.22 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = Layout:create();
	localParams[2]:setBackGroundColorOpacity(102);
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 1024.0, height = 640.0});
	localParams[2]:setPosition(1.15, 160.0);
	self.__children['__FULL_LAYER'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = '__FULL_LAYER';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 800.0, height = 93.0});
	localParams[3]:setPosition(localParams[2]:getContentSize().width - 400.00, localParams[2]:getContentSize().height - 45.50);
	self.__children['__FULL_LAYER#bg2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = '__FULL_LAYER#bg2';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 537.0, height = 164.0});
	localParams[4]:setPosition(268.5, localParams[2]:getContentSize().height - 82.00);
	self.__children['__FULL_LAYER#bg1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = '__FULL_LAYER#bg1';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0186.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 120.0, height = 57.0});
	localParams[5]:setPosition(237.0, localParams[2]:getContentSize().height - 30.00);
	self.__children['__FULL_LAYER#bg4'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = '__FULL_LAYER#bg4';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[6]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._back_btn));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 116.0, height = 77.0});
	localParams[6]:setPosition(68.0, localParams[2]:getContentSize().height - 44.50);
	self.__children['__FULL_LAYER#back_btn'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = '__FULL_LAYER#back_btn';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[7]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._help_btn));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 58.0, height = 68.0});
	localParams[7]:setPosition(localParams[2]:getContentSize().width - 37.02, localParams[2]:getContentSize().height - 49.83);
	self.__children['__FULL_LAYER#help_btn'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = '__FULL_LAYER#help_btn';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = Node:create();
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(52.93, -11.77);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 162.0, height = 51.0});
	localParams[9]:setPosition(localParams[2]:getContentSize().width - 176.00, localParams[2]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#game_money'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = '__FULL_LAYER#game_money';
	localParams[2]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 44.0, height = 44.0});
	localParams[10]:setPosition(24.79, 24.57);
	self.__children['__FULL_LAYER#game_money#coin_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = '__FULL_LAYER#game_money#coin_sprite';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 35.0, height = 37.0});
	localParams[11]:setPosition(162.16, 31.02);
	self.__children['__FULL_LAYER#game_money#coinAdd_btn'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = '__FULL_LAYER#game_money#coinAdd_btn';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[999999]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[12]:setAnchorPoint(1.00, 0.50);
	localParams[12]:setContentSize({width = 75.0, height = 22.0});
	localParams[12]:setPosition(143.96, 30.61);
	self.__children['__FULL_LAYER#game_money#value'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = '__FULL_LAYER#game_money#value';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 120.0, height = 30.0});
	localParams[13]:setPosition(62.86, 30.58);
	self.__children['__FULL_LAYER#game_money#btn_desc'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = '__FULL_LAYER#game_money#btn_desc';
	localParams[9]:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:onClick(handler(self, self._onGameMoney));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 50.0, height = 30.0});
	localParams[14]:setPosition(154.91, 31.02);
	self.__children['__FULL_LAYER#game_money#Button'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = '__FULL_LAYER#game_money#Button';
	localParams[9]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 162.0, height = 51.0});
	localParams[15]:setPosition(localParams[2]:getContentSize().width - 364.00, localParams[2]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#rmb_money'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = '__FULL_LAYER#rmb_money';
	localParams[2]:addChild(localParams[15]);

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
	localParams[21]:setPosition(localParams[2]:getContentSize().width - 552.93, localParams[2]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#soul_money'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = '__FULL_LAYER#soul_money';
	localParams[2]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(20);
	localParams[22]:setString([[999999]]);
	localParams[22]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[22]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[22]:setAnchorPoint(1.00, 0.50);
	localParams[22]:setContentSize({width = 75.0, height = 22.0});
	localParams[22]:setPosition(141.77, localParams[21]:getContentSize().height - 18.98);
	self.__children['__FULL_LAYER#soul_money#value'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = '__FULL_LAYER#soul_money#value';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_icon/icon0103.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 44.0, height = 44.0});
	localParams[23]:setPosition(24.41, 25.4);
	self.__children['__FULL_LAYER#soul_money#gem_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = '__FULL_LAYER#soul_money#gem_sprite';
	localParams[21]:addChild(localParams[23]);

	localParams[24] = Button:create();
	localParams[24]:setTitleFontSize(14);
	localParams[24]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[24]:setScale9Enabled(true);
	localParams[24]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setTouchEnabled(true);
	localParams[24]:setContentSize({width = 120.0, height = 30.0});
	localParams[24]:setPosition(64.86, 29.58);
	self.__children['__FULL_LAYER#soul_money#btn_desc'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = '__FULL_LAYER#soul_money#btn_desc';
	localParams[21]:addChild(localParams[24]);

	localParams[25] = Button:create();
	localParams[25]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[25]:setTitleFontSize(14);
	localParams[25]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 35.0, height = 37.0});
	localParams[25]:setPosition(160.89, 32.5);
	self.__children['__FULL_LAYER#soul_money#gemAdd_btn_0'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = '__FULL_LAYER#soul_money#gemAdd_btn_0';
	localParams[21]:addChild(localParams[25]);

	localParams[26] = Button:create();
	localParams[26]:setTitleFontSize(14);
	localParams[26]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[26]:setScale9Enabled(true);
	localParams[26]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:onClick(handler(self, self._onSoulMoney));
	localParams[26]:setTouchEnabled(true);
	localParams[26]:setContentSize({width = 50.0, height = 30.0});
	localParams[26]:setPosition(159.0, 32.02);
	self.__children['__FULL_LAYER#soul_money#Button_0'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = '__FULL_LAYER#soul_money#Button_0';
	localParams[21]:addChild(localParams[26]);

	localParams[27] = Button:create();
	localParams[27]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[27]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[27]:setTitleFontSize(14);
	localParams[27]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[27]:setScale9Enabled(true);
	localParams[27]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:onClick(handler(self, self._soulBtn));
	localParams[27]:setTouchEnabled(true);
	localParams[27]:setContentSize({width = 183.0, height = 68.0});
	localParams[27]:setPosition(WinSize.width/2 + (61.95 * ccx.scaleX), 79.0);
	self.__children['soul_btn'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'soul_btn';
	self:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(0.80);
	localParams[28]:setContentSize({width = 84.0, height = 28.0});
	localParams[28]:setPosition(58.0, 34.0);
	self.__children['soul_btn#uires_public_sheet_bgframe_bgFrame0062_1'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'soul_btn#uires_public_sheet_bgframe_bgFrame0062_1';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[9]]);
	localParams[29]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[29]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 15.0, height = 22.0});
	localParams[29]:setPosition(70.5, 34.0);
	self.__children['soul_btn#soul'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'soul_btn#soul';
	localParams[27]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_icon/icon0103.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(0.80);
	localParams[30]:setScaleY(0.80);
	localParams[30]:setContentSize({width = 44.0, height = 44.0});
	localParams[30]:setPosition(36.0, 34.0);
	self.__children['soul_btn#soul_img3'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'soul_btn#soul_img3';
	localParams[27]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_font/fontImg0187.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 66.0, height = 30.0});
	localParams[31]:setPosition(130.54, 34.0);
	self.__children['soul_btn#soul_img4'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'soul_btn#soul_img4';
	localParams[27]:addChild(localParams[31]);

	localParams[32] = Node:create();
	localParams[32]:setAnchorPoint(0.00, 0.00);
	localParams[32]:setScaleX(0.90);
	localParams[32]:setScaleY(0.90);
	localParams[32]:setContentSize({width = 0.0, height = 0.0});
	localParams[32]:setPosition(62.93, 0.23);
	self.__children['soul_btn#__SELECTED_SCALE'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'soul_btn#__SELECTED_SCALE';
	localParams[27]:addChild(localParams[32]);

	localParams[33] = Button:create();
	localParams[33]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[33]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[33]:setTitleFontSize(14);
	localParams[33]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:onClick(handler(self, self._onTabMenu));
	localParams[33]:setTouchEnabled(true);
	localParams[33]:setContentSize({width = 116.0, height = 69.0});
	localParams[33]:setPosition(58.0, WinSize.height - 184.50);
	self.__children['button1'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'button1';
	self:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setScaleX(0.50);
	localParams[34]:setScaleY(0.50);
	localParams[34]:setContentSize({width = 55.0, height = 68.0});
	localParams[34]:setPosition(100.0, 34.5);
	self.__children['button1#lock'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'button1#lock';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(20);
	localParams[35]:setString([[]]);
	localParams[35]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[35]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setTextColor({r = 255, g = 140, b = 0});
	localParams[35]:setContentSize({width = 103.0, height = 24.0});
	localParams[35]:setPosition(58.0, 34.5);
	self.__children['button1#text'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'button1#text';
	localParams[33]:addChild(localParams[35]);

	localParams[36] = Button:create();
	localParams[36]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[36]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[36]:setTitleFontSize(14);
	localParams[36]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:onClick(handler(self, self._onTabMenu));
	localParams[36]:setTouchEnabled(true);
	localParams[36]:setContentSize({width = 116.0, height = 69.0});
	localParams[36]:setPosition(58.0, WinSize.height - 264.50);
	self.__children['button2'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'button2';
	self:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(20);
	localParams[37]:setString([[]]);
	localParams[37]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[37]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setTextColor({r = 255, g = 140, b = 0});
	localParams[37]:setContentSize({width = 103.0, height = 24.0});
	localParams[37]:setPosition(58.0, 34.5);
	self.__children['button2#text'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'button2#text';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setScaleX(0.50);
	localParams[38]:setScaleY(0.50);
	localParams[38]:setContentSize({width = 55.0, height = 68.0});
	localParams[38]:setPosition(100.0, 34.5);
	self.__children['button2#lock'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'button2#lock';
	localParams[36]:addChild(localParams[38]);

	localParams[39] = Button:create();
	localParams[39]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[39]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[39]:setTitleFontSize(14);
	localParams[39]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:onClick(handler(self, self._onTabMenu));
	localParams[39]:setTouchEnabled(true);
	localParams[39]:setContentSize({width = 116.0, height = 69.0});
	localParams[39]:setPosition(58.0, WinSize.height - 344.50);
	self.__children['button3'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'button3';
	self:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setScaleX(0.50);
	localParams[40]:setScaleY(0.50);
	localParams[40]:setContentSize({width = 55.0, height = 68.0});
	localParams[40]:setPosition(100.0, 34.5);
	self.__children['button3#lock'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'button3#lock';
	localParams[39]:addChild(localParams[40]);

	localParams[41] = Text:create();
	localParams[41]:setFontSize(20);
	localParams[41]:setString([[]]);
	localParams[41]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[41]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setTextColor({r = 255, g = 140, b = 0});
	localParams[41]:setContentSize({width = 103.0, height = 24.0});
	localParams[41]:setPosition(58.0, 34.5);
	self.__children['button3#text'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'button3#text';
	localParams[39]:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[42]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:onClick(handler(self, self._onTabMenu));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 116.0, height = 69.0});
	localParams[42]:setPosition(58.0, WinSize.height - 424.50);
	self.__children['button4'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'button4';
	self:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setScaleX(0.50);
	localParams[43]:setScaleY(0.50);
	localParams[43]:setContentSize({width = 55.0, height = 68.0});
	localParams[43]:setPosition(100.0, 34.5);
	self.__children['button4#lock'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'button4#lock';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = Text:create();
	localParams[44]:setFontSize(20);
	localParams[44]:setString([[]]);
	localParams[44]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[44]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setTextColor({r = 255, g = 140, b = 0});
	localParams[44]:setContentSize({width = 103.0, height = 24.0});
	localParams[44]:setPosition(58.0, 34.5);
	self.__children['button4#text'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'button4#text';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = Button:create();
	localParams[45]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[45]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[45]:setTitleFontSize(14);
	localParams[45]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:onClick(handler(self, self._onTabMenu));
	localParams[45]:setTouchEnabled(true);
	localParams[45]:setContentSize({width = 116.0, height = 69.0});
	localParams[45]:setPosition(58.0, WinSize.height - 504.50);
	self.__children['button5'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'button5';
	self:addChild(localParams[45]);

	localParams[46] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setScaleX(0.50);
	localParams[46]:setScaleY(0.50);
	localParams[46]:setContentSize({width = 55.0, height = 68.0});
	localParams[46]:setPosition(100.0, 34.5);
	self.__children['button5#lock'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'button5#lock';
	localParams[45]:addChild(localParams[46]);

	localParams[47] = Text:create();
	localParams[47]:setFontSize(20);
	localParams[47]:setString([[]]);
	localParams[47]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[47]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setTextColor({r = 255, g = 140, b = 0});
	localParams[47]:setContentSize({width = 103.0, height = 24.0});
	localParams[47]:setPosition(58.0, 34.5);
	self.__children['button5#text'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'button5#text';
	localParams[45]:addChild(localParams[47]);

	localParams[48] = Button:create();
	localParams[48]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[48]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[48]:setTitleFontSize(18);
	localParams[48]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:onClick(handler(self, self._onTabMenu));
	localParams[48]:setTouchEnabled(true);
	localParams[48]:setContentSize({width = 116.0, height = 69.0});
	localParams[48]:setPosition(58.0, WinSize.height - 584.50);
	self.__children['button6'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'button6';
	self:addChild(localParams[48]);

	localParams[49] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setScaleX(0.50);
	localParams[49]:setScaleY(0.50);
	localParams[49]:setContentSize({width = 55.0, height = 68.0});
	localParams[49]:setPosition(100.0, 34.5);
	self.__children['button6#lock'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'button6#lock';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = Text:create();
	localParams[50]:setFontSize(20);
	localParams[50]:setString([[]]);
	localParams[50]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[50]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setTextColor({r = 255, g = 140, b = 0});
	localParams[50]:setContentSize({width = 103.0, height = 24.0});
	localParams[50]:setPosition(58.0, 34.5);
	self.__children['button6#text'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'button6#text';
	localParams[48]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[51]:ignoreContentAdaptWithSize(false);
	localParams[51]:setScale9Enabled(true);
	localParams[51]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 890.0, height = 390.0});
	localParams[51]:setPosition(WinSize.width/2 + (57.96 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Image_6'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'Image_6';
	self:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setContentSize({width = 117.0, height = 355.0});
	localParams[52]:setPosition(76.0, 195.0);
	self.__children['Image_6#monster1'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'Image_6#monster1';
	localParams[51]:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setScaleX(0.80);
	localParams[53]:setScaleY(0.80);
	localParams[53]:setContentSize({width = 34.0, height = 34.0});
	localParams[53]:setPosition(18.0, 25.0);
	self.__children['Image_6#monster1#position'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'Image_6#monster1#position';
	localParams[52]:addChild(localParams[53]);

	localParams[54] = Text:create();
	localParams[54]:setFontSize(16);
	localParams[54]:setString([[]]);
	localParams[54]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[54]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[54]:setAnchorPoint(0.00, 0.50);
	localParams[54]:setTextColor({r = 255, g = 240, b = 155});
	localParams[54]:setContentSize({width = 82.0, height = 20.0});
	localParams[54]:setPosition(30.0, 25.0);
	self.__children['Image_6#monster1#name'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'Image_6#monster1#name';
	localParams[52]:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 94.0, height = 94.0});
	localParams[55]:setPosition(45.0, 310.0);
	self.__children['Image_6#monster1#quality'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'Image_6#monster1#quality';
	localParams[52]:addChild(localParams[55]);

	localParams[56] = ImageView:create('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setContentSize({width = 117.0, height = 355.0});
	localParams[56]:setPosition(199.0, 195.0);
	self.__children['Image_6#monster2'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'Image_6#monster2';
	localParams[51]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setScaleX(0.80);
	localParams[57]:setScaleY(0.80);
	localParams[57]:setContentSize({width = 34.0, height = 34.0});
	localParams[57]:setPosition(18.0, 25.0);
	self.__children['Image_6#monster2#position'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'Image_6#monster2#position';
	localParams[56]:addChild(localParams[57]);

	localParams[58] = Text:create();
	localParams[58]:setFontSize(16);
	localParams[58]:setString([[]]);
	localParams[58]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[58]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[58]:setAnchorPoint(0.00, 0.50);
	localParams[58]:setTextColor({r = 255, g = 240, b = 155});
	localParams[58]:setContentSize({width = 82.0, height = 20.0});
	localParams[58]:setPosition(30.0, 25.0);
	self.__children['Image_6#monster2#name'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'Image_6#monster2#name';
	localParams[56]:addChild(localParams[58]);

	localParams[59] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 94.0, height = 94.0});
	localParams[59]:setPosition(45.0, 310.0);
	self.__children['Image_6#monster2#quality'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'Image_6#monster2#quality';
	localParams[56]:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 117.0, height = 355.0});
	localParams[60]:setPosition(322.0, 195.0);
	self.__children['Image_6#monster3'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'Image_6#monster3';
	localParams[51]:addChild(localParams[60]);

	localParams[61] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setScaleX(0.80);
	localParams[61]:setScaleY(0.80);
	localParams[61]:setContentSize({width = 34.0, height = 34.0});
	localParams[61]:setPosition(18.0, 25.0);
	self.__children['Image_6#monster3#position'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'Image_6#monster3#position';
	localParams[60]:addChild(localParams[61]);

	localParams[62] = Text:create();
	localParams[62]:setFontSize(16);
	localParams[62]:setString([[]]);
	localParams[62]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[62]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[62]:setAnchorPoint(0.00, 0.50);
	localParams[62]:setTextColor({r = 255, g = 240, b = 155});
	localParams[62]:setContentSize({width = 82.0, height = 20.0});
	localParams[62]:setPosition(30.0, 25.0);
	self.__children['Image_6#monster3#name'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'Image_6#monster3#name';
	localParams[60]:addChild(localParams[62]);

	localParams[63] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setContentSize({width = 94.0, height = 94.0});
	localParams[63]:setPosition(45.0, 310.0);
	self.__children['Image_6#monster3#quality'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'Image_6#monster3#quality';
	localParams[60]:addChild(localParams[63]);

	localParams[64] = ImageView:create('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setContentSize({width = 117.0, height = 355.0});
	localParams[64]:setPosition(445.0, 195.0);
	self.__children['Image_6#monster4'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'Image_6#monster4';
	localParams[51]:addChild(localParams[64]);

	localParams[65] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setScaleX(0.80);
	localParams[65]:setScaleY(0.80);
	localParams[65]:setContentSize({width = 34.0, height = 34.0});
	localParams[65]:setPosition(18.0, 25.0);
	self.__children['Image_6#monster4#position'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'Image_6#monster4#position';
	localParams[64]:addChild(localParams[65]);

	localParams[66] = Text:create();
	localParams[66]:setFontSize(16);
	localParams[66]:setString([[]]);
	localParams[66]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[66]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[66]:setAnchorPoint(0.00, 0.50);
	localParams[66]:setTextColor({r = 255, g = 240, b = 155});
	localParams[66]:setContentSize({width = 82.0, height = 20.0});
	localParams[66]:setPosition(30.0, 25.0);
	self.__children['Image_6#monster4#name'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'Image_6#monster4#name';
	localParams[64]:addChild(localParams[66]);

	localParams[67] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[67]:setAnchorPoint(0.50, 0.50);
	localParams[67]:setContentSize({width = 94.0, height = 94.0});
	localParams[67]:setPosition(45.0, 310.0);
	self.__children['Image_6#monster4#quality'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'Image_6#monster4#quality';
	localParams[64]:addChild(localParams[67]);

	localParams[68] = ImageView:create('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:setContentSize({width = 117.0, height = 355.0});
	localParams[68]:setPosition(568.0, 195.0);
	self.__children['Image_6#monster5'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'Image_6#monster5';
	localParams[51]:addChild(localParams[68]);

	localParams[69] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:setScaleX(0.80);
	localParams[69]:setScaleY(0.80);
	localParams[69]:setContentSize({width = 34.0, height = 34.0});
	localParams[69]:setPosition(18.0, 25.0);
	self.__children['Image_6#monster5#position'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'Image_6#monster5#position';
	localParams[68]:addChild(localParams[69]);

	localParams[70] = Text:create();
	localParams[70]:setFontSize(16);
	localParams[70]:setString([[]]);
	localParams[70]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[70]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[70]:setAnchorPoint(0.00, 0.50);
	localParams[70]:setTextColor({r = 255, g = 240, b = 155});
	localParams[70]:setContentSize({width = 82.0, height = 20.0});
	localParams[70]:setPosition(30.0, 25.0);
	self.__children['Image_6#monster5#name'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'Image_6#monster5#name';
	localParams[68]:addChild(localParams[70]);

	localParams[71] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[71]:setAnchorPoint(0.50, 0.50);
	localParams[71]:setContentSize({width = 94.0, height = 94.0});
	localParams[71]:setPosition(45.0, 310.0);
	self.__children['Image_6#monster5#quality'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'Image_6#monster5#quality';
	localParams[68]:addChild(localParams[71]);

	localParams[72] = ImageView:create('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[72]:setAnchorPoint(0.50, 0.50);
	localParams[72]:setContentSize({width = 117.0, height = 355.0});
	localParams[72]:setPosition(691.0, 195.0);
	self.__children['Image_6#monster6'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'Image_6#monster6';
	localParams[51]:addChild(localParams[72]);

	localParams[73] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setScaleX(0.80);
	localParams[73]:setScaleY(0.80);
	localParams[73]:setContentSize({width = 34.0, height = 34.0});
	localParams[73]:setPosition(18.0, 25.0);
	self.__children['Image_6#monster6#position'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'Image_6#monster6#position';
	localParams[72]:addChild(localParams[73]);

	localParams[74] = Text:create();
	localParams[74]:setFontSize(16);
	localParams[74]:setString([[]]);
	localParams[74]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[74]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[74]:setAnchorPoint(0.00, 0.50);
	localParams[74]:setTextColor({r = 255, g = 240, b = 155});
	localParams[74]:setContentSize({width = 82.0, height = 20.0});
	localParams[74]:setPosition(30.0, 25.0);
	self.__children['Image_6#monster6#name'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'Image_6#monster6#name';
	localParams[72]:addChild(localParams[74]);

	localParams[75] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[75]:setAnchorPoint(0.50, 0.50);
	localParams[75]:setContentSize({width = 94.0, height = 94.0});
	localParams[75]:setPosition(45.0, 310.0);
	self.__children['Image_6#monster6#quality'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'Image_6#monster6#quality';
	localParams[72]:addChild(localParams[75]);

	localParams[76] = ImageView:create('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[76]:setAnchorPoint(0.50, 0.50);
	localParams[76]:setContentSize({width = 117.0, height = 355.0});
	localParams[76]:setPosition(localParams[51]:getContentSize().width - 76.00, 195.0);
	self.__children['Image_6#monster7'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'Image_6#monster7';
	localParams[51]:addChild(localParams[76]);

	localParams[77] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[77]:setAnchorPoint(0.50, 0.50);
	localParams[77]:setScaleX(0.80);
	localParams[77]:setScaleY(0.80);
	localParams[77]:setContentSize({width = 34.0, height = 34.0});
	localParams[77]:setPosition(18.0, 25.0);
	self.__children['Image_6#monster7#position'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'Image_6#monster7#position';
	localParams[76]:addChild(localParams[77]);

	localParams[78] = Text:create();
	localParams[78]:setFontSize(16);
	localParams[78]:setString([[]]);
	localParams[78]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[78]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[78]:setAnchorPoint(0.00, 0.50);
	localParams[78]:setTextColor({r = 255, g = 240, b = 155});
	localParams[78]:setContentSize({width = 82.0, height = 20.0});
	localParams[78]:setPosition(30.0, 25.0);
	self.__children['Image_6#monster7#name'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'Image_6#monster7#name';
	localParams[76]:addChild(localParams[78]);

	localParams[79] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[79]:setAnchorPoint(0.50, 0.50);
	localParams[79]:setContentSize({width = 94.0, height = 94.0});
	localParams[79]:setPosition(45.0, 310.0);
	self.__children['Image_6#monster7#quality'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'Image_6#monster7#quality';
	localParams[76]:addChild(localParams[79]);

end
function DivinationLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0023.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function DivinationLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function DivinationLayer:_onGameMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGameMoney then
        return self.m_ClickDelegate:onGameMoney(sender);
    end
    if self.onGameMoney then
        return self:onGameMoney(sender);
    end
end


function DivinationLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function DivinationLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function DivinationLayer:_soulBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.soulBtn then
        return self.m_ClickDelegate:soulBtn(sender);
    end
    if self.soulBtn then
        return self:soulBtn(sender);
    end
end


function DivinationLayer:_onRMBMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRMBMoney then
        return self.m_ClickDelegate:onRMBMoney(sender);
    end
    if self.onRMBMoney then
        return self:onRMBMoney(sender);
    end
end


function DivinationLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function DivinationLayer:_onSoulMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSoulMoney then
        return self.m_ClickDelegate:onSoulMoney(sender);
    end
    if self.onSoulMoney then
        return self:onSoulMoney(sender);
    end
end


return DivinationLayer;