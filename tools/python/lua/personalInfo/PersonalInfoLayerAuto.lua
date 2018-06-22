-- 
-- Author: generation auto
-- Brief：PersonalInfoLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local PersonalInfoLayer = class('PersonalInfoLayer', gamecore.ui.BaseWidget);

function PersonalInfoLayer:create(...) 
    local instance = PersonalInfoLayer.new(...);
    return instance;
end

function PersonalInfoLayer:ctor(...) 
    if PersonalInfoLayer.super and PersonalInfoLayer.super.ctor then
        PersonalInfoLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function PersonalInfoLayer:initView()
    self.__LAYER_NAME = 'personalInfo.PersonalInfoLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 935.0, height = 590.0});
	localParams[1]:setPosition(512.0, 320.0);
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:onClick(handler(self, self._onClose));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 72.0, height = 72.0});
	localParams[2]:setPosition(913.35, 571.05);
	self.__children['bg#close_btn'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#close_btn';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Node:create();
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setScaleX(0.90);
	localParams[3]:setScaleY(0.90);
	localParams[3]:setContentSize({width = 0.0, height = 0.0});
	localParams[3]:setPosition(-1115.14, -450.12);
	self.__children['bg#close_btn#__SELECTED_SCALE'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#close_btn#__SELECTED_SCALE';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 825.0, height = 525.0});
	localParams[4]:setPosition(446.74, 287.86);
	self.__children['bg#friendBg_img'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#friendBg_img';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 220.0, height = 500.0});
	localParams[5]:setPosition(123.75, 262.5);
	self.__children['bg#friendBg_img#under_img1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#friendBg_img#under_img1';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_other/other0195.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 66.000000, height = 74.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._toInfo));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 96.0, height = 96.0});
	localParams[6]:setPosition(109.93, 426.06);
	self.__children['bg#friendBg_img#under_img1#icon'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#friendBg_img#under_img1#icon';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 111.0, height = 111.0});
	localParams[7]:setPosition(48.0, 48.0);
	self.__children['bg#friendBg_img#under_img1#icon#iconUnder'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#friendBg_img#under_img1#icon#iconUnder';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(26);
	localParams[8]:setString([[LV:25]]);
	localParams[8]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setTextColor({r = 255, g = 140, b = 0});
	localParams[8]:setContentSize({width = 69.0, height = 30.0});
	localParams[8]:setPosition(-5.68, 3.84);
	self.__children['bg#friendBg_img#under_img1#icon#level'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#friendBg_img#under_img1#icon#level';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 195.0, height = 32.0});
	localParams[9]:setPosition(107.8, 295.0);
	self.__children['bg#friendBg_img#under_img1#achieve_bg'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#friendBg_img#under_img1#achieve_bg';
	localParams[5]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(18);
	localParams[10]:setString([[]]);
	localParams[10]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setTextColor({r = 255, g = 140, b = 0});
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(97.5, 16.0);
	self.__children['bg#friendBg_img#under_img1#achieve_bg#achieve'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg#friendBg_img#under_img1#achieve_bg#achieve';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[11]:ignoreContentAdaptWithSize(false);
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 195.0, height = 32.0});
	localParams[11]:setPosition(107.8, 335.0);
	self.__children['bg#friendBg_img#under_img1#name_bg'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg#friendBg_img#under_img1#name_bg';
	localParams[5]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(18);
	localParams[12]:setString([[]]);
	localParams[12]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setTextColor({r = 255, g = 240, b = 155});
	localParams[12]:setContentSize({width = 0.0, height = 0.0});
	localParams[12]:setPosition(97.5, 16.0);
	self.__children['bg#friendBg_img#under_img1#name_bg#name'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg#friendBg_img#under_img1#name_bg#name';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[13]:ignoreContentAdaptWithSize(false);
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 190.0, height = 75.0});
	localParams[13]:setPosition(109.01, 230.0);
	self.__children['bg#friendBg_img#under_img1#under1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg#friendBg_img#under_img1#under1';
	localParams[5]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[当前：]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setTextColor({r = 155, g = 125, b = 100});
	localParams[14]:setContentSize({width = 57.0, height = 24.0});
	localParams[14]:setPosition(24.4, 37.5);
	self.__children['bg#friendBg_img#under_img1#under1#font1_txt'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg#friendBg_img#under_img1#under1#font1_txt';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create(, 0);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.90);
	localParams[15]:setScaleY(0.90);
	localParams[15]:setContentSize({width = 46.0, height = 46.0});
	localParams[15]:setPosition(122.76, 38.84);
	self.__children['bg#friendBg_img#under_img1#under1#icon1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg#friendBg_img#under_img1#under1#icon1';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[16]:ignoreContentAdaptWithSize(false);
	localParams[16]:setScale9Enabled(true);
	localParams[16]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 190.0, height = 75.0});
	localParams[16]:setPosition(108.61, 143.0);
	self.__children['bg#friendBg_img#under_img1#under2'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg#friendBg_img#under_img1#under2';
	localParams[5]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[最高：]]);
	localParams[17]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[17]:setAnchorPoint(0.00, 0.50);
	localParams[17]:setTextColor({r = 155, g = 125, b = 100});
	localParams[17]:setContentSize({width = 57.0, height = 24.0});
	localParams[17]:setPosition(24.4, 37.5);
	self.__children['bg#friendBg_img#under_img1#under2#font1_txt'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg#friendBg_img#under_img1#under2#font1_txt';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create(, 0);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setScaleX(0.90);
	localParams[18]:setScaleY(0.90);
	localParams[18]:setContentSize({width = 46.0, height = 46.0});
	localParams[18]:setPosition(122.76, 38.84);
	self.__children['bg#friendBg_img#under_img1#under2#icon2'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg#friendBg_img#under_img1#under2#icon2';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[19]:ignoreContentAdaptWithSize(false);
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 190.0, height = 75.0});
	localParams[19]:setPosition(108.42, 56.0);
	self.__children['bg#friendBg_img#under_img1#under3'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg#friendBg_img#under_img1#under3';
	localParams[5]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[印记：]]);
	localParams[20]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[20]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[20]:setAnchorPoint(0.00, 0.50);
	localParams[20]:setTextColor({r = 155, g = 125, b = 100});
	localParams[20]:setContentSize({width = 57.0, height = 24.0});
	localParams[20]:setPosition(24.4, 37.5);
	self.__children['bg#friendBg_img#under_img1#under3#font1_txt'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg#friendBg_img#under_img1#under3#font1_txt';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Button:create();
	localParams[21]:setTitleFontSize(14);
	localParams[21]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setTouchEnabled(true);
	localParams[21]:setContentSize({width = 46.0, height = 36.0});
	localParams[21]:setPosition(localParams[19]:getContentSize().width - 68.84, 38.02);
	self.__children['bg#friendBg_img#under_img1#under3#strongestTimes_btn'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg#friendBg_img#under_img1#under3#strongestTimes_btn';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = TextAtlas:create();
	localParams[22]:setProperty([[0]], 'uires/public/font_number/fontImg0231.png', 18, 23, '0');
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 18.0, height = 23.0});
	localParams[22]:setPosition(localParams[19]:getContentSize().width - 68.84, 35.02);
	self.__children['bg#friendBg_img#under_img1#under3#rank_atlasLabel'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg#friendBg_img#under_img1#under3#rank_atlasLabel';
	localParams[19]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[23]:ignoreContentAdaptWithSize(false);
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 570.0, height = 500.0});
	localParams[23]:setPosition(528.0, 262.5);
	self.__children['bg#friendBg_img#under_img2'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg#friendBg_img#under_img2';
	localParams[4]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_bgframe/bgFrame0122.png', 1);
	localParams[24]:ignoreContentAdaptWithSize(false);
	localParams[24]:setScale9Enabled(true);
	localParams[24]:setCapInsets({x = 37.000000, y = 37.000000,width = 40.000000, height = 40.000000});
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 545.0, height = 115.0});
	localParams[24]:setPosition(287.0, 430.76);
	self.__children['bg#friendBg_img#under_img2#dateBg1'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg#friendBg_img#under_img2#dateBg1';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_bgframe/bgFrame0138.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 196.0, height = 114.0});
	localParams[25]:setPosition(97.09, 57.9);
	self.__children['bg#friendBg_img#under_img2#dateBg1#uires_chatting_sheet_bgFrame0138_89'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg#friendBg_img#under_img2#dateBg1#uires_chatting_sheet_bgFrame0138_89';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = Text:create();
	localParams[26]:setFontSize(20);
	localParams[26]:setString([[百战天梯]]);
	localParams[26]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[26]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 84.0, height = 22.0});
	localParams[26]:setPosition(98.0, 57.0);
	self.__children['bg#friendBg_img#under_img2#dateBg1#uires_chatting_sheet_bgFrame0138_89#Text_96'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bg#friendBg_img#under_img2#dateBg1#uires_chatting_sheet_bgFrame0138_89#Text_96';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_bgframe/bgFrame0137.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 90.0, height = 90.0});
	localParams[27]:setPosition(260.37, 56.52);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg1'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg1';
	localParams[24]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[总场次]]);
	localParams[28]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(0.90);
	localParams[28]:setScaleY(0.90);
	localParams[28]:setTextColor({r = 250, g = 240, b = 155});
	localParams[28]:setContentSize({width = 64.0, height = 22.0});
	localParams[28]:setPosition(45.75, 58.14);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg1#Text_97'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg1#Text_97';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[105]]);
	localParams[29]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[29]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setScaleX(0.90);
	localParams[29]:setScaleY(0.90);
	localParams[29]:setTextColor({r = 255, g = 140, b = 0});
	localParams[29]:setContentSize({width = 39.0, height = 22.0});
	localParams[29]:setPosition(45.38, 31.1);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg1#session1'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg1#session1';
	localParams[27]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_bgframe/bgFrame0137.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 90.0, height = 90.0});
	localParams[30]:setPosition(367.32, 56.52);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg2'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg2';
	localParams[24]:addChild(localParams[30]);

	localParams[31] = Text:create();
	localParams[31]:setFontSize(20);
	localParams[31]:setString([[胜场]]);
	localParams[31]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[31]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setScaleX(0.90);
	localParams[31]:setScaleY(0.90);
	localParams[31]:setTextColor({r = 250, g = 240, b = 155});
	localParams[31]:setContentSize({width = 44.0, height = 22.0});
	localParams[31]:setPosition(45.75, 58.14);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg2#Text_97'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg2#Text_97';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(20);
	localParams[32]:setString([[105]]);
	localParams[32]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[32]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setScaleX(0.90);
	localParams[32]:setScaleY(0.90);
	localParams[32]:setTextColor({r = 255, g = 140, b = 0});
	localParams[32]:setContentSize({width = 39.0, height = 22.0});
	localParams[32]:setPosition(45.38, 31.1);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg2#session2'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg2#session2';
	localParams[30]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_bgframe/bgFrame0137.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 90.0, height = 90.0});
	localParams[33]:setPosition(474.27, 56.52);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg3'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg3';
	localParams[24]:addChild(localParams[33]);

	localParams[34] = Text:create();
	localParams[34]:setFontSize(20);
	localParams[34]:setString([[胜率]]);
	localParams[34]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[34]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setScaleX(0.90);
	localParams[34]:setScaleY(0.90);
	localParams[34]:setTextColor({r = 250, g = 240, b = 155});
	localParams[34]:setContentSize({width = 44.0, height = 22.0});
	localParams[34]:setPosition(45.75, 58.14);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg3#Text_97'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg3#Text_97';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(20);
	localParams[35]:setString([[105]]);
	localParams[35]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[35]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setScaleX(0.90);
	localParams[35]:setScaleY(0.90);
	localParams[35]:setTextColor({r = 80, g = 255, b = 0});
	localParams[35]:setContentSize({width = 39.0, height = 22.0});
	localParams[35]:setPosition(45.38, 31.1);
	self.__children['bg#friendBg_img#under_img2#dateBg1#sessionBg3#session3'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'bg#friendBg_img#under_img2#dateBg1#sessionBg3#session3';
	localParams[33]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_bgframe/bgFrame0122.png', 1);
	localParams[36]:ignoreContentAdaptWithSize(false);
	localParams[36]:setScale9Enabled(true);
	localParams[36]:setCapInsets({x = 37.000000, y = 37.000000,width = 40.000000, height = 40.000000});
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 545.0, height = 115.0});
	localParams[36]:setPosition(287.0, 309.28);
	self.__children['bg#friendBg_img#under_img2#dateBg3'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'bg#friendBg_img#under_img2#dateBg3';
	localParams[23]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_bgframe/bgFrame0138.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 196.0, height = 114.0});
	localParams[37]:setPosition(97.09, 57.9);
	self.__children['bg#friendBg_img#under_img2#dateBg3#uires_chatting_sheet_bgFrame0138_89'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'bg#friendBg_img#under_img2#dateBg3#uires_chatting_sheet_bgFrame0138_89';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = Text:create();
	localParams[38]:setFontSize(20);
	localParams[38]:setString([[成就点数]]);
	localParams[38]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[38]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 84.0, height = 22.0});
	localParams[38]:setPosition(98.0, 57.0);
	self.__children['bg#friendBg_img#under_img2#dateBg3#uires_chatting_sheet_bgFrame0138_89#Text_96'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'bg#friendBg_img#under_img2#dateBg3#uires_chatting_sheet_bgFrame0138_89#Text_96';
	localParams[37]:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[39]:ignoreContentAdaptWithSize(false);
	localParams[39]:setScale9Enabled(true);
	localParams[39]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 195.0, height = 34.0});
	localParams[39]:setPosition(396.49, 56.4);
	self.__children['bg#friendBg_img#under_img2#dateBg3#achieve_bg'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'bg#friendBg_img#under_img2#dateBg3#achieve_bg';
	localParams[36]:addChild(localParams[39]);

	localParams[40] = Text:create();
	localParams[40]:setFontSize(18);
	localParams[40]:setString([[67/90]]);
	localParams[40]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[40]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setScaleX(1.10);
	localParams[40]:setScaleY(1.10);
	localParams[40]:setTextColor({r = 255, g = 140, b = 0});
	localParams[40]:setContentSize({width = 57.0, height = 22.0});
	localParams[40]:setPosition(98.55, 17.67);
	self.__children['bg#friendBg_img#under_img2#dateBg3#achieve_bg#achieveNum'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'bg#friendBg_img#under_img2#dateBg3#achieve_bg#achieveNum';
	localParams[39]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_icon/icon0097.png', 1);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 67.0, height = 71.0});
	localParams[41]:setPosition(-21.58, 18.52);
	self.__children['bg#friendBg_img#under_img2#dateBg3#achieve_bg#uires_task_sheet_icon0097_106'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'bg#friendBg_img#under_img2#dateBg3#achieve_bg#uires_task_sheet_icon0097_106';
	localParams[39]:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[42]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:onClick(handler(self, self._onTabMenu));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 77.0, height = 78.0});
	localParams[42]:setPosition(862.46, 342.3);
	self.__children['bg#friendBg_img#data_btn'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'bg#friendBg_img#data_btn';
	localParams[4]:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setVisible(false);
	localParams[43]:setContentSize({width = 30.0, height = 30.0});
	localParams[43]:setPosition(7.7, 68.64);
	self.__children['bg#friendBg_img#data_btn#redPoint_sprite'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'bg#friendBg_img#data_btn#redPoint_sprite';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_font/fontImg0214.png', 1);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setContentSize({width = 43.0, height = 24.0});
	localParams[44]:setPosition(36.29, 39.0);
	self.__children['bg#friendBg_img#data_btn#font_sprite'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'bg#friendBg_img#data_btn#font_sprite';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = Button:create();
	localParams[45]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[45]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[45]:setTitleFontSize(14);
	localParams[45]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:onClick(handler(self, self._onTabMenu));
	localParams[45]:setTouchEnabled(true);
	localParams[45]:setContentSize({width = 77.0, height = 78.0});
	localParams[45]:setPosition(862.46, 427.35);
	self.__children['bg#friendBg_img#battle_btn'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'bg#friendBg_img#battle_btn';
	localParams[4]:addChild(localParams[45]);

	localParams[46] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setVisible(false);
	localParams[46]:setContentSize({width = 30.0, height = 30.0});
	localParams[46]:setPosition(7.7, 68.64);
	self.__children['bg#friendBg_img#battle_btn#redPoint_sprite'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'bg#friendBg_img#battle_btn#redPoint_sprite';
	localParams[45]:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_font/fontImg0213.png', 1);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 43.0, height = 24.0});
	localParams[47]:setPosition(36.29, 39.0);
	self.__children['bg#friendBg_img#battle_btn#font_sprite'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'bg#friendBg_img#battle_btn#font_sprite';
	localParams[45]:addChild(localParams[47]);

	localParams[48] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[48]:ignoreContentAdaptWithSize(false);
	localParams[48]:setScale9Enabled(true);
	localParams[48]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setContentSize({width = 570.0, height = 500.0});
	localParams[48]:setPosition(528.0, 262.5);
	self.__children['bg#friendBg_img#under_img3'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'bg#friendBg_img#under_img3';
	localParams[4]:addChild(localParams[48]);

	localParams[49] = Button:create();
	localParams[49]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[49]:setTitleFontSize(14);
	localParams[49]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[49]:setScale9Enabled(true);
	localParams[49]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:onClick(handler(self, self._onMonster));
	localParams[49]:setTouchEnabled(true);
	localParams[49]:setContentSize({width = 122.0, height = 122.0});
	localParams[49]:setPosition(71.0, 429.0);
	self.__children['bg#friendBg_img#under_img3#monster1'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'bg#friendBg_img#under_img3#monster1';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setContentSize({width = 122.0, height = 122.0});
	localParams[50]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster1#mercenaryHead'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'bg#friendBg_img#under_img3#monster1#mercenaryHead';
	localParams[49]:addChild(localParams[50]);

	localParams[51] = Text:create();
	localParams[51]:setFontSize(20);
	localParams[51]:setString([[8]]);
	localParams[51]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[51]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setTextColor({r = 240, g = 200, b = 60});
	localParams[51]:setContentSize({width = 17.0, height = 24.0});
	localParams[51]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster1#mercenaryHead#m_level'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'bg#friendBg_img#under_img3#monster1#mercenaryHead#m_level';
	localParams[50]:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[52]:setAnchorPoint(0.00, 0.50);
	localParams[52]:setScaleX(0.80);
	localParams[52]:setScaleY(0.80);
	localParams[52]:setContentSize({width = 43.0, height = 41.0});
	localParams[52]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster1#mercenaryHead#star'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'bg#friendBg_img#under_img3#monster1#mercenaryHead#star';
	localParams[50]:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 103.0, height = 103.0});
	localParams[53]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster1#lock'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'bg#friendBg_img#under_img3#monster1#lock';
	localParams[49]:addChild(localParams[53]);

	localParams[54] = Button:create();
	localParams[54]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[54]:setTitleFontSize(14);
	localParams[54]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[54]:setScale9Enabled(true);
	localParams[54]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:onClick(handler(self, self._onMonster));
	localParams[54]:setTouchEnabled(true);
	localParams[54]:setContentSize({width = 122.0, height = 122.0});
	localParams[54]:setPosition(193.0, 429.0);
	self.__children['bg#friendBg_img#under_img3#monster2'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'bg#friendBg_img#under_img3#monster2';
	localParams[48]:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 122.0, height = 122.0});
	localParams[55]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster2#mercenaryHead'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'bg#friendBg_img#under_img3#monster2#mercenaryHead';
	localParams[54]:addChild(localParams[55]);

	localParams[56] = Text:create();
	localParams[56]:setFontSize(20);
	localParams[56]:setString([[8]]);
	localParams[56]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[56]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setTextColor({r = 240, g = 200, b = 60});
	localParams[56]:setContentSize({width = 17.0, height = 24.0});
	localParams[56]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster2#mercenaryHead#m_level'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'bg#friendBg_img#under_img3#monster2#mercenaryHead#m_level';
	localParams[55]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[57]:setAnchorPoint(0.00, 0.50);
	localParams[57]:setScaleX(0.80);
	localParams[57]:setScaleY(0.80);
	localParams[57]:setContentSize({width = 43.0, height = 41.0});
	localParams[57]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster2#mercenaryHead#star'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'bg#friendBg_img#under_img3#monster2#mercenaryHead#star';
	localParams[55]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setContentSize({width = 103.0, height = 103.0});
	localParams[58]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster2#lock'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'bg#friendBg_img#under_img3#monster2#lock';
	localParams[54]:addChild(localParams[58]);

	localParams[59] = Button:create();
	localParams[59]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[59]:setTitleFontSize(14);
	localParams[59]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[59]:setScale9Enabled(true);
	localParams[59]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:onClick(handler(self, self._onMonster));
	localParams[59]:setTouchEnabled(true);
	localParams[59]:setContentSize({width = 122.0, height = 122.0});
	localParams[59]:setPosition(315.0, 429.0);
	self.__children['bg#friendBg_img#under_img3#monster3'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'bg#friendBg_img#under_img3#monster3';
	localParams[48]:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 122.0, height = 122.0});
	localParams[60]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster3#mercenaryHead'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'bg#friendBg_img#under_img3#monster3#mercenaryHead';
	localParams[59]:addChild(localParams[60]);

	localParams[61] = Text:create();
	localParams[61]:setFontSize(20);
	localParams[61]:setString([[8]]);
	localParams[61]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[61]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setTextColor({r = 240, g = 200, b = 60});
	localParams[61]:setContentSize({width = 17.0, height = 24.0});
	localParams[61]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster3#mercenaryHead#m_level'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'bg#friendBg_img#under_img3#monster3#mercenaryHead#m_level';
	localParams[60]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[62]:setAnchorPoint(0.00, 0.50);
	localParams[62]:setScaleX(0.80);
	localParams[62]:setScaleY(0.80);
	localParams[62]:setContentSize({width = 43.0, height = 41.0});
	localParams[62]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster3#mercenaryHead#star'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'bg#friendBg_img#under_img3#monster3#mercenaryHead#star';
	localParams[60]:addChild(localParams[62]);

	localParams[63] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setContentSize({width = 103.0, height = 103.0});
	localParams[63]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster3#lock'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'bg#friendBg_img#under_img3#monster3#lock';
	localParams[59]:addChild(localParams[63]);

	localParams[64] = Button:create();
	localParams[64]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[64]:setTitleFontSize(14);
	localParams[64]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[64]:setScale9Enabled(true);
	localParams[64]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:onClick(handler(self, self._onMonster));
	localParams[64]:setTouchEnabled(true);
	localParams[64]:setContentSize({width = 122.0, height = 122.0});
	localParams[64]:setPosition(71.0, 309.67);
	self.__children['bg#friendBg_img#under_img3#monster4'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'bg#friendBg_img#under_img3#monster4';
	localParams[48]:addChild(localParams[64]);

	localParams[65] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setContentSize({width = 122.0, height = 122.0});
	localParams[65]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster4#mercenaryHead'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'bg#friendBg_img#under_img3#monster4#mercenaryHead';
	localParams[64]:addChild(localParams[65]);

	localParams[66] = Text:create();
	localParams[66]:setFontSize(20);
	localParams[66]:setString([[8]]);
	localParams[66]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[66]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[66]:setAnchorPoint(0.50, 0.50);
	localParams[66]:setTextColor({r = 240, g = 200, b = 60});
	localParams[66]:setContentSize({width = 17.0, height = 24.0});
	localParams[66]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster4#mercenaryHead#m_level'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'bg#friendBg_img#under_img3#monster4#mercenaryHead#m_level';
	localParams[65]:addChild(localParams[66]);

	localParams[67] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[67]:setAnchorPoint(0.00, 0.50);
	localParams[67]:setScaleX(0.80);
	localParams[67]:setScaleY(0.80);
	localParams[67]:setContentSize({width = 43.0, height = 41.0});
	localParams[67]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster4#mercenaryHead#star'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'bg#friendBg_img#under_img3#monster4#mercenaryHead#star';
	localParams[65]:addChild(localParams[67]);

	localParams[68] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:setContentSize({width = 103.0, height = 103.0});
	localParams[68]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster4#lock'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'bg#friendBg_img#under_img3#monster4#lock';
	localParams[64]:addChild(localParams[68]);

	localParams[69] = Button:create();
	localParams[69]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[69]:setTitleFontSize(14);
	localParams[69]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[69]:setScale9Enabled(true);
	localParams[69]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:onClick(handler(self, self._onMonster));
	localParams[69]:setTouchEnabled(true);
	localParams[69]:setContentSize({width = 122.0, height = 122.0});
	localParams[69]:setPosition(193.0, 309.67);
	self.__children['bg#friendBg_img#under_img3#monster5'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'bg#friendBg_img#under_img3#monster5';
	localParams[48]:addChild(localParams[69]);

	localParams[70] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[70]:setAnchorPoint(0.50, 0.50);
	localParams[70]:setContentSize({width = 122.0, height = 122.0});
	localParams[70]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster5#mercenaryHead'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'bg#friendBg_img#under_img3#monster5#mercenaryHead';
	localParams[69]:addChild(localParams[70]);

	localParams[71] = Text:create();
	localParams[71]:setFontSize(20);
	localParams[71]:setString([[8]]);
	localParams[71]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[71]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[71]:setAnchorPoint(0.50, 0.50);
	localParams[71]:setTextColor({r = 240, g = 200, b = 60});
	localParams[71]:setContentSize({width = 17.0, height = 24.0});
	localParams[71]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster5#mercenaryHead#m_level'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'bg#friendBg_img#under_img3#monster5#mercenaryHead#m_level';
	localParams[70]:addChild(localParams[71]);

	localParams[72] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[72]:setAnchorPoint(0.00, 0.50);
	localParams[72]:setScaleX(0.80);
	localParams[72]:setScaleY(0.80);
	localParams[72]:setContentSize({width = 43.0, height = 41.0});
	localParams[72]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster5#mercenaryHead#star'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'bg#friendBg_img#under_img3#monster5#mercenaryHead#star';
	localParams[70]:addChild(localParams[72]);

	localParams[73] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setContentSize({width = 103.0, height = 103.0});
	localParams[73]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster5#lock'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'bg#friendBg_img#under_img3#monster5#lock';
	localParams[69]:addChild(localParams[73]);

	localParams[74] = Button:create();
	localParams[74]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[74]:setTitleFontSize(14);
	localParams[74]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[74]:setScale9Enabled(true);
	localParams[74]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[74]:setAnchorPoint(0.50, 0.50);
	localParams[74]:onClick(handler(self, self._onMonster));
	localParams[74]:setTouchEnabled(true);
	localParams[74]:setContentSize({width = 122.0, height = 122.0});
	localParams[74]:setPosition(315.0, 309.67);
	self.__children['bg#friendBg_img#under_img3#monster6'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'bg#friendBg_img#under_img3#monster6';
	localParams[48]:addChild(localParams[74]);

	localParams[75] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[75]:setAnchorPoint(0.50, 0.50);
	localParams[75]:setContentSize({width = 122.0, height = 122.0});
	localParams[75]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster6#mercenaryHead'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'bg#friendBg_img#under_img3#monster6#mercenaryHead';
	localParams[74]:addChild(localParams[75]);

	localParams[76] = Text:create();
	localParams[76]:setFontSize(20);
	localParams[76]:setString([[8]]);
	localParams[76]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[76]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[76]:setAnchorPoint(0.50, 0.50);
	localParams[76]:setTextColor({r = 240, g = 200, b = 60});
	localParams[76]:setContentSize({width = 17.0, height = 24.0});
	localParams[76]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster6#mercenaryHead#m_level'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'bg#friendBg_img#under_img3#monster6#mercenaryHead#m_level';
	localParams[75]:addChild(localParams[76]);

	localParams[77] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[77]:setAnchorPoint(0.00, 0.50);
	localParams[77]:setScaleX(0.80);
	localParams[77]:setScaleY(0.80);
	localParams[77]:setContentSize({width = 43.0, height = 41.0});
	localParams[77]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster6#mercenaryHead#star'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'bg#friendBg_img#under_img3#monster6#mercenaryHead#star';
	localParams[75]:addChild(localParams[77]);

	localParams[78] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[78]:setAnchorPoint(0.50, 0.50);
	localParams[78]:setContentSize({width = 103.0, height = 103.0});
	localParams[78]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster6#lock'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'bg#friendBg_img#under_img3#monster6#lock';
	localParams[74]:addChild(localParams[78]);

	localParams[79] = Button:create();
	localParams[79]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[79]:setTitleFontSize(14);
	localParams[79]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[79]:setScale9Enabled(true);
	localParams[79]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[79]:setAnchorPoint(0.50, 0.50);
	localParams[79]:onClick(handler(self, self._onMonster));
	localParams[79]:setTouchEnabled(true);
	localParams[79]:setContentSize({width = 122.0, height = 122.0});
	localParams[79]:setPosition(71.0, 190.33);
	self.__children['bg#friendBg_img#under_img3#monster7'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'bg#friendBg_img#under_img3#monster7';
	localParams[48]:addChild(localParams[79]);

	localParams[80] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[80]:setAnchorPoint(0.50, 0.50);
	localParams[80]:setContentSize({width = 122.0, height = 122.0});
	localParams[80]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster7#mercenaryHead'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'bg#friendBg_img#under_img3#monster7#mercenaryHead';
	localParams[79]:addChild(localParams[80]);

	localParams[81] = Text:create();
	localParams[81]:setFontSize(20);
	localParams[81]:setString([[8]]);
	localParams[81]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[81]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[81]:setAnchorPoint(0.50, 0.50);
	localParams[81]:setTextColor({r = 240, g = 200, b = 60});
	localParams[81]:setContentSize({width = 17.0, height = 24.0});
	localParams[81]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster7#mercenaryHead#m_level'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'bg#friendBg_img#under_img3#monster7#mercenaryHead#m_level';
	localParams[80]:addChild(localParams[81]);

	localParams[82] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[82]:setAnchorPoint(0.00, 0.50);
	localParams[82]:setScaleX(0.80);
	localParams[82]:setScaleY(0.80);
	localParams[82]:setContentSize({width = 43.0, height = 41.0});
	localParams[82]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster7#mercenaryHead#star'] = localParams[82];
	localParams[82].__children = self.__children;
	localParams[82].__Name = 'bg#friendBg_img#under_img3#monster7#mercenaryHead#star';
	localParams[80]:addChild(localParams[82]);

	localParams[83] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[83]:setAnchorPoint(0.50, 0.50);
	localParams[83]:setContentSize({width = 103.0, height = 103.0});
	localParams[83]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster7#lock'] = localParams[83];
	localParams[83].__children = self.__children;
	localParams[83].__Name = 'bg#friendBg_img#under_img3#monster7#lock';
	localParams[79]:addChild(localParams[83]);

	localParams[84] = Button:create();
	localParams[84]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[84]:setTitleFontSize(14);
	localParams[84]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[84]:setScale9Enabled(true);
	localParams[84]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[84]:setAnchorPoint(0.50, 0.50);
	localParams[84]:onClick(handler(self, self._onMonster));
	localParams[84]:setTouchEnabled(true);
	localParams[84]:setContentSize({width = 122.0, height = 122.0});
	localParams[84]:setPosition(193.0, 190.33);
	self.__children['bg#friendBg_img#under_img3#monster8'] = localParams[84];
	localParams[84].__children = self.__children;
	localParams[84].__Name = 'bg#friendBg_img#under_img3#monster8';
	localParams[48]:addChild(localParams[84]);

	localParams[85] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[85]:setAnchorPoint(0.50, 0.50);
	localParams[85]:setContentSize({width = 122.0, height = 122.0});
	localParams[85]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster8#mercenaryHead'] = localParams[85];
	localParams[85].__children = self.__children;
	localParams[85].__Name = 'bg#friendBg_img#under_img3#monster8#mercenaryHead';
	localParams[84]:addChild(localParams[85]);

	localParams[86] = Text:create();
	localParams[86]:setFontSize(20);
	localParams[86]:setString([[8]]);
	localParams[86]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[86]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[86]:setAnchorPoint(0.50, 0.50);
	localParams[86]:setTextColor({r = 240, g = 200, b = 60});
	localParams[86]:setContentSize({width = 17.0, height = 24.0});
	localParams[86]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster8#mercenaryHead#m_level'] = localParams[86];
	localParams[86].__children = self.__children;
	localParams[86].__Name = 'bg#friendBg_img#under_img3#monster8#mercenaryHead#m_level';
	localParams[85]:addChild(localParams[86]);

	localParams[87] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[87]:setAnchorPoint(0.00, 0.50);
	localParams[87]:setScaleX(0.80);
	localParams[87]:setScaleY(0.80);
	localParams[87]:setContentSize({width = 43.0, height = 41.0});
	localParams[87]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster8#mercenaryHead#star'] = localParams[87];
	localParams[87].__children = self.__children;
	localParams[87].__Name = 'bg#friendBg_img#under_img3#monster8#mercenaryHead#star';
	localParams[85]:addChild(localParams[87]);

	localParams[88] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[88]:setAnchorPoint(0.50, 0.50);
	localParams[88]:setContentSize({width = 103.0, height = 103.0});
	localParams[88]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster8#lock'] = localParams[88];
	localParams[88].__children = self.__children;
	localParams[88].__Name = 'bg#friendBg_img#under_img3#monster8#lock';
	localParams[84]:addChild(localParams[88]);

	localParams[89] = Button:create();
	localParams[89]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[89]:setTitleFontSize(14);
	localParams[89]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[89]:setScale9Enabled(true);
	localParams[89]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[89]:setAnchorPoint(0.50, 0.50);
	localParams[89]:onClick(handler(self, self._onMonster));
	localParams[89]:setTouchEnabled(true);
	localParams[89]:setContentSize({width = 122.0, height = 122.0});
	localParams[89]:setPosition(315.0, 190.33);
	self.__children['bg#friendBg_img#under_img3#monster9'] = localParams[89];
	localParams[89].__children = self.__children;
	localParams[89].__Name = 'bg#friendBg_img#under_img3#monster9';
	localParams[48]:addChild(localParams[89]);

	localParams[90] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[90]:setAnchorPoint(0.50, 0.50);
	localParams[90]:setContentSize({width = 122.0, height = 122.0});
	localParams[90]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster9#mercenaryHead'] = localParams[90];
	localParams[90].__children = self.__children;
	localParams[90].__Name = 'bg#friendBg_img#under_img3#monster9#mercenaryHead';
	localParams[89]:addChild(localParams[90]);

	localParams[91] = Text:create();
	localParams[91]:setFontSize(20);
	localParams[91]:setString([[8]]);
	localParams[91]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[91]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[91]:setAnchorPoint(0.50, 0.50);
	localParams[91]:setTextColor({r = 240, g = 200, b = 60});
	localParams[91]:setContentSize({width = 17.0, height = 24.0});
	localParams[91]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster9#mercenaryHead#m_level'] = localParams[91];
	localParams[91].__children = self.__children;
	localParams[91].__Name = 'bg#friendBg_img#under_img3#monster9#mercenaryHead#m_level';
	localParams[90]:addChild(localParams[91]);

	localParams[92] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[92]:setAnchorPoint(0.00, 0.50);
	localParams[92]:setScaleX(0.80);
	localParams[92]:setScaleY(0.80);
	localParams[92]:setContentSize({width = 43.0, height = 41.0});
	localParams[92]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster9#mercenaryHead#star'] = localParams[92];
	localParams[92].__children = self.__children;
	localParams[92].__Name = 'bg#friendBg_img#under_img3#monster9#mercenaryHead#star';
	localParams[90]:addChild(localParams[92]);

	localParams[93] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[93]:setAnchorPoint(0.50, 0.50);
	localParams[93]:setContentSize({width = 103.0, height = 103.0});
	localParams[93]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster9#lock'] = localParams[93];
	localParams[93].__children = self.__children;
	localParams[93].__Name = 'bg#friendBg_img#under_img3#monster9#lock';
	localParams[89]:addChild(localParams[93]);

	localParams[94] = Button:create();
	localParams[94]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[94]:setTitleFontSize(14);
	localParams[94]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[94]:setScale9Enabled(true);
	localParams[94]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[94]:setAnchorPoint(0.50, 0.50);
	localParams[94]:onClick(handler(self, self._onMonster));
	localParams[94]:setTouchEnabled(true);
	localParams[94]:setContentSize({width = 122.0, height = 122.0});
	localParams[94]:setPosition(71.0, 71.0);
	self.__children['bg#friendBg_img#under_img3#monster10'] = localParams[94];
	localParams[94].__children = self.__children;
	localParams[94].__Name = 'bg#friendBg_img#under_img3#monster10';
	localParams[48]:addChild(localParams[94]);

	localParams[95] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[95]:setAnchorPoint(0.50, 0.50);
	localParams[95]:setContentSize({width = 122.0, height = 122.0});
	localParams[95]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster10#mercenaryHead'] = localParams[95];
	localParams[95].__children = self.__children;
	localParams[95].__Name = 'bg#friendBg_img#under_img3#monster10#mercenaryHead';
	localParams[94]:addChild(localParams[95]);

	localParams[96] = Text:create();
	localParams[96]:setFontSize(20);
	localParams[96]:setString([[8]]);
	localParams[96]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[96]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[96]:setAnchorPoint(0.50, 0.50);
	localParams[96]:setTextColor({r = 240, g = 200, b = 60});
	localParams[96]:setContentSize({width = 17.0, height = 24.0});
	localParams[96]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster10#mercenaryHead#m_level'] = localParams[96];
	localParams[96].__children = self.__children;
	localParams[96].__Name = 'bg#friendBg_img#under_img3#monster10#mercenaryHead#m_level';
	localParams[95]:addChild(localParams[96]);

	localParams[97] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[97]:setAnchorPoint(0.00, 0.50);
	localParams[97]:setScaleX(0.80);
	localParams[97]:setScaleY(0.80);
	localParams[97]:setContentSize({width = 43.0, height = 41.0});
	localParams[97]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster10#mercenaryHead#star'] = localParams[97];
	localParams[97].__children = self.__children;
	localParams[97].__Name = 'bg#friendBg_img#under_img3#monster10#mercenaryHead#star';
	localParams[95]:addChild(localParams[97]);

	localParams[98] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[98]:setAnchorPoint(0.50, 0.50);
	localParams[98]:setContentSize({width = 103.0, height = 103.0});
	localParams[98]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster10#lock'] = localParams[98];
	localParams[98].__children = self.__children;
	localParams[98].__Name = 'bg#friendBg_img#under_img3#monster10#lock';
	localParams[94]:addChild(localParams[98]);

	localParams[99] = Button:create();
	localParams[99]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[99]:setTitleFontSize(14);
	localParams[99]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[99]:setScale9Enabled(true);
	localParams[99]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[99]:setAnchorPoint(0.50, 0.50);
	localParams[99]:onClick(handler(self, self._onMonster));
	localParams[99]:setTouchEnabled(true);
	localParams[99]:setContentSize({width = 122.0, height = 122.0});
	localParams[99]:setPosition(193.0, 71.0);
	self.__children['bg#friendBg_img#under_img3#monster11'] = localParams[99];
	localParams[99].__children = self.__children;
	localParams[99].__Name = 'bg#friendBg_img#under_img3#monster11';
	localParams[48]:addChild(localParams[99]);

	localParams[100] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[100]:setAnchorPoint(0.50, 0.50);
	localParams[100]:setContentSize({width = 122.0, height = 122.0});
	localParams[100]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster11#mercenaryHead'] = localParams[100];
	localParams[100].__children = self.__children;
	localParams[100].__Name = 'bg#friendBg_img#under_img3#monster11#mercenaryHead';
	localParams[99]:addChild(localParams[100]);

	localParams[101] = Text:create();
	localParams[101]:setFontSize(20);
	localParams[101]:setString([[8]]);
	localParams[101]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[101]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[101]:setAnchorPoint(0.50, 0.50);
	localParams[101]:setTextColor({r = 240, g = 200, b = 60});
	localParams[101]:setContentSize({width = 17.0, height = 24.0});
	localParams[101]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster11#mercenaryHead#m_level'] = localParams[101];
	localParams[101].__children = self.__children;
	localParams[101].__Name = 'bg#friendBg_img#under_img3#monster11#mercenaryHead#m_level';
	localParams[100]:addChild(localParams[101]);

	localParams[102] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[102]:setAnchorPoint(0.00, 0.50);
	localParams[102]:setScaleX(0.80);
	localParams[102]:setScaleY(0.80);
	localParams[102]:setContentSize({width = 43.0, height = 41.0});
	localParams[102]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster11#mercenaryHead#star'] = localParams[102];
	localParams[102].__children = self.__children;
	localParams[102].__Name = 'bg#friendBg_img#under_img3#monster11#mercenaryHead#star';
	localParams[100]:addChild(localParams[102]);

	localParams[103] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[103]:setAnchorPoint(0.50, 0.50);
	localParams[103]:setContentSize({width = 103.0, height = 103.0});
	localParams[103]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster11#lock'] = localParams[103];
	localParams[103].__children = self.__children;
	localParams[103].__Name = 'bg#friendBg_img#under_img3#monster11#lock';
	localParams[99]:addChild(localParams[103]);

	localParams[104] = Button:create();
	localParams[104]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0002.png', 1);
	localParams[104]:setTitleFontSize(14);
	localParams[104]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[104]:setScale9Enabled(true);
	localParams[104]:setCapInsets({x = 15.000000, y = 11.000000, width = 92.000000, height = 100.000000});
	localParams[104]:setAnchorPoint(0.50, 0.50);
	localParams[104]:onClick(handler(self, self._onMonster));
	localParams[104]:setTouchEnabled(true);
	localParams[104]:setContentSize({width = 122.0, height = 122.0});
	localParams[104]:setPosition(315.0, 71.0);
	self.__children['bg#friendBg_img#under_img3#monster12'] = localParams[104];
	localParams[104].__children = self.__children;
	localParams[104].__Name = 'bg#friendBg_img#under_img3#monster12';
	localParams[48]:addChild(localParams[104]);

	localParams[105] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[105]:setAnchorPoint(0.50, 0.50);
	localParams[105]:setContentSize({width = 122.0, height = 122.0});
	localParams[105]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster12#mercenaryHead'] = localParams[105];
	localParams[105].__children = self.__children;
	localParams[105].__Name = 'bg#friendBg_img#under_img3#monster12#mercenaryHead';
	localParams[104]:addChild(localParams[105]);

	localParams[106] = Text:create();
	localParams[106]:setFontSize(20);
	localParams[106]:setString([[8]]);
	localParams[106]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[106]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[106]:setAnchorPoint(0.50, 0.50);
	localParams[106]:setTextColor({r = 240, g = 200, b = 60});
	localParams[106]:setContentSize({width = 17.0, height = 24.0});
	localParams[106]:setPosition(102.28, 14.52);
	self.__children['bg#friendBg_img#under_img3#monster12#mercenaryHead#m_level'] = localParams[106];
	localParams[106].__children = self.__children;
	localParams[106].__Name = 'bg#friendBg_img#under_img3#monster12#mercenaryHead#m_level';
	localParams[105]:addChild(localParams[106]);

	localParams[107] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[107]:setAnchorPoint(0.00, 0.50);
	localParams[107]:setScaleX(0.80);
	localParams[107]:setScaleY(0.80);
	localParams[107]:setContentSize({width = 43.0, height = 41.0});
	localParams[107]:setPosition(64.56, 22.46);
	self.__children['bg#friendBg_img#under_img3#monster12#mercenaryHead#star'] = localParams[107];
	localParams[107].__children = self.__children;
	localParams[107].__Name = 'bg#friendBg_img#under_img3#monster12#mercenaryHead#star';
	localParams[105]:addChild(localParams[107]);

	localParams[108] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[108]:setAnchorPoint(0.50, 0.50);
	localParams[108]:setContentSize({width = 103.0, height = 103.0});
	localParams[108]:setPosition(61.0, 61.0);
	self.__children['bg#friendBg_img#under_img3#monster12#lock'] = localParams[108];
	localParams[108].__children = self.__children;
	localParams[108].__Name = 'bg#friendBg_img#under_img3#monster12#lock';
	localParams[104]:addChild(localParams[108]);

	localParams[109] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[109]:ignoreContentAdaptWithSize(false);
	localParams[109]:setScale9Enabled(true);
	localParams[109]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[109]:setAnchorPoint(0.00, 0.50);
	localParams[109]:setContentSize({width = 270.0, height = 360.0});
	localParams[109]:setPosition(-95.86, 331.83);
	self.__children['bg#friendBg_img#under_img3#m_message_bg'] = localParams[109];
	localParams[109].__children = self.__children;
	localParams[109].__Name = 'bg#friendBg_img#under_img3#m_message_bg';
	localParams[48]:addChild(localParams[109]);

	localParams[110] = Node:create();
	localParams[110]:setAnchorPoint(0.00, 0.00);
	localParams[110]:setContentSize({width = 0.0, height = 0.0});
	localParams[110]:setPosition(0.0, 360.0);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node'] = localParams[110];
	localParams[110].__children = self.__children;
	localParams[110].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node';
	localParams[109]:addChild(localParams[110]);

	localParams[111] = Text:create();
	localParams[111]:setFontSize(24);
	localParams[111]:setString([[重甲奇兵]]);
	localParams[111]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[111]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[111]:setAnchorPoint(0.50, 0.50);
	localParams[111]:setTextColor({r = 255, g = 240, b = 155});
	localParams[111]:setContentSize({width = 100.0, height = 26.0});
	localParams[111]:setPosition(137.4, -28.0);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#m_name'] = localParams[111];
	localParams[111].__children = self.__children;
	localParams[111].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#m_name';
	localParams[110]:addChild(localParams[111]);

	localParams[112] = Text:create();
	localParams[112]:setFontSize(20);
	localParams[112]:setString([[攻  击:]]);
	localParams[112]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[112]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[112]:setAnchorPoint(0.00, 0.50);
	localParams[112]:setContentSize({width = 58.0, height = 25.0});
	localParams[112]:setPosition(13.23, -60.31);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property_txt1'] = localParams[112];
	localParams[112].__children = self.__children;
	localParams[112].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property_txt1';
	localParams[110]:addChild(localParams[112]);

	localParams[113] = RichText:create();
	localParams[113]:setDefaultFontSize(20);
	localParams[113]:setString([[d]]);
	localParams[113]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[113]:setTextAreaSize({width = 240, height = 0});
	localParams[113]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[113]:setAnchorPoint(0.00, 1.00);
	localParams[113]:setContentSize({width = 240.0, height = 0.0});
	localParams[113]:setPosition(15.0, -110.0);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#m_skill_explain1'] = localParams[113];
	localParams[113].__children = self.__children;
	localParams[113].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#m_skill_explain1';
	localParams[110]:addChild(localParams[113]);

	localParams[114] = Text:create();
	localParams[114]:setFontSize(20);
	localParams[114]:setString([[血  量:]]);
	localParams[114]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[114]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[114]:setAnchorPoint(0.00, 0.50);
	localParams[114]:setContentSize({width = 58.0, height = 25.0});
	localParams[114]:setPosition(13.23, -87.5);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property_txt3'] = localParams[114];
	localParams[114].__children = self.__children;
	localParams[114].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property_txt3';
	localParams[110]:addChild(localParams[114]);

	localParams[115] = Text:create();
	localParams[115]:setFontSize(20);
	localParams[115]:setString([[护  甲:]]);
	localParams[115]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[115]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[115]:setAnchorPoint(0.00, 0.50);
	localParams[115]:setContentSize({width = 58.0, height = 25.0});
	localParams[115]:setPosition(135.97, -60.31);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property_txt2'] = localParams[115];
	localParams[115].__children = self.__children;
	localParams[115].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property_txt2';
	localParams[110]:addChild(localParams[115]);

	localParams[116] = Text:create();
	localParams[116]:setFontSize(20);
	localParams[116]:setString([[速  度:]]);
	localParams[116]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[116]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[116]:setAnchorPoint(0.00, 0.50);
	localParams[116]:setContentSize({width = 58.0, height = 25.0});
	localParams[116]:setPosition(135.97, -87.5);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property_txt4'] = localParams[116];
	localParams[116].__children = self.__children;
	localParams[116].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property_txt4';
	localParams[110]:addChild(localParams[116]);

	localParams[117] = Text:create();
	localParams[117]:setFontSize(20);
	localParams[117]:setString([[99999]]);
	localParams[117]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[117]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[117]:setAnchorPoint(0.00, 0.50);
	localParams[117]:setTextColor({r = 80, g = 255, b = 0});
	localParams[117]:setContentSize({width = 58.0, height = 25.0});
	localParams[117]:setPosition(74.23, -60.95);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property1'] = localParams[117];
	localParams[117].__children = self.__children;
	localParams[117].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property1';
	localParams[110]:addChild(localParams[117]);

	localParams[118] = Text:create();
	localParams[118]:setFontSize(20);
	localParams[118]:setString([[99999]]);
	localParams[118]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[118]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[118]:setAnchorPoint(0.00, 0.39);
	localParams[118]:setTextColor({r = 80, g = 255, b = 0});
	localParams[118]:setContentSize({width = 58.0, height = 25.0});
	localParams[118]:setPosition(198.0, -63.97);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property2'] = localParams[118];
	localParams[118].__children = self.__children;
	localParams[118].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property2';
	localParams[110]:addChild(localParams[118]);

	localParams[119] = Text:create();
	localParams[119]:setFontSize(20);
	localParams[119]:setString([[99999]]);
	localParams[119]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[119]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[119]:setAnchorPoint(0.00, 0.50);
	localParams[119]:setTextColor({r = 80, g = 255, b = 0});
	localParams[119]:setContentSize({width = 58.0, height = 25.0});
	localParams[119]:setPosition(74.23, -89.5);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property3'] = localParams[119];
	localParams[119].__children = self.__children;
	localParams[119].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property3';
	localParams[110]:addChild(localParams[119]);

	localParams[120] = Text:create();
	localParams[120]:setFontSize(20);
	localParams[120]:setString([[99999]]);
	localParams[120]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[120]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[120]:setAnchorPoint(0.00, 0.50);
	localParams[120]:setTextColor({r = 80, g = 255, b = 0});
	localParams[120]:setContentSize({width = 58.0, height = 25.0});
	localParams[120]:setPosition(198.0, -89.5);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#property4'] = localParams[120];
	localParams[120].__children = self.__children;
	localParams[120].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#property4';
	localParams[110]:addChild(localParams[120]);

	localParams[121] = RichText:create();
	localParams[121]:setDefaultFontSize(20);
	localParams[121]:setString([[]]);
	localParams[121]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[121]:setTextAreaSize({width = 240, height = 0});
	localParams[121]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[121]:setAnchorPoint(0.00, 1.00);
	localParams[121]:setContentSize({width = 240.0, height = 0.0});
	localParams[121]:setPosition(15.0, -227.94);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#m_skill_explain2'] = localParams[121];
	localParams[121].__children = self.__children;
	localParams[121].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#m_skill_explain2';
	localParams[110]:addChild(localParams[121]);

	localParams[122] = RichText:create();
	localParams[122]:setDefaultFontSize(20);
	localParams[122]:setString([[]]);
	localParams[122]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[122]:setTextAreaSize({width = 240, height = 0});
	localParams[122]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[122]:setAnchorPoint(0.00, 1.00);
	localParams[122]:setContentSize({width = 240.0, height = 0.0});
	localParams[122]:setPosition(15.0, -338.34);
	self.__children['bg#friendBg_img#under_img3#m_message_bg#node#m_skill_explain3'] = localParams[122];
	localParams[122].__children = self.__children;
	localParams[122].__Name = 'bg#friendBg_img#under_img3#m_message_bg#node#m_skill_explain3';
	localParams[110]:addChild(localParams[122]);

	localParams[123] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[123]:ignoreContentAdaptWithSize(false);
	localParams[123]:setScale9Enabled(true);
	localParams[123]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[123]:setAnchorPoint(0.50, 0.50);
	localParams[123]:setContentSize({width = 170.0, height = 475.0});
	localParams[123]:setPosition(470.14, 250.0);
	self.__children['bg#friendBg_img#under_img3#role_bg'] = localParams[123];
	localParams[123].__children = self.__children;
	localParams[123].__Name = 'bg#friendBg_img#under_img3#role_bg';
	localParams[48]:addChild(localParams[123]);

	localParams[124] = ImageView:create('uires/public/sheet_bgframe/bgFrame0073.png', 1);
	localParams[124]:setAnchorPoint(0.50, 0.50);
	localParams[124]:setContentSize({width = 110.0, height = 110.0});
	localParams[124]:setPosition(85.0, 400.49);
	self.__children['bg#friendBg_img#under_img3#role_bg#head_bg'] = localParams[124];
	localParams[124].__children = self.__children;
	localParams[124].__Name = 'bg#friendBg_img#under_img3#role_bg#head_bg';
	localParams[123]:addChild(localParams[124]);

	localParams[125] = ImageView:create(, 0);
	localParams[125]:setAnchorPoint(0.50, 0.50);
	localParams[125]:setContentSize({width = 46.0, height = 46.0});
	localParams[125]:setPosition(55.0, 55.0);
	self.__children['bg#friendBg_img#under_img3#role_bg#head_bg#head'] = localParams[125];
	localParams[125].__children = self.__children;
	localParams[125].__Name = 'bg#friendBg_img#under_img3#role_bg#head_bg#head';
	localParams[124]:addChild(localParams[125]);

	localParams[126] = ImageView:create(, 0);
	localParams[126]:setAnchorPoint(0.50, 0.50);
	localParams[126]:setScaleX(0.70);
	localParams[126]:setScaleY(0.70);
	localParams[126]:setContentSize({width = 46.0, height = 46.0});
	localParams[126]:setPosition(55.0, -25.19);
	self.__children['bg#friendBg_img#under_img3#role_bg#head_bg#profession_font'] = localParams[126];
	localParams[126].__children = self.__children;
	localParams[126].__Name = 'bg#friendBg_img#under_img3#role_bg#head_bg#profession_font';
	localParams[124]:addChild(localParams[126]);

	localParams[127] = Button:create();
	localParams[127]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[127]:setTitleFontSize(14);
	localParams[127]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[127]:setScale9Enabled(true);
	localParams[127]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[127]:setAnchorPoint(0.50, 0.50);
	localParams[127]:onClick(handler(self, self._onSkill));
	localParams[127]:setTouchEnabled(true);
	localParams[127]:setContentSize({width = 118.0, height = 119.0});
	localParams[127]:setPosition(85.0, 234.0);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg1'] = localParams[127];
	localParams[127].__children = self.__children;
	localParams[127].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg1';
	localParams[123]:addChild(localParams[127]);

	localParams[128] = Text:create();
	localParams[128]:setFontSize(16);
	localParams[128]:setString([[]]);
	localParams[128]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[128]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[128]:setAnchorPoint(0.50, 0.50);
	localParams[128]:setTextColor({r = 255, g = 240, b = 155});
	localParams[128]:setContentSize({width = 0.0, height = 0.0});
	localParams[128]:setPosition(59.0, -6.26);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg1#skill_name1'] = localParams[128];
	localParams[128].__children = self.__children;
	localParams[128].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg1#skill_name1';
	localParams[127]:addChild(localParams[128]);

	localParams[129] = ImageView:create(, 0);
	localParams[129]:setAnchorPoint(0.50, 0.50);
	localParams[129]:setContentSize({width = 46.0, height = 46.0});
	localParams[129]:setPosition(59.0, 59.5);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg1#skill_img1'] = localParams[129];
	localParams[129].__children = self.__children;
	localParams[129].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg1#skill_img1';
	localParams[127]:addChild(localParams[129]);

	localParams[130] = Text:create();
	localParams[130]:setFontSize(20);
	localParams[130]:setString([[]]);
	localParams[130]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[130]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[130]:setAnchorPoint(0.50, 0.50);
	localParams[130]:setTextColor({r = 255, g = 140, b = 0});
	localParams[130]:setContentSize({width = 0.0, height = 0.0});
	localParams[130]:setPosition(59.0, 13.78);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg1#skill_level1'] = localParams[130];
	localParams[130].__children = self.__children;
	localParams[130].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg1#skill_level1';
	localParams[127]:addChild(localParams[130]);

	localParams[131] = Button:create();
	localParams[131]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[131]:setTitleFontSize(14);
	localParams[131]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[131]:setScale9Enabled(true);
	localParams[131]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[131]:setAnchorPoint(0.50, 0.50);
	localParams[131]:onClick(handler(self, self._onSkill));
	localParams[131]:setTouchEnabled(true);
	localParams[131]:setContentSize({width = 118.0, height = 119.0});
	localParams[131]:setPosition(85.0, 91.0);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg2'] = localParams[131];
	localParams[131].__children = self.__children;
	localParams[131].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg2';
	localParams[123]:addChild(localParams[131]);

	localParams[132] = Text:create();
	localParams[132]:setFontSize(16);
	localParams[132]:setString([[]]);
	localParams[132]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[132]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[132]:setAnchorPoint(0.50, 0.50);
	localParams[132]:setTextColor({r = 255, g = 240, b = 155});
	localParams[132]:setContentSize({width = 0.0, height = 0.0});
	localParams[132]:setPosition(59.0, -6.26);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg2#skill_name2'] = localParams[132];
	localParams[132].__children = self.__children;
	localParams[132].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg2#skill_name2';
	localParams[131]:addChild(localParams[132]);

	localParams[133] = Text:create();
	localParams[133]:setFontSize(20);
	localParams[133]:setString([[]]);
	localParams[133]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[133]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[133]:setAnchorPoint(0.50, 0.50);
	localParams[133]:setTextColor({r = 255, g = 140, b = 0});
	localParams[133]:setContentSize({width = 0.0, height = 0.0});
	localParams[133]:setPosition(59.0, 13.78);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg2#skill_level2'] = localParams[133];
	localParams[133].__children = self.__children;
	localParams[133].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg2#skill_level2';
	localParams[131]:addChild(localParams[133]);

	localParams[134] = ImageView:create(, 0);
	localParams[134]:setAnchorPoint(0.50, 0.50);
	localParams[134]:setContentSize({width = 46.0, height = 46.0});
	localParams[134]:setPosition(59.0, 59.5);
	self.__children['bg#friendBg_img#under_img3#role_bg#use_skill_bg2#skill_img2'] = localParams[134];
	localParams[134].__children = self.__children;
	localParams[134].__Name = 'bg#friendBg_img#under_img3#role_bg#use_skill_bg2#skill_img2';
	localParams[131]:addChild(localParams[134]);

	localParams[135] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[135]:ignoreContentAdaptWithSize(false);
	localParams[135]:setScale9Enabled(true);
	localParams[135]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[135]:setAnchorPoint(1.00, 0.50);
	localParams[135]:setContentSize({width = 270.0, height = 230.0});
	localParams[135]:setPosition(264.4, 374.23);
	self.__children['bg#friendBg_img#under_img3#role_bg#s_message_bg'] = localParams[135];
	localParams[135].__children = self.__children;
	localParams[135].__Name = 'bg#friendBg_img#under_img3#role_bg#s_message_bg';
	localParams[123]:addChild(localParams[135]);

	localParams[136] = Node:create();
	localParams[136]:setAnchorPoint(0.00, 0.00);
	localParams[136]:setContentSize({width = 0.0, height = 0.0});
	localParams[136]:setPosition(0.0, 230.0);
	self.__children['bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1'] = localParams[136];
	localParams[136].__children = self.__children;
	localParams[136].__Name = 'bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1';
	localParams[135]:addChild(localParams[136]);

	localParams[137] = Text:create();
	localParams[137]:setFontSize(24);
	localParams[137]:setString([[风华之身]]);
	localParams[137]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[137]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[137]:setAnchorPoint(0.50, 0.50);
	localParams[137]:setTextColor({r = 250, g = 240, b = 155});
	localParams[137]:setContentSize({width = 100.0, height = 26.0});
	localParams[137]:setPosition(140.0, localParams[136]:getContentSize().height - 43.00);
	self.__children['bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1#s_name'] = localParams[137];
	localParams[137].__children = self.__children;
	localParams[137].__Name = 'bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1#s_name';
	localParams[136]:addChild(localParams[137]);

	localParams[138] = Text:create();
	localParams[138]:setFontSize(20);
	localParams[138]:setString([[技能说明:小体型 近距离小体型 近距离小体型 近距离小体型 近距离]]);
	localParams[138]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[138]:setTextAreaSize({width = 235, height = 0});
	localParams[138]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[138]:setAnchorPoint(0.50, 1.00);
	localParams[138]:setContentSize({width = 235.0, height = 0.0});
	localParams[138]:setPosition(135.0, localParams[136]:getContentSize().height - 110.00);
	self.__children['bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1#s_skill_explain'] = localParams[138];
	localParams[138].__children = self.__children;
	localParams[138].__Name = 'bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1#s_skill_explain';
	localParams[136]:addChild(localParams[138]);

	localParams[139] = Text:create();
	localParams[139]:setFontSize(20);
	localParams[139]:setString([[技能说明：]]);
	localParams[139]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[139]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[139]:setAnchorPoint(0.50, 0.50);
	localParams[139]:setContentSize({width = 91.0, height = 25.0});
	localParams[139]:setPosition(63.08, localParams[136]:getContentSize().height - 82.50);
	self.__children['bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1#Text_1'] = localParams[139];
	localParams[139].__children = self.__children;
	localParams[139].__Name = 'bg#friendBg_img#under_img3#role_bg#s_message_bg#Node_1#Text_1';
	localParams[136]:addChild(localParams[139]);

end
function PersonalInfoLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Normal.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0231.png');
	table.insert(self._textureList, 'uires/public/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function PersonalInfoLayer:loadPlistResources()
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


function PersonalInfoLayer:_onSkill(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSkill then
        return self.m_ClickDelegate:onSkill(sender);
    end
    if self.onSkill then
        return self:onSkill(sender);
    end
end


function PersonalInfoLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


function PersonalInfoLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function PersonalInfoLayer:_toInfo(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toInfo then
        return self.m_ClickDelegate:toInfo(sender);
    end
    if self.toInfo then
        return self:toInfo(sender);
    end
end


function PersonalInfoLayer:_onMonster(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onMonster then
        return self.m_ClickDelegate:onMonster(sender);
    end
    if self.onMonster then
        return self:onMonster(sender);
    end
end


return PersonalInfoLayer;