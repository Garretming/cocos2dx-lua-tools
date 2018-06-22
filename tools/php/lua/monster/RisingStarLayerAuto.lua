-- 
-- Author: generation auto
-- Brief：RisingStarLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local RisingStarLayer = class('RisingStarLayer', gamecore.ui.BaseWidget);

function RisingStarLayer:create(...) 
    local instance = RisingStarLayer.new(...);
    return instance;
end

function RisingStarLayer:ctor(...) 
    if RisingStarLayer.super and RisingStarLayer.super.ctor then
        RisingStarLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function RisingStarLayer:initView()
    self.__LAYER_NAME = 'monster.RisingStarLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 440.0, height = 400.0});
	localParams[1]:setPosition(WinSize.width - 329.00, WinSize.height/2 + (25.02 * ccx.scaleY));
	self.__children['under_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'under_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 60.0, height = 29.0});
	localParams[2]:setPosition(120.0, 375.0);
	self.__children['under_img#left_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'under_img#left_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 60.0, height = 29.0});
	localParams[3]:setPosition(320.0, 375.0);
	self.__children['under_img#right_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'under_img#right_sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(28);
	localParams[4]:setString([[作死的大鸟]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 255, g = 240, b = 155});
	localParams[4]:setContentSize({width = 143.0, height = 30.0});
	localParams[4]:setPosition(220.0, 375.0);
	self.__children['under_img#name_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'under_img#name_txt';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(0.65);
	localParams[5]:setScaleY(0.65);
	localParams[5]:setContentSize({width = 43.0, height = 41.0});
	localParams[5]:setPosition(107.8, 345.0);
	self.__children['under_img#starUnder_sprite1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'under_img#starUnder_sprite1';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 43.0, height = 41.0});
	localParams[6]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite1#star_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'under_img#starUnder_sprite1#star_sprite';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.65);
	localParams[7]:setScaleY(0.65);
	localParams[7]:setContentSize({width = 43.0, height = 41.0});
	localParams[7]:setPosition(133.32, 345.0);
	self.__children['under_img#starUnder_sprite2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'under_img#starUnder_sprite2';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 43.0, height = 41.0});
	localParams[8]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite2#star_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'under_img#starUnder_sprite2#star_sprite';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setScaleX(0.65);
	localParams[9]:setScaleY(0.65);
	localParams[9]:setContentSize({width = 43.0, height = 41.0});
	localParams[9]:setPosition(158.84, 345.0);
	self.__children['under_img#starUnder_sprite3'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'under_img#starUnder_sprite3';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 43.0, height = 41.0});
	localParams[10]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite3#star_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'under_img#starUnder_sprite3#star_sprite';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setScaleX(0.65);
	localParams[11]:setScaleY(0.65);
	localParams[11]:setContentSize({width = 43.0, height = 41.0});
	localParams[11]:setPosition(184.36, 345.0);
	self.__children['under_img#starUnder_sprite4'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'under_img#starUnder_sprite4';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 43.0, height = 41.0});
	localParams[12]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite4#star_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'under_img#starUnder_sprite4#star_sprite';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(0.65);
	localParams[13]:setScaleY(0.65);
	localParams[13]:setContentSize({width = 43.0, height = 41.0});
	localParams[13]:setPosition(209.88, 345.0);
	self.__children['under_img#starUnder_sprite5'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'under_img#starUnder_sprite5';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 43.0, height = 41.0});
	localParams[14]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite5#star_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'under_img#starUnder_sprite5#star_sprite';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.65);
	localParams[15]:setScaleY(0.65);
	localParams[15]:setContentSize({width = 43.0, height = 41.0});
	localParams[15]:setPosition(235.4, 345.0);
	self.__children['under_img#starUnder_sprite6'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'under_img#starUnder_sprite6';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 43.0, height = 41.0});
	localParams[16]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite6#star_sprite'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'under_img#starUnder_sprite6#star_sprite';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setScaleX(0.65);
	localParams[17]:setScaleY(0.65);
	localParams[17]:setContentSize({width = 43.0, height = 41.0});
	localParams[17]:setPosition(260.92, 345.0);
	self.__children['under_img#starUnder_sprite7'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'under_img#starUnder_sprite7';
	localParams[1]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 43.0, height = 41.0});
	localParams[18]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite7#star_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'under_img#starUnder_sprite7#star_sprite';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.65);
	localParams[19]:setScaleY(0.65);
	localParams[19]:setContentSize({width = 43.0, height = 41.0});
	localParams[19]:setPosition(286.44, 345.0);
	self.__children['under_img#starUnder_sprite8'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'under_img#starUnder_sprite8';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 43.0, height = 41.0});
	localParams[20]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite8#star_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'under_img#starUnder_sprite8#star_sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setScaleX(0.65);
	localParams[21]:setScaleY(0.65);
	localParams[21]:setContentSize({width = 43.0, height = 41.0});
	localParams[21]:setPosition(311.96, 345.0);
	self.__children['under_img#starUnder_sprite9'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'under_img#starUnder_sprite9';
	localParams[1]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 43.0, height = 41.0});
	localParams[22]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite9#star_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'under_img#starUnder_sprite9#star_sprite';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setScaleX(0.65);
	localParams[23]:setScaleY(0.65);
	localParams[23]:setContentSize({width = 43.0, height = 41.0});
	localParams[23]:setPosition(337.48, 345.0);
	self.__children['under_img#starUnder_sprite10'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'under_img#starUnder_sprite10';
	localParams[1]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 43.0, height = 41.0});
	localParams[24]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite10#star_sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'under_img#starUnder_sprite10#star_sprite';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_bgframe/bgFrame0080.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 285.0, height = 285.0});
	localParams[25]:setPosition(220.0, 180.0);
	self.__children['under_img#under_sprite'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'under_img#under_sprite';
	localParams[1]:addChild(localParams[25]);

	localParams[26] = Button:create();
	localParams[26]:loadTextureNormal('uires/public/sheet_btn/btn0096.png', 1);
	localParams[26]:setTitleFontSize(14);
	localParams[26]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[26]:setScale9Enabled(true);
	localParams[26]:setCapInsets({x = 15.000000, y = 11.000000, width = 102.000000, height = 130.000000});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:onClick(handler(self, self._onRisingStar));
	localParams[26]:setTouchEnabled(true);
	localParams[26]:setContentSize({width = 132.0, height = 152.0});
	localParams[26]:setPosition(142.5, 142.5);
	self.__children['under_img#under_sprite#risingStar_btn'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'under_img#under_sprite#risingStar_btn';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ProgressTimer:create(Sprite:createWithSpriteFrameName(''uires/public/sheet_btn/btn0159.png''));
	localParams[27]:setType(1);
	localParams[27]:setMidpoint({x=0, y=0});
	localParams[27]:setBarChangeRate({x=0, y=1});
	localParams[27]:setPercentage(100.00);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 107.0, height = 123.0});
	localParams[27]:setPosition(66.0, 76.0);
	self.__children['under_img#under_sprite#risingStar_btn#LoadingBar_1'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'under_img#under_sprite#risingStar_btn#LoadingBar_1';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = Node:create();
	localParams[28]:setAnchorPoint(0.00, 0.00);
	localParams[28]:setContentSize({width = 0.0, height = 0.0});
	localParams[28]:setPosition(0.0, 0.0);
	self.__children['under_img#under_sprite#need'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'under_img#under_sprite#need';
	localParams[25]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(18);
	localParams[29]:setString([[升星需消耗：]]);
	localParams[29]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[29]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setTextColor({r = 240, g = 200, b = 60});
	localParams[29]:setContentSize({width = 106.0, height = 22.0});
	localParams[29]:setPosition(96.47, -20.0);
	self.__children['under_img#under_sprite#need#Text_1'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'under_img#under_sprite#need#Text_1';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = Text:create();
	localParams[30]:setFontSize(20);
	localParams[30]:setString([[3500]]);
	localParams[30]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[30]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[30]:setAnchorPoint(0.00, 0.50);
	localParams[30]:setContentSize({width = 48.0, height = 25.0});
	localParams[30]:setPosition(189.44, -20.0);
	self.__children['under_img#under_sprite#need#amount_txt'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'under_img#under_sprite#need#amount_txt';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setScaleX(0.70);
	localParams[31]:setScaleY(0.70);
	localParams[31]:setContentSize({width = 44.0, height = 44.0});
	localParams[31]:setPosition(170.13, -20.0);
	self.__children['under_img#under_sprite#need#coin_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'under_img#under_sprite#need#coin_sprite';
	localParams[28]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(18);
	localParams[32]:setString([[数量]]);
	localParams[32]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[32]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setTextColor({r = 240, g = 200, b = 60});
	localParams[32]:setContentSize({width = 41.0, height = 22.0});
	localParams[32]:setPosition(144.0, 149.87);
	self.__children['under_img#under_sprite#need#Text_3'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'under_img#under_sprite#need#Text_3';
	localParams[28]:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(20);
	localParams[33]:setString([[100/200]]);
	localParams[33]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[33]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setTextColor({r = 240, g = 200, b = 60});
	localParams[33]:setContentSize({width = 74.0, height = 24.0});
	localParams[33]:setPosition(144.0, 127.0);
	self.__children['under_img#under_sprite#need#number'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'under_img#under_sprite#need#number';
	localParams[28]:addChild(localParams[33]);

	localParams[34] = Node:create();
	localParams[34]:setAnchorPoint(0.00, 0.00);
	localParams[34]:setContentSize({width = 0.0, height = 0.0});
	localParams[34]:setPosition(0.0, 0.0);
	self.__children['under_img#under_sprite#full'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'under_img#under_sprite#full';
	localParams[25]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_font/fontImg0241.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 67.0, height = 31.0});
	localParams[35]:setPosition(142.5, 128.13);
	self.__children['under_img#under_sprite#full#Sprite_2'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'under_img#under_sprite#full#Sprite_2';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = RichText:create();
	localParams[36]:setDefaultFontSize(18);
	localParams[36]:setString([[3500]]);
	localParams[36]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[36]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 44.0, height = 22.0});
	localParams[36]:setPosition(142.5, 159.0);
	self.__children['under_img#under_sprite#full#amount_txt'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'under_img#under_sprite#full#amount_txt';
	localParams[34]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(18);
	localParams[37]:setString([[限制等级：4]]);
	localParams[37]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[37]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setTextColor({r = 255, g = 0, b = 0});
	localParams[37]:setContentSize({width = 104.0, height = 22.0});
	localParams[37]:setPosition(142.5, 80.0);
	self.__children['under_img#under_sprite#full#level'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'under_img#under_sprite#full#level';
	localParams[34]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_font/fontImg0060.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 118.0, height = 44.0});
	localParams[38]:setPosition(142.5, 142.5);
	self.__children['under_img#under_sprite#Sprite_3'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'under_img#under_sprite#Sprite_3';
	localParams[25]:addChild(localParams[38]);

end
function RisingStarLayer:loadImageSync()
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


function RisingStarLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RisingStarLayer:_onRisingStar(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRisingStar then
        return self.m_ClickDelegate:onRisingStar(sender);
    end
    if self.onRisingStar then
        return self:onRisingStar(sender);
    end
end


return RisingStarLayer;