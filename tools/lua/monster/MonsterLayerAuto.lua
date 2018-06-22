-- 
-- Author: generation auto
-- Brief：MonsterLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local MonsterLayer = class('MonsterLayer', gamecore.ui.BaseWidget);

function MonsterLayer:create(...) 
    local instance = MonsterLayer.new(...);
    return instance;
end

function MonsterLayer:ctor(...) 
    if MonsterLayer.super and MonsterLayer.super.ctor then
        MonsterLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function MonsterLayer:initView()
    self.__LAYER_NAME = 'monster.MonsterLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0011.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_sprite'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_sprite';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0174.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 205.0, height = 241.0});
	localParams[2]:setPosition(296.99, localParams[1]:getContentSize().height/2 + (26.96 * ccx.scaleY));
	self.__children['bg_sprite#cue_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_sprite#cue_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create(, 0);
	localParams[3]:setAnchorPoint(0.50, 0.00);
	localParams[3]:setContentSize({width = 46.0, height = 46.0});
	localParams[3]:setPosition(300.0, 320.0);
	self.__children['bg_sprite#monster_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_sprite#monster_sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[4]:setAnchorPoint(0.50, 0.00);
	localParams[4]:onClick(handler(self, self._onAnimation));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 200.0, height = 200.0});
	localParams[4]:setPosition(182.01, 238.76);
	self.__children['animation_btn'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'animation_btn';
	self:addChild(localParams[4]);

	localParams[5] = Layout:create();
	localParams[5]:setBackGroundColorOpacity(102);
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 1024.0, height = 640.0});
	localParams[5]:setPosition(-14.0, 94.6);
	self.__children['__FULL_LAYER'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = '__FULL_LAYER';
	self:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[6]:ignoreContentAdaptWithSize(false);
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000);
	localParams[6]:setAnchorPoint(1.00, 1.00);
	localParams[6]:setContentSize({width = 800.0, height = 93.0});
	localParams[6]:setPosition(localParams[5]:getContentSize().width - 0.00, localParams[5]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#rightTopUnder_img'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = '__FULL_LAYER#rightTopUnder_img';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[7]:setAnchorPoint(0.00, 1.00);
	localParams[7]:setContentSize({width = 537.0, height = 164.0});
	localParams[7]:setPosition(0.0, localParams[5]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#leftTopUnder_img'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = '__FULL_LAYER#leftTopUnder_img';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_font/fontImg0101.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 123.0, height = 57.0});
	localParams[8]:setPosition(235.52, localParams[5]:getContentSize().height - 25.60);
	self.__children['__FULL_LAYER#mercenaryFont_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = '__FULL_LAYER#mercenaryFont_sprite';
	localParams[5]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[9]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._back_btn));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 116.0, height = 77.0});
	localParams[9]:setPosition(68.17, localParams[5]:getContentSize().height - 44.38);
	self.__children['__FULL_LAYER#back_btn'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = '__FULL_LAYER#back_btn';
	localParams[5]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 162.0, height = 51.0});
	localParams[10]:setPosition(localParams[5]:getContentSize().width - 376.00, localParams[5]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#rmb_money'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = '__FULL_LAYER#rmb_money';
	localParams[5]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[999999]]);
	localParams[11]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[11]:setAnchorPoint(1.00, 0.50);
	localParams[11]:setContentSize({width = 75.0, height = 22.0});
	localParams[11]:setPosition(141.77, localParams[10]:getContentSize().height - 18.98);
	self.__children['__FULL_LAYER#rmb_money#value'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = '__FULL_LAYER#rmb_money#value';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 44.0, height = 44.0});
	localParams[12]:setPosition(24.41, 25.4);
	self.__children['__FULL_LAYER#rmb_money#gem_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = '__FULL_LAYER#rmb_money#gem_sprite';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 35.0, height = 37.0});
	localParams[13]:setPosition(160.89, 31.85);
	self.__children['__FULL_LAYER#rmb_money#gemAdd_btn'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = '__FULL_LAYER#rmb_money#gemAdd_btn';
	localParams[10]:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:onClick(handler(self, self._onRMBMoney));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 50.0, height = 30.0});
	localParams[14]:setPosition(156.91, 30.02);
	self.__children['__FULL_LAYER#rmb_money#Button'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = '__FULL_LAYER#rmb_money#Button';
	localParams[10]:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 120.0, height = 30.0});
	localParams[15]:setPosition(64.86, 29.58);
	self.__children['__FULL_LAYER#rmb_money#btn_desc'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = '__FULL_LAYER#rmb_money#btn_desc';
	localParams[10]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 162.0, height = 51.0});
	localParams[16]:setPosition(localParams[5]:getContentSize().width - 186.00, localParams[5]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#game_money'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = '__FULL_LAYER#game_money';
	localParams[5]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 44.0, height = 44.0});
	localParams[17]:setPosition(24.79, 24.57);
	self.__children['__FULL_LAYER#game_money#coin_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = '__FULL_LAYER#game_money#coin_sprite';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Button:create();
	localParams[18]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[18]:setTitleFontSize(14);
	localParams[18]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 35.0, height = 37.0});
	localParams[18]:setPosition(162.16, 31.02);
	self.__children['__FULL_LAYER#game_money#coinAdd_btn'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = '__FULL_LAYER#game_money#coinAdd_btn';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(20);
	localParams[19]:setString([[999999]]);
	localParams[19]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[19]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[19]:setAnchorPoint(1.00, 0.50);
	localParams[19]:setContentSize({width = 75.0, height = 22.0});
	localParams[19]:setPosition(143.96, 30.61);
	self.__children['__FULL_LAYER#game_money#value'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = '__FULL_LAYER#game_money#value';
	localParams[16]:addChild(localParams[19]);

	localParams[20] = Button:create();
	localParams[20]:setTitleFontSize(14);
	localParams[20]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[20]:setScale9Enabled(true);
	localParams[20]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 120.0, height = 30.0});
	localParams[20]:setPosition(62.86, 30.58);
	self.__children['__FULL_LAYER#game_money#btn_desc'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = '__FULL_LAYER#game_money#btn_desc';
	localParams[16]:addChild(localParams[20]);

	localParams[21] = Button:create();
	localParams[21]:setTitleFontSize(14);
	localParams[21]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[21]:setScale9Enabled(true);
	localParams[21]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[21]:setAnchorPoint(0.58, 0.29);
	localParams[21]:onClick(handler(self, self._onGameMoney));
	localParams[21]:setTouchEnabled(true);
	localParams[21]:setContentSize({width = 50.0, height = 30.0});
	localParams[21]:setPosition(159.08, 24.7);
	self.__children['__FULL_LAYER#game_money#Button'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = '__FULL_LAYER#game_money#Button';
	localParams[16]:addChild(localParams[21]);

	localParams[22] = Button:create();
	localParams[22]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[22]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[22]:setTitleFontSize(14);
	localParams[22]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[22]:setScale9Enabled(true);
	localParams[22]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:onClick(handler(self, self._help_btn));
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setContentSize({width = 58.0, height = 68.0});
	localParams[22]:setPosition(localParams[5]:getContentSize().width - 38.15, localParams[5]:getContentSize().height - 47.66);
	self.__children['__FULL_LAYER#help_btn'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = '__FULL_LAYER#help_btn';
	localParams[5]:addChild(localParams[22]);

	localParams[23] = Node:create();
	localParams[23]:setAnchorPoint(0.00, 0.00);
	localParams[23]:setScaleX(0.90);
	localParams[23]:setScaleY(0.90);
	localParams[23]:setContentSize({width = 0.0, height = 0.0});
	localParams[23]:setPosition(104.14, 30.52);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ScrollView:create();
	localParams[24]:setInnerContainerSize({width = 420.00, height = 520.00});
	localParams[24]:setDirection(1);
	localParams[24]:setClippingEnabled(true);
	localParams[24]:setBackGroundColorType(1);
	localParams[24]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[24]:setBackGroundColorOpacity(74);
	localParams[24]:setAnchorPoint(0.00, 0.00);
	localParams[24]:setTouchEnabled(true);
	localParams[24]:setContentSize({width = 420.0, height = WinSize.height - 140.00});
	localParams[24]:setPosition(42.53, WinSize.height/2 + (-287.55 * ccx.scaleY));
	self.__children['mercenary_scrollView2'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'mercenary_scrollView2';
	self:addChild(localParams[24]);

	localParams[25] = Button:create();
	localParams[25]:loadTextureNormal('uires/public/sheet_btn/btn0160.png', 1);
	localParams[25]:setTitleFontSize(14);
	localParams[25]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[25]:setScale9Enabled(true);
	localParams[25]:setCapInsets({x = 15.000000, y = 11.000000, width = 59.000000, height = 74.000000});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:onClick(handler(self, self._onHandbook));
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 89.0, height = 96.0});
	localParams[25]:setPosition(WinSize.width - 69.50, 208.0);
	self.__children['Button_8'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'Button_8';
	self:addChild(localParams[25]);

	localParams[26] = Node:create();
	localParams[26]:setAnchorPoint(0.00, 0.00);
	localParams[26]:setScaleX(0.90);
	localParams[26]:setScaleY(0.90);
	localParams[26]:setContentSize({width = 0.0, height = 0.0});
	localParams[26]:setPosition(0.0, 0.0);
	self.__children['Button_8#__SELECTED_SCALE'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'Button_8#__SELECTED_SCALE';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[27]:ignoreContentAdaptWithSize(false);
	localParams[27]:setScale9Enabled(true);
	localParams[27]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 460.0, height = 60.0});
	localParams[27]:setPosition(238.6, 177.35);
	self.__children['Image_1'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'Image_1';
	self:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[28]:ignoreContentAdaptWithSize(false);
	localParams[28]:setScale9Enabled(true);
	localParams[28]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 99.0, height = 171.0});
	localParams[28]:setPosition(407.1, 133.2);
	self.__children['Image_1#positionBg_img'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'Image_1#positionBg_img';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = Button:create();
	localParams[29]:setTitleFontSize(14);
	localParams[29]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[29]:setScale9Enabled(true);
	localParams[29]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:onClick(handler(self, self._onPositionSort));
	localParams[29]:setTouchEnabled(true);
	localParams[29]:setContentSize({width = 90.0, height = 37.0});
	localParams[29]:setPosition(48.5, 149.63);
	self.__children['Image_1#positionBg_img#Button_1'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'Image_1#positionBg_img#Button_1';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(0.40);
	localParams[30]:setScaleY(0.90);
	localParams[30]:setContentSize({width = 198.0, height = 37.0});
	localParams[30]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_1#__SELECTED_IMG'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Image_1#positionBg_img#Button_1#__SELECTED_IMG';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = Text:create();
	localParams[31]:setFontSize(18);
	localParams[31]:setString([[全部]]);
	localParams[31]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[31]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 40.0, height = 20.0});
	localParams[31]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_1#condition_txt'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Image_1#positionBg_img#Button_1#condition_txt';
	localParams[29]:addChild(localParams[31]);

	localParams[32] = Button:create();
	localParams[32]:setTitleFontSize(14);
	localParams[32]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[32]:setScale9Enabled(true);
	localParams[32]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:onClick(handler(self, self._onPositionSort));
	localParams[32]:setTouchEnabled(true);
	localParams[32]:setContentSize({width = 90.0, height = 37.0});
	localParams[32]:setPosition(49.5, 106.88);
	self.__children['Image_1#positionBg_img#Button_2'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'Image_1#positionBg_img#Button_2';
	localParams[28]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setScaleX(0.40);
	localParams[33]:setScaleY(0.90);
	localParams[33]:setContentSize({width = 198.0, height = 37.0});
	localParams[33]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_2#__SELECTED_IMG'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'Image_1#positionBg_img#Button_2#__SELECTED_IMG';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = Text:create();
	localParams[34]:setFontSize(18);
	localParams[34]:setString([[坦克]]);
	localParams[34]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[34]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 40.0, height = 20.0});
	localParams[34]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_2#condition_txt'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'Image_1#positionBg_img#Button_2#condition_txt';
	localParams[32]:addChild(localParams[34]);

	localParams[35] = Button:create();
	localParams[35]:setTitleFontSize(14);
	localParams[35]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[35]:setScale9Enabled(true);
	localParams[35]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:onClick(handler(self, self._onPositionSort));
	localParams[35]:setTouchEnabled(true);
	localParams[35]:setContentSize({width = 90.0, height = 37.0});
	localParams[35]:setPosition(49.5, 64.13);
	self.__children['Image_1#positionBg_img#Button_3'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'Image_1#positionBg_img#Button_3';
	localParams[28]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setScaleX(0.40);
	localParams[36]:setScaleY(0.90);
	localParams[36]:setContentSize({width = 198.0, height = 37.0});
	localParams[36]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_3#__SELECTED_IMG'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'Image_1#positionBg_img#Button_3#__SELECTED_IMG';
	localParams[35]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(18);
	localParams[37]:setString([[输出]]);
	localParams[37]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[37]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 39.0, height = 20.0});
	localParams[37]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_3#condition_txt'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'Image_1#positionBg_img#Button_3#condition_txt';
	localParams[35]:addChild(localParams[37]);

	localParams[38] = Button:create();
	localParams[38]:setTitleFontSize(14);
	localParams[38]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[38]:setScale9Enabled(true);
	localParams[38]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:onClick(handler(self, self._onPositionSort));
	localParams[38]:setTouchEnabled(true);
	localParams[38]:setContentSize({width = 90.0, height = 37.0});
	localParams[38]:setPosition(49.5, 21.38);
	self.__children['Image_1#positionBg_img#Button_4'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'Image_1#positionBg_img#Button_4';
	localParams[28]:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setScaleX(0.40);
	localParams[39]:setScaleY(0.90);
	localParams[39]:setContentSize({width = 198.0, height = 37.0});
	localParams[39]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_4#__SELECTED_IMG'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'Image_1#positionBg_img#Button_4#__SELECTED_IMG';
	localParams[38]:addChild(localParams[39]);

	localParams[40] = Text:create();
	localParams[40]:setFontSize(18);
	localParams[40]:setString([[突袭]]);
	localParams[40]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[40]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 40.0, height = 20.0});
	localParams[40]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_4#condition_txt'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'Image_1#positionBg_img#Button_4#condition_txt';
	localParams[38]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 83.0, height = 2.0});
	localParams[41]:setPosition(49.5, 42.75);
	self.__children['Image_1#positionBg_img#line_sprite1'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'Image_1#positionBg_img#line_sprite1';
	localParams[28]:addChild(localParams[41]);

	localParams[42] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setContentSize({width = 83.0, height = 2.0});
	localParams[42]:setPosition(49.5, 85.5);
	self.__children['Image_1#positionBg_img#line_sprite2'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'Image_1#positionBg_img#line_sprite2';
	localParams[28]:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 83.0, height = 2.0});
	localParams[43]:setPosition(49.5, 128.25);
	self.__children['Image_1#positionBg_img#line_sprite3'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'Image_1#positionBg_img#line_sprite3';
	localParams[28]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[44]:ignoreContentAdaptWithSize(false);
	localParams[44]:setScale9Enabled(true);
	localParams[44]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setContentSize({width = 99.0, height = 216.0});
	localParams[44]:setPosition(407.1, 157.2);
	self.__children['Image_1#qualityBg_img'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'Image_1#qualityBg_img';
	localParams[27]:addChild(localParams[44]);

	localParams[45] = Button:create();
	localParams[45]:setTitleFontSize(14);
	localParams[45]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[45]:setScale9Enabled(true);
	localParams[45]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:onClick(handler(self, self._onQualitySort));
	localParams[45]:setTouchEnabled(true);
	localParams[45]:setContentSize({width = 90.0, height = 37.0});
	localParams[45]:setPosition(49.5, 194.4);
	self.__children['Image_1#qualityBg_img#Button_1'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'Image_1#qualityBg_img#Button_1';
	localParams[44]:addChild(localParams[45]);

	localParams[46] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setScaleX(0.40);
	localParams[46]:setScaleY(0.90);
	localParams[46]:setContentSize({width = 198.0, height = 37.0});
	localParams[46]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_1#__SELECTED_IMG'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'Image_1#qualityBg_img#Button_1#__SELECTED_IMG';
	localParams[45]:addChild(localParams[46]);

	localParams[47] = Text:create();
	localParams[47]:setFontSize(18);
	localParams[47]:setString([[全部]]);
	localParams[47]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[47]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 40.0, height = 20.0});
	localParams[47]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_1#condition_txt'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'Image_1#qualityBg_img#Button_1#condition_txt';
	localParams[45]:addChild(localParams[47]);

	localParams[48] = Button:create();
	localParams[48]:setTitleFontSize(14);
	localParams[48]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[48]:setScale9Enabled(true);
	localParams[48]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:onClick(handler(self, self._onQualitySort));
	localParams[48]:setTouchEnabled(true);
	localParams[48]:setContentSize({width = 90.0, height = 37.0});
	localParams[48]:setPosition(49.5, 151.2);
	self.__children['Image_1#qualityBg_img#Button_2'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'Image_1#qualityBg_img#Button_2';
	localParams[44]:addChild(localParams[48]);

	localParams[49] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setScaleX(0.40);
	localParams[49]:setScaleY(0.90);
	localParams[49]:setContentSize({width = 198.0, height = 37.0});
	localParams[49]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_2#__SELECTED_IMG'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'Image_1#qualityBg_img#Button_2#__SELECTED_IMG';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = Text:create();
	localParams[50]:setFontSize(18);
	localParams[50]:setString([[传说]]);
	localParams[50]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[50]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setContentSize({width = 40.0, height = 20.0});
	localParams[50]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_2#condition_txt'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'Image_1#qualityBg_img#Button_2#condition_txt';
	localParams[48]:addChild(localParams[50]);

	localParams[51] = Button:create();
	localParams[51]:setTitleFontSize(14);
	localParams[51]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[51]:setScale9Enabled(true);
	localParams[51]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:onClick(handler(self, self._onQualitySort));
	localParams[51]:setTouchEnabled(true);
	localParams[51]:setContentSize({width = 90.0, height = 37.0});
	localParams[51]:setPosition(49.5, 108.0);
	self.__children['Image_1#qualityBg_img#Button_3'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'Image_1#qualityBg_img#Button_3';
	localParams[44]:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setScaleX(0.40);
	localParams[52]:setScaleY(0.90);
	localParams[52]:setContentSize({width = 198.0, height = 37.0});
	localParams[52]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_3#__SELECTED_IMG'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'Image_1#qualityBg_img#Button_3#__SELECTED_IMG';
	localParams[51]:addChild(localParams[52]);

	localParams[53] = Text:create();
	localParams[53]:setFontSize(18);
	localParams[53]:setString([[史诗]]);
	localParams[53]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[53]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 40.0, height = 20.0});
	localParams[53]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_3#condition_txt'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'Image_1#qualityBg_img#Button_3#condition_txt';
	localParams[51]:addChild(localParams[53]);

	localParams[54] = Button:create();
	localParams[54]:setTitleFontSize(14);
	localParams[54]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[54]:setScale9Enabled(true);
	localParams[54]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:onClick(handler(self, self._onQualitySort));
	localParams[54]:setTouchEnabled(true);
	localParams[54]:setContentSize({width = 90.0, height = 37.0});
	localParams[54]:setPosition(49.5, 64.8);
	self.__children['Image_1#qualityBg_img#Button_4'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'Image_1#qualityBg_img#Button_4';
	localParams[44]:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setScaleX(0.40);
	localParams[55]:setScaleY(0.90);
	localParams[55]:setContentSize({width = 198.0, height = 37.0});
	localParams[55]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_4#__SELECTED_IMG'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'Image_1#qualityBg_img#Button_4#__SELECTED_IMG';
	localParams[54]:addChild(localParams[55]);

	localParams[56] = Text:create();
	localParams[56]:setFontSize(18);
	localParams[56]:setString([[稀有]]);
	localParams[56]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[56]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setContentSize({width = 40.0, height = 20.0});
	localParams[56]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_4#condition_txt'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'Image_1#qualityBg_img#Button_4#condition_txt';
	localParams[54]:addChild(localParams[56]);

	localParams[57] = Button:create();
	localParams[57]:setTitleFontSize(14);
	localParams[57]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[57]:setScale9Enabled(true);
	localParams[57]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:onClick(handler(self, self._onQualitySort));
	localParams[57]:setTouchEnabled(true);
	localParams[57]:setContentSize({width = 90.0, height = 37.0});
	localParams[57]:setPosition(49.5, 21.6);
	self.__children['Image_1#qualityBg_img#Button_5'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'Image_1#qualityBg_img#Button_5';
	localParams[44]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setScaleX(0.40);
	localParams[58]:setScaleY(0.90);
	localParams[58]:setContentSize({width = 198.0, height = 37.0});
	localParams[58]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_5#__SELECTED_IMG'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'Image_1#qualityBg_img#Button_5#__SELECTED_IMG';
	localParams[57]:addChild(localParams[58]);

	localParams[59] = Text:create();
	localParams[59]:setFontSize(18);
	localParams[59]:setString([[普通]]);
	localParams[59]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[59]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 40.0, height = 20.0});
	localParams[59]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_5#condition_txt'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'Image_1#qualityBg_img#Button_5#condition_txt';
	localParams[57]:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 83.0, height = 2.0});
	localParams[60]:setPosition(49.5, 43.2);
	self.__children['Image_1#qualityBg_img#line_sprite1'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'Image_1#qualityBg_img#line_sprite1';
	localParams[44]:addChild(localParams[60]);

	localParams[61] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 83.0, height = 2.0});
	localParams[61]:setPosition(49.5, 86.4);
	self.__children['Image_1#qualityBg_img#line_sprite2'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'Image_1#qualityBg_img#line_sprite2';
	localParams[44]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setContentSize({width = 83.0, height = 2.0});
	localParams[62]:setPosition(49.5, 129.6);
	self.__children['Image_1#qualityBg_img#line_sprite3'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'Image_1#qualityBg_img#line_sprite3';
	localParams[44]:addChild(localParams[62]);

	localParams[63] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setContentSize({width = 83.0, height = 2.0});
	localParams[63]:setPosition(49.5, 172.8);
	self.__children['Image_1#qualityBg_img#line_sprite4'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'Image_1#qualityBg_img#line_sprite4';
	localParams[44]:addChild(localParams[63]);

	localParams[64] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[64]:ignoreContentAdaptWithSize(false);
	localParams[64]:setScale9Enabled(true);
	localParams[64]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setContentSize({width = 99.0, height = 261.0});
	localParams[64]:setPosition(407.1, 179.2);
	self.__children['Image_1#starBg_img'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'Image_1#starBg_img';
	localParams[27]:addChild(localParams[64]);

	localParams[65] = Button:create();
	localParams[65]:setTitleFontSize(14);
	localParams[65]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[65]:setScale9Enabled(true);
	localParams[65]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:onClick(handler(self, self._onStarSort));
	localParams[65]:setTouchEnabled(true);
	localParams[65]:setContentSize({width = 90.0, height = 37.0});
	localParams[65]:setPosition(49.5, 238.81);
	self.__children['Image_1#starBg_img#Button_1'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'Image_1#starBg_img#Button_1';
	localParams[64]:addChild(localParams[65]);

	localParams[66] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[66]:setAnchorPoint(0.50, 0.50);
	localParams[66]:setScaleX(0.40);
	localParams[66]:setScaleY(0.90);
	localParams[66]:setContentSize({width = 198.0, height = 37.0});
	localParams[66]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_1#__SELECTED_IMG'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'Image_1#starBg_img#Button_1#__SELECTED_IMG';
	localParams[65]:addChild(localParams[66]);

	localParams[67] = Text:create();
	localParams[67]:setFontSize(18);
	localParams[67]:setString([[全部]]);
	localParams[67]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[67]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[67]:setAnchorPoint(0.50, 0.50);
	localParams[67]:setContentSize({width = 40.0, height = 20.0});
	localParams[67]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_1#condition_txt'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'Image_1#starBg_img#Button_1#condition_txt';
	localParams[65]:addChild(localParams[67]);

	localParams[68] = Button:create();
	localParams[68]:setTitleFontSize(14);
	localParams[68]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[68]:setScale9Enabled(true);
	localParams[68]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:onClick(handler(self, self._onStarSort));
	localParams[68]:setTouchEnabled(true);
	localParams[68]:setContentSize({width = 90.0, height = 37.0});
	localParams[68]:setPosition(49.5, 195.75);
	self.__children['Image_1#starBg_img#Button_2'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'Image_1#starBg_img#Button_2';
	localParams[64]:addChild(localParams[68]);

	localParams[69] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:setScaleX(0.40);
	localParams[69]:setScaleY(0.90);
	localParams[69]:setContentSize({width = 198.0, height = 37.0});
	localParams[69]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_2#__SELECTED_IMG'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'Image_1#starBg_img#Button_2#__SELECTED_IMG';
	localParams[68]:addChild(localParams[69]);

	localParams[70] = Text:create();
	localParams[70]:setFontSize(18);
	localParams[70]:setString([[9~10星]]);
	localParams[70]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[70]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[70]:setAnchorPoint(0.50, 0.50);
	localParams[70]:setContentSize({width = 58.0, height = 20.0});
	localParams[70]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_2#condition_txt'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'Image_1#starBg_img#Button_2#condition_txt';
	localParams[68]:addChild(localParams[70]);

	localParams[71] = Button:create();
	localParams[71]:setTitleFontSize(14);
	localParams[71]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[71]:setScale9Enabled(true);
	localParams[71]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[71]:setAnchorPoint(0.50, 0.50);
	localParams[71]:onClick(handler(self, self._onStarSort));
	localParams[71]:setTouchEnabled(true);
	localParams[71]:setContentSize({width = 90.0, height = 37.0});
	localParams[71]:setPosition(49.5, 152.16);
	self.__children['Image_1#starBg_img#Button_3'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'Image_1#starBg_img#Button_3';
	localParams[64]:addChild(localParams[71]);

	localParams[72] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[72]:setAnchorPoint(0.50, 0.50);
	localParams[72]:setScaleX(0.40);
	localParams[72]:setScaleY(0.90);
	localParams[72]:setContentSize({width = 198.0, height = 37.0});
	localParams[72]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_3#__SELECTED_IMG'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'Image_1#starBg_img#Button_3#__SELECTED_IMG';
	localParams[71]:addChild(localParams[72]);

	localParams[73] = Text:create();
	localParams[73]:setFontSize(18);
	localParams[73]:setString([[7~8星]]);
	localParams[73]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[73]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setContentSize({width = 49.0, height = 20.0});
	localParams[73]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_3#condition_txt'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'Image_1#starBg_img#Button_3#condition_txt';
	localParams[71]:addChild(localParams[73]);

	localParams[74] = Button:create();
	localParams[74]:setTitleFontSize(14);
	localParams[74]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[74]:setScale9Enabled(true);
	localParams[74]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[74]:setAnchorPoint(0.50, 0.50);
	localParams[74]:onClick(handler(self, self._onStarSort));
	localParams[74]:setTouchEnabled(true);
	localParams[74]:setContentSize({width = 90.0, height = 37.0});
	localParams[74]:setPosition(49.5, 108.84);
	self.__children['Image_1#starBg_img#Button_4'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'Image_1#starBg_img#Button_4';
	localParams[64]:addChild(localParams[74]);

	localParams[75] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[75]:setAnchorPoint(0.50, 0.50);
	localParams[75]:setScaleX(0.40);
	localParams[75]:setScaleY(0.90);
	localParams[75]:setContentSize({width = 198.0, height = 37.0});
	localParams[75]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_4#__SELECTED_IMG'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'Image_1#starBg_img#Button_4#__SELECTED_IMG';
	localParams[74]:addChild(localParams[75]);

	localParams[76] = Text:create();
	localParams[76]:setFontSize(18);
	localParams[76]:setString([[5~6星]]);
	localParams[76]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[76]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[76]:setAnchorPoint(0.50, 0.50);
	localParams[76]:setContentSize({width = 49.0, height = 20.0});
	localParams[76]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_4#condition_txt'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'Image_1#starBg_img#Button_4#condition_txt';
	localParams[74]:addChild(localParams[76]);

	localParams[77] = Button:create();
	localParams[77]:setTitleFontSize(14);
	localParams[77]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[77]:setScale9Enabled(true);
	localParams[77]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[77]:setAnchorPoint(0.50, 0.50);
	localParams[77]:onClick(handler(self, self._onStarSort));
	localParams[77]:setTouchEnabled(true);
	localParams[77]:setContentSize({width = 90.0, height = 37.0});
	localParams[77]:setPosition(49.5, 65.25);
	self.__children['Image_1#starBg_img#Button_5'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'Image_1#starBg_img#Button_5';
	localParams[64]:addChild(localParams[77]);

	localParams[78] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[78]:setAnchorPoint(0.50, 0.50);
	localParams[78]:setScaleX(0.40);
	localParams[78]:setScaleY(0.90);
	localParams[78]:setContentSize({width = 198.0, height = 37.0});
	localParams[78]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_5#__SELECTED_IMG'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'Image_1#starBg_img#Button_5#__SELECTED_IMG';
	localParams[77]:addChild(localParams[78]);

	localParams[79] = Text:create();
	localParams[79]:setFontSize(18);
	localParams[79]:setString([[3~4星]]);
	localParams[79]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[79]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[79]:setAnchorPoint(0.50, 0.50);
	localParams[79]:setContentSize({width = 49.0, height = 20.0});
	localParams[79]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_5#condition_txt'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'Image_1#starBg_img#Button_5#condition_txt';
	localParams[77]:addChild(localParams[79]);

	localParams[80] = Button:create();
	localParams[80]:setTitleFontSize(14);
	localParams[80]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[80]:setScale9Enabled(true);
	localParams[80]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[80]:setAnchorPoint(0.50, 0.50);
	localParams[80]:onClick(handler(self, self._onStarSort));
	localParams[80]:setTouchEnabled(true);
	localParams[80]:setContentSize({width = 90.0, height = 37.0});
	localParams[80]:setPosition(49.5, 21.66);
	self.__children['Image_1#starBg_img#Button_6'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'Image_1#starBg_img#Button_6';
	localParams[64]:addChild(localParams[80]);

	localParams[81] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[81]:setAnchorPoint(0.50, 0.50);
	localParams[81]:setScaleX(0.40);
	localParams[81]:setScaleY(0.90);
	localParams[81]:setContentSize({width = 198.0, height = 37.0});
	localParams[81]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_6#__SELECTED_IMG'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'Image_1#starBg_img#Button_6#__SELECTED_IMG';
	localParams[80]:addChild(localParams[81]);

	localParams[82] = Text:create();
	localParams[82]:setFontSize(18);
	localParams[82]:setString([[1~2星]]);
	localParams[82]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[82]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[82]:setAnchorPoint(0.50, 0.50);
	localParams[82]:setContentSize({width = 49.0, height = 20.0});
	localParams[82]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_6#condition_txt'] = localParams[82];
	localParams[82].__children = self.__children;
	localParams[82].__Name = 'Image_1#starBg_img#Button_6#condition_txt';
	localParams[80]:addChild(localParams[82]);

	localParams[83] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[83]:setAnchorPoint(0.50, 0.50);
	localParams[83]:setContentSize({width = 83.0, height = 2.0});
	localParams[83]:setPosition(49.5, 43.59);
	self.__children['Image_1#starBg_img#line_sprite1'] = localParams[83];
	localParams[83].__children = self.__children;
	localParams[83].__Name = 'Image_1#starBg_img#line_sprite1';
	localParams[64]:addChild(localParams[83]);

	localParams[84] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[84]:setAnchorPoint(0.50, 0.50);
	localParams[84]:setContentSize({width = 83.0, height = 2.0});
	localParams[84]:setPosition(49.5, 87.17);
	self.__children['Image_1#starBg_img#line_sprite2'] = localParams[84];
	localParams[84].__children = self.__children;
	localParams[84].__Name = 'Image_1#starBg_img#line_sprite2';
	localParams[64]:addChild(localParams[84]);

	localParams[85] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[85]:setAnchorPoint(0.50, 0.50);
	localParams[85]:setContentSize({width = 83.0, height = 2.0});
	localParams[85]:setPosition(49.5, 130.5);
	self.__children['Image_1#starBg_img#line_sprite3'] = localParams[85];
	localParams[85].__children = self.__children;
	localParams[85].__Name = 'Image_1#starBg_img#line_sprite3';
	localParams[64]:addChild(localParams[85]);

	localParams[86] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[86]:setAnchorPoint(0.50, 0.50);
	localParams[86]:setContentSize({width = 83.0, height = 2.0});
	localParams[86]:setPosition(49.5, 174.35);
	self.__children['Image_1#starBg_img#line_sprite4'] = localParams[86];
	localParams[86].__children = self.__children;
	localParams[86].__Name = 'Image_1#starBg_img#line_sprite4';
	localParams[64]:addChild(localParams[86]);

	localParams[87] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[87]:setAnchorPoint(0.50, 0.50);
	localParams[87]:setContentSize({width = 83.0, height = 2.0});
	localParams[87]:setPosition(49.5, 217.94);
	self.__children['Image_1#starBg_img#line_sprite5'] = localParams[87];
	localParams[87].__children = self.__children;
	localParams[87].__Name = 'Image_1#starBg_img#line_sprite5';
	localParams[64]:addChild(localParams[87]);

	localParams[88] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[88]:ignoreContentAdaptWithSize(false);
	localParams[88]:setScale9Enabled(true);
	localParams[88]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[88]:setAnchorPoint(0.50, 0.50);
	localParams[88]:setContentSize({width = 99.0, height = 306.0});
	localParams[88]:setPosition(407.1, 201.2);
	self.__children['Image_1#costBg_img'] = localParams[88];
	localParams[88].__children = self.__children;
	localParams[88].__Name = 'Image_1#costBg_img';
	localParams[27]:addChild(localParams[88]);

	localParams[89] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[89]:setAnchorPoint(0.50, 0.50);
	localParams[89]:setContentSize({width = 83.0, height = 2.0});
	localParams[89]:setPosition(49.5, 43.76);
	self.__children['Image_1#costBg_img#line_sprite1'] = localParams[89];
	localParams[89].__children = self.__children;
	localParams[89].__Name = 'Image_1#costBg_img#line_sprite1';
	localParams[88]:addChild(localParams[89]);

	localParams[90] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[90]:setAnchorPoint(0.50, 0.50);
	localParams[90]:setContentSize({width = 83.0, height = 2.0});
	localParams[90]:setPosition(49.5, 87.21);
	self.__children['Image_1#costBg_img#line_sprite2'] = localParams[90];
	localParams[90].__children = self.__children;
	localParams[90].__Name = 'Image_1#costBg_img#line_sprite2';
	localParams[88]:addChild(localParams[90]);

	localParams[91] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[91]:setAnchorPoint(0.50, 0.50);
	localParams[91]:setContentSize({width = 83.0, height = 2.0});
	localParams[91]:setPosition(49.5, 130.66);
	self.__children['Image_1#costBg_img#line_sprite3'] = localParams[91];
	localParams[91].__children = self.__children;
	localParams[91].__Name = 'Image_1#costBg_img#line_sprite3';
	localParams[88]:addChild(localParams[91]);

	localParams[92] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[92]:setAnchorPoint(0.50, 0.50);
	localParams[92]:setContentSize({width = 83.0, height = 2.0});
	localParams[92]:setPosition(49.5, 174.11);
	self.__children['Image_1#costBg_img#line_sprite4'] = localParams[92];
	localParams[92].__children = self.__children;
	localParams[92].__Name = 'Image_1#costBg_img#line_sprite4';
	localParams[88]:addChild(localParams[92]);

	localParams[93] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[93]:setAnchorPoint(0.50, 0.50);
	localParams[93]:setContentSize({width = 83.0, height = 2.0});
	localParams[93]:setPosition(49.5, 217.87);
	self.__children['Image_1#costBg_img#line_sprite5'] = localParams[93];
	localParams[93].__children = self.__children;
	localParams[93].__Name = 'Image_1#costBg_img#line_sprite5';
	localParams[88]:addChild(localParams[93]);

	localParams[94] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[94]:setAnchorPoint(0.50, 0.50);
	localParams[94]:setContentSize({width = 83.0, height = 2.0});
	localParams[94]:setPosition(49.5, 261.63);
	self.__children['Image_1#costBg_img#line_sprite6'] = localParams[94];
	localParams[94].__children = self.__children;
	localParams[94].__Name = 'Image_1#costBg_img#line_sprite6';
	localParams[88]:addChild(localParams[94]);

	localParams[95] = Button:create();
	localParams[95]:setTitleFontSize(14);
	localParams[95]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[95]:setScale9Enabled(true);
	localParams[95]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[95]:setAnchorPoint(0.50, 0.50);
	localParams[95]:onClick(handler(self, self._onCostSort));
	localParams[95]:setTouchEnabled(true);
	localParams[95]:setContentSize({width = 90.0, height = 37.0});
	localParams[95]:setPosition(49.5, 283.97);
	self.__children['Image_1#costBg_img#Button_1'] = localParams[95];
	localParams[95].__children = self.__children;
	localParams[95].__Name = 'Image_1#costBg_img#Button_1';
	localParams[88]:addChild(localParams[95]);

	localParams[96] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[96]:setAnchorPoint(0.50, 0.50);
	localParams[96]:setScaleX(0.40);
	localParams[96]:setScaleY(0.90);
	localParams[96]:setContentSize({width = 198.0, height = 37.0});
	localParams[96]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_1#__SELECTED_IMG'] = localParams[96];
	localParams[96].__children = self.__children;
	localParams[96].__Name = 'Image_1#costBg_img#Button_1#__SELECTED_IMG';
	localParams[95]:addChild(localParams[96]);

	localParams[97] = Text:create();
	localParams[97]:setFontSize(18);
	localParams[97]:setString([[全部]]);
	localParams[97]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[97]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[97]:setAnchorPoint(0.50, 0.50);
	localParams[97]:setContentSize({width = 40.0, height = 20.0});
	localParams[97]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_1#condition_txt'] = localParams[97];
	localParams[97].__children = self.__children;
	localParams[97].__Name = 'Image_1#costBg_img#Button_1#condition_txt';
	localParams[95]:addChild(localParams[97]);

	localParams[98] = Button:create();
	localParams[98]:setTitleFontSize(14);
	localParams[98]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[98]:setScale9Enabled(true);
	localParams[98]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[98]:setAnchorPoint(0.50, 0.50);
	localParams[98]:onClick(handler(self, self._onCostSort));
	localParams[98]:setTouchEnabled(true);
	localParams[98]:setContentSize({width = 90.0, height = 37.0});
	localParams[98]:setPosition(49.5, 240.82);
	self.__children['Image_1#costBg_img#Button_2'] = localParams[98];
	localParams[98].__children = self.__children;
	localParams[98].__Name = 'Image_1#costBg_img#Button_2';
	localParams[88]:addChild(localParams[98]);

	localParams[99] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[99]:setAnchorPoint(0.50, 0.50);
	localParams[99]:setScaleX(0.40);
	localParams[99]:setScaleY(0.90);
	localParams[99]:setContentSize({width = 198.0, height = 37.0});
	localParams[99]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_2#__SELECTED_IMG'] = localParams[99];
	localParams[99].__children = self.__children;
	localParams[99].__Name = 'Image_1#costBg_img#Button_2#__SELECTED_IMG';
	localParams[98]:addChild(localParams[99]);

	localParams[100] = Text:create();
	localParams[100]:setFontSize(18);
	localParams[100]:setString([[6怒]]);
	localParams[100]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[100]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[100]:setAnchorPoint(0.50, 0.50);
	localParams[100]:setContentSize({width = 31.0, height = 20.0});
	localParams[100]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_2#condition_txt'] = localParams[100];
	localParams[100].__children = self.__children;
	localParams[100].__Name = 'Image_1#costBg_img#Button_2#condition_txt';
	localParams[98]:addChild(localParams[100]);

	localParams[101] = Button:create();
	localParams[101]:setTitleFontSize(14);
	localParams[101]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[101]:setScale9Enabled(true);
	localParams[101]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[101]:setAnchorPoint(0.50, 0.50);
	localParams[101]:onClick(handler(self, self._onCostSort));
	localParams[101]:setTouchEnabled(true);
	localParams[101]:setContentSize({width = 90.0, height = 37.0});
	localParams[101]:setPosition(49.5, 197.37);
	self.__children['Image_1#costBg_img#Button_3'] = localParams[101];
	localParams[101].__children = self.__children;
	localParams[101].__Name = 'Image_1#costBg_img#Button_3';
	localParams[88]:addChild(localParams[101]);

	localParams[102] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[102]:setAnchorPoint(0.50, 0.50);
	localParams[102]:setScaleX(0.40);
	localParams[102]:setScaleY(0.90);
	localParams[102]:setContentSize({width = 198.0, height = 37.0});
	localParams[102]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_3#__SELECTED_IMG'] = localParams[102];
	localParams[102].__children = self.__children;
	localParams[102].__Name = 'Image_1#costBg_img#Button_3#__SELECTED_IMG';
	localParams[101]:addChild(localParams[102]);

	localParams[103] = Text:create();
	localParams[103]:setFontSize(18);
	localParams[103]:setString([[5怒]]);
	localParams[103]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[103]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[103]:setAnchorPoint(0.50, 0.50);
	localParams[103]:setContentSize({width = 31.0, height = 20.0});
	localParams[103]:setPosition(45.0, 17.5);
	self.__children['Image_1#costBg_img#Button_3#condition_txt'] = localParams[103];
	localParams[103].__children = self.__children;
	localParams[103].__Name = 'Image_1#costBg_img#Button_3#condition_txt';
	localParams[101]:addChild(localParams[103]);

	localParams[104] = Button:create();
	localParams[104]:setTitleFontSize(14);
	localParams[104]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[104]:setScale9Enabled(true);
	localParams[104]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[104]:setAnchorPoint(0.50, 0.50);
	localParams[104]:onClick(handler(self, self._onCostSort));
	localParams[104]:setTouchEnabled(true);
	localParams[104]:setContentSize({width = 90.0, height = 37.0});
	localParams[104]:setPosition(49.5, 153.61);
	self.__children['Image_1#costBg_img#Button_4'] = localParams[104];
	localParams[104].__children = self.__children;
	localParams[104].__Name = 'Image_1#costBg_img#Button_4';
	localParams[88]:addChild(localParams[104]);

	localParams[105] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[105]:setAnchorPoint(0.50, 0.50);
	localParams[105]:setScaleX(0.40);
	localParams[105]:setScaleY(0.90);
	localParams[105]:setContentSize({width = 198.0, height = 37.0});
	localParams[105]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_4#__SELECTED_IMG'] = localParams[105];
	localParams[105].__children = self.__children;
	localParams[105].__Name = 'Image_1#costBg_img#Button_4#__SELECTED_IMG';
	localParams[104]:addChild(localParams[105]);

	localParams[106] = Text:create();
	localParams[106]:setFontSize(18);
	localParams[106]:setString([[4怒]]);
	localParams[106]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[106]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[106]:setAnchorPoint(0.50, 0.50);
	localParams[106]:setContentSize({width = 31.0, height = 20.0});
	localParams[106]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_4#condition_txt'] = localParams[106];
	localParams[106].__children = self.__children;
	localParams[106].__Name = 'Image_1#costBg_img#Button_4#condition_txt';
	localParams[104]:addChild(localParams[106]);

	localParams[107] = Button:create();
	localParams[107]:setTitleFontSize(14);
	localParams[107]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[107]:setScale9Enabled(true);
	localParams[107]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[107]:setAnchorPoint(0.50, 0.50);
	localParams[107]:onClick(handler(self, self._onCostSort));
	localParams[107]:setTouchEnabled(true);
	localParams[107]:setContentSize({width = 90.0, height = 37.0});
	localParams[107]:setPosition(49.5, 110.16);
	self.__children['Image_1#costBg_img#Button_5'] = localParams[107];
	localParams[107].__children = self.__children;
	localParams[107].__Name = 'Image_1#costBg_img#Button_5';
	localParams[88]:addChild(localParams[107]);

	localParams[108] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[108]:setAnchorPoint(0.50, 0.50);
	localParams[108]:setScaleX(0.40);
	localParams[108]:setScaleY(0.90);
	localParams[108]:setContentSize({width = 198.0, height = 37.0});
	localParams[108]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_5#__SELECTED_IMG'] = localParams[108];
	localParams[108].__children = self.__children;
	localParams[108].__Name = 'Image_1#costBg_img#Button_5#__SELECTED_IMG';
	localParams[107]:addChild(localParams[108]);

	localParams[109] = Text:create();
	localParams[109]:setFontSize(18);
	localParams[109]:setString([[3怒]]);
	localParams[109]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[109]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[109]:setAnchorPoint(0.50, 0.50);
	localParams[109]:setContentSize({width = 31.0, height = 20.0});
	localParams[109]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_5#condition_txt'] = localParams[109];
	localParams[109].__children = self.__children;
	localParams[109].__Name = 'Image_1#costBg_img#Button_5#condition_txt';
	localParams[107]:addChild(localParams[109]);

	localParams[110] = Button:create();
	localParams[110]:setTitleFontSize(14);
	localParams[110]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[110]:setScale9Enabled(true);
	localParams[110]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[110]:setAnchorPoint(0.50, 0.50);
	localParams[110]:onClick(handler(self, self._onCostSort));
	localParams[110]:setTouchEnabled(true);
	localParams[110]:setContentSize({width = 90.0, height = 37.0});
	localParams[110]:setPosition(49.5, 66.71);
	self.__children['Image_1#costBg_img#Button_6'] = localParams[110];
	localParams[110].__children = self.__children;
	localParams[110].__Name = 'Image_1#costBg_img#Button_6';
	localParams[88]:addChild(localParams[110]);

	localParams[111] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[111]:setAnchorPoint(0.50, 0.50);
	localParams[111]:setScaleX(0.40);
	localParams[111]:setScaleY(0.90);
	localParams[111]:setContentSize({width = 198.0, height = 37.0});
	localParams[111]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_6#__SELECTED_IMG'] = localParams[111];
	localParams[111].__children = self.__children;
	localParams[111].__Name = 'Image_1#costBg_img#Button_6#__SELECTED_IMG';
	localParams[110]:addChild(localParams[111]);

	localParams[112] = Text:create();
	localParams[112]:setFontSize(18);
	localParams[112]:setString([[2怒]]);
	localParams[112]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[112]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[112]:setAnchorPoint(0.50, 0.50);
	localParams[112]:setContentSize({width = 31.0, height = 20.0});
	localParams[112]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_6#condition_txt'] = localParams[112];
	localParams[112].__children = self.__children;
	localParams[112].__Name = 'Image_1#costBg_img#Button_6#condition_txt';
	localParams[110]:addChild(localParams[112]);

	localParams[113] = Button:create();
	localParams[113]:setTitleFontSize(14);
	localParams[113]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[113]:setScale9Enabled(true);
	localParams[113]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[113]:setAnchorPoint(0.50, 0.50);
	localParams[113]:onClick(handler(self, self._onCostSort));
	localParams[113]:setTouchEnabled(true);
	localParams[113]:setContentSize({width = 90.0, height = 37.0});
	localParams[113]:setPosition(49.5, 22.03);
	self.__children['Image_1#costBg_img#Button_7'] = localParams[113];
	localParams[113].__children = self.__children;
	localParams[113].__Name = 'Image_1#costBg_img#Button_7';
	localParams[88]:addChild(localParams[113]);

	localParams[114] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[114]:setAnchorPoint(0.50, 0.50);
	localParams[114]:setScaleX(0.40);
	localParams[114]:setScaleY(0.90);
	localParams[114]:setContentSize({width = 198.0, height = 37.0});
	localParams[114]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_7#__SELECTED_IMG'] = localParams[114];
	localParams[114].__children = self.__children;
	localParams[114].__Name = 'Image_1#costBg_img#Button_7#__SELECTED_IMG';
	localParams[113]:addChild(localParams[114]);

	localParams[115] = Text:create();
	localParams[115]:setFontSize(18);
	localParams[115]:setString([[1怒]]);
	localParams[115]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[115]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[115]:setAnchorPoint(0.50, 0.50);
	localParams[115]:setContentSize({width = 31.0, height = 20.0});
	localParams[115]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_7#condition_txt'] = localParams[115];
	localParams[115].__children = self.__children;
	localParams[115].__Name = 'Image_1#costBg_img#Button_7#condition_txt';
	localParams[113]:addChild(localParams[115]);

	localParams[116] = Button:create();
	localParams[116]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[116]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[116]:setTitleFontSize(20);
	localParams[116]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[116]:setAnchorPoint(0.50, 0.50);
	localParams[116]:onClick(handler(self, self._onSort));
	localParams[116]:setTouchEnabled(true);
	localParams[116]:setContentSize({width = 83.0, height = 46.0});
	localParams[116]:setPosition(48.94, 30.0);
	self.__children['Image_1#Button_1'] = localParams[116];
	localParams[116].__children = self.__children;
	localParams[116].__Name = 'Image_1#Button_1';
	localParams[27]:addChild(localParams[116]);

	localParams[117] = ImageView:create('uires/public/sheet_font/fontImg0128.png', 1);
	localParams[117]:setAnchorPoint(0.50, 0.50);
	localParams[117]:setContentSize({width = 43.0, height = 24.0});
	localParams[117]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_1#Sprite_1'] = localParams[117];
	localParams[117].__children = self.__children;
	localParams[117].__Name = 'Image_1#Button_1#Sprite_1';
	localParams[116]:addChild(localParams[117]);

	localParams[118] = Button:create();
	localParams[118]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[118]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[118]:setTitleFontSize(20);
	localParams[118]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[118]:setAnchorPoint(0.50, 0.50);
	localParams[118]:onClick(handler(self, self._onSort));
	localParams[118]:setTouchEnabled(true);
	localParams[118]:setContentSize({width = 83.0, height = 46.0});
	localParams[118]:setPosition(136.94, 30.0);
	self.__children['Image_1#Button_2'] = localParams[118];
	localParams[118].__children = self.__children;
	localParams[118].__Name = 'Image_1#Button_2';
	localParams[27]:addChild(localParams[118]);

	localParams[119] = ImageView:create('uires/public/sheet_font/fontImg0130.png', 1);
	localParams[119]:setAnchorPoint(0.50, 0.50);
	localParams[119]:setContentSize({width = 42.0, height = 24.0});
	localParams[119]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_2#Sprite_1'] = localParams[119];
	localParams[119].__children = self.__children;
	localParams[119].__Name = 'Image_1#Button_2#Sprite_1';
	localParams[118]:addChild(localParams[119]);

	localParams[120] = Button:create();
	localParams[120]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[120]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[120]:setTitleFontSize(20);
	localParams[120]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[120]:setAnchorPoint(0.50, 0.50);
	localParams[120]:onClick(handler(self, self._onSort));
	localParams[120]:setTouchEnabled(true);
	localParams[120]:setContentSize({width = 83.0, height = 46.0});
	localParams[120]:setPosition(224.94, 30.0);
	self.__children['Image_1#Button_3'] = localParams[120];
	localParams[120].__children = self.__children;
	localParams[120].__Name = 'Image_1#Button_3';
	localParams[27]:addChild(localParams[120]);

	localParams[121] = ImageView:create('uires/public/sheet_font/fontImg0127.png', 1);
	localParams[121]:setAnchorPoint(0.50, 0.50);
	localParams[121]:setContentSize({width = 43.0, height = 24.0});
	localParams[121]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_3#Sprite_1'] = localParams[121];
	localParams[121].__children = self.__children;
	localParams[121].__Name = 'Image_1#Button_3#Sprite_1';
	localParams[120]:addChild(localParams[121]);

	localParams[122] = Button:create();
	localParams[122]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[122]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[122]:setTitleFontSize(20);
	localParams[122]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[122]:setAnchorPoint(0.50, 0.50);
	localParams[122]:onClick(handler(self, self._onSort));
	localParams[122]:setTouchEnabled(true);
	localParams[122]:setContentSize({width = 83.0, height = 46.0});
	localParams[122]:setPosition(313.94, 30.0);
	self.__children['Image_1#Button_4'] = localParams[122];
	localParams[122].__children = self.__children;
	localParams[122].__Name = 'Image_1#Button_4';
	localParams[27]:addChild(localParams[122]);

	localParams[123] = ImageView:create('uires/public/sheet_font/fontImg0129.png', 1);
	localParams[123]:setAnchorPoint(0.50, 0.50);
	localParams[123]:setContentSize({width = 44.0, height = 24.0});
	localParams[123]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_4#Sprite_1'] = localParams[123];
	localParams[123].__children = self.__children;
	localParams[123].__Name = 'Image_1#Button_4#Sprite_1';
	localParams[122]:addChild(localParams[123]);

	localParams[124] = Button:create();
	localParams[124]:loadTextureNormal('uires/public/sheet_btn/btn0106.png', 1);
	localParams[124]:loadTexturePressed('uires/public/sheet_btn/btn0106.png', 1);
	localParams[124]:setTitleFontSize(14);
	localParams[124]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[124]:setAnchorPoint(0.50, 0.50);
	localParams[124]:onClick(handler(self, self._onAllSort));
	localParams[124]:setTouchEnabled(true);
	localParams[124]:setContentSize({width = 93.0, height = 46.0});
	localParams[124]:setPosition(406.94, 30.0);
	self.__children['Image_1#all_btn'] = localParams[124];
	localParams[124].__children = self.__children;
	localParams[124].__Name = 'Image_1#all_btn';
	localParams[27]:addChild(localParams[124]);

	localParams[125] = Text:create();
	localParams[125]:setFontSize(18);
	localParams[125]:setString([[全部]]);
	localParams[125]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[125]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[125]:setAnchorPoint(1.00, 0.50);
	localParams[125]:setContentSize({width = 40.0, height = 20.0});
	localParams[125]:setPosition(62.2, 23.0);
	self.__children['Image_1#all_btn#Text_1'] = localParams[125];
	localParams[125].__children = self.__children;
	localParams[125].__Name = 'Image_1#all_btn#Text_1';
	localParams[124]:addChild(localParams[125]);

	localParams[126] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[126]:ignoreContentAdaptWithSize(false);
	localParams[126]:setScale9Enabled(true);
	localParams[126]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[126]:setAnchorPoint(0.50, 0.50);
	localParams[126]:setContentSize({width = 340.0, height = 120.0});
	localParams[126]:setPosition(WinSize.width - 288.40, 78.35);
	self.__children['Image_2'] = localParams[126];
	localParams[126].__children = self.__children;
	localParams[126].__Name = 'Image_2';
	self:addChild(localParams[126]);

	localParams[127] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[127]:ignoreContentAdaptWithSize(false);
	localParams[127]:setScale9Enabled(true);
	localParams[127]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[127]:setAnchorPoint(0.50, 0.50);
	localParams[127]:setContentSize({width = 99.0, height = 171.0});
	localParams[127]:setPosition(277.1, 163.2);
	self.__children['Image_2#positionBg_img'] = localParams[127];
	localParams[127].__children = self.__children;
	localParams[127].__Name = 'Image_2#positionBg_img';
	localParams[126]:addChild(localParams[127]);

	localParams[128] = Button:create();
	localParams[128]:setTitleFontSize(14);
	localParams[128]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[128]:setScale9Enabled(true);
	localParams[128]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[128]:setAnchorPoint(0.50, 0.50);
	localParams[128]:onClick(handler(self, self._onPositionSort));
	localParams[128]:setTouchEnabled(true);
	localParams[128]:setContentSize({width = 90.0, height = 37.0});
	localParams[128]:setPosition(49.5, 149.63);
	self.__children['Image_2#positionBg_img#Button_1'] = localParams[128];
	localParams[128].__children = self.__children;
	localParams[128].__Name = 'Image_2#positionBg_img#Button_1';
	localParams[127]:addChild(localParams[128]);

	localParams[129] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[129]:setAnchorPoint(0.50, 0.50);
	localParams[129]:setScaleX(0.40);
	localParams[129]:setScaleY(0.90);
	localParams[129]:setContentSize({width = 198.0, height = 37.0});
	localParams[129]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_1#__SELECTED_IMG'] = localParams[129];
	localParams[129].__children = self.__children;
	localParams[129].__Name = 'Image_2#positionBg_img#Button_1#__SELECTED_IMG';
	localParams[128]:addChild(localParams[129]);

	localParams[130] = Text:create();
	localParams[130]:setFontSize(18);
	localParams[130]:setString([[全部]]);
	localParams[130]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[130]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[130]:setAnchorPoint(0.50, 0.50);
	localParams[130]:setContentSize({width = 40.0, height = 20.0});
	localParams[130]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_1#condition_txt'] = localParams[130];
	localParams[130].__children = self.__children;
	localParams[130].__Name = 'Image_2#positionBg_img#Button_1#condition_txt';
	localParams[128]:addChild(localParams[130]);

	localParams[131] = Button:create();
	localParams[131]:setTitleFontSize(14);
	localParams[131]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[131]:setScale9Enabled(true);
	localParams[131]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[131]:setAnchorPoint(0.50, 0.50);
	localParams[131]:onClick(handler(self, self._onPositionSort));
	localParams[131]:setTouchEnabled(true);
	localParams[131]:setContentSize({width = 90.0, height = 37.0});
	localParams[131]:setPosition(49.5, 106.88);
	self.__children['Image_2#positionBg_img#Button_2'] = localParams[131];
	localParams[131].__children = self.__children;
	localParams[131].__Name = 'Image_2#positionBg_img#Button_2';
	localParams[127]:addChild(localParams[131]);

	localParams[132] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[132]:setAnchorPoint(0.50, 0.50);
	localParams[132]:setScaleX(0.40);
	localParams[132]:setScaleY(0.90);
	localParams[132]:setContentSize({width = 198.0, height = 37.0});
	localParams[132]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_2#__SELECTED_IMG'] = localParams[132];
	localParams[132].__children = self.__children;
	localParams[132].__Name = 'Image_2#positionBg_img#Button_2#__SELECTED_IMG';
	localParams[131]:addChild(localParams[132]);

	localParams[133] = Text:create();
	localParams[133]:setFontSize(18);
	localParams[133]:setString([[坦克]]);
	localParams[133]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[133]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[133]:setAnchorPoint(0.50, 0.50);
	localParams[133]:setContentSize({width = 40.0, height = 20.0});
	localParams[133]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_2#condition_txt'] = localParams[133];
	localParams[133].__children = self.__children;
	localParams[133].__Name = 'Image_2#positionBg_img#Button_2#condition_txt';
	localParams[131]:addChild(localParams[133]);

	localParams[134] = Button:create();
	localParams[134]:setTitleFontSize(14);
	localParams[134]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[134]:setScale9Enabled(true);
	localParams[134]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[134]:setAnchorPoint(0.50, 0.50);
	localParams[134]:onClick(handler(self, self._onPositionSort));
	localParams[134]:setTouchEnabled(true);
	localParams[134]:setContentSize({width = 90.0, height = 37.0});
	localParams[134]:setPosition(49.5, 64.13);
	self.__children['Image_2#positionBg_img#Button_3'] = localParams[134];
	localParams[134].__children = self.__children;
	localParams[134].__Name = 'Image_2#positionBg_img#Button_3';
	localParams[127]:addChild(localParams[134]);

	localParams[135] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[135]:setAnchorPoint(0.50, 0.50);
	localParams[135]:setScaleX(0.40);
	localParams[135]:setScaleY(0.90);
	localParams[135]:setContentSize({width = 198.0, height = 37.0});
	localParams[135]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_3#__SELECTED_IMG'] = localParams[135];
	localParams[135].__children = self.__children;
	localParams[135].__Name = 'Image_2#positionBg_img#Button_3#__SELECTED_IMG';
	localParams[134]:addChild(localParams[135]);

	localParams[136] = Text:create();
	localParams[136]:setFontSize(18);
	localParams[136]:setString([[输出]]);
	localParams[136]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[136]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[136]:setAnchorPoint(0.50, 0.50);
	localParams[136]:setContentSize({width = 39.0, height = 20.0});
	localParams[136]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_3#condition_txt'] = localParams[136];
	localParams[136].__children = self.__children;
	localParams[136].__Name = 'Image_2#positionBg_img#Button_3#condition_txt';
	localParams[134]:addChild(localParams[136]);

	localParams[137] = Button:create();
	localParams[137]:setTitleFontSize(14);
	localParams[137]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[137]:setScale9Enabled(true);
	localParams[137]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[137]:setAnchorPoint(0.50, 0.50);
	localParams[137]:onClick(handler(self, self._onPositionSort));
	localParams[137]:setTouchEnabled(true);
	localParams[137]:setContentSize({width = 90.0, height = 37.0});
	localParams[137]:setPosition(49.5, 21.38);
	self.__children['Image_2#positionBg_img#Button_4'] = localParams[137];
	localParams[137].__children = self.__children;
	localParams[137].__Name = 'Image_2#positionBg_img#Button_4';
	localParams[127]:addChild(localParams[137]);

	localParams[138] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[138]:setAnchorPoint(0.50, 0.50);
	localParams[138]:setScaleX(0.40);
	localParams[138]:setScaleY(0.90);
	localParams[138]:setContentSize({width = 198.0, height = 37.0});
	localParams[138]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_4#__SELECTED_IMG'] = localParams[138];
	localParams[138].__children = self.__children;
	localParams[138].__Name = 'Image_2#positionBg_img#Button_4#__SELECTED_IMG';
	localParams[137]:addChild(localParams[138]);

	localParams[139] = Text:create();
	localParams[139]:setFontSize(18);
	localParams[139]:setString([[突袭]]);
	localParams[139]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[139]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[139]:setAnchorPoint(0.50, 0.50);
	localParams[139]:setContentSize({width = 40.0, height = 20.0});
	localParams[139]:setPosition(45.0, 18.5);
	self.__children['Image_2#positionBg_img#Button_4#condition_txt'] = localParams[139];
	localParams[139].__children = self.__children;
	localParams[139].__Name = 'Image_2#positionBg_img#Button_4#condition_txt';
	localParams[137]:addChild(localParams[139]);

	localParams[140] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[140]:setAnchorPoint(0.50, 0.50);
	localParams[140]:setContentSize({width = 83.0, height = 2.0});
	localParams[140]:setPosition(49.5, 42.75);
	self.__children['Image_2#positionBg_img#line_sprite1'] = localParams[140];
	localParams[140].__children = self.__children;
	localParams[140].__Name = 'Image_2#positionBg_img#line_sprite1';
	localParams[127]:addChild(localParams[140]);

	localParams[141] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[141]:setAnchorPoint(0.50, 0.50);
	localParams[141]:setContentSize({width = 83.0, height = 2.0});
	localParams[141]:setPosition(49.5, 85.5);
	self.__children['Image_2#positionBg_img#line_sprite2'] = localParams[141];
	localParams[141].__children = self.__children;
	localParams[141].__Name = 'Image_2#positionBg_img#line_sprite2';
	localParams[127]:addChild(localParams[141]);

	localParams[142] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[142]:setAnchorPoint(0.50, 0.50);
	localParams[142]:setContentSize({width = 83.0, height = 2.0});
	localParams[142]:setPosition(49.5, 128.25);
	self.__children['Image_2#positionBg_img#line_sprite3'] = localParams[142];
	localParams[142].__children = self.__children;
	localParams[142].__Name = 'Image_2#positionBg_img#line_sprite3';
	localParams[127]:addChild(localParams[142]);

	localParams[143] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[143]:ignoreContentAdaptWithSize(false);
	localParams[143]:setScale9Enabled(true);
	localParams[143]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[143]:setAnchorPoint(0.50, 0.50);
	localParams[143]:setContentSize({width = 99.0, height = 216.0});
	localParams[143]:setPosition(277.1, 187.36);
	self.__children['Image_2#qualityBg_img'] = localParams[143];
	localParams[143].__children = self.__children;
	localParams[143].__Name = 'Image_2#qualityBg_img';
	localParams[126]:addChild(localParams[143]);

	localParams[144] = Button:create();
	localParams[144]:setTitleFontSize(14);
	localParams[144]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[144]:setScale9Enabled(true);
	localParams[144]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[144]:setAnchorPoint(0.50, 0.50);
	localParams[144]:onClick(handler(self, self._onQualitySort));
	localParams[144]:setTouchEnabled(true);
	localParams[144]:setContentSize({width = 90.0, height = 37.0});
	localParams[144]:setPosition(49.5, 194.4);
	self.__children['Image_2#qualityBg_img#Button_1'] = localParams[144];
	localParams[144].__children = self.__children;
	localParams[144].__Name = 'Image_2#qualityBg_img#Button_1';
	localParams[143]:addChild(localParams[144]);

	localParams[145] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[145]:setAnchorPoint(0.50, 0.50);
	localParams[145]:setScaleX(0.40);
	localParams[145]:setScaleY(0.90);
	localParams[145]:setContentSize({width = 198.0, height = 37.0});
	localParams[145]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_1#__SELECTED_IMG'] = localParams[145];
	localParams[145].__children = self.__children;
	localParams[145].__Name = 'Image_2#qualityBg_img#Button_1#__SELECTED_IMG';
	localParams[144]:addChild(localParams[145]);

	localParams[146] = Text:create();
	localParams[146]:setFontSize(18);
	localParams[146]:setString([[全部]]);
	localParams[146]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[146]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[146]:setAnchorPoint(0.50, 0.50);
	localParams[146]:setContentSize({width = 40.0, height = 20.0});
	localParams[146]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_1#condition_txt'] = localParams[146];
	localParams[146].__children = self.__children;
	localParams[146].__Name = 'Image_2#qualityBg_img#Button_1#condition_txt';
	localParams[144]:addChild(localParams[146]);

	localParams[147] = Button:create();
	localParams[147]:setTitleFontSize(14);
	localParams[147]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[147]:setScale9Enabled(true);
	localParams[147]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[147]:setAnchorPoint(0.50, 0.50);
	localParams[147]:onClick(handler(self, self._onQualitySort));
	localParams[147]:setTouchEnabled(true);
	localParams[147]:setContentSize({width = 90.0, height = 37.0});
	localParams[147]:setPosition(49.5, 151.2);
	self.__children['Image_2#qualityBg_img#Button_2'] = localParams[147];
	localParams[147].__children = self.__children;
	localParams[147].__Name = 'Image_2#qualityBg_img#Button_2';
	localParams[143]:addChild(localParams[147]);

	localParams[148] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[148]:setAnchorPoint(0.50, 0.50);
	localParams[148]:setScaleX(0.40);
	localParams[148]:setScaleY(0.90);
	localParams[148]:setContentSize({width = 198.0, height = 37.0});
	localParams[148]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_2#__SELECTED_IMG'] = localParams[148];
	localParams[148].__children = self.__children;
	localParams[148].__Name = 'Image_2#qualityBg_img#Button_2#__SELECTED_IMG';
	localParams[147]:addChild(localParams[148]);

	localParams[149] = Text:create();
	localParams[149]:setFontSize(18);
	localParams[149]:setString([[传说]]);
	localParams[149]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[149]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[149]:setAnchorPoint(0.50, 0.50);
	localParams[149]:setContentSize({width = 40.0, height = 20.0});
	localParams[149]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_2#condition_txt'] = localParams[149];
	localParams[149].__children = self.__children;
	localParams[149].__Name = 'Image_2#qualityBg_img#Button_2#condition_txt';
	localParams[147]:addChild(localParams[149]);

	localParams[150] = Button:create();
	localParams[150]:setTitleFontSize(14);
	localParams[150]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[150]:setScale9Enabled(true);
	localParams[150]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[150]:setAnchorPoint(0.50, 0.50);
	localParams[150]:onClick(handler(self, self._onQualitySort));
	localParams[150]:setTouchEnabled(true);
	localParams[150]:setContentSize({width = 90.0, height = 37.0});
	localParams[150]:setPosition(49.5, 108.0);
	self.__children['Image_2#qualityBg_img#Button_3'] = localParams[150];
	localParams[150].__children = self.__children;
	localParams[150].__Name = 'Image_2#qualityBg_img#Button_3';
	localParams[143]:addChild(localParams[150]);

	localParams[151] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[151]:setAnchorPoint(0.50, 0.50);
	localParams[151]:setScaleX(0.40);
	localParams[151]:setScaleY(0.90);
	localParams[151]:setContentSize({width = 198.0, height = 37.0});
	localParams[151]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_3#__SELECTED_IMG'] = localParams[151];
	localParams[151].__children = self.__children;
	localParams[151].__Name = 'Image_2#qualityBg_img#Button_3#__SELECTED_IMG';
	localParams[150]:addChild(localParams[151]);

	localParams[152] = Text:create();
	localParams[152]:setFontSize(18);
	localParams[152]:setString([[史诗]]);
	localParams[152]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[152]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[152]:setAnchorPoint(0.50, 0.50);
	localParams[152]:setContentSize({width = 40.0, height = 20.0});
	localParams[152]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_3#condition_txt'] = localParams[152];
	localParams[152].__children = self.__children;
	localParams[152].__Name = 'Image_2#qualityBg_img#Button_3#condition_txt';
	localParams[150]:addChild(localParams[152]);

	localParams[153] = Button:create();
	localParams[153]:setTitleFontSize(14);
	localParams[153]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[153]:setScale9Enabled(true);
	localParams[153]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[153]:setAnchorPoint(0.50, 0.50);
	localParams[153]:onClick(handler(self, self._onQualitySort));
	localParams[153]:setTouchEnabled(true);
	localParams[153]:setContentSize({width = 90.0, height = 37.0});
	localParams[153]:setPosition(49.5, 64.8);
	self.__children['Image_2#qualityBg_img#Button_4'] = localParams[153];
	localParams[153].__children = self.__children;
	localParams[153].__Name = 'Image_2#qualityBg_img#Button_4';
	localParams[143]:addChild(localParams[153]);

	localParams[154] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[154]:setAnchorPoint(0.50, 0.50);
	localParams[154]:setScaleX(0.40);
	localParams[154]:setScaleY(0.90);
	localParams[154]:setContentSize({width = 198.0, height = 37.0});
	localParams[154]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_4#__SELECTED_IMG'] = localParams[154];
	localParams[154].__children = self.__children;
	localParams[154].__Name = 'Image_2#qualityBg_img#Button_4#__SELECTED_IMG';
	localParams[153]:addChild(localParams[154]);

	localParams[155] = Text:create();
	localParams[155]:setFontSize(18);
	localParams[155]:setString([[稀有]]);
	localParams[155]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[155]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[155]:setAnchorPoint(0.50, 0.50);
	localParams[155]:setContentSize({width = 40.0, height = 20.0});
	localParams[155]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_4#condition_txt'] = localParams[155];
	localParams[155].__children = self.__children;
	localParams[155].__Name = 'Image_2#qualityBg_img#Button_4#condition_txt';
	localParams[153]:addChild(localParams[155]);

	localParams[156] = Button:create();
	localParams[156]:setTitleFontSize(14);
	localParams[156]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[156]:setScale9Enabled(true);
	localParams[156]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[156]:setAnchorPoint(0.50, 0.50);
	localParams[156]:onClick(handler(self, self._onQualitySort));
	localParams[156]:setTouchEnabled(true);
	localParams[156]:setContentSize({width = 90.0, height = 37.0});
	localParams[156]:setPosition(49.5, 21.6);
	self.__children['Image_2#qualityBg_img#Button_5'] = localParams[156];
	localParams[156].__children = self.__children;
	localParams[156].__Name = 'Image_2#qualityBg_img#Button_5';
	localParams[143]:addChild(localParams[156]);

	localParams[157] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[157]:setAnchorPoint(0.50, 0.50);
	localParams[157]:setScaleX(0.40);
	localParams[157]:setScaleY(0.90);
	localParams[157]:setContentSize({width = 198.0, height = 37.0});
	localParams[157]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_5#__SELECTED_IMG'] = localParams[157];
	localParams[157].__children = self.__children;
	localParams[157].__Name = 'Image_2#qualityBg_img#Button_5#__SELECTED_IMG';
	localParams[156]:addChild(localParams[157]);

	localParams[158] = Text:create();
	localParams[158]:setFontSize(18);
	localParams[158]:setString([[普通]]);
	localParams[158]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[158]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[158]:setAnchorPoint(0.50, 0.50);
	localParams[158]:setContentSize({width = 40.0, height = 20.0});
	localParams[158]:setPosition(45.0, 18.5);
	self.__children['Image_2#qualityBg_img#Button_5#condition_txt'] = localParams[158];
	localParams[158].__children = self.__children;
	localParams[158].__Name = 'Image_2#qualityBg_img#Button_5#condition_txt';
	localParams[156]:addChild(localParams[158]);

	localParams[159] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[159]:setAnchorPoint(0.50, 0.50);
	localParams[159]:setContentSize({width = 83.0, height = 2.0});
	localParams[159]:setPosition(49.5, 43.2);
	self.__children['Image_2#qualityBg_img#line_sprite1'] = localParams[159];
	localParams[159].__children = self.__children;
	localParams[159].__Name = 'Image_2#qualityBg_img#line_sprite1';
	localParams[143]:addChild(localParams[159]);

	localParams[160] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[160]:setAnchorPoint(0.50, 0.50);
	localParams[160]:setContentSize({width = 83.0, height = 2.0});
	localParams[160]:setPosition(49.5, 86.4);
	self.__children['Image_2#qualityBg_img#line_sprite2'] = localParams[160];
	localParams[160].__children = self.__children;
	localParams[160].__Name = 'Image_2#qualityBg_img#line_sprite2';
	localParams[143]:addChild(localParams[160]);

	localParams[161] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[161]:setAnchorPoint(0.50, 0.50);
	localParams[161]:setContentSize({width = 83.0, height = 2.0});
	localParams[161]:setPosition(49.5, 129.6);
	self.__children['Image_2#qualityBg_img#line_sprite3'] = localParams[161];
	localParams[161].__children = self.__children;
	localParams[161].__Name = 'Image_2#qualityBg_img#line_sprite3';
	localParams[143]:addChild(localParams[161]);

	localParams[162] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[162]:setAnchorPoint(0.50, 0.50);
	localParams[162]:setContentSize({width = 83.0, height = 2.0});
	localParams[162]:setPosition(49.5, 172.8);
	self.__children['Image_2#qualityBg_img#line_sprite4'] = localParams[162];
	localParams[162].__children = self.__children;
	localParams[162].__Name = 'Image_2#qualityBg_img#line_sprite4';
	localParams[143]:addChild(localParams[162]);

	localParams[163] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[163]:ignoreContentAdaptWithSize(false);
	localParams[163]:setScale9Enabled(true);
	localParams[163]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[163]:setAnchorPoint(0.50, 0.50);
	localParams[163]:setContentSize({width = 99.0, height = 261.0});
	localParams[163]:setPosition(277.1, 209.4);
	self.__children['Image_2#starBg_img'] = localParams[163];
	localParams[163].__children = self.__children;
	localParams[163].__Name = 'Image_2#starBg_img';
	localParams[126]:addChild(localParams[163]);

	localParams[164] = Button:create();
	localParams[164]:setTitleFontSize(14);
	localParams[164]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[164]:setScale9Enabled(true);
	localParams[164]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[164]:setAnchorPoint(0.50, 0.50);
	localParams[164]:onClick(handler(self, self._onStarSort));
	localParams[164]:setTouchEnabled(true);
	localParams[164]:setContentSize({width = 90.0, height = 37.0});
	localParams[164]:setPosition(49.5, 238.81);
	self.__children['Image_2#starBg_img#Button_1'] = localParams[164];
	localParams[164].__children = self.__children;
	localParams[164].__Name = 'Image_2#starBg_img#Button_1';
	localParams[163]:addChild(localParams[164]);

	localParams[165] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[165]:setAnchorPoint(0.50, 0.50);
	localParams[165]:setScaleX(0.40);
	localParams[165]:setScaleY(0.90);
	localParams[165]:setContentSize({width = 198.0, height = 37.0});
	localParams[165]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_1#__SELECTED_IMG'] = localParams[165];
	localParams[165].__children = self.__children;
	localParams[165].__Name = 'Image_2#starBg_img#Button_1#__SELECTED_IMG';
	localParams[164]:addChild(localParams[165]);

	localParams[166] = Text:create();
	localParams[166]:setFontSize(18);
	localParams[166]:setString([[全部]]);
	localParams[166]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[166]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[166]:setAnchorPoint(0.50, 0.50);
	localParams[166]:setContentSize({width = 40.0, height = 20.0});
	localParams[166]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_1#condition_txt'] = localParams[166];
	localParams[166].__children = self.__children;
	localParams[166].__Name = 'Image_2#starBg_img#Button_1#condition_txt';
	localParams[164]:addChild(localParams[166]);

	localParams[167] = Button:create();
	localParams[167]:setTitleFontSize(14);
	localParams[167]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[167]:setScale9Enabled(true);
	localParams[167]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[167]:setAnchorPoint(0.50, 0.50);
	localParams[167]:onClick(handler(self, self._onStarSort));
	localParams[167]:setTouchEnabled(true);
	localParams[167]:setContentSize({width = 90.0, height = 37.0});
	localParams[167]:setPosition(49.5, 195.75);
	self.__children['Image_2#starBg_img#Button_2'] = localParams[167];
	localParams[167].__children = self.__children;
	localParams[167].__Name = 'Image_2#starBg_img#Button_2';
	localParams[163]:addChild(localParams[167]);

	localParams[168] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[168]:setAnchorPoint(0.50, 0.50);
	localParams[168]:setScaleX(0.40);
	localParams[168]:setScaleY(0.90);
	localParams[168]:setContentSize({width = 198.0, height = 37.0});
	localParams[168]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_2#__SELECTED_IMG'] = localParams[168];
	localParams[168].__children = self.__children;
	localParams[168].__Name = 'Image_2#starBg_img#Button_2#__SELECTED_IMG';
	localParams[167]:addChild(localParams[168]);

	localParams[169] = Text:create();
	localParams[169]:setFontSize(18);
	localParams[169]:setString([[9~10星]]);
	localParams[169]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[169]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[169]:setAnchorPoint(0.50, 0.50);
	localParams[169]:setContentSize({width = 58.0, height = 20.0});
	localParams[169]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_2#condition_txt'] = localParams[169];
	localParams[169].__children = self.__children;
	localParams[169].__Name = 'Image_2#starBg_img#Button_2#condition_txt';
	localParams[167]:addChild(localParams[169]);

	localParams[170] = Button:create();
	localParams[170]:setTitleFontSize(14);
	localParams[170]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[170]:setScale9Enabled(true);
	localParams[170]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[170]:setAnchorPoint(0.50, 0.50);
	localParams[170]:onClick(handler(self, self._onStarSort));
	localParams[170]:setTouchEnabled(true);
	localParams[170]:setContentSize({width = 90.0, height = 37.0});
	localParams[170]:setPosition(49.5, 152.16);
	self.__children['Image_2#starBg_img#Button_3'] = localParams[170];
	localParams[170].__children = self.__children;
	localParams[170].__Name = 'Image_2#starBg_img#Button_3';
	localParams[163]:addChild(localParams[170]);

	localParams[171] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[171]:setAnchorPoint(0.50, 0.50);
	localParams[171]:setScaleX(0.40);
	localParams[171]:setScaleY(0.90);
	localParams[171]:setContentSize({width = 198.0, height = 37.0});
	localParams[171]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_3#__SELECTED_IMG'] = localParams[171];
	localParams[171].__children = self.__children;
	localParams[171].__Name = 'Image_2#starBg_img#Button_3#__SELECTED_IMG';
	localParams[170]:addChild(localParams[171]);

	localParams[172] = Text:create();
	localParams[172]:setFontSize(18);
	localParams[172]:setString([[7~8星]]);
	localParams[172]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[172]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[172]:setAnchorPoint(0.50, 0.50);
	localParams[172]:setContentSize({width = 49.0, height = 20.0});
	localParams[172]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_3#condition_txt'] = localParams[172];
	localParams[172].__children = self.__children;
	localParams[172].__Name = 'Image_2#starBg_img#Button_3#condition_txt';
	localParams[170]:addChild(localParams[172]);

	localParams[173] = Button:create();
	localParams[173]:setTitleFontSize(14);
	localParams[173]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[173]:setScale9Enabled(true);
	localParams[173]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[173]:setAnchorPoint(0.50, 0.50);
	localParams[173]:onClick(handler(self, self._onStarSort));
	localParams[173]:setTouchEnabled(true);
	localParams[173]:setContentSize({width = 90.0, height = 37.0});
	localParams[173]:setPosition(49.5, 108.84);
	self.__children['Image_2#starBg_img#Button_4'] = localParams[173];
	localParams[173].__children = self.__children;
	localParams[173].__Name = 'Image_2#starBg_img#Button_4';
	localParams[163]:addChild(localParams[173]);

	localParams[174] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[174]:setAnchorPoint(0.50, 0.50);
	localParams[174]:setScaleX(0.40);
	localParams[174]:setScaleY(0.90);
	localParams[174]:setContentSize({width = 198.0, height = 37.0});
	localParams[174]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_4#__SELECTED_IMG'] = localParams[174];
	localParams[174].__children = self.__children;
	localParams[174].__Name = 'Image_2#starBg_img#Button_4#__SELECTED_IMG';
	localParams[173]:addChild(localParams[174]);

	localParams[175] = Text:create();
	localParams[175]:setFontSize(18);
	localParams[175]:setString([[5~6星]]);
	localParams[175]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[175]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[175]:setAnchorPoint(0.50, 0.50);
	localParams[175]:setContentSize({width = 49.0, height = 20.0});
	localParams[175]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_4#condition_txt'] = localParams[175];
	localParams[175].__children = self.__children;
	localParams[175].__Name = 'Image_2#starBg_img#Button_4#condition_txt';
	localParams[173]:addChild(localParams[175]);

	localParams[176] = Button:create();
	localParams[176]:setTitleFontSize(14);
	localParams[176]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[176]:setScale9Enabled(true);
	localParams[176]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[176]:setAnchorPoint(0.50, 0.50);
	localParams[176]:onClick(handler(self, self._onStarSort));
	localParams[176]:setTouchEnabled(true);
	localParams[176]:setContentSize({width = 90.0, height = 37.0});
	localParams[176]:setPosition(49.5, 65.25);
	self.__children['Image_2#starBg_img#Button_5'] = localParams[176];
	localParams[176].__children = self.__children;
	localParams[176].__Name = 'Image_2#starBg_img#Button_5';
	localParams[163]:addChild(localParams[176]);

	localParams[177] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[177]:setAnchorPoint(0.50, 0.50);
	localParams[177]:setScaleX(0.40);
	localParams[177]:setScaleY(0.90);
	localParams[177]:setContentSize({width = 198.0, height = 37.0});
	localParams[177]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_5#__SELECTED_IMG'] = localParams[177];
	localParams[177].__children = self.__children;
	localParams[177].__Name = 'Image_2#starBg_img#Button_5#__SELECTED_IMG';
	localParams[176]:addChild(localParams[177]);

	localParams[178] = Text:create();
	localParams[178]:setFontSize(18);
	localParams[178]:setString([[3~4星]]);
	localParams[178]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[178]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[178]:setAnchorPoint(0.50, 0.50);
	localParams[178]:setContentSize({width = 49.0, height = 20.0});
	localParams[178]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_5#condition_txt'] = localParams[178];
	localParams[178].__children = self.__children;
	localParams[178].__Name = 'Image_2#starBg_img#Button_5#condition_txt';
	localParams[176]:addChild(localParams[178]);

	localParams[179] = Button:create();
	localParams[179]:setTitleFontSize(14);
	localParams[179]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[179]:setScale9Enabled(true);
	localParams[179]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[179]:setAnchorPoint(0.50, 0.50);
	localParams[179]:onClick(handler(self, self._onStarSort));
	localParams[179]:setTouchEnabled(true);
	localParams[179]:setContentSize({width = 90.0, height = 37.0});
	localParams[179]:setPosition(49.5, 21.66);
	self.__children['Image_2#starBg_img#Button_6'] = localParams[179];
	localParams[179].__children = self.__children;
	localParams[179].__Name = 'Image_2#starBg_img#Button_6';
	localParams[163]:addChild(localParams[179]);

	localParams[180] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[180]:setAnchorPoint(0.50, 0.50);
	localParams[180]:setScaleX(0.40);
	localParams[180]:setScaleY(0.90);
	localParams[180]:setContentSize({width = 198.0, height = 37.0});
	localParams[180]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_6#__SELECTED_IMG'] = localParams[180];
	localParams[180].__children = self.__children;
	localParams[180].__Name = 'Image_2#starBg_img#Button_6#__SELECTED_IMG';
	localParams[179]:addChild(localParams[180]);

	localParams[181] = Text:create();
	localParams[181]:setFontSize(18);
	localParams[181]:setString([[1~2星]]);
	localParams[181]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[181]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[181]:setAnchorPoint(0.50, 0.50);
	localParams[181]:setContentSize({width = 49.0, height = 20.0});
	localParams[181]:setPosition(45.0, 18.5);
	self.__children['Image_2#starBg_img#Button_6#condition_txt'] = localParams[181];
	localParams[181].__children = self.__children;
	localParams[181].__Name = 'Image_2#starBg_img#Button_6#condition_txt';
	localParams[179]:addChild(localParams[181]);

	localParams[182] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[182]:setAnchorPoint(0.50, 0.50);
	localParams[182]:setContentSize({width = 83.0, height = 2.0});
	localParams[182]:setPosition(49.5, 43.59);
	self.__children['Image_2#starBg_img#line_sprite1'] = localParams[182];
	localParams[182].__children = self.__children;
	localParams[182].__Name = 'Image_2#starBg_img#line_sprite1';
	localParams[163]:addChild(localParams[182]);

	localParams[183] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[183]:setAnchorPoint(0.50, 0.50);
	localParams[183]:setContentSize({width = 83.0, height = 2.0});
	localParams[183]:setPosition(49.5, 87.17);
	self.__children['Image_2#starBg_img#line_sprite2'] = localParams[183];
	localParams[183].__children = self.__children;
	localParams[183].__Name = 'Image_2#starBg_img#line_sprite2';
	localParams[163]:addChild(localParams[183]);

	localParams[184] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[184]:setAnchorPoint(0.50, 0.50);
	localParams[184]:setContentSize({width = 83.0, height = 2.0});
	localParams[184]:setPosition(49.5, 130.5);
	self.__children['Image_2#starBg_img#line_sprite3'] = localParams[184];
	localParams[184].__children = self.__children;
	localParams[184].__Name = 'Image_2#starBg_img#line_sprite3';
	localParams[163]:addChild(localParams[184]);

	localParams[185] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[185]:setAnchorPoint(0.50, 0.50);
	localParams[185]:setContentSize({width = 83.0, height = 2.0});
	localParams[185]:setPosition(49.5, 174.35);
	self.__children['Image_2#starBg_img#line_sprite4'] = localParams[185];
	localParams[185].__children = self.__children;
	localParams[185].__Name = 'Image_2#starBg_img#line_sprite4';
	localParams[163]:addChild(localParams[185]);

	localParams[186] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[186]:setAnchorPoint(0.50, 0.50);
	localParams[186]:setContentSize({width = 83.0, height = 2.0});
	localParams[186]:setPosition(49.5, 217.94);
	self.__children['Image_2#starBg_img#line_sprite5'] = localParams[186];
	localParams[186].__children = self.__children;
	localParams[186].__Name = 'Image_2#starBg_img#line_sprite5';
	localParams[163]:addChild(localParams[186]);

	localParams[187] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[187]:ignoreContentAdaptWithSize(false);
	localParams[187]:setScale9Enabled(true);
	localParams[187]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[187]:setAnchorPoint(0.50, 0.50);
	localParams[187]:setContentSize({width = 99.0, height = 306.0});
	localParams[187]:setPosition(277.1, 231.4);
	self.__children['Image_2#costBg_img'] = localParams[187];
	localParams[187].__children = self.__children;
	localParams[187].__Name = 'Image_2#costBg_img';
	localParams[126]:addChild(localParams[187]);

	localParams[188] = Button:create();
	localParams[188]:setTitleFontSize(14);
	localParams[188]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[188]:setScale9Enabled(true);
	localParams[188]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[188]:setAnchorPoint(0.50, 0.50);
	localParams[188]:onClick(handler(self, self._onCostSort));
	localParams[188]:setTouchEnabled(true);
	localParams[188]:setContentSize({width = 90.0, height = 37.0});
	localParams[188]:setPosition(49.5, 283.97);
	self.__children['Image_2#costBg_img#Button_1'] = localParams[188];
	localParams[188].__children = self.__children;
	localParams[188].__Name = 'Image_2#costBg_img#Button_1';
	localParams[187]:addChild(localParams[188]);

	localParams[189] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[189]:setAnchorPoint(0.50, 0.50);
	localParams[189]:setScaleX(0.40);
	localParams[189]:setScaleY(0.90);
	localParams[189]:setContentSize({width = 198.0, height = 37.0});
	localParams[189]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_1#__SELECTED_IMG'] = localParams[189];
	localParams[189].__children = self.__children;
	localParams[189].__Name = 'Image_2#costBg_img#Button_1#__SELECTED_IMG';
	localParams[188]:addChild(localParams[189]);

	localParams[190] = Text:create();
	localParams[190]:setFontSize(18);
	localParams[190]:setString([[全部]]);
	localParams[190]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[190]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[190]:setAnchorPoint(0.50, 0.50);
	localParams[190]:setContentSize({width = 40.0, height = 20.0});
	localParams[190]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_1#condition_txt'] = localParams[190];
	localParams[190].__children = self.__children;
	localParams[190].__Name = 'Image_2#costBg_img#Button_1#condition_txt';
	localParams[188]:addChild(localParams[190]);

	localParams[191] = Button:create();
	localParams[191]:setTitleFontSize(14);
	localParams[191]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[191]:setScale9Enabled(true);
	localParams[191]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[191]:setAnchorPoint(0.50, 0.50);
	localParams[191]:onClick(handler(self, self._onCostSort));
	localParams[191]:setTouchEnabled(true);
	localParams[191]:setContentSize({width = 90.0, height = 37.0});
	localParams[191]:setPosition(49.5, 240.82);
	self.__children['Image_2#costBg_img#Button_2'] = localParams[191];
	localParams[191].__children = self.__children;
	localParams[191].__Name = 'Image_2#costBg_img#Button_2';
	localParams[187]:addChild(localParams[191]);

	localParams[192] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[192]:setAnchorPoint(0.50, 0.50);
	localParams[192]:setScaleX(0.40);
	localParams[192]:setScaleY(0.90);
	localParams[192]:setContentSize({width = 198.0, height = 37.0});
	localParams[192]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_2#__SELECTED_IMG'] = localParams[192];
	localParams[192].__children = self.__children;
	localParams[192].__Name = 'Image_2#costBg_img#Button_2#__SELECTED_IMG';
	localParams[191]:addChild(localParams[192]);

	localParams[193] = Text:create();
	localParams[193]:setFontSize(18);
	localParams[193]:setString([[6怒]]);
	localParams[193]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[193]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[193]:setAnchorPoint(0.50, 0.50);
	localParams[193]:setContentSize({width = 31.0, height = 20.0});
	localParams[193]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_2#condition_txt'] = localParams[193];
	localParams[193].__children = self.__children;
	localParams[193].__Name = 'Image_2#costBg_img#Button_2#condition_txt';
	localParams[191]:addChild(localParams[193]);

	localParams[194] = Button:create();
	localParams[194]:setTitleFontSize(14);
	localParams[194]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[194]:setScale9Enabled(true);
	localParams[194]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[194]:setAnchorPoint(0.50, 0.50);
	localParams[194]:onClick(handler(self, self._onCostSort));
	localParams[194]:setTouchEnabled(true);
	localParams[194]:setContentSize({width = 90.0, height = 37.0});
	localParams[194]:setPosition(49.5, 197.37);
	self.__children['Image_2#costBg_img#Button_3'] = localParams[194];
	localParams[194].__children = self.__children;
	localParams[194].__Name = 'Image_2#costBg_img#Button_3';
	localParams[187]:addChild(localParams[194]);

	localParams[195] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[195]:setAnchorPoint(0.50, 0.50);
	localParams[195]:setScaleX(0.40);
	localParams[195]:setScaleY(0.90);
	localParams[195]:setContentSize({width = 198.0, height = 37.0});
	localParams[195]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_3#__SELECTED_IMG'] = localParams[195];
	localParams[195].__children = self.__children;
	localParams[195].__Name = 'Image_2#costBg_img#Button_3#__SELECTED_IMG';
	localParams[194]:addChild(localParams[195]);

	localParams[196] = Text:create();
	localParams[196]:setFontSize(18);
	localParams[196]:setString([[5怒]]);
	localParams[196]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[196]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[196]:setAnchorPoint(0.50, 0.50);
	localParams[196]:setContentSize({width = 31.0, height = 20.0});
	localParams[196]:setPosition(45.0, 17.5);
	self.__children['Image_2#costBg_img#Button_3#condition_txt'] = localParams[196];
	localParams[196].__children = self.__children;
	localParams[196].__Name = 'Image_2#costBg_img#Button_3#condition_txt';
	localParams[194]:addChild(localParams[196]);

	localParams[197] = Button:create();
	localParams[197]:setTitleFontSize(14);
	localParams[197]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[197]:setScale9Enabled(true);
	localParams[197]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[197]:setAnchorPoint(0.50, 0.50);
	localParams[197]:onClick(handler(self, self._onCostSort));
	localParams[197]:setTouchEnabled(true);
	localParams[197]:setContentSize({width = 90.0, height = 37.0});
	localParams[197]:setPosition(49.5, 153.61);
	self.__children['Image_2#costBg_img#Button_4'] = localParams[197];
	localParams[197].__children = self.__children;
	localParams[197].__Name = 'Image_2#costBg_img#Button_4';
	localParams[187]:addChild(localParams[197]);

	localParams[198] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[198]:setAnchorPoint(0.50, 0.50);
	localParams[198]:setScaleX(0.40);
	localParams[198]:setScaleY(0.90);
	localParams[198]:setContentSize({width = 198.0, height = 37.0});
	localParams[198]:setPosition(45.0, 18.57);
	self.__children['Image_2#costBg_img#Button_4#__SELECTED_IMG'] = localParams[198];
	localParams[198].__children = self.__children;
	localParams[198].__Name = 'Image_2#costBg_img#Button_4#__SELECTED_IMG';
	localParams[197]:addChild(localParams[198]);

	localParams[199] = Text:create();
	localParams[199]:setFontSize(18);
	localParams[199]:setString([[4怒]]);
	localParams[199]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[199]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[199]:setAnchorPoint(0.50, 0.50);
	localParams[199]:setContentSize({width = 31.0, height = 20.0});
	localParams[199]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_4#condition_txt'] = localParams[199];
	localParams[199].__children = self.__children;
	localParams[199].__Name = 'Image_2#costBg_img#Button_4#condition_txt';
	localParams[197]:addChild(localParams[199]);

	localParams[200] = Button:create();
	localParams[200]:setTitleFontSize(14);
	localParams[200]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[200]:setScale9Enabled(true);
	localParams[200]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[200]:setAnchorPoint(0.50, 0.50);
	localParams[200]:onClick(handler(self, self._onCostSort));
	localParams[200]:setTouchEnabled(true);
	localParams[200]:setContentSize({width = 90.0, height = 37.0});
	localParams[200]:setPosition(49.5, 110.16);
	self.__children['Image_2#costBg_img#Button_5'] = localParams[200];
	localParams[200].__children = self.__children;
	localParams[200].__Name = 'Image_2#costBg_img#Button_5';
	localParams[187]:addChild(localParams[200]);

	localParams[201] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[201]:setAnchorPoint(0.50, 0.50);
	localParams[201]:setScaleX(0.40);
	localParams[201]:setScaleY(0.90);
	localParams[201]:setContentSize({width = 198.0, height = 37.0});
	localParams[201]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_5#__SELECTED_IMG'] = localParams[201];
	localParams[201].__children = self.__children;
	localParams[201].__Name = 'Image_2#costBg_img#Button_5#__SELECTED_IMG';
	localParams[200]:addChild(localParams[201]);

	localParams[202] = Text:create();
	localParams[202]:setFontSize(18);
	localParams[202]:setString([[3怒]]);
	localParams[202]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[202]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[202]:setAnchorPoint(0.50, 0.50);
	localParams[202]:setContentSize({width = 31.0, height = 20.0});
	localParams[202]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_5#condition_txt'] = localParams[202];
	localParams[202].__children = self.__children;
	localParams[202].__Name = 'Image_2#costBg_img#Button_5#condition_txt';
	localParams[200]:addChild(localParams[202]);

	localParams[203] = Button:create();
	localParams[203]:setTitleFontSize(14);
	localParams[203]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[203]:setScale9Enabled(true);
	localParams[203]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[203]:setAnchorPoint(0.50, 0.50);
	localParams[203]:onClick(handler(self, self._onCostSort));
	localParams[203]:setTouchEnabled(true);
	localParams[203]:setContentSize({width = 90.0, height = 37.0});
	localParams[203]:setPosition(49.5, 66.71);
	self.__children['Image_2#costBg_img#Button_6'] = localParams[203];
	localParams[203].__children = self.__children;
	localParams[203].__Name = 'Image_2#costBg_img#Button_6';
	localParams[187]:addChild(localParams[203]);

	localParams[204] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[204]:setAnchorPoint(0.50, 0.50);
	localParams[204]:setScaleX(0.40);
	localParams[204]:setScaleY(0.90);
	localParams[204]:setContentSize({width = 198.0, height = 37.0});
	localParams[204]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_6#__SELECTED_IMG'] = localParams[204];
	localParams[204].__children = self.__children;
	localParams[204].__Name = 'Image_2#costBg_img#Button_6#__SELECTED_IMG';
	localParams[203]:addChild(localParams[204]);

	localParams[205] = Text:create();
	localParams[205]:setFontSize(18);
	localParams[205]:setString([[2怒]]);
	localParams[205]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[205]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[205]:setAnchorPoint(0.50, 0.50);
	localParams[205]:setContentSize({width = 31.0, height = 20.0});
	localParams[205]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_6#condition_txt'] = localParams[205];
	localParams[205].__children = self.__children;
	localParams[205].__Name = 'Image_2#costBg_img#Button_6#condition_txt';
	localParams[203]:addChild(localParams[205]);

	localParams[206] = Button:create();
	localParams[206]:setTitleFontSize(14);
	localParams[206]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[206]:setScale9Enabled(true);
	localParams[206]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[206]:setAnchorPoint(0.50, 0.50);
	localParams[206]:onClick(handler(self, self._onCostSort));
	localParams[206]:setTouchEnabled(true);
	localParams[206]:setContentSize({width = 90.0, height = 37.0});
	localParams[206]:setPosition(49.5, 22.03);
	self.__children['Image_2#costBg_img#Button_7'] = localParams[206];
	localParams[206].__children = self.__children;
	localParams[206].__Name = 'Image_2#costBg_img#Button_7';
	localParams[187]:addChild(localParams[206]);

	localParams[207] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[207]:setAnchorPoint(0.50, 0.50);
	localParams[207]:setScaleX(0.40);
	localParams[207]:setScaleY(0.90);
	localParams[207]:setContentSize({width = 198.0, height = 37.0});
	localParams[207]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_7#__SELECTED_IMG'] = localParams[207];
	localParams[207].__children = self.__children;
	localParams[207].__Name = 'Image_2#costBg_img#Button_7#__SELECTED_IMG';
	localParams[206]:addChild(localParams[207]);

	localParams[208] = Text:create();
	localParams[208]:setFontSize(18);
	localParams[208]:setString([[1怒]]);
	localParams[208]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[208]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[208]:setAnchorPoint(0.50, 0.50);
	localParams[208]:setContentSize({width = 31.0, height = 20.0});
	localParams[208]:setPosition(45.0, 18.5);
	self.__children['Image_2#costBg_img#Button_7#condition_txt'] = localParams[208];
	localParams[208].__children = self.__children;
	localParams[208].__Name = 'Image_2#costBg_img#Button_7#condition_txt';
	localParams[206]:addChild(localParams[208]);

	localParams[209] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[209]:setAnchorPoint(0.50, 0.50);
	localParams[209]:setContentSize({width = 83.0, height = 2.0});
	localParams[209]:setPosition(49.5, 43.76);
	self.__children['Image_2#costBg_img#line_sprite1'] = localParams[209];
	localParams[209].__children = self.__children;
	localParams[209].__Name = 'Image_2#costBg_img#line_sprite1';
	localParams[187]:addChild(localParams[209]);

	localParams[210] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[210]:setAnchorPoint(0.50, 0.50);
	localParams[210]:setContentSize({width = 83.0, height = 2.0});
	localParams[210]:setPosition(49.5, 87.21);
	self.__children['Image_2#costBg_img#line_sprite2'] = localParams[210];
	localParams[210].__children = self.__children;
	localParams[210].__Name = 'Image_2#costBg_img#line_sprite2';
	localParams[187]:addChild(localParams[210]);

	localParams[211] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[211]:setAnchorPoint(0.50, 0.50);
	localParams[211]:setContentSize({width = 83.0, height = 2.0});
	localParams[211]:setPosition(49.5, 130.66);
	self.__children['Image_2#costBg_img#line_sprite3'] = localParams[211];
	localParams[211].__children = self.__children;
	localParams[211].__Name = 'Image_2#costBg_img#line_sprite3';
	localParams[187]:addChild(localParams[211]);

	localParams[212] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[212]:setAnchorPoint(0.50, 0.50);
	localParams[212]:setContentSize({width = 83.0, height = 2.0});
	localParams[212]:setPosition(49.5, 174.11);
	self.__children['Image_2#costBg_img#line_sprite4'] = localParams[212];
	localParams[212].__children = self.__children;
	localParams[212].__Name = 'Image_2#costBg_img#line_sprite4';
	localParams[187]:addChild(localParams[212]);

	localParams[213] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[213]:setAnchorPoint(0.50, 0.50);
	localParams[213]:setContentSize({width = 83.0, height = 2.0});
	localParams[213]:setPosition(49.5, 217.87);
	self.__children['Image_2#costBg_img#line_sprite5'] = localParams[213];
	localParams[213].__children = self.__children;
	localParams[213].__Name = 'Image_2#costBg_img#line_sprite5';
	localParams[187]:addChild(localParams[213]);

	localParams[214] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[214]:setAnchorPoint(0.50, 0.50);
	localParams[214]:setContentSize({width = 83.0, height = 2.0});
	localParams[214]:setPosition(49.5, 261.63);
	self.__children['Image_2#costBg_img#line_sprite6'] = localParams[214];
	localParams[214].__children = self.__children;
	localParams[214].__Name = 'Image_2#costBg_img#line_sprite6';
	localParams[187]:addChild(localParams[214]);

	localParams[215] = Button:create();
	localParams[215]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[215]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[215]:setTitleFontSize(20);
	localParams[215]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[215]:setAnchorPoint(0.50, 0.50);
	localParams[215]:onClick(handler(self, self._onSort));
	localParams[215]:setTouchEnabled(true);
	localParams[215]:setContentSize({width = 83.0, height = 46.0});
	localParams[215]:setPosition(64.0, 84.61);
	self.__children['Image_2#Button_1'] = localParams[215];
	localParams[215].__children = self.__children;
	localParams[215].__Name = 'Image_2#Button_1';
	localParams[126]:addChild(localParams[215]);

	localParams[216] = ImageView:create('uires/public/sheet_font/fontImg0128.png', 1);
	localParams[216]:setAnchorPoint(0.50, 0.50);
	localParams[216]:setContentSize({width = 43.0, height = 24.0});
	localParams[216]:setPosition(41.5, 23.0);
	self.__children['Image_2#Button_1#Sprite_1'] = localParams[216];
	localParams[216].__children = self.__children;
	localParams[216].__Name = 'Image_2#Button_1#Sprite_1';
	localParams[215]:addChild(localParams[216]);

	localParams[217] = Button:create();
	localParams[217]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[217]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[217]:setTitleFontSize(20);
	localParams[217]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[217]:setAnchorPoint(0.50, 0.50);
	localParams[217]:onClick(handler(self, self._onSort));
	localParams[217]:setTouchEnabled(true);
	localParams[217]:setContentSize({width = 83.0, height = 46.0});
	localParams[217]:setPosition(168.64, 84.61);
	self.__children['Image_2#Button_2'] = localParams[217];
	localParams[217].__children = self.__children;
	localParams[217].__Name = 'Image_2#Button_2';
	localParams[126]:addChild(localParams[217]);

	localParams[218] = ImageView:create('uires/public/sheet_font/fontImg0130.png', 1);
	localParams[218]:setAnchorPoint(0.50, 0.50);
	localParams[218]:setContentSize({width = 42.0, height = 24.0});
	localParams[218]:setPosition(41.5, 23.0);
	self.__children['Image_2#Button_2#Sprite_1'] = localParams[218];
	localParams[218].__children = self.__children;
	localParams[218].__Name = 'Image_2#Button_2#Sprite_1';
	localParams[217]:addChild(localParams[218]);

	localParams[219] = Button:create();
	localParams[219]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[219]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[219]:setTitleFontSize(20);
	localParams[219]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[219]:setAnchorPoint(0.50, 0.50);
	localParams[219]:onClick(handler(self, self._onSort));
	localParams[219]:setTouchEnabled(true);
	localParams[219]:setContentSize({width = 83.0, height = 46.0});
	localParams[219]:setPosition(64.0, 36.22);
	self.__children['Image_2#Button_3'] = localParams[219];
	localParams[219].__children = self.__children;
	localParams[219].__Name = 'Image_2#Button_3';
	localParams[126]:addChild(localParams[219]);

	localParams[220] = ImageView:create('uires/public/sheet_font/fontImg0127.png', 1);
	localParams[220]:setAnchorPoint(0.50, 0.50);
	localParams[220]:setContentSize({width = 43.0, height = 24.0});
	localParams[220]:setPosition(41.5, 23.0);
	self.__children['Image_2#Button_3#Sprite_1'] = localParams[220];
	localParams[220].__children = self.__children;
	localParams[220].__Name = 'Image_2#Button_3#Sprite_1';
	localParams[219]:addChild(localParams[220]);

	localParams[221] = Button:create();
	localParams[221]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[221]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[221]:setTitleFontSize(20);
	localParams[221]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[221]:setAnchorPoint(0.50, 0.50);
	localParams[221]:onClick(handler(self, self._onSort));
	localParams[221]:setTouchEnabled(true);
	localParams[221]:setContentSize({width = 83.0, height = 46.0});
	localParams[221]:setPosition(168.64, 36.22);
	self.__children['Image_2#Button_4'] = localParams[221];
	localParams[221].__children = self.__children;
	localParams[221].__Name = 'Image_2#Button_4';
	localParams[126]:addChild(localParams[221]);

	localParams[222] = ImageView:create('uires/public/sheet_font/fontImg0129.png', 1);
	localParams[222]:setAnchorPoint(0.50, 0.50);
	localParams[222]:setContentSize({width = 44.0, height = 24.0});
	localParams[222]:setPosition(41.5, 23.0);
	self.__children['Image_2#Button_4#Sprite_1'] = localParams[222];
	localParams[222].__children = self.__children;
	localParams[222].__Name = 'Image_2#Button_4#Sprite_1';
	localParams[221]:addChild(localParams[222]);

	localParams[223] = Button:create();
	localParams[223]:loadTextureNormal('uires/public/sheet_btn/btn0106.png', 1);
	localParams[223]:loadTexturePressed('uires/public/sheet_btn/btn0106.png', 1);
	localParams[223]:setTitleFontSize(14);
	localParams[223]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[223]:setAnchorPoint(0.50, 0.50);
	localParams[223]:onClick(handler(self, self._onAllSort));
	localParams[223]:setTouchEnabled(true);
	localParams[223]:setContentSize({width = 93.0, height = 46.0});
	localParams[223]:setPosition(276.94, 60.0);
	self.__children['Image_2#all_btn'] = localParams[223];
	localParams[223].__children = self.__children;
	localParams[223].__Name = 'Image_2#all_btn';
	localParams[126]:addChild(localParams[223]);

	localParams[224] = Text:create();
	localParams[224]:setFontSize(18);
	localParams[224]:setString([[9~10星]]);
	localParams[224]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[224]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[224]:setAnchorPoint(1.00, 0.50);
	localParams[224]:setContentSize({width = 58.0, height = 20.0});
	localParams[224]:setPosition(62.2, 23.0);
	self.__children['Image_2#all_btn#Text_1'] = localParams[224];
	localParams[224].__children = self.__children;
	localParams[224].__Name = 'Image_2#all_btn#Text_1';
	localParams[223]:addChild(localParams[224]);

	localParams[225] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[225]:ignoreContentAdaptWithSize(false);
	localParams[225]:setScale9Enabled(true);
	localParams[225]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 1.000000);
	localParams[225]:setAnchorPoint(0.00, 0.00);
	localParams[225]:setContentSize({width = WinSize.width - 24.00, height = 134.0});
	localParams[225]:setPosition(WinSize.width/2 + (-500.00 * ccx.scaleX), -170.0);
	self.__children['bottomUnder_img'] = localParams[225];
	localParams[225].__children = self.__children;
	localParams[225].__Name = 'bottomUnder_img';
	self:addChild(localParams[225]);

	localParams[226] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[226]:ignoreContentAdaptWithSize(false);
	localParams[226]:setScale9Enabled(true);
	localParams[226]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[226]:setAnchorPoint(0.00, 0.00);
	localParams[226]:setContentSize({width = WinSize.width - 134.00, height = 110.0});
	localParams[226]:setPosition(localParams[225]:getContentSize().width/2 + (-483.00 * ccx.scaleX), 6.41);
	self.__children['bottomUnder_img#under_img'] = localParams[226];
	localParams[226].__children = self.__children;
	localParams[226].__Name = 'bottomUnder_img#under_img';
	localParams[225]:addChild(localParams[226]);

	localParams[227] = ImageView:create('uires/public/sheet_other/other0173.png', 1);
	localParams[227]:setAnchorPoint(0.50, 0.50);
	localParams[227]:setContentSize({width = 83.0, height = 83.0});
	localParams[227]:setPosition(373.8, 55.0);
	self.__children['bottomUnder_img#under_img#cue_sprite'] = localParams[227];
	localParams[227].__children = self.__children;
	localParams[227].__Name = 'bottomUnder_img#under_img#cue_sprite';
	localParams[226]:addChild(localParams[227]);

	localParams[228] = Text:create();
	localParams[228]:setFontSize(20);
	localParams[228]:setString([[没有符合条件的佣兵！]]);
	localParams[228]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[228]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[228]:setAnchorPoint(0.50, 0.50);
	localParams[228]:setTextColor({r = 155, g = 125, b = 100});
	localParams[228]:setContentSize({width = 193.0, height = 24.0});
	localParams[228]:setPosition(195.05, 41.5);
	self.__children['bottomUnder_img#under_img#cue_sprite#font_txt'] = localParams[228];
	localParams[228].__children = self.__children;
	localParams[228].__Name = 'bottomUnder_img#under_img#cue_sprite#font_txt';
	localParams[227]:addChild(localParams[228]);

	localParams[229] = ScrollView:create();
	localParams[229]:setInnerContainerSize({width = 930.00, height = 110.00});
	localParams[229]:setDirection(0);
	localParams[229]:setClippingEnabled(true);
	localParams[229]:setBackGroundColorType(1);
	localParams[229]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[229]:setBackGroundColorOpacity(102);
	localParams[229]:setAnchorPoint(0.00, 0.00);
	localParams[229]:setOpacity(0);
	localParams[229]:setTouchEnabled(true);
	localParams[229]:setContentSize({width = WinSize.width - 154.00, height = 100.0});
	localParams[229]:setPosition(localParams[226]:getContentSize().width/2 + (-429.04 * ccx.scaleX), 5.0);
	self.__children['bottomUnder_img#under_img#mercenary_scrollView1'] = localParams[229];
	localParams[229].__children = self.__children;
	localParams[229].__Name = 'bottomUnder_img#under_img#mercenary_scrollView1';
	localParams[226]:addChild(localParams[229]);

	localParams[230] = Button:create();
	localParams[230]:loadTextureNormal('uires/public/sheet_btn/btn0093.png', 1);
	localParams[230]:setTitleFontSize(14);
	localParams[230]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[230]:setAnchorPoint(0.50, 0.50);
	localParams[230]:onClick(handler(self, self._onSwitchFirst));
	localParams[230]:setTouchEnabled(true);
	localParams[230]:setContentSize({width = 73.0, height = 95.0});
	localParams[230]:setPosition(localParams[225]:getContentSize().width - 50.50, 69.5);
	self.__children['bottomUnder_img#switch_btn1'] = localParams[230];
	localParams[230].__children = self.__children;
	localParams[230].__Name = 'bottomUnder_img#switch_btn1';
	localParams[225]:addChild(localParams[230]);

	localParams[231] = Button:create();
	localParams[231]:loadTextureNormal('uires/public/sheet_btn/btn0094.png', 1);
	localParams[231]:setTitleFontSize(14);
	localParams[231]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[231]:setAnchorPoint(0.50, 0.50);
	localParams[231]:onClick(handler(self, self._onSwitchSecond));
	localParams[231]:setTouchEnabled(true);
	localParams[231]:setContentSize({width = 73.0, height = 95.0});
	localParams[231]:setPosition(WinSize.width - 62.50, 69.5);
	self.__children['switch_btn2'] = localParams[231];
	localParams[231].__children = self.__children;
	localParams[231].__Name = 'switch_btn2';
	self:addChild(localParams[231]);

	localParams[232] = Button:create();
	localParams[232]:loadTextureNormal('uires/public/sheet_btn/btn0091.png', 1);
	localParams[232]:loadTexturePressed('uires/public/sheet_btn/btn0092.png', 1);
	localParams[232]:setTitleFontSize(14);
	localParams[232]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[232]:setAnchorPoint(0.50, 0.50);
	localParams[232]:onClick(handler(self, self._onTabMenu));
	localParams[232]:setTouchEnabled(true);
	localParams[232]:setContentSize({width = 111.0, height = 118.0});
	localParams[232]:setPosition(WinSize.width - 75.50, WinSize.height/2 + (11.01 * ccx.scaleY));
	self.__children['risingStar_btn'] = localParams[232];
	localParams[232].__children = self.__children;
	localParams[232].__Name = 'risingStar_btn';
	self:addChild(localParams[232]);

	localParams[233] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[233]:setAnchorPoint(0.50, 0.50);
	localParams[233]:setContentSize({width = 30.0, height = 30.0});
	localParams[233]:setPosition(99.9, 106.2);
	self.__children['risingStar_btn#redPoint_sprite'] = localParams[233];
	localParams[233].__children = self.__children;
	localParams[233].__Name = 'risingStar_btn#redPoint_sprite';
	localParams[232]:addChild(localParams[233]);

	localParams[234] = Button:create();
	localParams[234]:loadTextureNormal('uires/public/sheet_btn/btn0058.png', 1);
	localParams[234]:loadTexturePressed('uires/public/sheet_btn/btn0057.png', 1);
	localParams[234]:setTitleFontSize(14);
	localParams[234]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[234]:setAnchorPoint(0.50, 0.50);
	localParams[234]:onClick(handler(self, self._onTabMenu));
	localParams[234]:setTouchEnabled(true);
	localParams[234]:setContentSize({width = 111.0, height = 118.0});
	localParams[234]:setPosition(WinSize.width - 75.50, WinSize.height/2 + (140.99 * ccx.scaleY));
	self.__children['property_btn'] = localParams[234];
	localParams[234].__children = self.__children;
	localParams[234].__Name = 'property_btn';
	self:addChild(localParams[234]);

	localParams[235] = Button:create();
	localParams[235]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[235]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[235]:setTitleFontSize(14);
	localParams[235]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[235]:setAnchorPoint(0.50, 0.50);
	localParams[235]:setScaleX(0.90);
	localParams[235]:setScaleY(0.90);
	localParams[235]:onClick(handler(self, self._onSpecial));
	localParams[235]:setTouchEnabled(true);
	localParams[235]:setContentSize({width = 108.0, height = 108.0});
	localParams[235]:setPosition(61.44, WinSize.height/2 + (155.01 * ccx.scaleY));
	self.__children['skill_btn1'] = localParams[235];
	localParams[235].__children = self.__children;
	localParams[235].__Name = 'skill_btn1';
	self:addChild(localParams[235]);

	localParams[236] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[236]:setAnchorPoint(0.50, 0.50);
	localParams[236]:setContentSize({width = 80.0, height = 80.0});
	localParams[236]:setPosition(54.0, 54.0);
	self.__children['skill_btn1#skillIcon_sprite'] = localParams[236];
	localParams[236].__children = self.__children;
	localParams[236].__Name = 'skill_btn1#skillIcon_sprite';
	localParams[235]:addChild(localParams[236]);

	localParams[237] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[237]:setAnchorPoint(0.50, 0.50);
	localParams[237]:setContentSize({width = 55.0, height = 68.0});
	localParams[237]:setPosition(54.0, 54.0);
	self.__children['skill_btn1#lock_sprite'] = localParams[237];
	localParams[237].__children = self.__children;
	localParams[237].__Name = 'skill_btn1#lock_sprite';
	localParams[235]:addChild(localParams[237]);

	localParams[238] = Text:create();
	localParams[238]:setFontSize(20);
	localParams[238]:setString([[3阶解锁]]);
	localParams[238]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[238]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[238]:setAnchorPoint(0.50, 0.50);
	localParams[238]:setTextColor({r = 255, g = 0, b = 0});
	localParams[238]:setContentSize({width = 74.0, height = 22.0});
	localParams[238]:setPosition(54.0, 6.0);
	self.__children['skill_btn1#cue_txt'] = localParams[238];
	localParams[238].__children = self.__children;
	localParams[238].__Name = 'skill_btn1#cue_txt';
	localParams[235]:addChild(localParams[238]);

	localParams[239] = Button:create();
	localParams[239]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[239]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[239]:setTitleFontSize(14);
	localParams[239]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[239]:setAnchorPoint(0.50, 0.50);
	localParams[239]:setScaleX(0.90);
	localParams[239]:setScaleY(0.90);
	localParams[239]:onClick(handler(self, self._onSpecial));
	localParams[239]:setTouchEnabled(true);
	localParams[239]:setContentSize({width = 108.0, height = 108.0});
	localParams[239]:setPosition(61.44, WinSize.height/2 + (52.61 * ccx.scaleY));
	self.__children['skill_btn2'] = localParams[239];
	localParams[239].__children = self.__children;
	localParams[239].__Name = 'skill_btn2';
	self:addChild(localParams[239]);

	localParams[240] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[240]:setAnchorPoint(0.50, 0.50);
	localParams[240]:setContentSize({width = 80.0, height = 80.0});
	localParams[240]:setPosition(54.0, 54.0);
	self.__children['skill_btn2#skillIcon_sprite'] = localParams[240];
	localParams[240].__children = self.__children;
	localParams[240].__Name = 'skill_btn2#skillIcon_sprite';
	localParams[239]:addChild(localParams[240]);

	localParams[241] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[241]:setAnchorPoint(0.50, 0.50);
	localParams[241]:setContentSize({width = 55.0, height = 68.0});
	localParams[241]:setPosition(54.0, 54.0);
	self.__children['skill_btn2#lock_sprite'] = localParams[241];
	localParams[241].__children = self.__children;
	localParams[241].__Name = 'skill_btn2#lock_sprite';
	localParams[239]:addChild(localParams[241]);

	localParams[242] = Text:create();
	localParams[242]:setFontSize(20);
	localParams[242]:setString([[3阶解锁]]);
	localParams[242]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[242]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[242]:setAnchorPoint(0.50, 0.50);
	localParams[242]:setTextColor({r = 255, g = 0, b = 0});
	localParams[242]:setContentSize({width = 74.0, height = 22.0});
	localParams[242]:setPosition(54.0, 6.0);
	self.__children['skill_btn2#cue_txt'] = localParams[242];
	localParams[242].__children = self.__children;
	localParams[242].__Name = 'skill_btn2#cue_txt';
	localParams[239]:addChild(localParams[242]);

	localParams[243] = Button:create();
	localParams[243]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[243]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[243]:setTitleFontSize(14);
	localParams[243]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[243]:setAnchorPoint(0.50, 0.50);
	localParams[243]:setScaleX(0.90);
	localParams[243]:setScaleY(0.90);
	localParams[243]:onClick(handler(self, self._onSpecial));
	localParams[243]:setTouchEnabled(true);
	localParams[243]:setContentSize({width = 108.0, height = 108.0});
	localParams[243]:setPosition(61.44, WinSize.height/2 + (-49.79 * ccx.scaleY));
	self.__children['skill_btn3'] = localParams[243];
	localParams[243].__children = self.__children;
	localParams[243].__Name = 'skill_btn3';
	self:addChild(localParams[243]);

	localParams[244] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[244]:setAnchorPoint(0.50, 0.50);
	localParams[244]:setContentSize({width = 80.0, height = 80.0});
	localParams[244]:setPosition(54.0, 54.0);
	self.__children['skill_btn3#skillIcon_sprite'] = localParams[244];
	localParams[244].__children = self.__children;
	localParams[244].__Name = 'skill_btn3#skillIcon_sprite';
	localParams[243]:addChild(localParams[244]);

	localParams[245] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[245]:setAnchorPoint(0.50, 0.50);
	localParams[245]:setContentSize({width = 55.0, height = 68.0});
	localParams[245]:setPosition(54.0, 54.0);
	self.__children['skill_btn3#lock_sprite'] = localParams[245];
	localParams[245].__children = self.__children;
	localParams[245].__Name = 'skill_btn3#lock_sprite';
	localParams[243]:addChild(localParams[245]);

	localParams[246] = Text:create();
	localParams[246]:setFontSize(20);
	localParams[246]:setString([[3阶解锁]]);
	localParams[246]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[246]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[246]:setAnchorPoint(0.50, 0.50);
	localParams[246]:setTextColor({r = 255, g = 0, b = 0});
	localParams[246]:setContentSize({width = 74.0, height = 22.0});
	localParams[246]:setPosition(54.0, 6.0);
	self.__children['skill_btn3#cue_txt'] = localParams[246];
	localParams[246].__children = self.__children;
	localParams[246].__Name = 'skill_btn3#cue_txt';
	localParams[243]:addChild(localParams[246]);

end
function MonsterLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0011.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function MonsterLayer:loadPlistResources()
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


function MonsterLayer:_onGameMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGameMoney then
        return self.m_ClickDelegate:onGameMoney(sender);
    end
    if self.onGameMoney then
        return self:onGameMoney(sender);
    end
end


function MonsterLayer:_onSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSort then
        return self.m_ClickDelegate:onSort(sender);
    end
    if self.onSort then
        return self:onSort(sender);
    end
end


function MonsterLayer:_onCostSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCostSort then
        return self.m_ClickDelegate:onCostSort(sender);
    end
    if self.onCostSort then
        return self:onCostSort(sender);
    end
end


function MonsterLayer:_onQualitySort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onQualitySort then
        return self.m_ClickDelegate:onQualitySort(sender);
    end
    if self.onQualitySort then
        return self:onQualitySort(sender);
    end
end


function MonsterLayer:_onRMBMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRMBMoney then
        return self.m_ClickDelegate:onRMBMoney(sender);
    end
    if self.onRMBMoney then
        return self:onRMBMoney(sender);
    end
end


function MonsterLayer:_onStarSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onStarSort then
        return self.m_ClickDelegate:onStarSort(sender);
    end
    if self.onStarSort then
        return self:onStarSort(sender);
    end
end


function MonsterLayer:_onSpecial(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSpecial then
        return self.m_ClickDelegate:onSpecial(sender);
    end
    if self.onSpecial then
        return self:onSpecial(sender);
    end
end


function MonsterLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function MonsterLayer:_onAllSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAllSort then
        return self.m_ClickDelegate:onAllSort(sender);
    end
    if self.onAllSort then
        return self:onAllSort(sender);
    end
end


function MonsterLayer:_onAnimation(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAnimation then
        return self.m_ClickDelegate:onAnimation(sender);
    end
    if self.onAnimation then
        return self:onAnimation(sender);
    end
end


function MonsterLayer:_onSwitchSecond(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSwitchSecond then
        return self.m_ClickDelegate:onSwitchSecond(sender);
    end
    if self.onSwitchSecond then
        return self:onSwitchSecond(sender);
    end
end


function MonsterLayer:_onPositionSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPositionSort then
        return self.m_ClickDelegate:onPositionSort(sender);
    end
    if self.onPositionSort then
        return self:onPositionSort(sender);
    end
end


function MonsterLayer:_onSwitchFirst(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSwitchFirst then
        return self.m_ClickDelegate:onSwitchFirst(sender);
    end
    if self.onSwitchFirst then
        return self:onSwitchFirst(sender);
    end
end


function MonsterLayer:_onHandbook(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onHandbook then
        return self.m_ClickDelegate:onHandbook(sender);
    end
    if self.onHandbook then
        return self:onHandbook(sender);
    end
end


function MonsterLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function MonsterLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


return MonsterLayer;