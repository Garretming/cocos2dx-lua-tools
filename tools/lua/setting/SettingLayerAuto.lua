-- 
-- Author: generation auto
-- Brief：SettingLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local SettingLayer = class('SettingLayer', gamecore.ui.BaseWidget);

function SettingLayer:create(...) 
    local instance = SettingLayer.new(...);
    return instance;
end

function SettingLayer:ctor(...) 
    if SettingLayer.super and SettingLayer.super.ctor then
        SettingLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function SettingLayer:initView()
    self.__LAYER_NAME = 'setting.SettingLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 665.0, height = 595.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (0.90 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0031.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 336.0, height = 62.0});
	localParams[2]:setPosition(localParams[1]:getContentSize().width/2 + (0.13 * ccx.scaleX), 585.5);
	self.__children['bg#img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0180.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 117.0, height = 53.0});
	localParams[3]:setPosition(167.44, 31.74);
	self.__children['bg#img1#img2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#img1#img2';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 36.000000, y = 36.000000,width = 48.000000, height = 48.000000);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 595.0, height = 525.0});
	localParams[4]:setPosition(330.73, 298.36);
	self.__children['bg#img4'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#img4';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 36.000000, y = 36.000000,width = 48.000000, height = 48.000000);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 575.0, height = 505.0});
	localParams[5]:setPosition(331.52, 298.36);
	self.__children['bg#set_bg'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#set_bg';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[6]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 50.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._closeBtn));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 72.0, height = 72.0});
	localParams[6]:setPosition(649.28, 577.96);
	self.__children['bg#close'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#close';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Node:create();
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setScaleX(0.90);
	localParams[7]:setScaleY(0.90);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(110.29, 9.86);
	self.__children['bg#close#__SELECTED_SCALE'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#close#__SELECTED_SCALE';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 96.0, height = 96.0});
	localParams[8]:setPosition(130.0, 480.0);
	self.__children['bg#head'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#head';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 111.0, height = 111.0});
	localParams[9]:setPosition(47.3, 48.09);
	self.__children['bg#head#border'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#head#border';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_font/fontImg0067.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 30.0, height = 18.0});
	localParams[10]:setPosition(25.0, -9.47);
	self.__children['bg#head#level_img'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg#head#level_img';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[99]]);
	localParams[11]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[11]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setTextColor({r = 240, g = 200, b = 60});
	localParams[11]:setContentSize({width = 27.0, height = 22.0});
	localParams[11]:setPosition(32.79, 9.53);
	self.__children['bg#head#level_img#level'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg#head#level_img#level';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(0.60);
	localParams[12]:setScaleY(0.60);
	localParams[12]:onClick(handler(self, self._changeBtn));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 183.0, height = 68.0});
	localParams[12]:setPosition(43.01, -59.68);
	self.__children['bg#head#change'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg#head#change';
	localParams[8]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_font/fontImg0183.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 69.0, height = 30.0});
	localParams[13]:setPosition(91.13, 34.12);
	self.__children['bg#head#change#Sprite_30'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg#head#change#Sprite_30';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Node:create();
	localParams[14]:setAnchorPoint(0.00, 0.00);
	localParams[14]:setScaleX(0.55);
	localParams[14]:setScaleY(0.55);
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(93.62, 26.53);
	self.__children['bg#head#change#__SELECTED_SCALE'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg#head#change#__SELECTED_SCALE';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 310.0, height = 35.0});
	localParams[15]:setPosition(369.35, 516.88);
	self.__children['bg#name_bg'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg#name_bg';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[昵称：]]);
	localParams[16]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 155, g = 125, b = 100});
	localParams[16]:setContentSize({width = 55.0, height = 20.0});
	localParams[16]:setPosition(35.24, 17.32);
	self.__children['bg#name_bg#Text_11'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg#name_bg#Text_11';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[万里长征万]]);
	localParams[17]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:setAnchorPoint(0.00, 1.00);
	localParams[17]:setTextColor({r = 255, g = 240, b = 155});
	localParams[17]:setContentSize({width = 103.0, height = 20.0});
	localParams[17]:setPosition(76.18, 27.16);
	self.__children['bg#name_bg#name'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg#name_bg#name';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[18]:ignoreContentAdaptWithSize(false);
	localParams[18]:setScale9Enabled(true);
	localParams[18]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 310.0, height = 35.0});
	localParams[18]:setPosition(369.14, 473.77);
	self.__children['bg#title_bg'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg#title_bg';
	localParams[1]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(20);
	localParams[19]:setString([[UID：]]);
	localParams[19]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setTextColor({r = 155, g = 125, b = 100});
	localParams[19]:setContentSize({width = 45.0, height = 20.0});
	localParams[19]:setPosition(35.24, 17.32);
	self.__children['bg#title_bg#Text_11'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg#title_bg#Text_11';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[万里长征万]]);
	localParams[20]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[20]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[20]:setAnchorPoint(0.00, 1.00);
	localParams[20]:setTextColor({r = 255, g = 140, b = 0});
	localParams[20]:setContentSize({width = 104.0, height = 22.0});
	localParams[20]:setPosition(77.76, 29.16);
	self.__children['bg#title_bg#value'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg#title_bg#value';
	localParams[18]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[21]:ignoreContentAdaptWithSize(false);
	localParams[21]:setScale9Enabled(true);
	localParams[21]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 365.0, height = 90.0});
	localParams[21]:setPosition(395.9, 404.13);
	self.__children['bg#honor_bg'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg#honor_bg';
	localParams[1]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(20);
	localParams[22]:setString([[当前]]);
	localParams[22]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[22]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 44.0, height = 22.0});
	localParams[22]:setPosition(72.05, 17.63);
	self.__children['bg#honor_bg#Text_11'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg#honor_bg#Text_11';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create(, 0);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setScaleX(0.90);
	localParams[23]:setScaleY(0.90);
	localParams[23]:setContentSize({width = 46.0, height = 46.0});
	localParams[23]:setPosition(75.42, 57.0);
	self.__children['bg#honor_bg#icon1'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg#honor_bg#icon1';
	localParams[21]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[最高]]);
	localParams[24]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 44.0, height = 22.0});
	localParams[24]:setPosition(184.05, 17.48);
	self.__children['bg#honor_bg#Text_11_0'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg#honor_bg#Text_11_0';
	localParams[21]:addChild(localParams[24]);

	localParams[25] = ImageView:create(, 0);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setScaleX(0.90);
	localParams[25]:setScaleY(0.90);
	localParams[25]:setContentSize({width = 46.0, height = 46.0});
	localParams[25]:setPosition(187.41, 57.0);
	self.__children['bg#honor_bg#icon2'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg#honor_bg#icon2';
	localParams[21]:addChild(localParams[25]);

	localParams[26] = Text:create();
	localParams[26]:setFontSize(20);
	localParams[26]:setString([[印记]]);
	localParams[26]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[26]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 44.0, height = 22.0});
	localParams[26]:setPosition(294.3, 18.2);
	self.__children['bg#honor_bg#Text_11_0_0'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bg#honor_bg#Text_11_0_0';
	localParams[21]:addChild(localParams[26]);

	localParams[27] = Button:create();
	localParams[27]:setTitleFontSize(14);
	localParams[27]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setTouchEnabled(true);
	localParams[27]:setContentSize({width = 50.0, height = 50.0});
	localParams[27]:setPosition(localParams[21]:getContentSize().width - 70.11, 57.0);
	self.__children['bg#honor_bg#strongestTimes_btn'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'bg#honor_bg#strongestTimes_btn';
	localParams[21]:addChild(localParams[27]);

	localParams[28] = TextAtlas:create();
	localParams[28]:setProperty([[0]], 'uires/public/font_number/fontImg0231.png', 18, 23, '0');
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 18.0, height = 23.0});
	localParams[28]:setPosition(localParams[21]:getContentSize().width - 70.11, 54.0);
	self.__children['bg#honor_bg#rank_atlasLabel'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'bg#honor_bg#rank_atlasLabel';
	localParams[21]:addChild(localParams[28]);

	localParams[29] = Button:create();
	localParams[29]:loadTextureNormal('uires/public/sheet_btn/btn0124.png', 1);
	localParams[29]:setTitleFontSize(14);
	localParams[29]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:onClick(handler(self, self._amendBtn));
	localParams[29]:setTouchEnabled(true);
	localParams[29]:setContentSize({width = 40.0, height = 38.0});
	localParams[29]:setPosition(558.68, 517.56);
	self.__children['bg#amend'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'bg#amend';
	localParams[1]:addChild(localParams[29]);

	localParams[30] = Node:create();
	localParams[30]:setAnchorPoint(0.00, 0.00);
	localParams[30]:setScaleX(0.90);
	localParams[30]:setScaleY(0.90);
	localParams[30]:setContentSize({width = 0.0, height = 0.0});
	localParams[30]:setPosition(62.93, -21.77);
	self.__children['bg#amend#__SELECTED_SCALE'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'bg#amend#__SELECTED_SCALE';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[31]:ignoreContentAdaptWithSize(false);
	localParams[31]:setScale9Enabled(true);
	localParams[31]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 255.0, height = 250.0});
	localParams[31]:setPosition(193.8, 217.42);
	self.__children['bg#music_bg'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'bg#music_bg';
	localParams[1]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_other/other0191.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 74.0, height = 33.0});
	localParams[32]:setPosition(57.56, 201.59);
	self.__children['bg#music_bg#other0191_39'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'bg#music_bg#other0191_39';
	localParams[31]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_other/other0192.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 73.0, height = 33.0});
	localParams[33]:setPosition(55.45, 145.85);
	self.__children['bg#music_bg#other0192_40'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'bg#music_bg#other0192_40';
	localParams[31]:addChild(localParams[33]);

	localParams[34] = CheckBox:create();
	localParams[34]:loadTextureBackGround('uires/public/sheet_btn/btn0127.png', 1);
	localParams[34]:backGroundSelectedTexturePath('uires/public/sheet_btn/btn0126.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:onClick(handler(self, self._musicBtn));
	localParams[34]:setTouchEnabled(true);
	localParams[34]:setContentSize({width = 124.0, height = 44.0});
	localParams[34]:setPosition(185.0, 202.0);
	self.__children['bg#music_bg#music'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'bg#music_bg#music';
	localParams[31]:addChild(localParams[34]);

	localParams[35] = CheckBox:create();
	localParams[35]:loadTextureBackGround('uires/public/sheet_btn/btn0127.png', 1);
	localParams[35]:backGroundSelectedTexturePath('uires/public/sheet_btn/btn0126.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:onClick(handler(self, self._soundBtn));
	localParams[35]:setTouchEnabled(true);
	localParams[35]:setContentSize({width = 124.0, height = 44.0});
	localParams[35]:setPosition(185.0, 145.0);
	self.__children['bg#music_bg#sound'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'bg#music_bg#sound';
	localParams[31]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[36]:ignoreContentAdaptWithSize(false);
	localParams[36]:setScale9Enabled(true);
	localParams[36]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 255.0, height = 250.0});
	localParams[36]:setPosition(469.1, 217.04);
	self.__children['bg#push_bg'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'bg#push_bg';
	localParams[1]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_font/fontImg0196.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 145.0, height = 46.0});
	localParams[37]:setPosition(127.5, 125.0);
	self.__children['bg#push_bg#Sprite_1'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'bg#push_bg#Sprite_1';
	localParams[36]:addChild(localParams[37]);

end
function SettingLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/CheckBox_Disable.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0231.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function SettingLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SettingLayer:_changeBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.changeBtn then
        return self.m_ClickDelegate:changeBtn(sender);
    end
    if self.changeBtn then
        return self:changeBtn(sender);
    end
end


function SettingLayer:_closeBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.closeBtn then
        return self.m_ClickDelegate:closeBtn(sender);
    end
    if self.closeBtn then
        return self:closeBtn(sender);
    end
end


function SettingLayer:_amendBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.amendBtn then
        return self.m_ClickDelegate:amendBtn(sender);
    end
    if self.amendBtn then
        return self:amendBtn(sender);
    end
end


return SettingLayer;