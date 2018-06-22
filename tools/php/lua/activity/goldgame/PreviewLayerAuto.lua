-- 
-- Author: generation auto
-- Brief：PreviewLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local PreviewLayer = class('PreviewLayer', gamecore.ui.BaseWidget);

function PreviewLayer:create(...) 
    local instance = PreviewLayer.new(...);
    return instance;
end

function PreviewLayer:ctor(...) 
    if PreviewLayer.super and PreviewLayer.super.ctor then
        PreviewLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function PreviewLayer:initView()
    self.__LAYER_NAME = 'activity.goldgame.PreviewLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0015.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (0.92 * ccx.scaleX), WinSize.height/2 + (0.64 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:onClick(handler(self, self._onMonster));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 120.0, height = 120.0});
	localParams[2]:setPosition(145.0, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster5'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#monster5';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[3]:setAnchorPoint(0.50, 0.00);
	localParams[3]:onClick(handler(self, self._onMonster));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 120.0, height = 120.0});
	localParams[3]:setPosition(338.33, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster6'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#monster6';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[4]:setAnchorPoint(0.50, 0.00);
	localParams[4]:onClick(handler(self, self._onMonster));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 120.0, height = 120.0});
	localParams[4]:setPosition(531.67, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster7'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#monster7';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[5]:setAnchorPoint(0.50, 0.00);
	localParams[5]:onClick(handler(self, self._onMonster));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 120.0, height = 120.0});
	localParams[5]:setPosition(725.0, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster8'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#monster8';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[6]:setAnchorPoint(0.50, 0.00);
	localParams[6]:onClick(handler(self, self._onMonster));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 120.0, height = 120.0});
	localParams[6]:setPosition(170.0, 372.5);
	self.__children['bg#monster1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#monster1';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[7]:setAnchorPoint(0.50, 0.00);
	localParams[7]:onClick(handler(self, self._onMonster));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 120.0, height = 120.0});
	localParams[7]:setPosition(363.33, 372.5);
	self.__children['bg#monster2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#monster2';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[8]:setAnchorPoint(0.50, 0.00);
	localParams[8]:onClick(handler(self, self._onMonster));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 120.0, height = 120.0});
	localParams[8]:setPosition(556.67, 372.5);
	self.__children['bg#monster3'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#monster3';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[9]:setAnchorPoint(0.50, 0.00);
	localParams[9]:onClick(handler(self, self._onMonster));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 120.0, height = 120.0});
	localParams[9]:setPosition(750.0, 372.5);
	self.__children['bg#monster4'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#monster4';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[10]:setAnchorPoint(0.50, 0.00);
	localParams[10]:onClick(handler(self, self._onMonster));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 120.0, height = 120.0});
	localParams[10]:setPosition(145.0, 260.0);
	self.__children['bg#monster9'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg#monster9';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[11]:setAnchorPoint(0.50, 0.00);
	localParams[11]:onClick(handler(self, self._onMonster));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 120.0, height = 120.0});
	localParams[11]:setPosition(338.33, 260.0);
	self.__children['bg#monster10'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg#monster10';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[12]:setAnchorPoint(0.50, 0.00);
	localParams[12]:onClick(handler(self, self._onMonster));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 120.0, height = 120.0});
	localParams[12]:setPosition(531.67, 260.0);
	self.__children['bg#monster11'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg#monster11';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[13]:setAnchorPoint(0.50, 0.00);
	localParams[13]:onClick(handler(self, self._onMonster));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 120.0, height = 120.0});
	localParams[13]:setPosition(725.0, 260.0);
	self.__children['bg#monster12'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg#monster12';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_bgframe/bgFrame0069.png', 1);
	localParams[14]:ignoreContentAdaptWithSize(false);
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = 40.000000, y = 40.000000,width = 40.000000, height = 40.000000);
	localParams[14]:setAnchorPoint(1.00, 0.00);
	localParams[14]:setContentSize({width = 265.0, height = WinSize.height - 53.00});
	localParams[14]:setPosition(WinSize.width - 0.00, 0.0);
	self.__children['battle_edit'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'battle_edit';
	self:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_other/other0090.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 15.000000, y = 11.000000, width = 204.000000, height = 42.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:onClick(handler(self, self._profession_back1));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 234.0, height = 64.0});
	localParams[15]:setPosition(localParams[14]:getContentSize().width - 127.00, localParams[14]:getContentSize().height/2 + (218.48 * ccx.scaleY));
	self.__children['battle_edit#profession_back1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'battle_edit#profession_back1';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[灵魂突破]]);
	localParams[16]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[16]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 255, g = 240, b = 155});
	localParams[16]:setContentSize({width = 84.0, height = 22.0});
	localParams[16]:setPosition(121.31, 33.06);
	self.__children['battle_edit#profession_back1#formation_name'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'battle_edit#profession_back1#formation_name';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Button:create();
	localParams[17]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[17]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[17]:setTitleFontSize(14);
	localParams[17]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[17]:setScale9Enabled(true);
	localParams[17]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:onClick(handler(self, self._fight_btn));
	localParams[17]:setTouchEnabled(true);
	localParams[17]:setContentSize({width = 183.0, height = 68.0});
	localParams[17]:setPosition(141.5, 47.0);
	self.__children['battle_edit#fight_btn'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'battle_edit#fight_btn';
	localParams[14]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_font/fontImg0137.png', 1);
	localParams[18]:ignoreContentAdaptWithSize(false);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 110.0, height = 30.0});
	localParams[18]:setPosition(93.0, 35.0);
	self.__children['battle_edit#fight_btn#font1'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'battle_edit#fight_btn#font1';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = Node:create();
	localParams[19]:setAnchorPoint(0.00, 0.00);
	localParams[19]:setScaleX(0.90);
	localParams[19]:setScaleY(0.90);
	localParams[19]:setContentSize({width = 0.0, height = 0.0});
	localParams[19]:setPosition(83.62, 36.53);
	self.__children['battle_edit#fight_btn#__SELECTED_SCALE'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'battle_edit#fight_btn#__SELECTED_SCALE';
	localParams[17]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_bgframe/bgFrame0028.png', 1);
	localParams[20]:ignoreContentAdaptWithSize(false);
	localParams[20]:setScale9Enabled(true);
	localParams[20]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 3.000000);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 168.0, height = 56.0});
	localParams[20]:setPosition(localParams[14]:getContentSize().width/2 + (10.52 * ccx.scaleX), 183.97);
	self.__children['battle_edit#win_bg'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'battle_edit#win_bg';
	localParams[14]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[0]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[21]:setAnchorPoint(0.00, 0.50);
	localParams[21]:setContentSize({width = 16.0, height = 22.0});
	localParams[21]:setPosition(106.0, 27.0);
	self.__children['battle_edit#win_bg#win_num'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'battle_edit#win_bg#win_num';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(20);
	localParams[22]:setString([[胜场：]]);
	localParams[22]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[22]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 56.0, height = 22.0});
	localParams[22]:setPosition(69.25, 27.87);
	self.__children['battle_edit#win_bg#win_num_0'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'battle_edit#win_bg#win_num_0';
	localParams[20]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_bgframe/bgFrame0028.png', 1);
	localParams[23]:ignoreContentAdaptWithSize(false);
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 3.000000);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 168.0, height = 56.0});
	localParams[23]:setPosition(localParams[14]:getContentSize().width/2 + (10.60 * ccx.scaleX), 121.24);
	self.__children['battle_edit#lose_bg'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'battle_edit#lose_bg';
	localParams[14]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[0]]);
	localParams[24]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[24]:setAnchorPoint(0.00, 0.50);
	localParams[24]:setTextColor({r = 255, g = 0, b = 0});
	localParams[24]:setContentSize({width = 16.0, height = 22.0});
	localParams[24]:setPosition(105.6, 26.88);
	self.__children['battle_edit#lose_bg#lose_num'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'battle_edit#lose_bg#lose_num';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = Text:create();
	localParams[25]:setFontSize(20);
	localParams[25]:setString([[败场：]]);
	localParams[25]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[25]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setTextColor({r = 255, g = 0, b = 0});
	localParams[25]:setContentSize({width = 56.0, height = 22.0});
	localParams[25]:setPosition(68.63, 27.8);
	self.__children['battle_edit#lose_bg#lose_num_0'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'battle_edit#lose_bg#lose_num_0';
	localParams[23]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_bgframe/bgFrame0099.png', 1);
	localParams[26]:ignoreContentAdaptWithSize(false);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 232.0, height = 232.0});
	localParams[26]:setPosition(localParams[14]:getContentSize().width/2 + (7.50 * ccx.scaleX), localParams[14]:getContentSize().height/2 + (68.09 * ccx.scaleY));
	self.__children['battle_edit#session_bg'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'battle_edit#session_bg';
	localParams[14]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_font/fontImg0134.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 47.0, height = 25.0});
	localParams[27]:setPosition(115.45, 127.28);
	self.__children['battle_edit#session_bg#session_image'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'battle_edit#session_bg#session_image';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[0]]);
	localParams[28]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setTextColor({r = 240, g = 200, b = 60});
	localParams[28]:setContentSize({width = 15.0, height = 20.0});
	localParams[28]:setPosition(23.44, -11.52);
	self.__children['battle_edit#session_bg#session_image#session'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'battle_edit#session_bg#session_image#session';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_other/other0132.png''));
	localParams[29]:setType(0);
	localParams[29]:setMidpoint({x=0.5, y=0.5});
	localParams[29]:setReverseDirection(false);
	localParams[29]:setPercentage(0.00);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 186.0, height = 186.0});
	localParams[29]:setPosition(116.0, 116.0);
	self.__children['battle_edit#session_bg#light_effect1'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'battle_edit#session_bg#light_effect1';
	localParams[26]:addChild(localParams[29]);

	localParams[30] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_other/other0131.png''));
	localParams[30]:setType(0);
	localParams[30]:setMidpoint({x=0.5, y=0.5});
	localParams[30]:setReverseDirection(false);
	localParams[30]:setPercentage(0.00);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 186.0, height = 186.0});
	localParams[30]:setPosition(116.0, 116.0);
	self.__children['battle_edit#session_bg#light_effect2'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'battle_edit#session_bg#light_effect2';
	localParams[26]:addChild(localParams[30]);

	localParams[31] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_other/other0130.png''));
	localParams[31]:setType(0);
	localParams[31]:setMidpoint({x=0.5, y=0.5});
	localParams[31]:setReverseDirection(false);
	localParams[31]:setPercentage(0.00);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 186.0, height = 186.0});
	localParams[31]:setPosition(116.0, 116.0);
	self.__children['battle_edit#session_bg#light_effect3'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'battle_edit#session_bg#light_effect3';
	localParams[26]:addChild(localParams[31]);

	localParams[32] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_other/other0133.png''));
	localParams[32]:setType(0);
	localParams[32]:setMidpoint({x=0.5, y=0.5});
	localParams[32]:setReverseDirection(false);
	localParams[32]:setPercentage(0.00);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 186.0, height = 186.0});
	localParams[32]:setPosition(116.0, 116.0);
	self.__children['battle_edit#session_bg#light_effect4'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'battle_edit#session_bg#light_effect4';
	localParams[26]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[33]:ignoreContentAdaptWithSize(false);
	localParams[33]:setScale9Enabled(true);
	localParams[33]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 800.0, height = 93.0});
	localParams[33]:setPosition(WinSize.width - 400.00, WinSize.height - 46.50);
	self.__children['bg2'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'bg2';
	self:addChild(localParams[33]);

	localParams[34] = Text:create();
	localParams[34]:setFontSize(22);
	localParams[34]:setString([[01:02:03后活动结束]]);
	localParams[34]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[34]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[34]:setAnchorPoint(0.00, 0.50);
	localParams[34]:setTextColor({r = 240, g = 200, b = 60});
	localParams[34]:setContentSize({width = 195.0, height = 29.0});
	localParams[34]:setPosition(160.0, 65.0);
	self.__children['bg2#time_txt'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'bg2#time_txt';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 537.0, height = 164.0});
	localParams[35]:setPosition(268.5, WinSize.height - 82.00);
	self.__children['bg1'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'bg1';
	self:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_font/fontImg0250.png', 1);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 195.0, height = 58.0});
	localParams[36]:setPosition(235.0, WinSize.height - 30.50);
	self.__children['bg4'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'bg4';
	self:addChild(localParams[36]);

	localParams[37] = Button:create();
	localParams[37]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[37]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[37]:setTitleFontSize(14);
	localParams[37]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[37]:setScale9Enabled(true);
	localParams[37]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:onClick(handler(self, self._back_btn));
	localParams[37]:setTouchEnabled(true);
	localParams[37]:setContentSize({width = 116.0, height = 77.0});
	localParams[37]:setPosition(68.17, WinSize.height - 44.38);
	self.__children['back_btn'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'back_btn';
	self:addChild(localParams[37]);

	localParams[38] = Button:create();
	localParams[38]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[38]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[38]:setTitleFontSize(14);
	localParams[38]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[38]:setScale9Enabled(true);
	localParams[38]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:onClick(handler(self, self._help_btn));
	localParams[38]:setTouchEnabled(true);
	localParams[38]:setContentSize({width = 58.0, height = 68.0});
	localParams[38]:setPosition(WinSize.width - 37.02, WinSize.height - 49.83);
	self.__children['help_btn'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'help_btn';
	self:addChild(localParams[38]);

	localParams[39] = Node:create();
	localParams[39]:setAnchorPoint(0.00, 0.00);
	localParams[39]:setScaleX(1.20);
	localParams[39]:setScaleY(1.20);
	localParams[39]:setContentSize({width = 0.0, height = 0.0});
	localParams[39]:setPosition(52.93, -11.77);
	self.__children['help_btn#__SELECTED_SCALE'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'help_btn#__SELECTED_SCALE';
	localParams[38]:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_bgframe/bgFrame0073.png', 1);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 110.0, height = 110.0});
	localParams[40]:setPosition(WinSize.width - 961.02, 114.68);
	self.__children['head_bg'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'head_bg';
	self:addChild(localParams[40]);

	localParams[41] = ImageView:create(, 0);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 46.0, height = 46.0});
	localParams[41]:setPosition(53.96, 55.62);
	self.__children['head_bg#head'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'head_bg#head';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = ImageView:create(, 0);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setScaleX(0.70);
	localParams[42]:setScaleY(0.70);
	localParams[42]:setContentSize({width = 46.0, height = 46.0});
	localParams[42]:setPosition(52.81, -25.19);
	self.__children['head_bg#profession_font'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'head_bg#profession_font';
	localParams[40]:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[43]:ignoreContentAdaptWithSize(false);
	localParams[43]:setScale9Enabled(true);
	localParams[43]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 180.0, height = 170.0});
	localParams[43]:setPosition(WinSize.width - 803.44, 99.72);
	self.__children['property_img'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'property_img';
	self:addChild(localParams[43]);

	localParams[44] = Text:create();
	localParams[44]:setFontSize(20);
	localParams[44]:setString([[攻  击：]]);
	localParams[44]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[44]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setContentSize({width = 76.0, height = 22.0});
	localParams[44]:setPosition(49.45, 149.8);
	self.__children['property_img#property_type1'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'property_img#property_type1';
	localParams[43]:addChild(localParams[44]);

	localParams[45] = Text:create();
	localParams[45]:setFontSize(20);
	localParams[45]:setString([[护  甲：]]);
	localParams[45]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[45]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setContentSize({width = 76.0, height = 22.0});
	localParams[45]:setPosition(49.65, 117.29);
	self.__children['property_img#property_type2'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'property_img#property_type2';
	localParams[43]:addChild(localParams[45]);

	localParams[46] = Text:create();
	localParams[46]:setFontSize(20);
	localParams[46]:setString([[血  量：]]);
	localParams[46]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[46]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setContentSize({width = 76.0, height = 22.0});
	localParams[46]:setPosition(49.38, 84.55);
	self.__children['property_img#property_type3'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'property_img#property_type3';
	localParams[43]:addChild(localParams[46]);

	localParams[47] = Text:create();
	localParams[47]:setFontSize(20);
	localParams[47]:setString([[速  度：]]);
	localParams[47]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[47]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 76.0, height = 22.0});
	localParams[47]:setPosition(49.3, 52.77);
	self.__children['property_img#property_type4'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'property_img#property_type4';
	localParams[43]:addChild(localParams[47]);

	localParams[48] = Text:create();
	localParams[48]:setFontSize(20);
	localParams[48]:setString([[0]]);
	localParams[48]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[48]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[48]:setAnchorPoint(1.00, 0.50);
	localParams[48]:setTextColor({r = 80, g = 255, b = 0});
	localParams[48]:setContentSize({width = 15.0, height = 25.0});
	localParams[48]:setPosition(157.51, 148.72);
	self.__children['property_img#property_num1'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'property_img#property_num1';
	localParams[43]:addChild(localParams[48]);

	localParams[49] = Text:create();
	localParams[49]:setFontSize(20);
	localParams[49]:setString([[0]]);
	localParams[49]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[49]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[49]:setAnchorPoint(1.00, 0.50);
	localParams[49]:setTextColor({r = 80, g = 255, b = 0});
	localParams[49]:setContentSize({width = 15.0, height = 25.0});
	localParams[49]:setPosition(157.52, 115.07);
	self.__children['property_img#property_num2'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'property_img#property_num2';
	localParams[43]:addChild(localParams[49]);

	localParams[50] = Text:create();
	localParams[50]:setFontSize(20);
	localParams[50]:setString([[0]]);
	localParams[50]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[50]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[50]:setAnchorPoint(1.00, 0.50);
	localParams[50]:setTextColor({r = 80, g = 255, b = 0});
	localParams[50]:setContentSize({width = 15.0, height = 25.0});
	localParams[50]:setPosition(157.36, 82.7);
	self.__children['property_img#property_num3'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'property_img#property_num3';
	localParams[43]:addChild(localParams[50]);

	localParams[51] = Text:create();
	localParams[51]:setFontSize(20);
	localParams[51]:setString([[0]]);
	localParams[51]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[51]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[51]:setAnchorPoint(1.00, 0.50);
	localParams[51]:setTextColor({r = 80, g = 255, b = 0});
	localParams[51]:setContentSize({width = 15.0, height = 25.0});
	localParams[51]:setPosition(157.29, 50.77);
	self.__children['property_img#property_num4'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'property_img#property_num4';
	localParams[43]:addChild(localParams[51]);

	localParams[52] = Text:create();
	localParams[52]:setFontSize(20);
	localParams[52]:setString([[智  慧：]]);
	localParams[52]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[52]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setContentSize({width = 76.0, height = 22.0});
	localParams[52]:setPosition(49.3, 22.77);
	self.__children['property_img#property_type5'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'property_img#property_type5';
	localParams[43]:addChild(localParams[52]);

	localParams[53] = Text:create();
	localParams[53]:setFontSize(20);
	localParams[53]:setString([[0]]);
	localParams[53]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[53]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[53]:setAnchorPoint(1.00, 0.50);
	localParams[53]:setTextColor({r = 80, g = 255, b = 0});
	localParams[53]:setContentSize({width = 15.0, height = 25.0});
	localParams[53]:setPosition(157.29, 20.77);
	self.__children['property_img#property_num5'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'property_img#property_num5';
	localParams[43]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[54]:ignoreContentAdaptWithSize(false);
	localParams[54]:setScale9Enabled(true);
	localParams[54]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setContentSize({width = 425.0, height = 170.0});
	localParams[54]:setPosition(WinSize.width - 487.50, 100.0);
	self.__children['skill_img'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'skill_img';
	self:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[55]:ignoreContentAdaptWithSize(false);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setScaleX(0.80);
	localParams[55]:setScaleY(0.80);
	localParams[55]:setContentSize({width = 226.0, height = 109.0});
	localParams[55]:setPosition(317.0, 117.5);
	self.__children['skill_img#skill_bg2'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'skill_img#skill_bg2';
	localParams[54]:addChild(localParams[55]);

	localParams[56] = Button:create();
	localParams[56]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[56]:setTitleFontSize(14);
	localParams[56]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[56]:setScale9Enabled(true);
	localParams[56]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setScaleX(0.80);
	localParams[56]:setScaleY(0.80);
	localParams[56]:onClick(handler(self, self._skill_bg_btn2));
	localParams[56]:setTouchEnabled(true);
	localParams[56]:setContentSize({width = 224.0, height = 107.0});
	localParams[56]:setPosition(317.0, 117.5);
	self.__children['skill_img#use_skill_bg2'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'skill_img#use_skill_bg2';
	localParams[54]:addChild(localParams[56]);

	localParams[57] = ImageView:create(, 0);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setScaleX(0.85);
	localParams[57]:setScaleY(0.85);
	localParams[57]:setContentSize({width = 46.0, height = 46.0});
	localParams[57]:setPosition(270.14, 114.8);
	self.__children['skill_img#skill_img2'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'skill_img#skill_img2';
	localParams[54]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[58]:ignoreContentAdaptWithSize(false);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setScaleX(0.80);
	localParams[58]:setScaleY(0.80);
	localParams[58]:setContentSize({width = 226.0, height = 109.0});
	localParams[58]:setPosition(107.0, 117.5);
	self.__children['skill_img#skill_bg1'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'skill_img#skill_bg1';
	localParams[54]:addChild(localParams[58]);

	localParams[59] = Button:create();
	localParams[59]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[59]:setTitleFontSize(14);
	localParams[59]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[59]:setScale9Enabled(true);
	localParams[59]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setScaleX(0.80);
	localParams[59]:setScaleY(0.80);
	localParams[59]:onClick(handler(self, self._skill_bg_btn1));
	localParams[59]:setTouchEnabled(true);
	localParams[59]:setContentSize({width = 224.0, height = 107.0});
	localParams[59]:setPosition(107.0, 117.5);
	self.__children['skill_img#use_skill_bg1'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'skill_img#use_skill_bg1';
	localParams[54]:addChild(localParams[59]);

	localParams[60] = Text:create();
	localParams[60]:setFontSize(15);
	localParams[60]:setString([[]]);
	localParams[60]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[60]:setTextAreaSize({width = 180, height = 69});
	localParams[60]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[60]:setAnchorPoint(0.00, 0.50);
	localParams[60]:setContentSize({width = 180.0, height = 69.0});
	localParams[60]:setPosition(localParams[54]:getContentSize().width - 408.00, 39.5);
	self.__children['skill_img#skill_des1'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'skill_img#skill_des1';
	localParams[54]:addChild(localParams[60]);

	localParams[61] = Text:create();
	localParams[61]:setFontSize(15);
	localParams[61]:setString([[]]);
	localParams[61]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[61]:setTextAreaSize({width = 180, height = 69});
	localParams[61]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 180.0, height = 69.0});
	localParams[61]:setPosition(317.0, 39.5);
	self.__children['skill_img#skill_des2'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'skill_img#skill_des2';
	localParams[54]:addChild(localParams[61]);

	localParams[62] = Text:create();
	localParams[62]:setFontSize(16);
	localParams[62]:setString([[]]);
	localParams[62]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[62]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setTextColor({r = 255, g = 140, b = 0});
	localParams[62]:setContentSize({width = 0.0, height = 0.0});
	localParams[62]:setPosition(354.51, 104.47);
	self.__children['skill_img#skill_level2'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'skill_img#skill_level2';
	localParams[54]:addChild(localParams[62]);

	localParams[63] = ImageView:create(, 0);
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setScaleX(0.85);
	localParams[63]:setScaleY(0.85);
	localParams[63]:setContentSize({width = 46.0, height = 46.0});
	localParams[63]:setPosition(60.03, 115.89);
	self.__children['skill_img#skill_img1'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'skill_img#skill_img1';
	localParams[54]:addChild(localParams[63]);

	localParams[64] = Text:create();
	localParams[64]:setFontSize(16);
	localParams[64]:setString([[]]);
	localParams[64]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[64]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setTextColor({r = 255, g = 240, b = 155});
	localParams[64]:setContentSize({width = 0.0, height = 0.0});
	localParams[64]:setPosition(144.94, 124.43);
	self.__children['skill_img#skill_name1'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'skill_img#skill_name1';
	localParams[54]:addChild(localParams[64]);

	localParams[65] = Text:create();
	localParams[65]:setFontSize(16);
	localParams[65]:setString([[]]);
	localParams[65]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[65]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setTextColor({r = 255, g = 240, b = 155});
	localParams[65]:setContentSize({width = 0.0, height = 0.0});
	localParams[65]:setPosition(354.63, 123.37);
	self.__children['skill_img#skill_name2'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'skill_img#skill_name2';
	localParams[54]:addChild(localParams[65]);

	localParams[66] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[66]:setAnchorPoint(0.50, 0.50);
	localParams[66]:setScaleX(0.80);
	localParams[66]:setScaleY(0.80);
	localParams[66]:setContentSize({width = 38.0, height = 42.0});
	localParams[66]:setPosition(59.6, 153.0);
	self.__children['skill_img#skill_gas1'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'skill_img#skill_gas1';
	localParams[54]:addChild(localParams[66]);

	localParams[67] = Text:create();
	localParams[67]:setFontSize(24);
	localParams[67]:setString([[]]);
	localParams[67]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[67]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[67]:setAnchorPoint(0.50, 0.50);
	localParams[67]:setContentSize({width = 0.0, height = 0.0});
	localParams[67]:setPosition(19.0, 20.0);
	self.__children['skill_img#skill_gas1#gas_txt1'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'skill_img#skill_gas1#gas_txt1';
	localParams[66]:addChild(localParams[67]);

	localParams[68] = Text:create();
	localParams[68]:setFontSize(16);
	localParams[68]:setString([[]]);
	localParams[68]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[68]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:setTextColor({r = 255, g = 140, b = 0});
	localParams[68]:setContentSize({width = 0.0, height = 0.0});
	localParams[68]:setPosition(145.65, 105.03);
	self.__children['skill_img#skill_level1'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'skill_img#skill_level1';
	localParams[54]:addChild(localParams[68]);

	localParams[69] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:setScaleX(0.80);
	localParams[69]:setScaleY(0.80);
	localParams[69]:setContentSize({width = 38.0, height = 42.0});
	localParams[69]:setPosition(269.69, 153.0);
	self.__children['skill_img#skill_gas2'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'skill_img#skill_gas2';
	localParams[54]:addChild(localParams[69]);

	localParams[70] = Text:create();
	localParams[70]:setFontSize(24);
	localParams[70]:setString([[]]);
	localParams[70]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[70]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[70]:setAnchorPoint(0.50, 0.50);
	localParams[70]:setContentSize({width = 0.0, height = 0.0});
	localParams[70]:setPosition(19.0, 20.0);
	self.__children['skill_img#skill_gas2#gas_txt2'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'skill_img#skill_gas2#gas_txt2';
	localParams[69]:addChild(localParams[70]);

	localParams[71] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[71]:ignoreContentAdaptWithSize(false);
	localParams[71]:setScale9Enabled(true);
	localParams[71]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[71]:setAnchorPoint(0.00, 0.50);
	localParams[71]:setContentSize({width = 270.0, height = 360.0});
	localParams[71]:setPosition(1138.71, 373.15);
	self.__children['m_message_bg'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'm_message_bg';
	self:addChild(localParams[71]);

	localParams[72] = Node:create();
	localParams[72]:setAnchorPoint(0.00, 0.00);
	localParams[72]:setContentSize({width = 0.0, height = 0.0});
	localParams[72]:setPosition(0.0, 360.0);
	self.__children['m_message_bg#node'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'm_message_bg#node';
	localParams[71]:addChild(localParams[72]);

	localParams[73] = Text:create();
	localParams[73]:setFontSize(24);
	localParams[73]:setString([[重甲奇兵]]);
	localParams[73]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[73]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setTextColor({r = 255, g = 240, b = 155});
	localParams[73]:setContentSize({width = 100.0, height = 26.0});
	localParams[73]:setPosition(137.4, -28.0);
	self.__children['m_message_bg#node#m_name'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'm_message_bg#node#m_name';
	localParams[72]:addChild(localParams[73]);

	localParams[74] = Text:create();
	localParams[74]:setFontSize(20);
	localParams[74]:setString([[攻  击:]]);
	localParams[74]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[74]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[74]:setAnchorPoint(0.00, 0.50);
	localParams[74]:setContentSize({width = 58.0, height = 25.0});
	localParams[74]:setPosition(13.23, -60.31);
	self.__children['m_message_bg#node#property_txt1'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'm_message_bg#node#property_txt1';
	localParams[72]:addChild(localParams[74]);

	localParams[75] = RichText:create();
	localParams[75]:setDefaultFontSize(20);
	localParams[75]:setString([[d]]);
	localParams[75]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[75]:setTextAreaSize({width = 240, height = 0});
	localParams[75]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[75]:setAnchorPoint(0.00, 1.00);
	localParams[75]:setContentSize({width = 240.0, height = 0.0});
	localParams[75]:setPosition(15.0, -110.0);
	self.__children['m_message_bg#node#m_skill_explain1'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'm_message_bg#node#m_skill_explain1';
	localParams[72]:addChild(localParams[75]);

	localParams[76] = Text:create();
	localParams[76]:setFontSize(20);
	localParams[76]:setString([[血  量:]]);
	localParams[76]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[76]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[76]:setAnchorPoint(0.00, 0.50);
	localParams[76]:setContentSize({width = 58.0, height = 25.0});
	localParams[76]:setPosition(13.23, -87.5);
	self.__children['m_message_bg#node#property_txt3'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'm_message_bg#node#property_txt3';
	localParams[72]:addChild(localParams[76]);

	localParams[77] = Text:create();
	localParams[77]:setFontSize(20);
	localParams[77]:setString([[护  甲:]]);
	localParams[77]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[77]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[77]:setAnchorPoint(0.00, 0.50);
	localParams[77]:setContentSize({width = 58.0, height = 25.0});
	localParams[77]:setPosition(135.97, -60.31);
	self.__children['m_message_bg#node#property_txt2'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'm_message_bg#node#property_txt2';
	localParams[72]:addChild(localParams[77]);

	localParams[78] = Text:create();
	localParams[78]:setFontSize(20);
	localParams[78]:setString([[速  度:]]);
	localParams[78]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[78]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[78]:setAnchorPoint(0.00, 0.50);
	localParams[78]:setContentSize({width = 58.0, height = 25.0});
	localParams[78]:setPosition(135.97, -87.5);
	self.__children['m_message_bg#node#property_txt4'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'm_message_bg#node#property_txt4';
	localParams[72]:addChild(localParams[78]);

	localParams[79] = Text:create();
	localParams[79]:setFontSize(20);
	localParams[79]:setString([[99999]]);
	localParams[79]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[79]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[79]:setAnchorPoint(0.00, 0.50);
	localParams[79]:setTextColor({r = 80, g = 255, b = 0});
	localParams[79]:setContentSize({width = 58.0, height = 25.0});
	localParams[79]:setPosition(74.23, -60.95);
	self.__children['m_message_bg#node#property1'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'm_message_bg#node#property1';
	localParams[72]:addChild(localParams[79]);

	localParams[80] = Text:create();
	localParams[80]:setFontSize(20);
	localParams[80]:setString([[99999]]);
	localParams[80]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[80]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[80]:setAnchorPoint(0.00, 0.39);
	localParams[80]:setTextColor({r = 80, g = 255, b = 0});
	localParams[80]:setContentSize({width = 58.0, height = 25.0});
	localParams[80]:setPosition(198.0, -63.97);
	self.__children['m_message_bg#node#property2'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'm_message_bg#node#property2';
	localParams[72]:addChild(localParams[80]);

	localParams[81] = Text:create();
	localParams[81]:setFontSize(20);
	localParams[81]:setString([[99999]]);
	localParams[81]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[81]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[81]:setAnchorPoint(0.00, 0.50);
	localParams[81]:setTextColor({r = 80, g = 255, b = 0});
	localParams[81]:setContentSize({width = 58.0, height = 25.0});
	localParams[81]:setPosition(74.23, -89.5);
	self.__children['m_message_bg#node#property3'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'm_message_bg#node#property3';
	localParams[72]:addChild(localParams[81]);

	localParams[82] = Text:create();
	localParams[82]:setFontSize(20);
	localParams[82]:setString([[99999]]);
	localParams[82]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[82]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[82]:setAnchorPoint(0.00, 0.50);
	localParams[82]:setTextColor({r = 80, g = 255, b = 0});
	localParams[82]:setContentSize({width = 58.0, height = 25.0});
	localParams[82]:setPosition(198.0, -89.5);
	self.__children['m_message_bg#node#property4'] = localParams[82];
	localParams[82].__children = self.__children;
	localParams[82].__Name = 'm_message_bg#node#property4';
	localParams[72]:addChild(localParams[82]);

	localParams[83] = RichText:create();
	localParams[83]:setDefaultFontSize(20);
	localParams[83]:setString([[]]);
	localParams[83]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[83]:setTextAreaSize({width = 240, height = 0});
	localParams[83]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[83]:setAnchorPoint(0.00, 1.00);
	localParams[83]:setContentSize({width = 240.0, height = 0.0});
	localParams[83]:setPosition(15.0, -227.94);
	self.__children['m_message_bg#node#m_skill_explain2'] = localParams[83];
	localParams[83].__children = self.__children;
	localParams[83].__Name = 'm_message_bg#node#m_skill_explain2';
	localParams[72]:addChild(localParams[83]);

	localParams[84] = RichText:create();
	localParams[84]:setDefaultFontSize(20);
	localParams[84]:setString([[]]);
	localParams[84]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[84]:setTextAreaSize({width = 240, height = 0});
	localParams[84]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[84]:setAnchorPoint(0.00, 1.00);
	localParams[84]:setContentSize({width = 240.0, height = 0.0});
	localParams[84]:setPosition(15.0, -338.34);
	self.__children['m_message_bg#node#m_skill_explain3'] = localParams[84];
	localParams[84].__children = self.__children;
	localParams[84].__Name = 'm_message_bg#node#m_skill_explain3';
	localParams[72]:addChild(localParams[84]);

end
function PreviewLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0015.png');
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


function PreviewLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function PreviewLayer:_fight_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.fight_btn then
        return self.m_ClickDelegate:fight_btn(sender);
    end
    if self.fight_btn then
        return self:fight_btn(sender);
    end
end


function PreviewLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function PreviewLayer:_skill_bg_btn2(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.skill_bg_btn2 then
        return self.m_ClickDelegate:skill_bg_btn2(sender);
    end
    if self.skill_bg_btn2 then
        return self:skill_bg_btn2(sender);
    end
end


function PreviewLayer:_profession_back1(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.profession_back1 then
        return self.m_ClickDelegate:profession_back1(sender);
    end
    if self.profession_back1 then
        return self:profession_back1(sender);
    end
end


function PreviewLayer:_skill_bg_btn1(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.skill_bg_btn1 then
        return self.m_ClickDelegate:skill_bg_btn1(sender);
    end
    if self.skill_bg_btn1 then
        return self:skill_bg_btn1(sender);
    end
end


function PreviewLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function PreviewLayer:_onMonster(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onMonster then
        return self.m_ClickDelegate:onMonster(sender);
    end
    if self.onMonster then
        return self:onMonster(sender);
    end
end


return PreviewLayer;