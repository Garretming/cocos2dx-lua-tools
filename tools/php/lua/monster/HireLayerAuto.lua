-- 
-- Author: generation auto
-- Brief：HireLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local HireLayer = class('HireLayer', gamecore.ui.BaseWidget);

function HireLayer:create(...) 
    local instance = HireLayer.new(...);
    return instance;
end

function HireLayer:ctor(...) 
    if HireLayer.super and HireLayer.super.ctor then
        HireLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function HireLayer:initView()
    self.__LAYER_NAME = 'monster.HireLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 440.0, height = 400.0});
	localParams[1]:setPosition(WinSize.width - 327.68, WinSize.height/2 + (26.82 * ccx.scaleY));
	self.__children['under_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'under_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 60.0, height = 29.0});
	localParams[2]:setPosition(121.97, 365.0);
	self.__children['under_img#left_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'under_img#left_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 60.0, height = 29.0});
	localParams[3]:setPosition(324.5, 365.0);
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
	localParams[4]:setPosition(223.56, 364.08);
	self.__children['under_img#name_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'under_img#name_txt';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(0.65);
	localParams[5]:setScaleY(0.65);
	localParams[5]:setContentSize({width = 43.0, height = 41.0});
	localParams[5]:setPosition(107.8, 332.0);
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
	localParams[7]:setPosition(133.32, 332.0);
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
	localParams[9]:setPosition(158.84, 332.0);
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
	localParams[11]:setPosition(184.36, 332.0);
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
	localParams[13]:setPosition(209.88, 332.0);
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
	localParams[15]:setPosition(235.4, 332.0);
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
	localParams[17]:setPosition(260.92, 332.0);
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
	localParams[19]:setPosition(286.44, 332.0);
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
	localParams[21]:setPosition(311.96, 332.0);
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
	localParams[23]:setPosition(337.48, 332.0);
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

	localParams[25] = RichText:create();
	localParams[25]:setDefaultFontSize(20);
	localParams[25]:setString([[占领据点暴风城可解锁]]);
	localParams[25]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[25]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 204.0, height = 22.0});
	localParams[25]:setPosition(217.26, 284.56);
	self.__children['under_img#cue_txt1'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'under_img#cue_txt1';
	localParams[1]:addChild(localParams[25]);

	localParams[26] = RichText:create();
	localParams[26]:setDefaultFontSize(20);
	localParams[26]:setString([[解锁后，每日可进行雇佣。]]);
	localParams[26]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[26]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setTextColor({r = 80, g = 255, b = 0});
	localParams[26]:setContentSize({width = 234.0, height = 22.0});
	localParams[26]:setPosition(224.26, 173.66);
	self.__children['under_img#cue_txt2'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'under_img#cue_txt2';
	localParams[1]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0103.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 218.0, height = 226.0});
	localParams[27]:setPosition(214.11, 168.46);
	self.__children['under_img#unHire_sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'under_img#unHire_sprite';
	localParams[1]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[当前数量：]]);
	localParams[28]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[28]:setAnchorPoint(0.00, 0.50);
	localParams[28]:setContentSize({width = 96.0, height = 22.0});
	localParams[28]:setPosition(127.6, 285.24);
	self.__children['under_img#curCount_txt'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'under_img#curCount_txt';
	localParams[1]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[666]]);
	localParams[29]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[29]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[29]:setAnchorPoint(1.00, 0.50);
	localParams[29]:setTextColor({r = 255, g = 140, b = 0});
	localParams[29]:setContentSize({width = 40.0, height = 22.0});
	localParams[29]:setPosition(192.0, 11.0);
	self.__children['under_img#curCount_txt#value_txt'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'under_img#curCount_txt#value_txt';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = Text:create();
	localParams[30]:setFontSize(20);
	localParams[30]:setString([[今日可雇佣：]]);
	localParams[30]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[30]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[30]:setAnchorPoint(0.00, 0.50);
	localParams[30]:setContentSize({width = 116.0, height = 22.0});
	localParams[30]:setPosition(-3.92, -22.64);
	self.__children['under_img#curCount_txt#canHire_txt'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'under_img#curCount_txt#canHire_txt';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = RichText:create();
	localParams[31]:setDefaultFontSize(20);
	localParams[31]:setString([[9999]]);
	localParams[31]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[31]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[31]:setAnchorPoint(1.00, 0.50);
	localParams[31]:setContentSize({width = 44.0, height = 24.0});
	localParams[31]:setPosition(196.01, 11.0);
	self.__children['under_img#curCount_txt#canHire_txt#num_txt'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'under_img#curCount_txt#canHire_txt#num_txt';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[32]:ignoreContentAdaptWithSize(false);
	localParams[32]:setScale9Enabled(true);
	localParams[32]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 331.0, height = 37.0});
	localParams[32]:setPosition(223.65, 201.99);
	self.__children['under_img#comsumeUnder_img'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'under_img#comsumeUnder_img';
	localParams[1]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[33]:setAnchorPoint(0.45, 0.53);
	localParams[33]:setContentSize({width = 44.0, height = 44.0});
	localParams[33]:setPosition(301.54, 21.51);
	self.__children['under_img#comsumeUnder_img#coin_sprite'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'under_img#comsumeUnder_img#coin_sprite';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_font/fontImg0096.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 100.0, height = 28.0});
	localParams[34]:setPosition(60.5, 19.17);
	self.__children['under_img#comsumeUnder_img#priceFont_sprite'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'under_img#comsumeUnder_img#priceFont_sprite';
	localParams[32]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(24);
	localParams[35]:setString([[6456413]]);
	localParams[35]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[35]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[35]:setAnchorPoint(1.00, 0.50);
	localParams[35]:setContentSize({width = 107.0, height = 26.0});
	localParams[35]:setPosition(275.74, 18.36);
	self.__children['under_img#comsumeUnder_img#amount_txt'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'under_img#comsumeUnder_img#amount_txt';
	localParams[32]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[36]:ignoreContentAdaptWithSize(false);
	localParams[36]:setScale9Enabled(true);
	localParams[36]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 331.0, height = 37.0});
	localParams[36]:setPosition(222.99, 156.96);
	self.__children['under_img#countUnder_img'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'under_img#countUnder_img';
	localParams[1]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_font/fontImg0097.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 101.0, height = 28.0});
	localParams[37]:setPosition(60.5, 19.17);
	self.__children['under_img#countUnder_img#priceFont_sprite'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'under_img#countUnder_img#priceFont_sprite';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = Text:create();
	localParams[38]:setFontSize(24);
	localParams[38]:setString([[13]]);
	localParams[38]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[38]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[38]:setAnchorPoint(1.00, 0.50);
	localParams[38]:setContentSize({width = 32.0, height = 26.0});
	localParams[38]:setPosition(316.74, 18.36);
	self.__children['under_img#countUnder_img#amount_txt'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'under_img#countUnder_img#amount_txt';
	localParams[36]:addChild(localParams[38]);

	localParams[39] = Button:create();
	localParams[39]:loadTextureNormal('uires/public/sheet_btn/btn0116.png', 1);
	localParams[39]:setTitleFontSize(14);
	localParams[39]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[39]:setScale9Enabled(true);
	localParams[39]:setCapInsets({x = 15.000000, y = 11.000000, width = 18.000000, height = 24.000000});
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:onClick(handler(self, self._onPlus));
	localParams[39]:setTouchEnabled(true);
	localParams[39]:setContentSize({width = 48.0, height = 46.0});
	localParams[39]:setPosition(365.2, 112.0);
	self.__children['under_img#plus_btn'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'under_img#plus_btn';
	localParams[1]:addChild(localParams[39]);

	localParams[40] = Node:create();
	localParams[40]:setAnchorPoint(0.00, 0.00);
	localParams[40]:setScaleX(0.90);
	localParams[40]:setScaleY(0.90);
	localParams[40]:setContentSize({width = 0.0, height = 0.0});
	localParams[40]:setPosition(29.09, -29.09);
	self.__children['under_img#plus_btn#__SELECTED_SCALE'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'under_img#plus_btn#__SELECTED_SCALE';
	localParams[39]:addChild(localParams[40]);

	localParams[41] = Button:create();
	localParams[41]:loadTextureNormal('uires/public/sheet_btn/btn0115.png', 1);
	localParams[41]:setTitleFontSize(14);
	localParams[41]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[41]:setScale9Enabled(true);
	localParams[41]:setCapInsets({x = 15.000000, y = 11.000000, width = 18.000000, height = 24.000000});
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:onClick(handler(self, self._onReduce));
	localParams[41]:setTouchEnabled(true);
	localParams[41]:setContentSize({width = 48.0, height = 46.0});
	localParams[41]:setPosition(74.8, 112.0);
	self.__children['under_img#reduce_btn'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'under_img#reduce_btn';
	localParams[1]:addChild(localParams[41]);

	localParams[42] = Node:create();
	localParams[42]:setAnchorPoint(0.00, 0.00);
	localParams[42]:setScaleX(0.90);
	localParams[42]:setScaleY(0.90);
	localParams[42]:setContentSize({width = 0.0, height = 0.0});
	localParams[42]:setPosition(29.09, -29.09);
	self.__children['under_img#reduce_btn#__SELECTED_SCALE'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'under_img#reduce_btn#__SELECTED_SCALE';
	localParams[41]:addChild(localParams[42]);

	localParams[43] = Slider:create();
	localParams[43]:loadBarTexture('uires/public/sheet_other/other0222.png', 1);
	localParams[43]:loadProgressBarTexture('uires/public/sheet_other/other0223.png', 1);
	localParams[43]:loadSlidBallTextureNormal('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[43]:loadSlidBallTexturePressed('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[43]:loadSlidBallTextureDisabled('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[43]:setAnchorPoint(0.00, 0.50);
	localParams[43]:setTouchEnabled(true);
	localParams[43]:setContentSize({width = 180.0, height = 11.0});
	localParams[43]:setPosition(130.0, 112.0);
	self.__children['under_img#line_slider'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'under_img#line_slider';
	localParams[1]:addChild(localParams[43]);

	localParams[44] = Button:create();
	localParams[44]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[44]:setTitleFontSize(14);
	localParams[44]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:onClick(handler(self, self._onHire));
	localParams[44]:setTouchEnabled(true);
	localParams[44]:setContentSize({width = 183.0, height = 68.0});
	localParams[44]:setPosition(223.9, 49.2);
	self.__children['under_img#hire_btn'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'under_img#hire_btn';
	localParams[1]:addChild(localParams[44]);

	localParams[45] = Node:create();
	localParams[45]:setAnchorPoint(0.00, 0.00);
	localParams[45]:setScaleX(0.90);
	localParams[45]:setScaleY(0.90);
	localParams[45]:setContentSize({width = 0.0, height = 0.0});
	localParams[45]:setPosition(-156.78, 44.76);
	self.__children['under_img#hire_btn#__SELECTED_SCALE'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'under_img#hire_btn#__SELECTED_SCALE';
	localParams[44]:addChild(localParams[45]);

	localParams[46] = ImageView:create('uires/public/sheet_font/fontImg0094.png', 1);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setContentSize({width = 72.0, height = 30.0});
	localParams[46]:setPosition(91.5, 34.0);
	self.__children['under_img#hire_btn#font_sprite'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'under_img#hire_btn#font_sprite';
	localParams[44]:addChild(localParams[46]);

	localParams[47] = Button:create();
	localParams[47]:loadTextureNormal('uires/public/sheet_btn/btn0105.png', 1);
	localParams[47]:loadTexturePressed('uires/public/sheet_btn/btn0105.png', 1);
	localParams[47]:setTitleFontSize(14);
	localParams[47]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:onClick(handler(self, self._onAssess));
	localParams[47]:setTouchEnabled(true);
	localParams[47]:setContentSize({width = 65.0, height = 62.0});
	localParams[47]:setPosition(47.61, 44.76);
	self.__children['under_img#assess_btn'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'under_img#assess_btn';
	localParams[1]:addChild(localParams[47]);

	localParams[48] = Node:create();
	localParams[48]:setAnchorPoint(0.00, 0.00);
	localParams[48]:setScaleX(0.90);
	localParams[48]:setScaleY(0.90);
	localParams[48]:setContentSize({width = 0.0, height = 0.0});
	localParams[48]:setPosition(-146.78, 34.76);
	self.__children['under_img#assess_btn#__SELECTED_SCALE'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'under_img#assess_btn#__SELECTED_SCALE';
	localParams[47]:addChild(localParams[48]);

end
function HireLayer:loadImageSync()
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


function HireLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function HireLayer:_onAssess(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAssess then
        return self.m_ClickDelegate:onAssess(sender);
    end
    if self.onAssess then
        return self:onAssess(sender);
    end
end


function HireLayer:_onReduce(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onReduce then
        return self.m_ClickDelegate:onReduce(sender);
    end
    if self.onReduce then
        return self:onReduce(sender);
    end
end


function HireLayer:_onPlus(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPlus then
        return self.m_ClickDelegate:onPlus(sender);
    end
    if self.onPlus then
        return self:onPlus(sender);
    end
end


function HireLayer:_onHire(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onHire then
        return self.m_ClickDelegate:onHire(sender);
    end
    if self.onHire then
        return self:onHire(sender);
    end
end


return HireLayer;