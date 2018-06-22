-- 
-- Author: generation auto
-- Brief：HeroesInitLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local HeroesInitLayer = class('HeroesInitLayer', gamecore.ui.BaseWidget);

function HeroesInitLayer:create(...) 
    local instance = HeroesInitLayer.new(...);
    return instance;
end

function HeroesInitLayer:ctor(...) 
    if HeroesInitLayer.super and HeroesInitLayer.super.ctor then
        HeroesInitLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function HeroesInitLayer:initView()
    self.__LAYER_NAME = 'heroes.HeroesInitLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0008.png', 0);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1024.0, height = 640.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_btn/btn0058.png', 1);
	localParams[2]:loadTexturePressed('uires/public/sheet_btn/btn0057.png', 1);
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 15.000000, y = 11.000000, width = 81.000000, height = 96.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:onClick(handler(self, self._onTabMenu));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 111.0, height = 117.0});
	localParams[2]:setPosition(WinSize.width - 76.50, WinSize.height - 193.50);
	self.__children['property_btn'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'property_btn';
	self:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_btn/btn0060.png', 1);
	localParams[3]:loadTexturePressed('uires/public/sheet_btn/btn0059.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 11.000000, width = 81.000000, height = 96.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._onTabMenu));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 111.0, height = 117.0});
	localParams[3]:setPosition(WinSize.width - 76.50, WinSize.height - 328.50);
	self.__children['skill_btn'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'skill_btn';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 30.0, height = 30.0});
	localParams[4]:setPosition(99.9, 105.3);
	self.__children['skill_btn#redPoint_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'skill_btn#redPoint_sprite';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0052.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 60.000000, y = 30.000000,width = 180.000000, height = 43.000000);
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setContentSize({width = WinSize.width - 0.00, height = 103.0});
	localParams[5]:setPosition(WinSize.width/2 + (-512.00 * ccx.scaleX), -103.0);
	self.__children['bottomUnder_img'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bottomUnder_img';
	self:addChild(localParams[5]);

	localParams[6] = ScrollView:create();
	localParams[6]:setInnerContainerSize({width = 600.00, height = 200.00});
	localParams[6]:setDirection(0);
	localParams[6]:setClippingEnabled(true);
	localParams[6]:setBackGroundColorType(1);
	localParams[6]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[6]:setBackGroundColorOpacity(102);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setOpacity(0);
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 600.0, height = 80.0});
	localParams[6]:setPosition(localParams[5]:getContentSize().width/2 + (-0.00 * ccx.scaleX), localParams[5]:getContentSize().height/2 + (-7.00 * ccx.scaleY));
	self.__children['bottomUnder_img#occupation_scrollView'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bottomUnder_img#occupation_scrollView';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_btn/btn0044.png', 1);
	localParams[7]:loadTexturePressed('uires/public/sheet_btn/btn0044.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._onArrowLeft));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 54.0, height = 59.0});
	localParams[7]:setPosition(96.36, 44.29);
	self.__children['bottomUnder_img#arrowLeft_btn'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bottomUnder_img#arrowLeft_btn';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_btn/btn0045.png', 1);
	localParams[8]:loadTexturePressed('uires/public/sheet_btn/btn0045.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:onClick(handler(self, self._onArrowRight));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 54.0, height = 59.0});
	localParams[8]:setPosition(localParams[5]:getContentSize().width - 95.44, 44.29);
	self.__children['bottomUnder_img#arrowRight_btn'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bottomUnder_img#arrowRight_btn';
	localParams[5]:addChild(localParams[8]);

	localParams[9] = Layout:create();
	localParams[9]:setBackGroundColorOpacity(102);
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 1024.0, height = 640.0});
	localParams[9]:setPosition(0.0, 160.0);
	self.__children['__FULL_LAYER'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = '__FULL_LAYER';
	self:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000);
	localParams[10]:setAnchorPoint(1.00, 1.00);
	localParams[10]:setContentSize({width = 800.0, height = 93.0});
	localParams[10]:setPosition(localParams[9]:getContentSize().width - 0.00, localParams[9]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#rightTopUnder_img'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = '__FULL_LAYER#rightTopUnder_img';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[11]:setAnchorPoint(0.00, 1.00);
	localParams[11]:setContentSize({width = 537.0, height = 164.0});
	localParams[11]:setPosition(0.0, localParams[9]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#leftTopUnder_img'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = '__FULL_LAYER#leftTopUnder_img';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_font/fontImg0062.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 126.0, height = 55.0});
	localParams[12]:setPosition(243.15, localParams[9]:getContentSize().height - 28.71);
	self.__children['__FULL_LAYER#suzerainFont_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = '__FULL_LAYER#suzerainFont_sprite';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[13]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._back_btn));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 116.0, height = 77.0});
	localParams[13]:setPosition(68.17, localParams[9]:getContentSize().height - 44.38);
	self.__children['__FULL_LAYER#back_btn'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = '__FULL_LAYER#back_btn';
	localParams[9]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 162.0, height = 51.0});
	localParams[14]:setPosition(localParams[9]:getContentSize().width - 376.00, localParams[9]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#rmb_money'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = '__FULL_LAYER#rmb_money';
	localParams[9]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(20);
	localParams[15]:setString([[999999]]);
	localParams[15]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[15]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[15]:setAnchorPoint(1.00, 0.50);
	localParams[15]:setContentSize({width = 75.0, height = 22.0});
	localParams[15]:setPosition(141.77, localParams[14]:getContentSize().height - 18.98);
	self.__children['__FULL_LAYER#rmb_money#value'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = '__FULL_LAYER#rmb_money#value';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 44.0, height = 44.0});
	localParams[16]:setPosition(24.41, 25.4);
	self.__children['__FULL_LAYER#rmb_money#gem_sprite'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = '__FULL_LAYER#rmb_money#gem_sprite';
	localParams[14]:addChild(localParams[16]);

	localParams[17] = Button:create();
	localParams[17]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[17]:setTitleFontSize(14);
	localParams[17]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setTouchEnabled(true);
	localParams[17]:setContentSize({width = 35.0, height = 37.0});
	localParams[17]:setPosition(160.89, 31.85);
	self.__children['__FULL_LAYER#rmb_money#gemAdd_btn'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = '__FULL_LAYER#rmb_money#gemAdd_btn';
	localParams[14]:addChild(localParams[17]);

	localParams[18] = Button:create();
	localParams[18]:setTitleFontSize(14);
	localParams[18]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[18]:setScale9Enabled(true);
	localParams[18]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:onClick(handler(self, self._onRMBMoney));
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 50.0, height = 30.0});
	localParams[18]:setPosition(156.91, 30.02);
	self.__children['__FULL_LAYER#rmb_money#Button'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = '__FULL_LAYER#rmb_money#Button';
	localParams[14]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 120.0, height = 30.0});
	localParams[19]:setPosition(64.86, 29.58);
	self.__children['__FULL_LAYER#rmb_money#btn_desc'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = '__FULL_LAYER#rmb_money#btn_desc';
	localParams[14]:addChild(localParams[19]);

	localParams[20] = Button:create();
	localParams[20]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[20]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[20]:setTitleFontSize(14);
	localParams[20]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[20]:setScale9Enabled(true);
	localParams[20]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:onClick(handler(self, self._help_btn));
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 58.0, height = 68.0});
	localParams[20]:setPosition(localParams[9]:getContentSize().width - 38.15, localParams[9]:getContentSize().height - 47.66);
	self.__children['__FULL_LAYER#help_btn'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = '__FULL_LAYER#help_btn';
	localParams[9]:addChild(localParams[20]);

	localParams[21] = Node:create();
	localParams[21]:setAnchorPoint(0.00, 0.00);
	localParams[21]:setScaleX(0.90);
	localParams[21]:setScaleY(0.90);
	localParams[21]:setContentSize({width = 0.0, height = 0.0});
	localParams[21]:setPosition(104.14, 30.52);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = Node:create();
	localParams[22]:setAnchorPoint(0.00, 0.00);
	localParams[22]:setContentSize({width = 0.0, height = 0.0});
	localParams[22]:setPosition(localParams[9]:getContentSize().width/2 + (-52.02 * ccx.scaleX), localParams[9]:getContentSize().height - 1.65);
	self.__children['__FULL_LAYER#Node_12'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = '__FULL_LAYER#Node_12';
	localParams[9]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0083.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 158.0, height = 18.0});
	localParams[23]:setPosition(30.0, -39.0);
	self.__children['__FULL_LAYER#Node_12#expUnder_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = '__FULL_LAYER#Node_12#expUnder_sprite';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = LoadingBar:create(''uires/public/sheet_other/other0082.png'', 1, 100.00);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 151.0, height = 14.0});
	localParams[24]:setPosition(79.0, 9.0);
	self.__children['__FULL_LAYER#Node_12#expUnder_sprite#exp_loadingBar'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = '__FULL_LAYER#Node_12#expUnder_sprite#exp_loadingBar';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = TextAtlas:create();
	localParams[25]:setProperty([[123/456]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setScaleX(0.60);
	localParams[25]:setScaleY(0.60);
	localParams[25]:setContentSize({width = 91.0, height = 19.0});
	localParams[25]:setPosition(79.0, 9.0);
	self.__children['__FULL_LAYER#Node_12#expUnder_sprite#value'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = '__FULL_LAYER#Node_12#expUnder_sprite#value';
	localParams[23]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_font/fontImg0066.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 36.0, height = 16.0});
	localParams[26]:setPosition(-66.89, -38.77);
	self.__children['__FULL_LAYER#Node_12#exp_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = '__FULL_LAYER#Node_12#exp_sprite';
	localParams[22]:addChild(localParams[26]);

	localParams[27] = RichText:create();
	localParams[27]:setDefaultFontSize(20);
	localParams[27]:setString([[这作死的大鸟]]);
	localParams[27]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[27]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[27]:setAnchorPoint(0.00, 0.50);
	localParams[27]:setTextColor({r = 240, g = 200, b = 60});
	localParams[27]:setContentSize({width = 123.0, height = 22.0});
	localParams[27]:setPosition(-72.5, -14.99);
	self.__children['__FULL_LAYER#Node_12#roleName_txt'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = '__FULL_LAYER#Node_12#roleName_txt';
	localParams[22]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 162.0, height = 51.0});
	localParams[28]:setPosition(localParams[9]:getContentSize().width - 376.00, localParams[9]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#rmb_money'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = '__FULL_LAYER#rmb_money';
	localParams[9]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[999999]]);
	localParams[29]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[29]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[29]:setAnchorPoint(1.00, 0.50);
	localParams[29]:setContentSize({width = 75.0, height = 22.0});
	localParams[29]:setPosition(141.77, localParams[28]:getContentSize().height - 18.98);
	self.__children['__FULL_LAYER#rmb_money#value'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = '__FULL_LAYER#rmb_money#value';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 44.0, height = 44.0});
	localParams[30]:setPosition(24.41, 25.4);
	self.__children['__FULL_LAYER#rmb_money#gem_sprite'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = '__FULL_LAYER#rmb_money#gem_sprite';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = Button:create();
	localParams[31]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[31]:setTitleFontSize(14);
	localParams[31]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setTouchEnabled(true);
	localParams[31]:setContentSize({width = 35.0, height = 37.0});
	localParams[31]:setPosition(160.89, 31.85);
	self.__children['__FULL_LAYER#rmb_money#gemAdd_btn'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = '__FULL_LAYER#rmb_money#gemAdd_btn';
	localParams[28]:addChild(localParams[31]);

	localParams[32] = Button:create();
	localParams[32]:setTitleFontSize(14);
	localParams[32]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[32]:setScale9Enabled(true);
	localParams[32]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:onClick(handler(self, self._onRMBMoney));
	localParams[32]:setTouchEnabled(true);
	localParams[32]:setContentSize({width = 50.0, height = 30.0});
	localParams[32]:setPosition(156.91, 30.02);
	self.__children['__FULL_LAYER#rmb_money#Button'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = '__FULL_LAYER#rmb_money#Button';
	localParams[28]:addChild(localParams[32]);

	localParams[33] = Button:create();
	localParams[33]:setTitleFontSize(14);
	localParams[33]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[33]:setScale9Enabled(true);
	localParams[33]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setTouchEnabled(true);
	localParams[33]:setContentSize({width = 120.0, height = 30.0});
	localParams[33]:setPosition(64.86, 29.58);
	self.__children['__FULL_LAYER#rmb_money#btn_desc'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = '__FULL_LAYER#rmb_money#btn_desc';
	localParams[28]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 162.0, height = 51.0});
	localParams[34]:setPosition(localParams[9]:getContentSize().width - 186.00, localParams[9]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#game_money'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = '__FULL_LAYER#game_money';
	localParams[9]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 44.0, height = 44.0});
	localParams[35]:setPosition(24.79, 24.57);
	self.__children['__FULL_LAYER#game_money#coin_sprite'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = '__FULL_LAYER#game_money#coin_sprite';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = Button:create();
	localParams[36]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[36]:setTitleFontSize(14);
	localParams[36]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setTouchEnabled(true);
	localParams[36]:setContentSize({width = 35.0, height = 37.0});
	localParams[36]:setPosition(162.16, 31.02);
	self.__children['__FULL_LAYER#game_money#coinAdd_btn'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = '__FULL_LAYER#game_money#coinAdd_btn';
	localParams[34]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(20);
	localParams[37]:setString([[999999]]);
	localParams[37]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[37]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[37]:setAnchorPoint(1.00, 0.50);
	localParams[37]:setContentSize({width = 75.0, height = 22.0});
	localParams[37]:setPosition(143.96, 30.61);
	self.__children['__FULL_LAYER#game_money#value'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = '__FULL_LAYER#game_money#value';
	localParams[34]:addChild(localParams[37]);

	localParams[38] = Button:create();
	localParams[38]:setTitleFontSize(14);
	localParams[38]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[38]:setScale9Enabled(true);
	localParams[38]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setTouchEnabled(true);
	localParams[38]:setContentSize({width = 120.0, height = 30.0});
	localParams[38]:setPosition(62.86, 30.58);
	self.__children['__FULL_LAYER#game_money#btn_desc'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = '__FULL_LAYER#game_money#btn_desc';
	localParams[34]:addChild(localParams[38]);

	localParams[39] = Button:create();
	localParams[39]:setTitleFontSize(14);
	localParams[39]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[39]:setScale9Enabled(true);
	localParams[39]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:onClick(handler(self, self._onGameMoney));
	localParams[39]:setTouchEnabled(true);
	localParams[39]:setContentSize({width = 50.0, height = 30.0});
	localParams[39]:setPosition(154.91, 31.02);
	self.__children['__FULL_LAYER#game_money#Button'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = '__FULL_LAYER#game_money#Button';
	localParams[34]:addChild(localParams[39]);

end
function HeroesInitLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0008.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0011.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function HeroesInitLayer:loadPlistResources()
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


function HeroesInitLayer:_onGameMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGameMoney then
        return self.m_ClickDelegate:onGameMoney(sender);
    end
    if self.onGameMoney then
        return self:onGameMoney(sender);
    end
end


function HeroesInitLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function HeroesInitLayer:_onArrowRight(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onArrowRight then
        return self.m_ClickDelegate:onArrowRight(sender);
    end
    if self.onArrowRight then
        return self:onArrowRight(sender);
    end
end


function HeroesInitLayer:_onRMBMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRMBMoney then
        return self.m_ClickDelegate:onRMBMoney(sender);
    end
    if self.onRMBMoney then
        return self:onRMBMoney(sender);
    end
end


function HeroesInitLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function HeroesInitLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function HeroesInitLayer:_onArrowLeft(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onArrowLeft then
        return self.m_ClickDelegate:onArrowLeft(sender);
    end
    if self.onArrowLeft then
        return self:onArrowLeft(sender);
    end
end


return HeroesInitLayer;