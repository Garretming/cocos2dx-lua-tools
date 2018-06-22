-- 
-- Author: generation auto
-- Brief：RankLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local RankLayer = class('RankLayer', gamecore.ui.BaseWidget);

function RankLayer:create(...) 
    local instance = RankLayer.new(...);
    return instance;
end

function RankLayer:ctor(...) 
    if RankLayer.super and RankLayer.super.ctor then
        RankLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function RankLayer:initView()
    self.__LAYER_NAME = 'rank.RankLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 60.000000, height = 60.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 710.0, height = WinSize.height - 50.00});
	localParams[1]:setPosition(-360.0, WinSize.height/2 + (-12.80 * ccx.scaleY));
	self.__children['Bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 600.0, height = WinSize.height - 120.00});
	localParams[2]:setPosition(377.93, localParams[1]:getContentSize().height/2 + (-0.00 * ccx.scaleY));
	self.__children['Bg_img#under_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Bg_img#under_img';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 580.0, height = 110.0});
	localParams[3]:setPosition(380.0, localParams[1]:getContentSize().height - 100.00);
	self.__children['Bg_img#under_img0'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Bg_img#under_img0';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[我的排名]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[4]:setAnchorPoint(0.50, 0.00);
	localParams[4]:setTextColor({r = 240, g = 200, b = 60});
	localParams[4]:setContentSize({width = 83.0, height = 22.0});
	localParams[4]:setPosition(70.0, 55.0);
	self.__children['Bg_img#under_img0#myRankFont_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Bg_img#under_img0#myRankFont_txt';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = TextAtlas:create();
	localParams[5]:setProperty([[0]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 34.0, height = 40.0});
	localParams[5]:setPosition(70.0, 30.0);
	self.__children['Bg_img#under_img0#rank_atlasLabel'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Bg_img#under_img0#rank_atlasLabel';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(22);
	localParams[6]:setString([[大鸟大鸟大鸟]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setTextColor({r = 255, g = 140, b = 0});
	localParams[6]:setContentSize({width = 136.0, height = 26.0});
	localParams[6]:setPosition(174.0, 69.3);
	self.__children['Bg_img#under_img0#name_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Bg_img#under_img0#name_txt';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(22);
	localParams[7]:setString([[LV.25]]);
	localParams[7]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[7]:setAnchorPoint(1.00, 0.50);
	localParams[7]:setTextColor({r = 255, g = 140, b = 0});
	localParams[7]:setContentSize({width = 59.0, height = 26.0});
	localParams[7]:setPosition(394.63, 69.3);
	self.__children['Bg_img#under_img0#level_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Bg_img#under_img0#level_txt';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(22);
	localParams[8]:setString([[胜率：]]);
	localParams[8]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[8]:setAnchorPoint(1.00, 0.50);
	localParams[8]:setScaleX(1.01);
	localParams[8]:setTextColor({r = 255, g = 140, b = 0});
	localParams[8]:setContentSize({width = 57.0, height = 29.0});
	localParams[8]:setPosition(478.0, 69.3);
	self.__children['Bg_img#under_img0#win_text1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Bg_img#under_img0#win_text1';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(22);
	localParams[9]:setString([[55.00%]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[9]:setAnchorPoint(0.00, 0.50);
	localParams[9]:setScaleX(1.01);
	localParams[9]:setTextColor({r = 255, g = 140, b = 0});
	localParams[9]:setContentSize({width = 75.0, height = 29.0});
	localParams[9]:setPosition(478.0, 69.3);
	self.__children['Bg_img#under_img0#win_text'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Bg_img#under_img0#win_text';
	localParams[3]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 330.0, height = 32.0});
	localParams[10]:setPosition(359.6, 30.8);
	self.__children['Bg_img#under_img0#under_1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Bg_img#under_img0#under_1';
	localParams[3]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[最强王者]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 240, g = 200, b = 60});
	localParams[11]:setContentSize({width = 84.0, height = 22.0});
	localParams[11]:setPosition(72.6, 16.0);
	self.__children['Bg_img#under_img0#under_1#strongest_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Bg_img#under_img0#under_1#strongest_txt';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(0.80);
	localParams[12]:setScaleY(0.80);
	localParams[12]:setContentSize({width = 39.0, height = 36.0});
	localParams[12]:setPosition(231.0, 16.0);
	self.__children['Bg_img#under_img0#under_1#star_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Bg_img#under_img0#under_1#star_sprite';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(20);
	localParams[13]:setString([[x6]]);
	localParams[13]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[13]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setTextColor({r = 255, g = 240, b = 155});
	localParams[13]:setContentSize({width = 25.0, height = 22.0});
	localParams[13]:setPosition(264.0, 16.0);
	self.__children['Bg_img#under_img0#under_1#count_txt'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Bg_img#under_img0#under_1#count_txt';
	localParams[10]:addChild(localParams[13]);

	localParams[14] = ImageView:create(, 0);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(0.75);
	localParams[14]:setScaleY(0.75);
	localParams[14]:setContentSize({width = 46.0, height = 46.0});
	localParams[14]:setPosition(6.6, 16.0);
	self.__children['Bg_img#under_img0#under_1#strongestTimes_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Bg_img#under_img0#under_1#strongestTimes_sprite';
	localParams[10]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 580.0, height = 110.0});
	localParams[15]:setPosition(380.0, localParams[1]:getContentSize().height - 100.00);
	self.__children['Bg_img#under_img1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Bg_img#under_img1';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_font/fontImg0249.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.00);
	localParams[16]:setContentSize({width = 86.0, height = 49.0});
	localParams[16]:setPosition(70.0, 55.0);
	self.__children['Bg_img#under_img1#Sprite_1'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Bg_img#under_img1#Sprite_1';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = TextAtlas:create();
	localParams[17]:setProperty([[0]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 34.0, height = 40.0});
	localParams[17]:setPosition(70.0, 30.0);
	self.__children['Bg_img#under_img1#rank_atlasLabel'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Bg_img#under_img1#rank_atlasLabel';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[18]:ignoreContentAdaptWithSize(false);
	localParams[18]:setScale9Enabled(true);
	localParams[18]:setCapInsets({x = 29.000000, y = 11.000000,width = 62.000000, height = 98.000000);
	localParams[18]:setAnchorPoint(0.00, 0.50);
	localParams[18]:setContentSize({width = 350.0, height = 80.0});
	localParams[18]:setPosition(216.0, 55.0);
	self.__children['Bg_img#under_img1#Image_1'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Bg_img#under_img1#Image_1';
	localParams[15]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(20);
	localParams[19]:setString([[天梯每赛季结束时
排名第一的玩家可入冠军榜]]);
	localParams[19]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[19]:setTextAreaSize({width = 320, height = 50});
	localParams[19]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[19]:setAnchorPoint(0.00, 0.50);
	localParams[19]:setTextColor({r = 240, g = 200, b = 60});
	localParams[19]:setContentSize({width = 320.0, height = 50.0});
	localParams[19]:setPosition(230.0, 55.0);
	self.__children['Bg_img#under_img1#desc'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Bg_img#under_img1#desc';
	localParams[15]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_font/fontImg0246.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 52.0, height = 52.0});
	localParams[20]:setPosition(187.0, 55.0);
	self.__children['Bg_img#under_img1#Sprite_1_0'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'Bg_img#under_img1#Sprite_1_0';
	localParams[15]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[21]:ignoreContentAdaptWithSize(false);
	localParams[21]:setScale9Enabled(true);
	localParams[21]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[21]:setAnchorPoint(0.50, 1.00);
	localParams[21]:setContentSize({width = 580.0, height = WinSize.height - 255.00});
	localParams[21]:setPosition(377.93, localParams[1]:getContentSize().height - 160.00);
	self.__children['Bg_img#under_img2'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Bg_img#under_img2';
	localParams[1]:addChild(localParams[21]);

	localParams[22] = ListView:create();
	localParams[22]:setDirection(1);
	localParams[22]:setGravity(0);
	localParams[22]:setBackGroundColorType(1);
	localParams[22]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[22]:setBackGroundColorOpacity(0);
	localParams[22]:setAnchorPoint(0.00, 0.00);
	localParams[22]:onClick(handler(self, self._onListView));
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setContentSize({width = 580.0, height = WinSize.height - 275.00});
	localParams[22]:setPosition(0.0, 10.0);
	self.__children['Bg_img#under_img2#ListView_1'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'Bg_img#under_img2#ListView_1';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ListView:create();
	localParams[23]:setDirection(1);
	localParams[23]:setGravity(0);
	localParams[23]:setBackGroundColorType(1);
	localParams[23]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[23]:setBackGroundColorOpacity(0);
	localParams[23]:setAnchorPoint(0.00, 0.00);
	localParams[23]:onClick(handler(self, self._onListView2));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 580.0, height = WinSize.height - 275.00});
	localParams[23]:setPosition(0.0, 10.0);
	self.__children['Bg_img#under_img2#ListView_2'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'Bg_img#under_img2#ListView_2';
	localParams[21]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_bgframe/bgFrame0031.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 336.0, height = 62.0});
	localParams[24]:setPosition(355.0, localParams[1]:getContentSize().height - 8.00);
	self.__children['Bg_img#title_sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'Bg_img#title_sprite';
	localParams[1]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_font/fontImg0230.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 146.0, height = 53.0});
	localParams[25]:setPosition(168.0, 31.0);
	self.__children['Bg_img#title_sprite#Sprite_7'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'Bg_img#title_sprite#Sprite_7';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = Button:create();
	localParams[26]:loadTextureNormal('uires/public/sheet_btn/btn0085.png', 1);
	localParams[26]:loadTexturePressed('uires/public/sheet_btn/btn0086.png', 1);
	localParams[26]:setTitleFontSize(14);
	localParams[26]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:onClick(handler(self, self._onTabMenu));
	localParams[26]:setTouchEnabled(true);
	localParams[26]:setContentSize({width = 77.0, height = 78.0});
	localParams[26]:setPosition(40.47, localParams[1]:getContentSize().height - 219.00);
	self.__children['Bg_img#ladder_btn'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'Bg_img#ladder_btn';
	localParams[1]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_font/fontImg0228.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setVisible(false);
	localParams[27]:setContentSize({width = 43.0, height = 24.0});
	localParams[27]:setPosition(38.5, 39.0);
	self.__children['Bg_img#ladder_btn#font_sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'Bg_img#ladder_btn#font_sprite';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[冠军]]);
	localParams[28]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setTextColor({r = 240, g = 200, b = 0});
	localParams[28]:setContentSize({width = 45.0, height = 24.0});
	localParams[28]:setPosition(38.5, 39.0);
	self.__children['Bg_img#ladder_btn#Text_2'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'Bg_img#ladder_btn#Text_2';
	localParams[26]:addChild(localParams[28]);

	localParams[29] = Button:create();
	localParams[29]:loadTextureNormal('uires/public/sheet_btn/btn0113.png', 1);
	localParams[29]:loadTexturePressed('uires/public/sheet_btn/btn0113.png', 1);
	localParams[29]:setTitleFontSize(14);
	localParams[29]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:onClick(handler(self, self._onClose));
	localParams[29]:setTouchEnabled(true);
	localParams[29]:setFlippedY(true);
	localParams[29]:setRotationSkewX(180.00);
	localParams[29]:setRotationSkewY(180.00);
	localParams[29]:setContentSize({width = 57.0, height = WinSize.height - 402.00});
	localParams[29]:setPosition(677.2, localParams[1]:getContentSize().height/2 + (-0.00 * ccx.scaleY));
	self.__children['Bg_img#close_btn'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'Bg_img#close_btn';
	localParams[1]:addChild(localParams[29]);

	localParams[30] = Button:create();
	localParams[30]:loadTextureNormal('uires/public/sheet_btn/btn0085.png', 1);
	localParams[30]:loadTexturePressed('uires/public/sheet_btn/btn0086.png', 1);
	localParams[30]:setTitleFontSize(14);
	localParams[30]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:onClick(handler(self, self._onTabMenu));
	localParams[30]:setTouchEnabled(true);
	localParams[30]:setContentSize({width = 77.0, height = 78.0});
	localParams[30]:setPosition(40.5, localParams[1]:getContentSize().height - 129.00);
	self.__children['Bg_img#ladder_btn1'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Bg_img#ladder_btn1';
	localParams[1]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_font/fontImg0228.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 43.0, height = 24.0});
	localParams[31]:setPosition(38.5, 39.0);
	self.__children['Bg_img#ladder_btn1#font_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Bg_img#ladder_btn1#font_sprite';
	localParams[30]:addChild(localParams[31]);

end
function RankLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg013.png');
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


function RankLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RankLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function RankLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return RankLayer;