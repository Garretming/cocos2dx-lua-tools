-- 
-- Author: generation auto
-- Brief：RiskDetailLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local RiskDetailLayer = class('RiskDetailLayer', gamecore.ui.BaseWidget);

function RiskDetailLayer:create(...) 
    local instance = RiskDetailLayer.new(...);
    return instance;
end

function RiskDetailLayer:ctor(...) 
    if RiskDetailLayer.super and RiskDetailLayer.super.ctor then
        RiskDetailLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function RiskDetailLayer:initView()
    self.__LAYER_NAME = 'risk.RiskDetailLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0012.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['background'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'background';
	self:addChild(localParams[1]);

	localParams[2] = Layout:create();
	localParams[2]:setBackGroundColorOpacity(102);
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 1024.0, height = 640.0});
	localParams[2]:setPosition(0.0, 0.0);
	self.__children['__FULL_LAYER'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = '__FULL_LAYER';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[3]:setAnchorPoint(1.00, 1.00);
	localParams[3]:setContentSize({width = 800.0, height = 93.0});
	localParams[3]:setPosition(localParams[2]:getContentSize().width - 0.00, localParams[2]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#rightTopUnder_img'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = '__FULL_LAYER#rightTopUnder_img';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[4]:setAnchorPoint(0.00, 1.00);
	localParams[4]:setContentSize({width = 537.0, height = 164.0});
	localParams[4]:setPosition(0.0, localParams[2]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#leftTopUnder_img'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = '__FULL_LAYER#leftTopUnder_img';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0239.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 122.0, height = 55.0});
	localParams[5]:setPosition(235.02, localParams[2]:getContentSize().height - 24.60);
	self.__children['__FULL_LAYER#mercenaryFont_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = '__FULL_LAYER#mercenaryFont_sprite';
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
	localParams[6]:setPosition(68.17, localParams[2]:getContentSize().height - 44.38);
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
	localParams[7]:setPosition(localParams[2]:getContentSize().width - 38.15, localParams[2]:getContentSize().height - 47.66);
	self.__children['__FULL_LAYER#help_btn'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = '__FULL_LAYER#help_btn';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = Node:create();
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(104.14, 30.52);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 162.0, height = 51.0});
	localParams[9]:setPosition(localParams[2]:getContentSize().width - 186.00, localParams[2]:getContentSize().height - 32.00);
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
	localParams[15]:setPosition(localParams[2]:getContentSize().width - 376.00, localParams[2]:getContentSize().height - 32.00);
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

	localParams[21] = Node:create();
	localParams[21]:setAnchorPoint(0.00, 0.00);
	localParams[21]:setContentSize({width = 0.0, height = 0.0});
	localParams[21]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 320.00);
	self.__children['Node_1'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Node_1';
	self:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_icon/icon0035.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 137.0, height = 44.0});
	localParams[22]:setPosition(-350.5, 195.0);
	self.__children['Node_1#uires_public_sheet_icon_icon0035_1'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'Node_1#uires_public_sheet_icon_icon0035_1';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0170.png', 1);
	localParams[23]:ignoreContentAdaptWithSize(false);
	localParams[23]:setAnchorPoint(0.00, 0.50);
	localParams[23]:setContentSize({width = 715.0, height = 4.0});
	localParams[23]:setPosition(135.5, 22.0);
	self.__children['Node_1#uires_public_sheet_icon_icon0035_1#Image_1'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'Node_1#uires_public_sheet_icon_icon0035_1#Image_1';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[24]:ignoreContentAdaptWithSize(false);
	localParams[24]:setScale9Enabled(true);
	localParams[24]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 650.0, height = 230.0});
	localParams[24]:setPosition(104.0, 55.0);
	self.__children['Node_1#Image_2'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'Node_1#Image_2';
	localParams[21]:addChild(localParams[24]);

	localParams[25] = Button:create();
	localParams[25]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[25]:setTitleFontSize(14);
	localParams[25]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setScaleX(0.80);
	localParams[25]:setScaleY(0.80);
	localParams[25]:onClick(handler(self, self._onMonster));
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 122.0, height = 122.0});
	localParams[25]:setPosition(63.8, 166.2);
	self.__children['Node_1#Image_2#monster1'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'Node_1#Image_2#monster1';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 38.0, height = 38.0});
	localParams[26]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster1#locate'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'Node_1#Image_2#monster1#locate';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 43.0, height = 41.0});
	localParams[27]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster1#star'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'Node_1#Image_2#monster1#star';
	localParams[25]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[9]]);
	localParams[28]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setTextColor({r = 240, g = 200, b = 60});
	localParams[28]:setContentSize({width = 16.0, height = 24.0});
	localParams[28]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster1#level'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'Node_1#Image_2#monster1#level';
	localParams[25]:addChild(localParams[28]);

	localParams[29] = Button:create();
	localParams[29]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[29]:setTitleFontSize(14);
	localParams[29]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setScaleX(0.80);
	localParams[29]:setScaleY(0.80);
	localParams[29]:onClick(handler(self, self._onMonster));
	localParams[29]:setTouchEnabled(true);
	localParams[29]:setContentSize({width = 122.0, height = 122.0});
	localParams[29]:setPosition(168.8, 166.2);
	self.__children['Node_1#Image_2#monster2'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'Node_1#Image_2#monster2';
	localParams[24]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 38.0, height = 38.0});
	localParams[30]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster2#locate'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Node_1#Image_2#monster2#locate';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 43.0, height = 41.0});
	localParams[31]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster2#star'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Node_1#Image_2#monster2#star';
	localParams[29]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(20);
	localParams[32]:setString([[9]]);
	localParams[32]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[32]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setTextColor({r = 240, g = 200, b = 60});
	localParams[32]:setContentSize({width = 16.0, height = 24.0});
	localParams[32]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster2#level'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'Node_1#Image_2#monster2#level';
	localParams[29]:addChild(localParams[32]);

	localParams[33] = Button:create();
	localParams[33]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[33]:setTitleFontSize(14);
	localParams[33]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setScaleX(0.80);
	localParams[33]:setScaleY(0.80);
	localParams[33]:onClick(handler(self, self._onMonster));
	localParams[33]:setTouchEnabled(true);
	localParams[33]:setContentSize({width = 122.0, height = 122.0});
	localParams[33]:setPosition(273.8, 166.2);
	self.__children['Node_1#Image_2#monster3'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'Node_1#Image_2#monster3';
	localParams[24]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 38.0, height = 38.0});
	localParams[34]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster3#locate'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'Node_1#Image_2#monster3#locate';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 43.0, height = 41.0});
	localParams[35]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster3#star'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'Node_1#Image_2#monster3#star';
	localParams[33]:addChild(localParams[35]);

	localParams[36] = Text:create();
	localParams[36]:setFontSize(20);
	localParams[36]:setString([[9]]);
	localParams[36]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[36]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setTextColor({r = 240, g = 200, b = 60});
	localParams[36]:setContentSize({width = 16.0, height = 24.0});
	localParams[36]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster3#level'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'Node_1#Image_2#monster3#level';
	localParams[33]:addChild(localParams[36]);

	localParams[37] = Button:create();
	localParams[37]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[37]:setTitleFontSize(14);
	localParams[37]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setScaleX(0.80);
	localParams[37]:setScaleY(0.80);
	localParams[37]:onClick(handler(self, self._onMonster));
	localParams[37]:setTouchEnabled(true);
	localParams[37]:setContentSize({width = 122.0, height = 122.0});
	localParams[37]:setPosition(378.8, 166.2);
	self.__children['Node_1#Image_2#monster4'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'Node_1#Image_2#monster4';
	localParams[24]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 38.0, height = 38.0});
	localParams[38]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster4#locate'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'Node_1#Image_2#monster4#locate';
	localParams[37]:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 43.0, height = 41.0});
	localParams[39]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster4#star'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'Node_1#Image_2#monster4#star';
	localParams[37]:addChild(localParams[39]);

	localParams[40] = Text:create();
	localParams[40]:setFontSize(20);
	localParams[40]:setString([[9]]);
	localParams[40]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[40]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setTextColor({r = 240, g = 200, b = 60});
	localParams[40]:setContentSize({width = 16.0, height = 24.0});
	localParams[40]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster4#level'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'Node_1#Image_2#monster4#level';
	localParams[37]:addChild(localParams[40]);

	localParams[41] = Button:create();
	localParams[41]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[41]:setTitleFontSize(14);
	localParams[41]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setScaleX(0.80);
	localParams[41]:setScaleY(0.80);
	localParams[41]:onClick(handler(self, self._onMonster));
	localParams[41]:setTouchEnabled(true);
	localParams[41]:setContentSize({width = 122.0, height = 122.0});
	localParams[41]:setPosition(483.8, 166.2);
	self.__children['Node_1#Image_2#monster5'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'Node_1#Image_2#monster5';
	localParams[24]:addChild(localParams[41]);

	localParams[42] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setContentSize({width = 38.0, height = 38.0});
	localParams[42]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster5#locate'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'Node_1#Image_2#monster5#locate';
	localParams[41]:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 43.0, height = 41.0});
	localParams[43]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster5#star'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'Node_1#Image_2#monster5#star';
	localParams[41]:addChild(localParams[43]);

	localParams[44] = Text:create();
	localParams[44]:setFontSize(20);
	localParams[44]:setString([[9]]);
	localParams[44]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[44]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setTextColor({r = 240, g = 200, b = 60});
	localParams[44]:setContentSize({width = 16.0, height = 24.0});
	localParams[44]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster5#level'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'Node_1#Image_2#monster5#level';
	localParams[41]:addChild(localParams[44]);

	localParams[45] = Button:create();
	localParams[45]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[45]:setTitleFontSize(14);
	localParams[45]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setScaleX(0.80);
	localParams[45]:setScaleY(0.80);
	localParams[45]:onClick(handler(self, self._onMonster));
	localParams[45]:setTouchEnabled(true);
	localParams[45]:setContentSize({width = 122.0, height = 122.0});
	localParams[45]:setPosition(588.8, 166.2);
	self.__children['Node_1#Image_2#monster6'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'Node_1#Image_2#monster6';
	localParams[24]:addChild(localParams[45]);

	localParams[46] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setContentSize({width = 38.0, height = 38.0});
	localParams[46]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster6#locate'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'Node_1#Image_2#monster6#locate';
	localParams[45]:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 43.0, height = 41.0});
	localParams[47]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster6#star'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'Node_1#Image_2#monster6#star';
	localParams[45]:addChild(localParams[47]);

	localParams[48] = Text:create();
	localParams[48]:setFontSize(20);
	localParams[48]:setString([[9]]);
	localParams[48]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[48]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setTextColor({r = 240, g = 200, b = 60});
	localParams[48]:setContentSize({width = 16.0, height = 24.0});
	localParams[48]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster6#level'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'Node_1#Image_2#monster6#level';
	localParams[45]:addChild(localParams[48]);

	localParams[49] = Button:create();
	localParams[49]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[49]:setTitleFontSize(14);
	localParams[49]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setScaleX(0.80);
	localParams[49]:setScaleY(0.80);
	localParams[49]:onClick(handler(self, self._onMonster));
	localParams[49]:setTouchEnabled(true);
	localParams[49]:setContentSize({width = 122.0, height = 122.0});
	localParams[49]:setPosition(63.8, 63.8);
	self.__children['Node_1#Image_2#monster7'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'Node_1#Image_2#monster7';
	localParams[24]:addChild(localParams[49]);

	localParams[50] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setContentSize({width = 38.0, height = 38.0});
	localParams[50]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster7#locate'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'Node_1#Image_2#monster7#locate';
	localParams[49]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 43.0, height = 41.0});
	localParams[51]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster7#star'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'Node_1#Image_2#monster7#star';
	localParams[49]:addChild(localParams[51]);

	localParams[52] = Text:create();
	localParams[52]:setFontSize(20);
	localParams[52]:setString([[9]]);
	localParams[52]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[52]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setTextColor({r = 240, g = 200, b = 60});
	localParams[52]:setContentSize({width = 16.0, height = 24.0});
	localParams[52]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster7#level'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'Node_1#Image_2#monster7#level';
	localParams[49]:addChild(localParams[52]);

	localParams[53] = Button:create();
	localParams[53]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[53]:setTitleFontSize(14);
	localParams[53]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setScaleX(0.80);
	localParams[53]:setScaleY(0.80);
	localParams[53]:onClick(handler(self, self._onMonster));
	localParams[53]:setTouchEnabled(true);
	localParams[53]:setContentSize({width = 122.0, height = 122.0});
	localParams[53]:setPosition(168.7, 63.8);
	self.__children['Node_1#Image_2#monster8'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'Node_1#Image_2#monster8';
	localParams[24]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setContentSize({width = 38.0, height = 38.0});
	localParams[54]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster8#locate'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'Node_1#Image_2#monster8#locate';
	localParams[53]:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 43.0, height = 41.0});
	localParams[55]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster8#star'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'Node_1#Image_2#monster8#star';
	localParams[53]:addChild(localParams[55]);

	localParams[56] = Text:create();
	localParams[56]:setFontSize(20);
	localParams[56]:setString([[9]]);
	localParams[56]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[56]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setTextColor({r = 240, g = 200, b = 60});
	localParams[56]:setContentSize({width = 16.0, height = 24.0});
	localParams[56]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster8#level'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'Node_1#Image_2#monster8#level';
	localParams[53]:addChild(localParams[56]);

	localParams[57] = Button:create();
	localParams[57]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[57]:setTitleFontSize(14);
	localParams[57]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setScaleX(0.80);
	localParams[57]:setScaleY(0.80);
	localParams[57]:onClick(handler(self, self._onMonster));
	localParams[57]:setTouchEnabled(true);
	localParams[57]:setContentSize({width = 122.0, height = 122.0});
	localParams[57]:setPosition(273.6, 63.8);
	self.__children['Node_1#Image_2#monster9'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'Node_1#Image_2#monster9';
	localParams[24]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setContentSize({width = 38.0, height = 38.0});
	localParams[58]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster9#locate'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'Node_1#Image_2#monster9#locate';
	localParams[57]:addChild(localParams[58]);

	localParams[59] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 43.0, height = 41.0});
	localParams[59]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster9#star'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'Node_1#Image_2#monster9#star';
	localParams[57]:addChild(localParams[59]);

	localParams[60] = Text:create();
	localParams[60]:setFontSize(20);
	localParams[60]:setString([[9]]);
	localParams[60]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[60]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setTextColor({r = 240, g = 200, b = 60});
	localParams[60]:setContentSize({width = 16.0, height = 24.0});
	localParams[60]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster9#level'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'Node_1#Image_2#monster9#level';
	localParams[57]:addChild(localParams[60]);

	localParams[61] = Button:create();
	localParams[61]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[61]:setTitleFontSize(14);
	localParams[61]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setScaleX(0.80);
	localParams[61]:setScaleY(0.80);
	localParams[61]:onClick(handler(self, self._onMonster));
	localParams[61]:setTouchEnabled(true);
	localParams[61]:setContentSize({width = 122.0, height = 122.0});
	localParams[61]:setPosition(378.5, 63.8);
	self.__children['Node_1#Image_2#monster10'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'Node_1#Image_2#monster10';
	localParams[24]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setContentSize({width = 38.0, height = 38.0});
	localParams[62]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster10#locate'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'Node_1#Image_2#monster10#locate';
	localParams[61]:addChild(localParams[62]);

	localParams[63] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setContentSize({width = 43.0, height = 41.0});
	localParams[63]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster10#star'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'Node_1#Image_2#monster10#star';
	localParams[61]:addChild(localParams[63]);

	localParams[64] = Text:create();
	localParams[64]:setFontSize(20);
	localParams[64]:setString([[9]]);
	localParams[64]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[64]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setTextColor({r = 240, g = 200, b = 60});
	localParams[64]:setContentSize({width = 16.0, height = 24.0});
	localParams[64]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster10#level'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'Node_1#Image_2#monster10#level';
	localParams[61]:addChild(localParams[64]);

	localParams[65] = Button:create();
	localParams[65]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[65]:setTitleFontSize(14);
	localParams[65]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setScaleX(0.80);
	localParams[65]:setScaleY(0.80);
	localParams[65]:onClick(handler(self, self._onMonster));
	localParams[65]:setTouchEnabled(true);
	localParams[65]:setContentSize({width = 122.0, height = 122.0});
	localParams[65]:setPosition(483.41, 63.8);
	self.__children['Node_1#Image_2#monster11'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'Node_1#Image_2#monster11';
	localParams[24]:addChild(localParams[65]);

	localParams[66] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[66]:setAnchorPoint(0.50, 0.50);
	localParams[66]:setContentSize({width = 38.0, height = 38.0});
	localParams[66]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster11#locate'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'Node_1#Image_2#monster11#locate';
	localParams[65]:addChild(localParams[66]);

	localParams[67] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[67]:setAnchorPoint(0.50, 0.50);
	localParams[67]:setContentSize({width = 43.0, height = 41.0});
	localParams[67]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster11#star'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'Node_1#Image_2#monster11#star';
	localParams[65]:addChild(localParams[67]);

	localParams[68] = Text:create();
	localParams[68]:setFontSize(20);
	localParams[68]:setString([[9]]);
	localParams[68]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[68]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:setTextColor({r = 240, g = 200, b = 60});
	localParams[68]:setContentSize({width = 16.0, height = 24.0});
	localParams[68]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster11#level'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'Node_1#Image_2#monster11#level';
	localParams[65]:addChild(localParams[68]);

	localParams[69] = Button:create();
	localParams[69]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[69]:setTitleFontSize(14);
	localParams[69]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:setScaleX(0.80);
	localParams[69]:setScaleY(0.80);
	localParams[69]:onClick(handler(self, self._onMonster));
	localParams[69]:setTouchEnabled(true);
	localParams[69]:setContentSize({width = 122.0, height = 122.0});
	localParams[69]:setPosition(588.31, 63.8);
	self.__children['Node_1#Image_2#monster12'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'Node_1#Image_2#monster12';
	localParams[24]:addChild(localParams[69]);

	localParams[70] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[70]:setAnchorPoint(0.50, 0.50);
	localParams[70]:setContentSize({width = 38.0, height = 38.0});
	localParams[70]:setPosition(19.09, 18.52);
	self.__children['Node_1#Image_2#monster12#locate'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'Node_1#Image_2#monster12#locate';
	localParams[69]:addChild(localParams[70]);

	localParams[71] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[71]:setAnchorPoint(0.50, 0.50);
	localParams[71]:setContentSize({width = 43.0, height = 41.0});
	localParams[71]:setPosition(83.39, 27.51);
	self.__children['Node_1#Image_2#monster12#star'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'Node_1#Image_2#monster12#star';
	localParams[69]:addChild(localParams[71]);

	localParams[72] = Text:create();
	localParams[72]:setFontSize(20);
	localParams[72]:setString([[9]]);
	localParams[72]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[72]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[72]:setAnchorPoint(0.50, 0.50);
	localParams[72]:setTextColor({r = 240, g = 200, b = 60});
	localParams[72]:setContentSize({width = 16.0, height = 24.0});
	localParams[72]:setPosition(104.9, 15.0);
	self.__children['Node_1#Image_2#monster12#level'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'Node_1#Image_2#monster12#level';
	localParams[69]:addChild(localParams[72]);

	localParams[73] = ImageView:create('uires/public/sheet_bgframe/bgFrame0073.png', 1);
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setContentSize({width = 110.0, height = 110.0});
	localParams[73]:setPosition(-323.1, 115.0);
	self.__children['Node_1#head'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'Node_1#head';
	localParams[21]:addChild(localParams[73]);

	localParams[74] = ImageView:create(, 0);
	localParams[74]:setAnchorPoint(0.50, 0.50);
	localParams[74]:setContentSize({width = 46.0, height = 46.0});
	localParams[74]:setPosition(53.96, 55.62);
	self.__children['Node_1#head#image'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'Node_1#head#image';
	localParams[73]:addChild(localParams[74]);

	localParams[75] = Text:create();
	localParams[75]:setFontSize(20);
	localParams[75]:setString([[LV:25]]);
	localParams[75]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[75]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[75]:setAnchorPoint(0.50, 0.50);
	localParams[75]:setTextColor({r = 240, g = 200, b = 60});
	localParams[75]:setContentSize({width = 54.0, height = 22.0});
	localParams[75]:setPosition(55.0, 6.0);
	self.__children['Node_1#head#level'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'Node_1#head#level';
	localParams[73]:addChild(localParams[75]);

	localParams[76] = Button:create();
	localParams[76]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[76]:setTitleFontSize(14);
	localParams[76]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[76]:setScale9Enabled(true);
	localParams[76]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[76]:setAnchorPoint(0.50, 0.50);
	localParams[76]:setScaleX(0.70);
	localParams[76]:setScaleY(0.70);
	localParams[76]:onClick(handler(self, self._onSkill));
	localParams[76]:setTouchEnabled(true);
	localParams[76]:setContentSize({width = 118.0, height = 119.0});
	localParams[76]:setPosition(4.7, -65.5);
	self.__children['Node_1#head#skill1'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'Node_1#head#skill1';
	localParams[73]:addChild(localParams[76]);

	localParams[77] = ImageView:create(, 0);
	localParams[77]:setAnchorPoint(0.50, 0.50);
	localParams[77]:setContentSize({width = 46.0, height = 46.0});
	localParams[77]:setPosition(59.0, 59.5);
	self.__children['Node_1#head#skill1#image'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'Node_1#head#skill1#image';
	localParams[76]:addChild(localParams[77]);

	localParams[78] = Text:create();
	localParams[78]:setFontSize(20);
	localParams[78]:setString([[]]);
	localParams[78]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[78]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[78]:setAnchorPoint(0.50, 0.50);
	localParams[78]:setTextColor({r = 255, g = 140, b = 0});
	localParams[78]:setContentSize({width = 0.0, height = 0.0});
	localParams[78]:setPosition(59.0, 13.78);
	self.__children['Node_1#head#skill1#level'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'Node_1#head#skill1#level';
	localParams[76]:addChild(localParams[78]);

	localParams[79] = Button:create();
	localParams[79]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[79]:setTitleFontSize(14);
	localParams[79]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[79]:setScale9Enabled(true);
	localParams[79]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[79]:setAnchorPoint(0.50, 0.50);
	localParams[79]:setScaleX(0.70);
	localParams[79]:setScaleY(0.70);
	localParams[79]:onClick(handler(self, self._onSkill));
	localParams[79]:setTouchEnabled(true);
	localParams[79]:setContentSize({width = 118.0, height = 119.0});
	localParams[79]:setPosition(96.89, -65.5);
	self.__children['Node_1#head#skill2'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'Node_1#head#skill2';
	localParams[73]:addChild(localParams[79]);

	localParams[80] = ImageView:create(, 0);
	localParams[80]:setAnchorPoint(0.50, 0.50);
	localParams[80]:setContentSize({width = 46.0, height = 46.0});
	localParams[80]:setPosition(59.0, 59.5);
	self.__children['Node_1#head#skill2#image'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'Node_1#head#skill2#image';
	localParams[79]:addChild(localParams[80]);

	localParams[81] = Text:create();
	localParams[81]:setFontSize(20);
	localParams[81]:setString([[]]);
	localParams[81]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[81]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[81]:setAnchorPoint(0.50, 0.50);
	localParams[81]:setTextColor({r = 255, g = 140, b = 0});
	localParams[81]:setContentSize({width = 0.0, height = 0.0});
	localParams[81]:setPosition(59.0, 13.78);
	self.__children['Node_1#head#skill2#level'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'Node_1#head#skill2#level';
	localParams[79]:addChild(localParams[81]);

	localParams[82] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[82]:ignoreContentAdaptWithSize(false);
	localParams[82]:setScale9Enabled(true);
	localParams[82]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[82]:setAnchorPoint(1.00, 0.50);
	localParams[82]:setContentSize({width = 270.0, height = 230.0});
	localParams[82]:setPosition(251.98, -20.15);
	self.__children['Node_1#head#s_message_bg'] = localParams[82];
	localParams[82].__children = self.__children;
	localParams[82].__Name = 'Node_1#head#s_message_bg';
	localParams[73]:addChild(localParams[82]);

	localParams[83] = Node:create();
	localParams[83]:setAnchorPoint(0.00, 0.00);
	localParams[83]:setContentSize({width = 0.0, height = 0.0});
	localParams[83]:setPosition(0.0, 230.0);
	self.__children['Node_1#head#s_message_bg#Node_1'] = localParams[83];
	localParams[83].__children = self.__children;
	localParams[83].__Name = 'Node_1#head#s_message_bg#Node_1';
	localParams[82]:addChild(localParams[83]);

	localParams[84] = Text:create();
	localParams[84]:setFontSize(24);
	localParams[84]:setString([[风华之身]]);
	localParams[84]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[84]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[84]:setAnchorPoint(0.50, 0.50);
	localParams[84]:setTextColor({r = 250, g = 240, b = 155});
	localParams[84]:setContentSize({width = 100.0, height = 26.0});
	localParams[84]:setPosition(140.0, localParams[83]:getContentSize().height - 43.00);
	self.__children['Node_1#head#s_message_bg#Node_1#s_name'] = localParams[84];
	localParams[84].__children = self.__children;
	localParams[84].__Name = 'Node_1#head#s_message_bg#Node_1#s_name';
	localParams[83]:addChild(localParams[84]);

	localParams[85] = Text:create();
	localParams[85]:setFontSize(20);
	localParams[85]:setString([[技能说明:小体型 近距离小体型 近距离小体型 近距离小体型 近距离]]);
	localParams[85]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[85]:setTextAreaSize({width = 235, height = 0});
	localParams[85]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[85]:setAnchorPoint(0.50, 1.00);
	localParams[85]:setContentSize({width = 235.0, height = 0.0});
	localParams[85]:setPosition(135.0, localParams[83]:getContentSize().height - 110.00);
	self.__children['Node_1#head#s_message_bg#Node_1#s_skill_explain'] = localParams[85];
	localParams[85].__children = self.__children;
	localParams[85].__Name = 'Node_1#head#s_message_bg#Node_1#s_skill_explain';
	localParams[83]:addChild(localParams[85]);

	localParams[86] = Text:create();
	localParams[86]:setFontSize(20);
	localParams[86]:setString([[技能说明：]]);
	localParams[86]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[86]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[86]:setAnchorPoint(0.50, 0.50);
	localParams[86]:setContentSize({width = 91.0, height = 25.0});
	localParams[86]:setPosition(63.08, localParams[83]:getContentSize().height - 82.50);
	self.__children['Node_1#head#s_message_bg#Node_1#Text_1'] = localParams[86];
	localParams[86].__children = self.__children;
	localParams[86].__Name = 'Node_1#head#s_message_bg#Node_1#Text_1';
	localParams[83]:addChild(localParams[86]);

	localParams[87] = ImageView:create('uires/public/sheet_icon/icon0037.png', 1);
	localParams[87]:setAnchorPoint(0.50, 0.50);
	localParams[87]:setContentSize({width = 137.0, height = 44.0});
	localParams[87]:setPosition(-349.5, -76.68);
	self.__children['Node_1#uires_public_sheet_icon_icon0035_1_0'] = localParams[87];
	localParams[87].__children = self.__children;
	localParams[87].__Name = 'Node_1#uires_public_sheet_icon_icon0035_1_0';
	localParams[21]:addChild(localParams[87]);

	localParams[88] = ImageView:create('uires/public/sheet_other/other0170.png', 1);
	localParams[88]:ignoreContentAdaptWithSize(false);
	localParams[88]:setAnchorPoint(0.00, 0.50);
	localParams[88]:setContentSize({width = 715.0, height = 4.0});
	localParams[88]:setPosition(135.5, 22.0);
	self.__children['Node_1#uires_public_sheet_icon_icon0035_1_0#Image_1'] = localParams[88];
	localParams[88].__children = self.__children;
	localParams[88].__Name = 'Node_1#uires_public_sheet_icon_icon0035_1_0#Image_1';
	localParams[87]:addChild(localParams[88]);

	localParams[89] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[89]:ignoreContentAdaptWithSize(false);
	localParams[89]:setScale9Enabled(true);
	localParams[89]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[89]:setAnchorPoint(0.50, 0.50);
	localParams[89]:setContentSize({width = 325.0, height = 120.0});
	localParams[89]:setPosition(-184.59, -163.0);
	self.__children['Node_1#Image_5'] = localParams[89];
	localParams[89].__children = self.__children;
	localParams[89].__Name = 'Node_1#Image_5';
	localParams[21]:addChild(localParams[89]);

	localParams[90] = Text:create();
	localParams[90]:setFontSize(20);
	localParams[90]:setString([[首通
奖励]]);
	localParams[90]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[90]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[90]:setAnchorPoint(0.50, 0.50);
	localParams[90]:setTextColor({r = 255, g = 240, b = 155});
	localParams[90]:setContentSize({width = 45.0, height = 48.0});
	localParams[90]:setPosition(-30.0, 60.0);
	self.__children['Node_1#Image_5#Text_106'] = localParams[90];
	localParams[90].__children = self.__children;
	localParams[90].__Name = 'Node_1#Image_5#Text_106';
	localParams[89]:addChild(localParams[90]);

	localParams[91] = Button:create();
	localParams[91]:loadTextureNormal('uires/public/sheet_other/other0305.png', 1);
	localParams[91]:setTitleFontSize(14);
	localParams[91]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[91]:setScale9Enabled(true);
	localParams[91]:setCapInsets({x = 15.000000, y = 11.000000, width = 70.000000, height = 78.000000});
	localParams[91]:setAnchorPoint(0.50, 0.50);
	localParams[91]:setScaleX(0.80);
	localParams[91]:setScaleY(0.80);
	localParams[91]:setTouchEnabled(true);
	localParams[91]:setContentSize({width = 100.0, height = 100.0});
	localParams[91]:setPosition(60.0, 60.0);
	self.__children['Node_1#Image_5#item1'] = localParams[91];
	localParams[91].__children = self.__children;
	localParams[91].__Name = 'Node_1#Image_5#item1';
	localParams[89]:addChild(localParams[91]);

	localParams[92] = ImageView:create(, 0);
	localParams[92]:setAnchorPoint(0.50, 0.50);
	localParams[92]:setContentSize({width = 46.0, height = 46.0});
	localParams[92]:setPosition(50.0, 50.0);
	self.__children['Node_1#Image_5#item1#image'] = localParams[92];
	localParams[92].__children = self.__children;
	localParams[92].__Name = 'Node_1#Image_5#item1#image';
	localParams[91]:addChild(localParams[92]);

	localParams[93] = Text:create();
	localParams[93]:setFontSize(20);
	localParams[93]:setString([[]]);
	localParams[93]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[93]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[93]:setAnchorPoint(0.50, 0.50);
	localParams[93]:setContentSize({width = 86.0, height = 27.0});
	localParams[93]:setPosition(50.0, -10.0);
	self.__children['Node_1#Image_5#item1#name'] = localParams[93];
	localParams[93].__children = self.__children;
	localParams[93].__Name = 'Node_1#Image_5#item1#name';
	localParams[91]:addChild(localParams[93]);

	localParams[94] = TextAtlas:create();
	localParams[94]:setProperty([[1234]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[94]:setAnchorPoint(1.00, 0.00);
	localParams[94]:setContentSize({width = 52.0, height = 19.0});
	localParams[94]:setPosition(90.0, 10.0);
	self.__children['Node_1#Image_5#item1#number'] = localParams[94];
	localParams[94].__children = self.__children;
	localParams[94].__Name = 'Node_1#Image_5#item1#number';
	localParams[91]:addChild(localParams[94]);

	localParams[95] = Button:create();
	localParams[95]:loadTextureNormal('uires/public/sheet_other/other0305.png', 1);
	localParams[95]:setTitleFontSize(14);
	localParams[95]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[95]:setScale9Enabled(true);
	localParams[95]:setCapInsets({x = 15.000000, y = 11.000000, width = 70.000000, height = 78.000000});
	localParams[95]:setAnchorPoint(0.50, 0.50);
	localParams[95]:setScaleX(0.80);
	localParams[95]:setScaleY(0.80);
	localParams[95]:setTouchEnabled(true);
	localParams[95]:setContentSize({width = 100.0, height = 100.0});
	localParams[95]:setPosition(162.5, 60.0);
	self.__children['Node_1#Image_5#item2'] = localParams[95];
	localParams[95].__children = self.__children;
	localParams[95].__Name = 'Node_1#Image_5#item2';
	localParams[89]:addChild(localParams[95]);

	localParams[96] = ImageView:create(, 0);
	localParams[96]:setAnchorPoint(0.50, 0.50);
	localParams[96]:setContentSize({width = 46.0, height = 46.0});
	localParams[96]:setPosition(50.0, 50.0);
	self.__children['Node_1#Image_5#item2#image'] = localParams[96];
	localParams[96].__children = self.__children;
	localParams[96].__Name = 'Node_1#Image_5#item2#image';
	localParams[95]:addChild(localParams[96]);

	localParams[97] = Text:create();
	localParams[97]:setFontSize(20);
	localParams[97]:setString([[]]);
	localParams[97]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[97]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[97]:setAnchorPoint(0.50, 0.50);
	localParams[97]:setContentSize({width = 86.0, height = 27.0});
	localParams[97]:setPosition(50.0, -10.0);
	self.__children['Node_1#Image_5#item2#name'] = localParams[97];
	localParams[97].__children = self.__children;
	localParams[97].__Name = 'Node_1#Image_5#item2#name';
	localParams[95]:addChild(localParams[97]);

	localParams[98] = TextAtlas:create();
	localParams[98]:setProperty([[1234]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[98]:setAnchorPoint(1.00, 0.00);
	localParams[98]:setContentSize({width = 52.0, height = 19.0});
	localParams[98]:setPosition(90.0, 10.0);
	self.__children['Node_1#Image_5#item2#number'] = localParams[98];
	localParams[98].__children = self.__children;
	localParams[98].__Name = 'Node_1#Image_5#item2#number';
	localParams[95]:addChild(localParams[98]);

	localParams[99] = Button:create();
	localParams[99]:loadTextureNormal('uires/public/sheet_other/other0305.png', 1);
	localParams[99]:setTitleFontSize(14);
	localParams[99]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[99]:setScale9Enabled(true);
	localParams[99]:setCapInsets({x = 15.000000, y = 11.000000, width = 70.000000, height = 78.000000});
	localParams[99]:setAnchorPoint(0.50, 0.50);
	localParams[99]:setScaleX(0.80);
	localParams[99]:setScaleY(0.80);
	localParams[99]:setTouchEnabled(true);
	localParams[99]:setContentSize({width = 100.0, height = 100.0});
	localParams[99]:setPosition(265.0, 60.0);
	self.__children['Node_1#Image_5#item3'] = localParams[99];
	localParams[99].__children = self.__children;
	localParams[99].__Name = 'Node_1#Image_5#item3';
	localParams[89]:addChild(localParams[99]);

	localParams[100] = ImageView:create(, 0);
	localParams[100]:setAnchorPoint(0.50, 0.50);
	localParams[100]:setContentSize({width = 46.0, height = 46.0});
	localParams[100]:setPosition(50.0, 50.0);
	self.__children['Node_1#Image_5#item3#image'] = localParams[100];
	localParams[100].__children = self.__children;
	localParams[100].__Name = 'Node_1#Image_5#item3#image';
	localParams[99]:addChild(localParams[100]);

	localParams[101] = Text:create();
	localParams[101]:setFontSize(20);
	localParams[101]:setString([[]]);
	localParams[101]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[101]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[101]:setAnchorPoint(0.50, 0.50);
	localParams[101]:setContentSize({width = 86.0, height = 27.0});
	localParams[101]:setPosition(50.0, -10.0);
	self.__children['Node_1#Image_5#item3#name'] = localParams[101];
	localParams[101].__children = self.__children;
	localParams[101].__Name = 'Node_1#Image_5#item3#name';
	localParams[99]:addChild(localParams[101]);

	localParams[102] = TextAtlas:create();
	localParams[102]:setProperty([[1234]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[102]:setAnchorPoint(1.00, 0.00);
	localParams[102]:setContentSize({width = 52.0, height = 19.0});
	localParams[102]:setPosition(90.0, 10.0);
	self.__children['Node_1#Image_5#item3#number'] = localParams[102];
	localParams[102].__children = self.__children;
	localParams[102].__Name = 'Node_1#Image_5#item3#number';
	localParams[99]:addChild(localParams[102]);

	localParams[103] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[103]:ignoreContentAdaptWithSize(false);
	localParams[103]:setScale9Enabled(true);
	localParams[103]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[103]:setAnchorPoint(0.50, 0.50);
	localParams[103]:setContentSize({width = 325.0, height = 120.0});
	localParams[103]:setPosition(266.0, -163.0);
	self.__children['Node_1#Image_6'] = localParams[103];
	localParams[103].__children = self.__children;
	localParams[103].__Name = 'Node_1#Image_6';
	localParams[21]:addChild(localParams[103]);

	localParams[104] = Text:create();
	localParams[104]:setFontSize(20);
	localParams[104]:setString([[概率
掉落]]);
	localParams[104]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[104]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[104]:setAnchorPoint(0.50, 0.50);
	localParams[104]:setTextColor({r = 255, g = 240, b = 155});
	localParams[104]:setContentSize({width = 45.0, height = 48.0});
	localParams[104]:setPosition(-30.0, 60.0);
	self.__children['Node_1#Image_6#Text_106'] = localParams[104];
	localParams[104].__children = self.__children;
	localParams[104].__Name = 'Node_1#Image_6#Text_106';
	localParams[103]:addChild(localParams[104]);

	localParams[105] = Button:create();
	localParams[105]:loadTextureNormal('uires/public/sheet_other/other0305.png', 1);
	localParams[105]:setTitleFontSize(14);
	localParams[105]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[105]:setScale9Enabled(true);
	localParams[105]:setCapInsets({x = 15.000000, y = 11.000000, width = 70.000000, height = 78.000000});
	localParams[105]:setAnchorPoint(0.50, 0.50);
	localParams[105]:setScaleX(0.80);
	localParams[105]:setScaleY(0.80);
	localParams[105]:setTouchEnabled(true);
	localParams[105]:setContentSize({width = 100.0, height = 100.0});
	localParams[105]:setPosition(60.0, 60.0);
	self.__children['Node_1#Image_6#item1'] = localParams[105];
	localParams[105].__children = self.__children;
	localParams[105].__Name = 'Node_1#Image_6#item1';
	localParams[103]:addChild(localParams[105]);

	localParams[106] = ImageView:create(, 0);
	localParams[106]:setAnchorPoint(0.50, 0.50);
	localParams[106]:setContentSize({width = 46.0, height = 46.0});
	localParams[106]:setPosition(50.0, 50.0);
	self.__children['Node_1#Image_6#item1#image'] = localParams[106];
	localParams[106].__children = self.__children;
	localParams[106].__Name = 'Node_1#Image_6#item1#image';
	localParams[105]:addChild(localParams[106]);

	localParams[107] = Text:create();
	localParams[107]:setFontSize(20);
	localParams[107]:setString([[]]);
	localParams[107]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[107]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[107]:setAnchorPoint(0.50, 0.50);
	localParams[107]:setContentSize({width = 86.0, height = 27.0});
	localParams[107]:setPosition(50.0, -10.0);
	self.__children['Node_1#Image_6#item1#name'] = localParams[107];
	localParams[107].__children = self.__children;
	localParams[107].__Name = 'Node_1#Image_6#item1#name';
	localParams[105]:addChild(localParams[107]);

	localParams[108] = TextAtlas:create();
	localParams[108]:setProperty([[1234]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[108]:setAnchorPoint(1.00, 0.00);
	localParams[108]:setContentSize({width = 52.0, height = 19.0});
	localParams[108]:setPosition(90.0, 10.0);
	self.__children['Node_1#Image_6#item1#number'] = localParams[108];
	localParams[108].__children = self.__children;
	localParams[108].__Name = 'Node_1#Image_6#item1#number';
	localParams[105]:addChild(localParams[108]);

	localParams[109] = Button:create();
	localParams[109]:loadTextureNormal('uires/public/sheet_other/other0305.png', 1);
	localParams[109]:setTitleFontSize(14);
	localParams[109]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[109]:setScale9Enabled(true);
	localParams[109]:setCapInsets({x = 15.000000, y = 11.000000, width = 70.000000, height = 78.000000});
	localParams[109]:setAnchorPoint(0.50, 0.50);
	localParams[109]:setScaleX(0.80);
	localParams[109]:setScaleY(0.80);
	localParams[109]:setTouchEnabled(true);
	localParams[109]:setContentSize({width = 100.0, height = 100.0});
	localParams[109]:setPosition(162.5, 60.0);
	self.__children['Node_1#Image_6#item2'] = localParams[109];
	localParams[109].__children = self.__children;
	localParams[109].__Name = 'Node_1#Image_6#item2';
	localParams[103]:addChild(localParams[109]);

	localParams[110] = ImageView:create(, 0);
	localParams[110]:setAnchorPoint(0.50, 0.50);
	localParams[110]:setContentSize({width = 46.0, height = 46.0});
	localParams[110]:setPosition(50.0, 50.0);
	self.__children['Node_1#Image_6#item2#image'] = localParams[110];
	localParams[110].__children = self.__children;
	localParams[110].__Name = 'Node_1#Image_6#item2#image';
	localParams[109]:addChild(localParams[110]);

	localParams[111] = Text:create();
	localParams[111]:setFontSize(20);
	localParams[111]:setString([[]]);
	localParams[111]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[111]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[111]:setAnchorPoint(0.50, 0.50);
	localParams[111]:setContentSize({width = 86.0, height = 27.0});
	localParams[111]:setPosition(50.0, -10.0);
	self.__children['Node_1#Image_6#item2#name'] = localParams[111];
	localParams[111].__children = self.__children;
	localParams[111].__Name = 'Node_1#Image_6#item2#name';
	localParams[109]:addChild(localParams[111]);

	localParams[112] = TextAtlas:create();
	localParams[112]:setProperty([[1234]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[112]:setAnchorPoint(1.00, 0.00);
	localParams[112]:setContentSize({width = 52.0, height = 19.0});
	localParams[112]:setPosition(90.0, 10.0);
	self.__children['Node_1#Image_6#item2#number'] = localParams[112];
	localParams[112].__children = self.__children;
	localParams[112].__Name = 'Node_1#Image_6#item2#number';
	localParams[109]:addChild(localParams[112]);

	localParams[113] = Button:create();
	localParams[113]:loadTextureNormal('uires/public/sheet_other/other0305.png', 1);
	localParams[113]:setTitleFontSize(14);
	localParams[113]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[113]:setScale9Enabled(true);
	localParams[113]:setCapInsets({x = 15.000000, y = 11.000000, width = 70.000000, height = 78.000000});
	localParams[113]:setAnchorPoint(0.50, 0.50);
	localParams[113]:setScaleX(0.80);
	localParams[113]:setScaleY(0.80);
	localParams[113]:setTouchEnabled(true);
	localParams[113]:setContentSize({width = 100.0, height = 100.0});
	localParams[113]:setPosition(265.0, 60.0);
	self.__children['Node_1#Image_6#item3'] = localParams[113];
	localParams[113].__children = self.__children;
	localParams[113].__Name = 'Node_1#Image_6#item3';
	localParams[103]:addChild(localParams[113]);

	localParams[114] = ImageView:create(, 0);
	localParams[114]:setAnchorPoint(0.50, 0.50);
	localParams[114]:setContentSize({width = 46.0, height = 46.0});
	localParams[114]:setPosition(50.0, 50.0);
	self.__children['Node_1#Image_6#item3#image'] = localParams[114];
	localParams[114].__children = self.__children;
	localParams[114].__Name = 'Node_1#Image_6#item3#image';
	localParams[113]:addChild(localParams[114]);

	localParams[115] = Text:create();
	localParams[115]:setFontSize(20);
	localParams[115]:setString([[]]);
	localParams[115]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[115]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[115]:setAnchorPoint(0.50, 0.50);
	localParams[115]:setContentSize({width = 86.0, height = 27.0});
	localParams[115]:setPosition(50.0, -10.0);
	self.__children['Node_1#Image_6#item3#name'] = localParams[115];
	localParams[115].__children = self.__children;
	localParams[115].__Name = 'Node_1#Image_6#item3#name';
	localParams[113]:addChild(localParams[115]);

	localParams[116] = TextAtlas:create();
	localParams[116]:setProperty([[1234]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[116]:setAnchorPoint(1.00, 0.00);
	localParams[116]:setContentSize({width = 52.0, height = 19.0});
	localParams[116]:setPosition(90.0, 10.0);
	self.__children['Node_1#Image_6#item3#number'] = localParams[116];
	localParams[116].__children = self.__children;
	localParams[116].__Name = 'Node_1#Image_6#item3#number';
	localParams[113]:addChild(localParams[116]);

	localParams[117] = Node:create();
	localParams[117]:setAnchorPoint(0.00, 0.00);
	localParams[117]:setContentSize({width = 0.0, height = 0.0});
	localParams[117]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Node_2'] = localParams[117];
	localParams[117].__children = self.__children;
	localParams[117].__Name = 'Node_2';
	self:addChild(localParams[117]);

	localParams[118] = ImageView:create('uires/public/sheet_other/other0091.png', 1);
	localParams[118]:setAnchorPoint(0.50, 0.50);
	localParams[118]:setContentSize({width = 234.0, height = 64.0});
	localParams[118]:setPosition(6.89, -268.0);
	self.__children['Node_2#formation_name'] = localParams[118];
	localParams[118].__children = self.__children;
	localParams[118].__Name = 'Node_2#formation_name';
	localParams[117]:addChild(localParams[118]);

	localParams[119] = Text:create();
	localParams[119]:setFontSize(20);
	localParams[119]:setString([[灵魂突破三]]);
	localParams[119]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[119]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[119]:setAnchorPoint(0.50, 0.50);
	localParams[119]:setTextColor({r = 240, g = 200, b = 60});
	localParams[119]:setContentSize({width = 104.0, height = 22.0});
	localParams[119]:setPosition(145.01, 33.0);
	self.__children['Node_2#formation_name#name'] = localParams[119];
	localParams[119].__children = self.__children;
	localParams[119].__Name = 'Node_2#formation_name#name';
	localParams[118]:addChild(localParams[119]);

	localParams[120] = Button:create();
	localParams[120]:loadTextureNormal('uires/public/sheet_btn/btn0076.png', 1);
	localParams[120]:setTitleFontSize(14);
	localParams[120]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[120]:setScale9Enabled(true);
	localParams[120]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 62.000000});
	localParams[120]:setAnchorPoint(0.50, 0.50);
	localParams[120]:onClick(handler(self, self._onFormation));
	localParams[120]:setTouchEnabled(true);
	localParams[120]:setContentSize({width = 72.0, height = 84.0});
	localParams[120]:setPosition(177.6, -274.0);
	self.__children['Node_2#formation_btn'] = localParams[120];
	localParams[120].__children = self.__children;
	localParams[120].__Name = 'Node_2#formation_btn';
	localParams[117]:addChild(localParams[120]);

	localParams[121] = Button:create();
	localParams[121]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[121]:setTitleFontSize(14);
	localParams[121]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[121]:setAnchorPoint(0.50, 0.50);
	localParams[121]:onClick(handler(self, self._onStart));
	localParams[121]:setTouchEnabled(true);
	localParams[121]:setContentSize({width = 183.0, height = 68.0});
	localParams[121]:setPosition(334.03, -266.0);
	self.__children['Node_2#startMatch_btn'] = localParams[121];
	localParams[121].__children = self.__children;
	localParams[121].__Name = 'Node_2#startMatch_btn';
	localParams[117]:addChild(localParams[121]);

	localParams[122] = Node:create();
	localParams[122]:setAnchorPoint(0.00, 0.00);
	localParams[122]:setScaleX(0.90);
	localParams[122]:setScaleY(0.90);
	localParams[122]:setContentSize({width = 0.0, height = 0.0});
	localParams[122]:setPosition(318.52, 23.04);
	self.__children['Node_2#startMatch_btn#__SELECTED_SCALE'] = localParams[122];
	localParams[122].__children = self.__children;
	localParams[122].__Name = 'Node_2#startMatch_btn#__SELECTED_SCALE';
	localParams[121]:addChild(localParams[122]);

	localParams[123] = ImageView:create('uires/public/sheet_font/fontImg0238.png', 1);
	localParams[123]:setAnchorPoint(0.50, 0.50);
	localParams[123]:setContentSize({width = 108.0, height = 30.0});
	localParams[123]:setPosition(91.5, 34.0);
	self.__children['Node_2#startMatch_btn#font_sprite'] = localParams[123];
	localParams[123].__children = self.__children;
	localParams[123].__Name = 'Node_2#startMatch_btn#font_sprite';
	localParams[121]:addChild(localParams[123]);

end
function RiskDetailLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0012.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0011.png');
	table.insert(self._textureList, 'uires/public/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function RiskDetailLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet/sheet.plist');
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


function RiskDetailLayer:_onGameMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGameMoney then
        return self.m_ClickDelegate:onGameMoney(sender);
    end
    if self.onGameMoney then
        return self:onGameMoney(sender);
    end
end


function RiskDetailLayer:_onFormation(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onFormation then
        return self.m_ClickDelegate:onFormation(sender);
    end
    if self.onFormation then
        return self:onFormation(sender);
    end
end


function RiskDetailLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function RiskDetailLayer:_onStart(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onStart then
        return self.m_ClickDelegate:onStart(sender);
    end
    if self.onStart then
        return self:onStart(sender);
    end
end


function RiskDetailLayer:_onSkill(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSkill then
        return self.m_ClickDelegate:onSkill(sender);
    end
    if self.onSkill then
        return self:onSkill(sender);
    end
end


function RiskDetailLayer:_onRMBMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRMBMoney then
        return self.m_ClickDelegate:onRMBMoney(sender);
    end
    if self.onRMBMoney then
        return self:onRMBMoney(sender);
    end
end


function RiskDetailLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function RiskDetailLayer:_onMonster(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onMonster then
        return self.m_ClickDelegate:onMonster(sender);
    end
    if self.onMonster then
        return self:onMonster(sender);
    end
end


return RiskDetailLayer;