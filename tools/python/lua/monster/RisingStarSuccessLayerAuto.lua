-- 
-- Author: generation auto
-- Brief：RisingStarSuccessLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local RisingStarSuccessLayer = class('RisingStarSuccessLayer', gamecore.ui.BaseWidget);

function RisingStarSuccessLayer:create(...) 
    local instance = RisingStarSuccessLayer.new(...);
    return instance;
end

function RisingStarSuccessLayer:ctor(...) 
    if RisingStarSuccessLayer.super and RisingStarSuccessLayer.super.ctor then
        RisingStarSuccessLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);
end

function RisingStarSuccessLayer:initView()
    self.__LAYER_NAME = 'monster.RisingStarSuccessLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0011.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create(nil, 0);
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:setContentSize({width = 46.0, height = 46.0});
	localParams[2]:setPosition(300.0, 320.0);
	self.__children['bg_img#monster_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#monster_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0101.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 290.0, height = 83.0});
	localParams[3]:setPosition(300.0, 200.0);
	self.__children['bg_img#Sprite_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#Sprite_1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0098.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 199.0, height = 59.0});
	localParams[4]:setPosition(145.0, 68.5);
	self.__children['bg_img#Sprite_1#Sprite_2'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#Sprite_1#Sprite_2';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0105.png', 1);
	localParams[5]:setAnchorPoint(0.48, 0.37);
	localParams[5]:setContentSize({width = 55.0, height = 47.0});
	localParams[5]:setPosition(WinSize.width - 360.35, WinSize.height/2 + (25.73 * ccx.scaleY));
	self.__children['direction_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'direction_sprite';
	self:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[6]:ignoreContentAdaptWithSize(false);
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setVisible(false);
	localParams[6]:setContentSize({width = 172.0, height = 29.0});
	localParams[6]:setPosition(-781.0, 84.6);
	self.__children['direction_sprite#under_img1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'direction_sprite#under_img1';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[生   命：]]);
	localParams[7]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setContentSize({width = 66.0, height = 25.0});
	localParams[7]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img1#title_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'direction_sprite#under_img1#title_txt';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[8888888]]);
	localParams[8]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[8]:setAnchorPoint(1.00, 0.50);
	localParams[8]:setTextColor({r = 255, g = 140, b = 0});
	localParams[8]:setContentSize({width = 73.0, height = 22.0});
	localParams[8]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img1#value_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'direction_sprite#under_img1#value_txt';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setVisible(false);
	localParams[9]:setContentSize({width = 172.0, height = 29.0});
	localParams[9]:setPosition(-781.0, 47.0);
	self.__children['direction_sprite#under_img2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'direction_sprite#under_img2';
	localParams[5]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[攻   击：]]);
	localParams[10]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setContentSize({width = 66.0, height = 25.0});
	localParams[10]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img2#title_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'direction_sprite#under_img2#title_txt';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[8888888]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(1.00, 0.50);
	localParams[11]:setTextColor({r = 255, g = 140, b = 0});
	localParams[11]:setContentSize({width = 73.0, height = 22.0});
	localParams[11]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img2#value_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'direction_sprite#under_img2#value_txt';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[12]:ignoreContentAdaptWithSize(false);
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setVisible(false);
	localParams[12]:setContentSize({width = 172.0, height = 29.0});
	localParams[12]:setPosition(-781.0, 9.4);
	self.__children['direction_sprite#under_img3'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'direction_sprite#under_img3';
	localParams[5]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(20);
	localParams[13]:setString([[护   甲：]]);
	localParams[13]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[13]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[13]:setAnchorPoint(0.00, 0.50);
	localParams[13]:setContentSize({width = 66.0, height = 25.0});
	localParams[13]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img3#title_txt'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'direction_sprite#under_img3#title_txt';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[8888888]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[14]:setAnchorPoint(1.00, 0.50);
	localParams[14]:setTextColor({r = 255, g = 140, b = 0});
	localParams[14]:setContentSize({width = 73.0, height = 22.0});
	localParams[14]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img3#value_txt'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'direction_sprite#under_img3#value_txt';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setVisible(false);
	localParams[15]:setContentSize({width = 172.0, height = 29.0});
	localParams[15]:setPosition(-781.0, -28.2);
	self.__children['direction_sprite#under_img4'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'direction_sprite#under_img4';
	localParams[5]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[速   度：]]);
	localParams[16]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[16]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[16]:setAnchorPoint(0.00, 0.50);
	localParams[16]:setContentSize({width = 66.0, height = 25.0});
	localParams[16]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img4#title_txt'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'direction_sprite#under_img4#title_txt';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[8888888]]);
	localParams[17]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[17]:setAnchorPoint(1.00, 0.50);
	localParams[17]:setTextColor({r = 255, g = 140, b = 0});
	localParams[17]:setContentSize({width = 73.0, height = 22.0});
	localParams[17]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img4#value_txt'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'direction_sprite#under_img4#value_txt';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[18]:ignoreContentAdaptWithSize(false);
	localParams[18]:setScale9Enabled(true);
	localParams[18]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setVisible(false);
	localParams[18]:setContentSize({width = 172.0, height = 29.0});
	localParams[18]:setPosition(781.0, 84.6);
	self.__children['direction_sprite#under_img5'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'direction_sprite#under_img5';
	localParams[5]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(20);
	localParams[19]:setString([[生   命：]]);
	localParams[19]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[19]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[19]:setAnchorPoint(0.00, 0.50);
	localParams[19]:setContentSize({width = 66.0, height = 25.0});
	localParams[19]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img5#title_txt'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'direction_sprite#under_img5#title_txt';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[8888888]]);
	localParams[20]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[20]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[20]:setAnchorPoint(1.00, 0.50);
	localParams[20]:setTextColor({r = 80, g = 255, b = 0});
	localParams[20]:setContentSize({width = 73.0, height = 22.0});
	localParams[20]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img5#value_txt'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'direction_sprite#under_img5#value_txt';
	localParams[18]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[21]:ignoreContentAdaptWithSize(false);
	localParams[21]:setScale9Enabled(true);
	localParams[21]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setVisible(false);
	localParams[21]:setContentSize({width = 172.0, height = 29.0});
	localParams[21]:setPosition(781.0, 47.0);
	self.__children['direction_sprite#under_img6'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'direction_sprite#under_img6';
	localParams[5]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(20);
	localParams[22]:setString([[攻   击：]]);
	localParams[22]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[22]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[22]:setAnchorPoint(0.00, 0.50);
	localParams[22]:setContentSize({width = 66.0, height = 25.0});
	localParams[22]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img6#title_txt'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'direction_sprite#under_img6#title_txt';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = Text:create();
	localParams[23]:setFontSize(20);
	localParams[23]:setString([[8888888]]);
	localParams[23]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[23]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[23]:setAnchorPoint(1.00, 0.50);
	localParams[23]:setTextColor({r = 80, g = 255, b = 0});
	localParams[23]:setContentSize({width = 73.0, height = 22.0});
	localParams[23]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img6#value_txt'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'direction_sprite#under_img6#value_txt';
	localParams[21]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[24]:ignoreContentAdaptWithSize(false);
	localParams[24]:setScale9Enabled(true);
	localParams[24]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setVisible(false);
	localParams[24]:setContentSize({width = 172.0, height = 29.0});
	localParams[24]:setPosition(781.0, 9.4);
	self.__children['direction_sprite#under_img7'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'direction_sprite#under_img7';
	localParams[5]:addChild(localParams[24]);

	localParams[25] = Text:create();
	localParams[25]:setFontSize(20);
	localParams[25]:setString([[护   甲：]]);
	localParams[25]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[25]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[25]:setAnchorPoint(0.00, 0.50);
	localParams[25]:setContentSize({width = 66.0, height = 25.0});
	localParams[25]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img7#title_txt'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'direction_sprite#under_img7#title_txt';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = Text:create();
	localParams[26]:setFontSize(20);
	localParams[26]:setString([[8888888]]);
	localParams[26]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[26]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[26]:setAnchorPoint(1.00, 0.50);
	localParams[26]:setTextColor({r = 80, g = 255, b = 0});
	localParams[26]:setContentSize({width = 73.0, height = 22.0});
	localParams[26]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img7#value_txt'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'direction_sprite#under_img7#value_txt';
	localParams[24]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[27]:ignoreContentAdaptWithSize(false);
	localParams[27]:setScale9Enabled(true);
	localParams[27]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setVisible(false);
	localParams[27]:setContentSize({width = 172.0, height = 29.0});
	localParams[27]:setPosition(781.0, -28.2);
	self.__children['direction_sprite#under_img8'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'direction_sprite#under_img8';
	localParams[5]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[速   度：]]);
	localParams[28]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[28]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[28]:setAnchorPoint(0.00, 0.50);
	localParams[28]:setContentSize({width = 66.0, height = 25.0});
	localParams[28]:setPosition(9.0, 14.0);
	self.__children['direction_sprite#under_img8#title_txt'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'direction_sprite#under_img8#title_txt';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[8888888]]);
	localParams[29]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[29]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[29]:setAnchorPoint(1.00, 0.50);
	localParams[29]:setTextColor({r = 80, g = 255, b = 0});
	localParams[29]:setContentSize({width = 73.0, height = 22.0});
	localParams[29]:setPosition(165.1, 14.9);
	self.__children['direction_sprite#under_img8#value_txt'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'direction_sprite#under_img8#value_txt';
	localParams[27]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_font/fontImg0065.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 204.0, height = 24.0});
	localParams[30]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 51.2);
	self.__children['prompt_sprite'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'prompt_sprite';
	self:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 60.0, height = 29.0});
	localParams[31]:setPosition(WinSize.width - 468.79, WinSize.height - 136.96);
	self.__children['left_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'left_sprite';
	self:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 60.0, height = 29.0});
	localParams[32]:setPosition(WinSize.width - 249.04, WinSize.height - 136.96);
	self.__children['right_sprite'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'right_sprite';
	self:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(28);
	localParams[33]:setString([[作死的大鸟]]);
	localParams[33]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[33]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setTextColor({r = 255, g = 240, b = 155});
	localParams[33]:setContentSize({width = 143.0, height = 30.0});
	localParams[33]:setPosition(WinSize.width - 359.42, WinSize.height - 136.96);
	self.__children['name_txt'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'name_txt';
	self:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setScaleX(0.70);
	localParams[34]:setScaleY(0.70);
	localParams[34]:setContentSize({width = 43.0, height = 41.0});
	localParams[34]:setPosition(WinSize.width - 492.34, WinSize.height - 175.88);
	self.__children['starUnder_sprite1'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'starUnder_sprite1';
	self:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 43.0, height = 41.0});
	localParams[35]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite1#star_sprite'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'starUnder_sprite1#star_sprite';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setScaleX(0.70);
	localParams[36]:setScaleY(0.70);
	localParams[36]:setContentSize({width = 43.0, height = 41.0});
	localParams[36]:setPosition(WinSize.width - 462.64, WinSize.height - 175.88);
	self.__children['starUnder_sprite2'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'starUnder_sprite2';
	self:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 43.0, height = 41.0});
	localParams[37]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite2#star_sprite'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'starUnder_sprite2#star_sprite';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setScaleX(0.70);
	localParams[38]:setScaleY(0.70);
	localParams[38]:setContentSize({width = 43.0, height = 41.0});
	localParams[38]:setPosition(WinSize.width - 432.95, WinSize.height - 175.88);
	self.__children['starUnder_sprite3'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'starUnder_sprite3';
	self:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 43.0, height = 41.0});
	localParams[39]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite3#star_sprite'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'starUnder_sprite3#star_sprite';
	localParams[38]:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setScaleX(0.70);
	localParams[40]:setScaleY(0.70);
	localParams[40]:setContentSize({width = 43.0, height = 41.0});
	localParams[40]:setPosition(WinSize.width - 403.25, WinSize.height - 175.88);
	self.__children['starUnder_sprite4'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'starUnder_sprite4';
	self:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 43.0, height = 41.0});
	localParams[41]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite4#star_sprite'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'starUnder_sprite4#star_sprite';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setScaleX(0.70);
	localParams[42]:setScaleY(0.70);
	localParams[42]:setContentSize({width = 43.0, height = 41.0});
	localParams[42]:setPosition(WinSize.width - 373.56, WinSize.height - 175.88);
	self.__children['starUnder_sprite5'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'starUnder_sprite5';
	self:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 43.0, height = 41.0});
	localParams[43]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite5#star_sprite'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'starUnder_sprite5#star_sprite';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setScaleX(0.70);
	localParams[44]:setScaleY(0.70);
	localParams[44]:setContentSize({width = 43.0, height = 41.0});
	localParams[44]:setPosition(WinSize.width - 343.86, WinSize.height - 175.88);
	self.__children['starUnder_sprite6'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'starUnder_sprite6';
	self:addChild(localParams[44]);

	localParams[45] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setContentSize({width = 43.0, height = 41.0});
	localParams[45]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite6#star_sprite'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'starUnder_sprite6#star_sprite';
	localParams[44]:addChild(localParams[45]);

	localParams[46] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setScaleX(0.70);
	localParams[46]:setScaleY(0.70);
	localParams[46]:setContentSize({width = 43.0, height = 41.0});
	localParams[46]:setPosition(WinSize.width - 314.16, WinSize.height - 175.88);
	self.__children['starUnder_sprite7'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'starUnder_sprite7';
	self:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 43.0, height = 41.0});
	localParams[47]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite7#star_sprite'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'starUnder_sprite7#star_sprite';
	localParams[46]:addChild(localParams[47]);

	localParams[48] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setScaleX(0.70);
	localParams[48]:setScaleY(0.70);
	localParams[48]:setContentSize({width = 43.0, height = 41.0});
	localParams[48]:setPosition(WinSize.width - 284.47, WinSize.height - 175.88);
	self.__children['starUnder_sprite8'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'starUnder_sprite8';
	self:addChild(localParams[48]);

	localParams[49] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setContentSize({width = 43.0, height = 41.0});
	localParams[49]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite8#star_sprite'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'starUnder_sprite8#star_sprite';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setScaleX(0.70);
	localParams[50]:setScaleY(0.70);
	localParams[50]:setContentSize({width = 43.0, height = 41.0});
	localParams[50]:setPosition(WinSize.width - 254.77, WinSize.height - 175.88);
	self.__children['starUnder_sprite9'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'starUnder_sprite9';
	self:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 43.0, height = 41.0});
	localParams[51]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite9#star_sprite'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'starUnder_sprite9#star_sprite';
	localParams[50]:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setScaleX(0.70);
	localParams[52]:setScaleY(0.70);
	localParams[52]:setContentSize({width = 43.0, height = 41.0});
	localParams[52]:setPosition(WinSize.width - 225.08, WinSize.height - 175.88);
	self.__children['starUnder_sprite10'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'starUnder_sprite10';
	self:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 43.0, height = 41.0});
	localParams[53]:setPosition(21.5, 20.5);
	self.__children['starUnder_sprite10#star_sprite'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'starUnder_sprite10#star_sprite';
	localParams[52]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[54]:ignoreContentAdaptWithSize(false);
	localParams[54]:setScale9Enabled(true);
	localParams[54]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setVisible(false);
	localParams[54]:setContentSize({width = 440.0, height = 120.0});
	localParams[54]:setPosition(WinSize.width - 360.93, 204.26);
	self.__children['specialUnder_img'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'specialUnder_img';
	self:addChild(localParams[54]);

	localParams[55] = Text:create();
	localParams[55]:setFontSize(20);
	localParams[55]:setString([[啊！不好意思，小的没有特性.]]);
	localParams[55]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[55]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 268.0, height = 25.0});
	localParams[55]:setPosition(220.0, 60.0);
	self.__children['specialUnder_img#cue_txt'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'specialUnder_img#cue_txt';
	localParams[54]:addChild(localParams[55]);

	localParams[56] = ImageView:create('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setScaleX(0.70);
	localParams[56]:setScaleY(0.70);
	localParams[56]:setVisible(false);
	localParams[56]:setContentSize({width = 108.0, height = 108.0});
	localParams[56]:setPosition(WinSize.width - 521.65, 208.36);
	self.__children['under_sprite'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'under_sprite';
	self:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setContentSize({width = 80.0, height = 80.0});
	localParams[57]:setPosition(54.0, 54.0);
	self.__children['under_sprite#skillIcon_sprite'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'under_sprite#skillIcon_sprite';
	localParams[56]:addChild(localParams[57]);

	localParams[58] = Text:create();
	localParams[58]:setFontSize(26);
	localParams[58]:setString([[灵魂突袭]]);
	localParams[58]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[58]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setTextColor({r = 255, g = 240, b = 155});
	localParams[58]:setContentSize({width = 108.0, height = 28.0});
	localParams[58]:setPosition(54.0, 5.4);
	self.__children['under_sprite#skillName_txt'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'under_sprite#skillName_txt';
	localParams[56]:addChild(localParams[58]);

	localParams[59] = RichText:create();
	localParams[59]:setDefaultFontSize(20);
	localParams[59]:setString([[召唤狐火轰向横排敌人，造成35%伤害，并弹射3个目标，造成444伤害，并持续流血4回合。]]);
	localParams[59]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[59]:setTextAreaSize({width = 420, height = 50});
	localParams[59]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[59]:setAnchorPoint(0.00, 0.50);
	localParams[59]:setScaleX(1.10);
	localParams[59]:setScaleY(1.10);
	localParams[59]:setContentSize({width = 420.0, height = 50.0});
	localParams[59]:setPosition(124.22, 53.15);
	self.__children['under_sprite#desc_txt'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'under_sprite#desc_txt';
	localParams[56]:addChild(localParams[59]);

end
function RisingStarSuccessLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0011.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function RisingStarSuccessLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return RisingStarSuccessLayer;