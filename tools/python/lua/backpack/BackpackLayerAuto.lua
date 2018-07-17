-- 
-- Author: generation auto
-- Brief：BackpackLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local BackpackLayer = class('BackpackLayer', gamecore.ui.BaseWidget);

function BackpackLayer:create(...) 
    local instance = BackpackLayer.new(...);
    return instance;
end

function BackpackLayer:ctor(...) 
    if BackpackLayer.super and BackpackLayer.super.ctor then
        BackpackLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);
end

function BackpackLayer:initView()
    self.__LAYER_NAME = 'backpack.BackpackLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 415.0, height = 565.0});
	localParams[1]:setPosition(211.31, 316.73);
	self.__children['otherInfoBg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'otherInfoBg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 374.0, height = 445.0});
	localParams[2]:setPosition(206.84, 317.84);
	self.__children['otherInfoBg_img#under_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'otherInfoBg_img#under_img';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 350.0, height = 383.0});
	localParams[3]:setPosition(localParams[1]:getContentSize().width - 207.39, 338.1);
	self.__children['otherInfoBg_img#infoUnder_img'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'otherInfoBg_img#infoUnder_img';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0049.png', 1);
	localParams[4]:setAnchorPoint(-0.23, -2.84);
	localParams[4]:setContentSize({width = 217.0, height = 33.0});
	localParams[4]:setPosition(20.32, 265.87);
	self.__children['otherInfoBg_img#infoUnder_img#nameUnder_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'otherInfoBg_img#infoUnder_img#nameUnder_sprite';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[其它]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:setTextHorizontalAlignment(1);
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 255, g = 240, b = 155});
	localParams[5]:setContentSize({width = 44.0, height = 22.0});
	localParams[5]:setPosition(108.5, 16.5);
	self.__children['otherInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'otherInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[6]:ignoreContentAdaptWithSize(false);
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 334.0, height = 225.0});
	localParams[6]:setPosition(175.67, 120.38);
	self.__children['otherInfoBg_img#infoUnder_img#descUnder_img'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'otherInfoBg_img#infoUnder_img#descUnder_img';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[打狗棒法共有绊、劈、缠、戳、挑、引、封、转八诀!"打狗棒法”威力巨大以至“天下无狗"!]]);
	localParams[7]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[7]:setTextAreaSize({width = 300, height = 170});
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 300.0, height = 170.0});
	localParams[7]:setPosition(167.0, 112.5);
	self.__children['otherInfoBg_img#infoUnder_img#descUnder_img#desc_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'otherInfoBg_img#infoUnder_img#descUnder_img#desc_txt';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 110.0, height = 110.0});
	localParams[8]:setPosition(105.48, 293.15);
	self.__children['otherInfoBg_img#infoUnder_img#equipUnder_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'otherInfoBg_img#infoUnder_img#equipUnder_sprite';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_common/other0049.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 98.0, height = 98.0});
	localParams[9]:setPosition(54.61, 55.29);
	self.__children['otherInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'otherInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 331.0, height = 37.0});
	localParams[10]:setPosition(176.31, -23.97);
	self.__children['otherInfoBg_img#infoUnder_img#prizeUnder_img'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'otherInfoBg_img#infoUnder_img#prizeUnder_img';
	localParams[3]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[11]:setAnchorPoint(0.45, 0.53);
	localParams[11]:setContentSize({width = 44.0, height = 44.0});
	localParams[11]:setPosition(301.54, 21.51);
	self.__children['otherInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'otherInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_font/fontImg0031.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 102.0, height = 28.0});
	localParams[12]:setPosition(60.5, 19.17);
	self.__children['otherInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'otherInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(24);
	localParams[13]:setString([[6456413]]);
	localParams[13]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[13]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[13]:setAnchorPoint(1.00, 0.50);
	localParams[13]:setContentSize({width = 107.0, height = 26.0});
	localParams[13]:setPosition(275.74, 18.36);
	self.__children['otherInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'otherInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt';
	localParams[10]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[不可出售]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[14]:setAnchorPoint(1.00, 0.50);
	localParams[14]:setTextColor({r = 255, g = 0, b = 0});
	localParams[14]:setContentSize({width = 83.0, height = 22.0});
	localParams[14]:setPosition(276.0, 19.0);
	self.__children['otherInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'otherInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt';
	localParams[10]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(20);
	localParams[15]:setString([[拥有：]]);
	localParams[15]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[15]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[15]:setAnchorPoint(0.00, 0.50);
	localParams[15]:setContentSize({width = 56.0, height = 22.0});
	localParams[15]:setPosition(168.0, 314.06);
	self.__children['otherInfoBg_img#infoUnder_img#have_txt'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'otherInfoBg_img#infoUnder_img#have_txt';
	localParams[3]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[999]]);
	localParams[16]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[16]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[16]:setAnchorPoint(0.00, 0.50);
	localParams[16]:setContentSize({width = 39.0, height = 22.0});
	localParams[16]:setPosition(231.0, 314.06);
	self.__children['otherInfoBg_img#infoUnder_img#count_txt'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'otherInfoBg_img#infoUnder_img#count_txt';
	localParams[3]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[件]]);
	localParams[17]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:enableOutline({r = 50, g = 20, b = 0, a = 255}, 1.00);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 24.0, height = 22.0});
	localParams[17]:setPosition(280.0, 314.06);
	self.__children['otherInfoBg_img#infoUnder_img#piece_txt'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'otherInfoBg_img#infoUnder_img#piece_txt';
	localParams[3]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[品质：]]);
	localParams[18]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[18]:setAnchorPoint(0.00, 0.50);
	localParams[18]:setContentSize({width = 56.0, height = 22.0});
	localParams[18]:setPosition(168.0, 275.76);
	self.__children['otherInfoBg_img#infoUnder_img#quality_txt'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'otherInfoBg_img#infoUnder_img#quality_txt';
	localParams[3]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(20);
	localParams[19]:setString([[传说]]);
	localParams[19]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[19]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setTextColor({r = 240, g = 0, b = 255});
	localParams[19]:setContentSize({width = 44.0, height = 22.0});
	localParams[19]:setPosition(252.0, 275.76);
	self.__children['otherInfoBg_img#infoUnder_img#worth_txt'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'otherInfoBg_img#infoUnder_img#worth_txt';
	localParams[3]:addChild(localParams[19]);

	localParams[20] = Button:create();
	localParams[20]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[20]:setTitleFontSize(14);
	localParams[20]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[20]:setScale9Enabled(true);
	localParams[20]:setCapInsets({x = 29.000000, y = 29.000000, width = 125.000000, height = 10.000000});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:onClick(handler(self, self._onSell));
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 183.0, height = 68.0});
	localParams[20]:setPosition(207.5, 54.58);
	self.__children['otherInfoBg_img#sell_btn'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'otherInfoBg_img#sell_btn';
	localParams[1]:addChild(localParams[20]);

	localParams[21] = Widget:create();
	localParams[21]:setAnchorPoint(0.00, 0.00);
	localParams[21]:setScaleX(0.90);
	localParams[21]:setScaleY(0.90);
	localParams[21]:setContentSize({width = 0.0, height = 0.0});
	localParams[21]:setPosition(-221.55, 44.79);
	self.__children['otherInfoBg_img#sell_btn#__SELECTED_SCALE'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'otherInfoBg_img#sell_btn#__SELECTED_SCALE';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_font/fontImg0035.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 70.0, height = 29.0});
	localParams[22]:setPosition(91.5, 34.0);
	self.__children['otherInfoBg_img#sell_btn#sell_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'otherInfoBg_img#sell_btn#sell_sprite';
	localParams[20]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[23]:ignoreContentAdaptWithSize(false);
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 415.0, height = 565.0});
	localParams[23]:setPosition(-407.0, WinSize.height/2 + (-3.27 * ccx.scaleY));
	self.__children['consumablesInfoBg_img'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'consumablesInfoBg_img';
	self:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[24]:ignoreContentAdaptWithSize(false);
	localParams[24]:setScale9Enabled(true);
	localParams[24]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 374.0, height = 445.0});
	localParams[24]:setPosition(206.84, 317.84);
	self.__children['consumablesInfoBg_img#under_img'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'consumablesInfoBg_img#under_img';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[25]:ignoreContentAdaptWithSize(false);
	localParams[25]:setScale9Enabled(true);
	localParams[25]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 350.0, height = 383.0});
	localParams[25]:setPosition(localParams[23]:getContentSize().width - 207.39, 338.1);
	self.__children['consumablesInfoBg_img#infoUnder_img'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'consumablesInfoBg_img#infoUnder_img';
	localParams[23]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_bgframe/bgFrame0049.png', 1);
	localParams[26]:setAnchorPoint(-0.23, -2.84);
	localParams[26]:setContentSize({width = 217.0, height = 33.0});
	localParams[26]:setPosition(20.32, 265.87);
	self.__children['consumablesInfoBg_img#infoUnder_img#nameUnder_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'consumablesInfoBg_img#infoUnder_img#nameUnder_sprite';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = Text:create();
	localParams[27]:setFontSize(20);
	localParams[27]:setString([[消耗品]]);
	localParams[27]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[27]:setTextHorizontalAlignment(1);
	localParams[27]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setTextColor({r = 255, g = 240, b = 155});
	localParams[27]:setContentSize({width = 64.0, height = 22.0});
	localParams[27]:setPosition(108.5, 16.5);
	self.__children['consumablesInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'consumablesInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[28]:ignoreContentAdaptWithSize(false);
	localParams[28]:setScale9Enabled(true);
	localParams[28]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 334.0, height = 225.0});
	localParams[28]:setPosition(175.67, 120.38);
	self.__children['consumablesInfoBg_img#infoUnder_img#descUnder_img'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'consumablesInfoBg_img#infoUnder_img#descUnder_img';
	localParams[25]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[打狗棒法共有绊、劈、缠、戳、挑、引、封、转八诀!"打狗棒法”威力巨大以至“天下无狗"!]]);
	localParams[29]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[29]:setTextAreaSize({width = 300, height = 170});
	localParams[29]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 300.0, height = 170.0});
	localParams[29]:setPosition(167.0, 112.5);
	self.__children['consumablesInfoBg_img#infoUnder_img#descUnder_img#desc_txt'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'consumablesInfoBg_img#infoUnder_img#descUnder_img#desc_txt';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 110.0, height = 110.0});
	localParams[30]:setPosition(105.48, 293.15);
	self.__children['consumablesInfoBg_img#infoUnder_img#equipUnder_sprite'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'consumablesInfoBg_img#infoUnder_img#equipUnder_sprite';
	localParams[25]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_common/other0049.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 98.0, height = 98.0});
	localParams[31]:setPosition(54.61, 55.29);
	self.__children['consumablesInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'consumablesInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[32]:ignoreContentAdaptWithSize(false);
	localParams[32]:setScale9Enabled(true);
	localParams[32]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000});
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 331.0, height = 37.0});
	localParams[32]:setPosition(176.31, -23.97);
	self.__children['consumablesInfoBg_img#infoUnder_img#prizeUnder_img'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'consumablesInfoBg_img#infoUnder_img#prizeUnder_img';
	localParams[25]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[33]:setAnchorPoint(0.45, 0.53);
	localParams[33]:setContentSize({width = 44.0, height = 44.0});
	localParams[33]:setPosition(301.54, 21.51);
	self.__children['consumablesInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'consumablesInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_font/fontImg0031.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 102.0, height = 28.0});
	localParams[34]:setPosition(60.5, 19.17);
	self.__children['consumablesInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'consumablesInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite';
	localParams[32]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(24);
	localParams[35]:setString([[6456413]]);
	localParams[35]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[35]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[35]:setAnchorPoint(1.00, 0.50);
	localParams[35]:setContentSize({width = 107.0, height = 26.0});
	localParams[35]:setPosition(275.74, 18.36);
	self.__children['consumablesInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'consumablesInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt';
	localParams[32]:addChild(localParams[35]);

	localParams[36] = Text:create();
	localParams[36]:setFontSize(20);
	localParams[36]:setString([[不可出售]]);
	localParams[36]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[36]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[36]:setAnchorPoint(1.00, 0.50);
	localParams[36]:setTextColor({r = 255, g = 0, b = 0});
	localParams[36]:setContentSize({width = 83.0, height = 22.0});
	localParams[36]:setPosition(281.0, 19.0);
	self.__children['consumablesInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'consumablesInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt';
	localParams[32]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(20);
	localParams[37]:setString([[拥有：]]);
	localParams[37]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[37]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[37]:setAnchorPoint(0.00, 0.50);
	localParams[37]:setContentSize({width = 56.0, height = 22.0});
	localParams[37]:setPosition(168.0, 314.06);
	self.__children['consumablesInfoBg_img#infoUnder_img#have_txt'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'consumablesInfoBg_img#infoUnder_img#have_txt';
	localParams[25]:addChild(localParams[37]);

	localParams[38] = Text:create();
	localParams[38]:setFontSize(20);
	localParams[38]:setString([[999]]);
	localParams[38]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[38]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[38]:setAnchorPoint(0.00, 0.50);
	localParams[38]:setContentSize({width = 39.0, height = 22.0});
	localParams[38]:setPosition(231.0, 314.06);
	self.__children['consumablesInfoBg_img#infoUnder_img#count_txt'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'consumablesInfoBg_img#infoUnder_img#count_txt';
	localParams[25]:addChild(localParams[38]);

	localParams[39] = Text:create();
	localParams[39]:setFontSize(20);
	localParams[39]:setString([[件]]);
	localParams[39]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[39]:enableOutline({r = 50, g = 20, b = 0, a = 255}, 1.00);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 24.0, height = 22.0});
	localParams[39]:setPosition(280.0, 314.06);
	self.__children['consumablesInfoBg_img#infoUnder_img#piece_txt'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'consumablesInfoBg_img#infoUnder_img#piece_txt';
	localParams[25]:addChild(localParams[39]);

	localParams[40] = Text:create();
	localParams[40]:setFontSize(20);
	localParams[40]:setString([[品质：]]);
	localParams[40]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[40]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[40]:setAnchorPoint(0.00, 0.50);
	localParams[40]:setContentSize({width = 56.0, height = 22.0});
	localParams[40]:setPosition(168.0, 275.76);
	self.__children['consumablesInfoBg_img#infoUnder_img#quality_txt'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'consumablesInfoBg_img#infoUnder_img#quality_txt';
	localParams[25]:addChild(localParams[40]);

	localParams[41] = Text:create();
	localParams[41]:setFontSize(20);
	localParams[41]:setString([[传说]]);
	localParams[41]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[41]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setTextColor({r = 240, g = 0, b = 255});
	localParams[41]:setContentSize({width = 44.0, height = 22.0});
	localParams[41]:setPosition(252.0, 275.76);
	self.__children['consumablesInfoBg_img#infoUnder_img#worth_txt'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'consumablesInfoBg_img#infoUnder_img#worth_txt';
	localParams[25]:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:onClick(handler(self, self._onUse));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 183.0, height = 68.0});
	localParams[42]:setPosition(110.57, 54.61);
	self.__children['consumablesInfoBg_img#use_btn'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'consumablesInfoBg_img#use_btn';
	localParams[23]:addChild(localParams[42]);

	localParams[43] = Widget:create();
	localParams[43]:setAnchorPoint(0.00, 0.00);
	localParams[43]:setScaleX(0.90);
	localParams[43]:setScaleY(0.90);
	localParams[43]:setContentSize({width = 0.0, height = 0.0});
	localParams[43]:setPosition(-135.45, 44.76);
	self.__children['consumablesInfoBg_img#use_btn#__SELECTED_SCALE'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'consumablesInfoBg_img#use_btn#__SELECTED_SCALE';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_font/fontImg0034.png', 1);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setContentSize({width = 69.0, height = 31.0});
	localParams[44]:setPosition(91.5, 34.0);
	self.__children['consumablesInfoBg_img#use_btn#use_sprite'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'consumablesInfoBg_img#use_btn#use_sprite';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = Button:create();
	localParams[45]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[45]:setTitleFontSize(14);
	localParams[45]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:onClick(handler(self, self._onSell));
	localParams[45]:setTouchEnabled(true);
	localParams[45]:setContentSize({width = 183.0, height = 68.0});
	localParams[45]:setPosition(302.17, 54.58);
	self.__children['consumablesInfoBg_img#sell_btn'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'consumablesInfoBg_img#sell_btn';
	localParams[23]:addChild(localParams[45]);

	localParams[46] = Widget:create();
	localParams[46]:setAnchorPoint(0.00, 0.00);
	localParams[46]:setScaleX(0.90);
	localParams[46]:setScaleY(0.90);
	localParams[46]:setContentSize({width = 0.0, height = 0.0});
	localParams[46]:setPosition(-381.17, 44.79);
	self.__children['consumablesInfoBg_img#sell_btn#__SELECTED_SCALE'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'consumablesInfoBg_img#sell_btn#__SELECTED_SCALE';
	localParams[45]:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_font/fontImg0035.png', 1);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 70.0, height = 29.0});
	localParams[47]:setPosition(91.5, 34.0);
	self.__children['consumablesInfoBg_img#sell_btn#sell_sprite'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'consumablesInfoBg_img#sell_btn#sell_sprite';
	localParams[45]:addChild(localParams[47]);

	localParams[48] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[48]:ignoreContentAdaptWithSize(false);
	localParams[48]:setScale9Enabled(true);
	localParams[48]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setContentSize({width = 415.0, height = 565.0});
	localParams[48]:setPosition(211.31, 316.73);
	self.__children['equipInfoBg_img'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'equipInfoBg_img';
	self:addChild(localParams[48]);

	localParams[49] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[49]:ignoreContentAdaptWithSize(false);
	localParams[49]:setScale9Enabled(true);
	localParams[49]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setContentSize({width = 374.0, height = 445.0});
	localParams[49]:setPosition(206.84, 317.84);
	self.__children['equipInfoBg_img#under_img'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'equipInfoBg_img#under_img';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[50]:ignoreContentAdaptWithSize(false);
	localParams[50]:setScale9Enabled(true);
	localParams[50]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setContentSize({width = 350.0, height = 383.0});
	localParams[50]:setPosition(localParams[48]:getContentSize().width - 207.39, 338.1);
	self.__children['equipInfoBg_img#infoUnder_img'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'equipInfoBg_img#infoUnder_img';
	localParams[48]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_bgframe/bgFrame0049.png', 1);
	localParams[51]:setAnchorPoint(-0.23, -2.84);
	localParams[51]:setContentSize({width = 217.0, height = 33.0});
	localParams[51]:setPosition(20.32, 265.87);
	self.__children['equipInfoBg_img#infoUnder_img#nameUnder_sprite'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'equipInfoBg_img#infoUnder_img#nameUnder_sprite';
	localParams[50]:addChild(localParams[51]);

	localParams[52] = Text:create();
	localParams[52]:setFontSize(20);
	localParams[52]:setString([[打狗棒]]);
	localParams[52]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[52]:setTextHorizontalAlignment(1);
	localParams[52]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setTextColor({r = 255, g = 240, b = 155});
	localParams[52]:setContentSize({width = 64.0, height = 22.0});
	localParams[52]:setPosition(108.5, 16.5);
	self.__children['equipInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'equipInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt';
	localParams[51]:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[53]:ignoreContentAdaptWithSize(false);
	localParams[53]:setScale9Enabled(true);
	localParams[53]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 334.0, height = 225.0});
	localParams[53]:setPosition(175.67, 120.38);
	self.__children['equipInfoBg_img#infoUnder_img#property_img'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'equipInfoBg_img#infoUnder_img#property_img';
	localParams[50]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_bgframe/bgFrame0036.png', 1);
	localParams[54]:ignoreContentAdaptWithSize(false);
	localParams[54]:setScale9Enabled(true);
	localParams[54]:setCapInsets({x = 25.000000, y = 8.000000,width = 28.000000, height = 10.000000});
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setContentSize({width = 172.0, height = 29.0});
	localParams[54]:setPosition(167.0, 203.7);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img1'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img1';
	localParams[53]:addChild(localParams[54]);

	localParams[55] = Text:create();
	localParams[55]:setFontSize(20);
	localParams[55]:setString([[生命：]]);
	localParams[55]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[55]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[55]:setAnchorPoint(0.00, 0.50);
	localParams[55]:setContentSize({width = 51.0, height = 25.0});
	localParams[55]:setPosition(9.0, 14.0);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img1#title_txt1'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img1#title_txt1';
	localParams[54]:addChild(localParams[55]);

	localParams[56] = Text:create();
	localParams[56]:setFontSize(20);
	localParams[56]:setString([[8888888]]);
	localParams[56]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[56]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[56]:setAnchorPoint(1.00, 0.50);
	localParams[56]:setTextColor({r = 80, g = 255, b = 0});
	localParams[56]:setContentSize({width = 73.0, height = 22.0});
	localParams[56]:setPosition(165.1, 14.9);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img1#value_txt1'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img1#value_txt1';
	localParams[54]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_bgframe/bgFrame0036.png', 1);
	localParams[57]:ignoreContentAdaptWithSize(false);
	localParams[57]:setScale9Enabled(true);
	localParams[57]:setCapInsets({x = 25.000000, y = 8.000000,width = 28.000000, height = 10.000000});
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setContentSize({width = 172.0, height = 29.0});
	localParams[57]:setPosition(167.0, 169.7);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img2'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img2';
	localParams[53]:addChild(localParams[57]);

	localParams[58] = Text:create();
	localParams[58]:setFontSize(20);
	localParams[58]:setString([[护甲：]]);
	localParams[58]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[58]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[58]:setAnchorPoint(0.00, 0.50);
	localParams[58]:setContentSize({width = 51.0, height = 25.0});
	localParams[58]:setPosition(9.0, 14.0);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img2#title_txt2'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img2#title_txt2';
	localParams[57]:addChild(localParams[58]);

	localParams[59] = Text:create();
	localParams[59]:setFontSize(20);
	localParams[59]:setString([[777]]);
	localParams[59]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[59]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[59]:setAnchorPoint(1.00, 0.50);
	localParams[59]:setTextColor({r = 80, g = 255, b = 0});
	localParams[59]:setContentSize({width = 33.0, height = 22.0});
	localParams[59]:setPosition(165.1, 14.9);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img2#value_txt2'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img2#value_txt2';
	localParams[57]:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet_bgframe/bgFrame0036.png', 1);
	localParams[60]:ignoreContentAdaptWithSize(false);
	localParams[60]:setScale9Enabled(true);
	localParams[60]:setCapInsets({x = 25.000000, y = 8.000000,width = 28.000000, height = 10.000000});
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 172.0, height = 29.0});
	localParams[60]:setPosition(167.0, 135.7);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img3'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img3';
	localParams[53]:addChild(localParams[60]);

	localParams[61] = Text:create();
	localParams[61]:setFontSize(20);
	localParams[61]:setString([[速度：]]);
	localParams[61]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[61]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[61]:setAnchorPoint(0.00, 0.50);
	localParams[61]:setContentSize({width = 51.0, height = 25.0});
	localParams[61]:setPosition(9.0, 14.0);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img3#title_txt3'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img3#title_txt3';
	localParams[60]:addChild(localParams[61]);

	localParams[62] = Text:create();
	localParams[62]:setFontSize(20);
	localParams[62]:setString([[66666]]);
	localParams[62]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[62]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[62]:setAnchorPoint(1.00, 0.50);
	localParams[62]:setTextColor({r = 80, g = 255, b = 0});
	localParams[62]:setContentSize({width = 53.0, height = 22.0});
	localParams[62]:setPosition(165.1, 14.9);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img3#value_txt3'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img3#value_txt3';
	localParams[60]:addChild(localParams[62]);

	localParams[63] = ImageView:create('uires/public/sheet_bgframe/bgFrame0036.png', 1);
	localParams[63]:ignoreContentAdaptWithSize(false);
	localParams[63]:setScale9Enabled(true);
	localParams[63]:setCapInsets({x = 25.000000, y = 8.000000,width = 28.000000, height = 10.000000});
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setContentSize({width = 172.0, height = 29.0});
	localParams[63]:setPosition(167.0, 101.7);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img4'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img4';
	localParams[53]:addChild(localParams[63]);

	localParams[64] = Text:create();
	localParams[64]:setFontSize(20);
	localParams[64]:setString([[魔法：]]);
	localParams[64]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[64]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[64]:setAnchorPoint(0.00, 0.50);
	localParams[64]:setContentSize({width = 51.0, height = 25.0});
	localParams[64]:setPosition(9.0, 14.0);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img4#title_txt4'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img4#title_txt4';
	localParams[63]:addChild(localParams[64]);

	localParams[65] = Text:create();
	localParams[65]:setFontSize(20);
	localParams[65]:setString([[99999999]]);
	localParams[65]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[65]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[65]:setAnchorPoint(1.00, 0.50);
	localParams[65]:setTextColor({r = 80, g = 255, b = 0});
	localParams[65]:setContentSize({width = 83.0, height = 22.0});
	localParams[65]:setPosition(165.1, 14.9);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img4#value_txt4'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img4#value_txt4';
	localParams[63]:addChild(localParams[65]);

	localParams[66] = ImageView:create('uires/public/sheet_bgframe/bgFrame0036.png', 1);
	localParams[66]:ignoreContentAdaptWithSize(false);
	localParams[66]:setScale9Enabled(true);
	localParams[66]:setCapInsets({x = 25.000000, y = 8.000000,width = 28.000000, height = 10.000000});
	localParams[66]:setAnchorPoint(0.50, 0.50);
	localParams[66]:setContentSize({width = 172.0, height = 29.0});
	localParams[66]:setPosition(167.0, 67.7);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img5'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img5';
	localParams[53]:addChild(localParams[66]);

	localParams[67] = Text:create();
	localParams[67]:setFontSize(20);
	localParams[67]:setString([[怒气：]]);
	localParams[67]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[67]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[67]:setAnchorPoint(0.00, 0.50);
	localParams[67]:setContentSize({width = 51.0, height = 25.0});
	localParams[67]:setPosition(9.0, 14.0);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img5#title_txt5'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img5#title_txt5';
	localParams[66]:addChild(localParams[67]);

	localParams[68] = Text:create();
	localParams[68]:setFontSize(20);
	localParams[68]:setString([[22222]]);
	localParams[68]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[68]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[68]:setAnchorPoint(1.00, 0.50);
	localParams[68]:setTextColor({r = 80, g = 255, b = 0});
	localParams[68]:setContentSize({width = 53.0, height = 22.0});
	localParams[68]:setPosition(165.1, 14.9);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#under_img5#value_txt5'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'equipInfoBg_img#infoUnder_img#property_img#under_img5#value_txt5';
	localParams[66]:addChild(localParams[68]);

	localParams[69] = ImageView:create('uires/public/sheet_bgframe/bgFrame0054.png', 1);
	localParams[69]:ignoreContentAdaptWithSize(false);
	localParams[69]:setScale9Enabled(true);
	localParams[69]:setCapInsets({x = 39.000000, y = 14.000000,width = 42.000000, height = 15.000000});
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:setContentSize({width = 290.0, height = 43.0});
	localParams[69]:setPosition(167.0, 28.0);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#plusUnder_img'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'equipInfoBg_img#infoUnder_img#property_img#plusUnder_img';
	localParams[53]:addChild(localParams[69]);

	localParams[70] = Text:create();
	localParams[70]:setFontSize(20);
	localParams[70]:setString([[对龙族伤害增加5%]]);
	localParams[70]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[70]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[70]:setAnchorPoint(0.50, 0.50);
	localParams[70]:setTextColor({r = 255, g = 140, b = 0});
	localParams[70]:setContentSize({width = 169.0, height = 25.0});
	localParams[70]:setPosition(167.0, 28.0);
	self.__children['equipInfoBg_img#infoUnder_img#property_img#plus_txt'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'equipInfoBg_img#infoUnder_img#property_img#plus_txt';
	localParams[53]:addChild(localParams[70]);

	localParams[71] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[71]:setAnchorPoint(0.50, 0.50);
	localParams[71]:setContentSize({width = 110.0, height = 110.0});
	localParams[71]:setPosition(105.48, 293.15);
	self.__children['equipInfoBg_img#infoUnder_img#equipUnder_sprite'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'equipInfoBg_img#infoUnder_img#equipUnder_sprite';
	localParams[50]:addChild(localParams[71]);

	localParams[72] = ImageView:create('uires/public/sheet_common/other0049.png', 1);
	localParams[72]:setAnchorPoint(0.50, 0.50);
	localParams[72]:setContentSize({width = 98.0, height = 98.0});
	localParams[72]:setPosition(54.61, 55.29);
	self.__children['equipInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'equipInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite';
	localParams[71]:addChild(localParams[72]);

	localParams[73] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[73]:ignoreContentAdaptWithSize(false);
	localParams[73]:setScale9Enabled(true);
	localParams[73]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000});
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setContentSize({width = 331.0, height = 37.0});
	localParams[73]:setPosition(176.31, -23.97);
	self.__children['equipInfoBg_img#infoUnder_img#prizeUnder_img'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'equipInfoBg_img#infoUnder_img#prizeUnder_img';
	localParams[50]:addChild(localParams[73]);

	localParams[74] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[74]:setAnchorPoint(0.45, 0.53);
	localParams[74]:setContentSize({width = 44.0, height = 44.0});
	localParams[74]:setPosition(301.54, 21.51);
	self.__children['equipInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'equipInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite';
	localParams[73]:addChild(localParams[74]);

	localParams[75] = ImageView:create('uires/public/sheet_font/fontImg0031.png', 1);
	localParams[75]:setAnchorPoint(0.50, 0.50);
	localParams[75]:setContentSize({width = 102.0, height = 28.0});
	localParams[75]:setPosition(60.5, 19.17);
	self.__children['equipInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'equipInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite';
	localParams[73]:addChild(localParams[75]);

	localParams[76] = Text:create();
	localParams[76]:setFontSize(20);
	localParams[76]:setString([[456781]]);
	localParams[76]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[76]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[76]:setAnchorPoint(1.00, 0.50);
	localParams[76]:setContentSize({width = 73.0, height = 22.0});
	localParams[76]:setPosition(273.24, 18.36);
	self.__children['equipInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'equipInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt';
	localParams[73]:addChild(localParams[76]);

	localParams[77] = Text:create();
	localParams[77]:setFontSize(20);
	localParams[77]:setString([[不可出售]]);
	localParams[77]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[77]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[77]:setAnchorPoint(1.00, 0.50);
	localParams[77]:setTextColor({r = 255, g = 0, b = 0});
	localParams[77]:setContentSize({width = 83.0, height = 22.0});
	localParams[77]:setPosition(273.0, 18.0);
	self.__children['equipInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'equipInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt';
	localParams[73]:addChild(localParams[77]);

	localParams[78] = Text:create();
	localParams[78]:setFontSize(20);
	localParams[78]:setString([[战士武器]]);
	localParams[78]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[78]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[78]:setAnchorPoint(0.00, 0.50);
	localParams[78]:setTextColor({r = 240, g = 200, b = 60});
	localParams[78]:setContentSize({width = 84.0, height = 22.0});
	localParams[78]:setPosition(171.77, 322.48);
	self.__children['equipInfoBg_img#infoUnder_img#category_txt'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'equipInfoBg_img#infoUnder_img#category_txt';
	localParams[50]:addChild(localParams[78]);

	localParams[79] = Text:create();
	localParams[79]:setFontSize(20);
	localParams[79]:setString([[评分：]]);
	localParams[79]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[79]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[79]:setAnchorPoint(0.00, 0.50);
	localParams[79]:setContentSize({width = 56.0, height = 22.0});
	localParams[79]:setPosition(168.95, 293.52);
	self.__children['equipInfoBg_img#infoUnder_img#score_txt'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'equipInfoBg_img#infoUnder_img#score_txt';
	localParams[50]:addChild(localParams[79]);

	localParams[80] = Text:create();
	localParams[80]:setFontSize(20);
	localParams[80]:setString([[999999]]);
	localParams[80]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[80]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[80]:setAnchorPoint(0.00, 0.50);
	localParams[80]:setTextColor({r = 0, g = 235, b = 255});
	localParams[80]:setContentSize({width = 75.0, height = 22.0});
	localParams[80]:setPosition(232.93, 292.82);
	self.__children['equipInfoBg_img#infoUnder_img#scoreValue_txt'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'equipInfoBg_img#infoUnder_img#scoreValue_txt';
	localParams[50]:addChild(localParams[80]);

	localParams[81] = Text:create();
	localParams[81]:setFontSize(20);
	localParams[81]:setString([[佩戴等级：]]);
	localParams[81]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[81]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[81]:setAnchorPoint(0.00, 0.50);
	localParams[81]:setContentSize({width = 96.0, height = 22.0});
	localParams[81]:setPosition(169.42, 263.83);
	self.__children['equipInfoBg_img#infoUnder_img#wearLevel_txt'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'equipInfoBg_img#infoUnder_img#wearLevel_txt';
	localParams[50]:addChild(localParams[81]);

	localParams[82] = Text:create();
	localParams[82]:setFontSize(20);
	localParams[82]:setString([[66]]);
	localParams[82]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[82]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[82]:setAnchorPoint(0.00, 0.50);
	localParams[82]:setTextColor({r = 255, g = 0, b = 0});
	localParams[82]:setContentSize({width = 28.0, height = 22.0});
	localParams[82]:setPosition(272.42, 263.83);
	self.__children['equipInfoBg_img#infoUnder_img#wearLevelValue_txt'] = localParams[82];
	localParams[82].__children = self.__children;
	localParams[82].__Name = 'equipInfoBg_img#infoUnder_img#wearLevelValue_txt';
	localParams[50]:addChild(localParams[82]);

	localParams[83] = Button:create();
	localParams[83]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[83]:setTitleFontSize(14);
	localParams[83]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[83]:setScale9Enabled(true);
	localParams[83]:setCapInsets({x = 29.000000, y = 29.000000, width = 125.000000, height = 10.000000});
	localParams[83]:setAnchorPoint(0.50, 0.50);
	localParams[83]:onClick(handler(self, self._onSell));
	localParams[83]:setTouchEnabled(true);
	localParams[83]:setContentSize({width = 183.0, height = 68.0});
	localParams[83]:setPosition(207.5, 54.58);
	self.__children['equipInfoBg_img#sell_btn'] = localParams[83];
	localParams[83].__children = self.__children;
	localParams[83].__Name = 'equipInfoBg_img#sell_btn';
	localParams[48]:addChild(localParams[83]);

	localParams[84] = Widget:create();
	localParams[84]:setAnchorPoint(0.00, 0.00);
	localParams[84]:setScaleX(0.90);
	localParams[84]:setScaleY(0.90);
	localParams[84]:setContentSize({width = 0.0, height = 0.0});
	localParams[84]:setPosition(-242.97, 44.79);
	self.__children['equipInfoBg_img#sell_btn#__SELECTED_SCALE'] = localParams[84];
	localParams[84].__children = self.__children;
	localParams[84].__Name = 'equipInfoBg_img#sell_btn#__SELECTED_SCALE';
	localParams[83]:addChild(localParams[84]);

	localParams[85] = ImageView:create('uires/public/sheet_font/fontImg0035.png', 1);
	localParams[85]:setAnchorPoint(0.50, 0.50);
	localParams[85]:setContentSize({width = 70.0, height = 29.0});
	localParams[85]:setPosition(91.5, 34.0);
	self.__children['equipInfoBg_img#sell_btn#sell_sprite'] = localParams[85];
	localParams[85].__children = self.__children;
	localParams[85].__Name = 'equipInfoBg_img#sell_btn#sell_sprite';
	localParams[83]:addChild(localParams[85]);

	localParams[86] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[86]:ignoreContentAdaptWithSize(false);
	localParams[86]:setScale9Enabled(true);
	localParams[86]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[86]:setAnchorPoint(0.50, 0.50);
	localParams[86]:setContentSize({width = 415.0, height = 565.0});
	localParams[86]:setPosition(211.31, 316.73);
	self.__children['runeInfoBg_img'] = localParams[86];
	localParams[86].__children = self.__children;
	localParams[86].__Name = 'runeInfoBg_img';
	self:addChild(localParams[86]);

	localParams[87] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[87]:ignoreContentAdaptWithSize(false);
	localParams[87]:setScale9Enabled(true);
	localParams[87]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[87]:setAnchorPoint(0.50, 0.50);
	localParams[87]:setContentSize({width = 374.0, height = 445.0});
	localParams[87]:setPosition(206.84, 317.84);
	self.__children['runeInfoBg_img#under_img'] = localParams[87];
	localParams[87].__children = self.__children;
	localParams[87].__Name = 'runeInfoBg_img#under_img';
	localParams[86]:addChild(localParams[87]);

	localParams[88] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[88]:ignoreContentAdaptWithSize(false);
	localParams[88]:setScale9Enabled(true);
	localParams[88]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[88]:setAnchorPoint(0.50, 0.50);
	localParams[88]:setContentSize({width = 350.0, height = 383.0});
	localParams[88]:setPosition(localParams[86]:getContentSize().width - 207.39, 338.1);
	self.__children['runeInfoBg_img#infoUnder_img'] = localParams[88];
	localParams[88].__children = self.__children;
	localParams[88].__Name = 'runeInfoBg_img#infoUnder_img';
	localParams[86]:addChild(localParams[88]);

	localParams[89] = ImageView:create('uires/public/sheet_bgframe/bgFrame0049.png', 1);
	localParams[89]:setAnchorPoint(-0.23, -2.84);
	localParams[89]:setContentSize({width = 217.0, height = 33.0});
	localParams[89]:setPosition(20.32, 265.87);
	self.__children['runeInfoBg_img#infoUnder_img#nameUnder_sprite'] = localParams[89];
	localParams[89].__children = self.__children;
	localParams[89].__Name = 'runeInfoBg_img#infoUnder_img#nameUnder_sprite';
	localParams[88]:addChild(localParams[89]);

	localParams[90] = Text:create();
	localParams[90]:setFontSize(20);
	localParams[90]:setString([[符文]]);
	localParams[90]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[90]:setTextHorizontalAlignment(1);
	localParams[90]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[90]:setAnchorPoint(0.50, 0.50);
	localParams[90]:setTextColor({r = 255, g = 240, b = 155});
	localParams[90]:setContentSize({width = 44.0, height = 22.0});
	localParams[90]:setPosition(108.5, 16.5);
	self.__children['runeInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt'] = localParams[90];
	localParams[90].__children = self.__children;
	localParams[90].__Name = 'runeInfoBg_img#infoUnder_img#nameUnder_sprite#name_txt';
	localParams[89]:addChild(localParams[90]);

	localParams[91] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[91]:ignoreContentAdaptWithSize(false);
	localParams[91]:setScale9Enabled(true);
	localParams[91]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[91]:setAnchorPoint(0.50, 0.50);
	localParams[91]:setContentSize({width = 334.0, height = 225.0});
	localParams[91]:setPosition(175.67, 120.38);
	self.__children['runeInfoBg_img#infoUnder_img#descUnder_img'] = localParams[91];
	localParams[91].__children = self.__children;
	localParams[91].__Name = 'runeInfoBg_img#infoUnder_img#descUnder_img';
	localParams[88]:addChild(localParams[91]);

	localParams[92] = Text:create();
	localParams[92]:setFontSize(20);
	localParams[92]:setString([[生命： +66.66%]]);
	localParams[92]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[92]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[92]:setAnchorPoint(0.00, 0.50);
	localParams[92]:setTextColor({r = 80, g = 255, b = 0});
	localParams[92]:setContentSize({width = 144.0, height = 22.0});
	localParams[92]:setPosition(19.0, 189.0);
	self.__children['runeInfoBg_img#infoUnder_img#descUnder_img#property_txt'] = localParams[92];
	localParams[92].__children = self.__children;
	localParams[92].__Name = 'runeInfoBg_img#infoUnder_img#descUnder_img#property_txt';
	localParams[91]:addChild(localParams[92]);

	localParams[93] = Text:create();
	localParams[93]:setFontSize(20);
	localParams[93]:setString([[打狗棒法共有绊、劈、缠、戳、挑、引、封、转八诀!"打狗棒法”威力巨大以至“天下无狗"!]]);
	localParams[93]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[93]:setTextAreaSize({width = 300, height = 150});
	localParams[93]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[93]:setAnchorPoint(0.50, 0.50);
	localParams[93]:setContentSize({width = 300.0, height = 150.0});
	localParams[93]:setPosition(167.1, 92.15);
	self.__children['runeInfoBg_img#infoUnder_img#descUnder_img#desc_txt'] = localParams[93];
	localParams[93].__children = self.__children;
	localParams[93].__Name = 'runeInfoBg_img#infoUnder_img#descUnder_img#desc_txt';
	localParams[91]:addChild(localParams[93]);

	localParams[94] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[94]:setAnchorPoint(0.50, 0.50);
	localParams[94]:setContentSize({width = 110.0, height = 110.0});
	localParams[94]:setPosition(105.48, 293.15);
	self.__children['runeInfoBg_img#infoUnder_img#equipUnder_sprite'] = localParams[94];
	localParams[94].__children = self.__children;
	localParams[94].__Name = 'runeInfoBg_img#infoUnder_img#equipUnder_sprite';
	localParams[88]:addChild(localParams[94]);

	localParams[95] = ImageView:create('uires/public/sheet_common/other0049.png', 1);
	localParams[95]:setAnchorPoint(0.50, 0.50);
	localParams[95]:setContentSize({width = 98.0, height = 98.0});
	localParams[95]:setPosition(54.61, 55.29);
	self.__children['runeInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite'] = localParams[95];
	localParams[95].__children = self.__children;
	localParams[95].__Name = 'runeInfoBg_img#infoUnder_img#equipUnder_sprite#equip_sprite';
	localParams[94]:addChild(localParams[95]);

	localParams[96] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[96]:ignoreContentAdaptWithSize(false);
	localParams[96]:setScale9Enabled(true);
	localParams[96]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000});
	localParams[96]:setAnchorPoint(0.50, 0.50);
	localParams[96]:setContentSize({width = 331.0, height = 37.0});
	localParams[96]:setPosition(176.31, -23.97);
	self.__children['runeInfoBg_img#infoUnder_img#prizeUnder_img'] = localParams[96];
	localParams[96].__children = self.__children;
	localParams[96].__Name = 'runeInfoBg_img#infoUnder_img#prizeUnder_img';
	localParams[88]:addChild(localParams[96]);

	localParams[97] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[97]:setAnchorPoint(0.45, 0.53);
	localParams[97]:setContentSize({width = 44.0, height = 44.0});
	localParams[97]:setPosition(301.54, 21.51);
	self.__children['runeInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite'] = localParams[97];
	localParams[97].__children = self.__children;
	localParams[97].__Name = 'runeInfoBg_img#infoUnder_img#prizeUnder_img#coin_sprite';
	localParams[96]:addChild(localParams[97]);

	localParams[98] = ImageView:create('uires/public/sheet_font/fontImg0031.png', 1);
	localParams[98]:setAnchorPoint(0.50, 0.50);
	localParams[98]:setContentSize({width = 102.0, height = 28.0});
	localParams[98]:setPosition(60.5, 19.17);
	self.__children['runeInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite'] = localParams[98];
	localParams[98].__children = self.__children;
	localParams[98].__Name = 'runeInfoBg_img#infoUnder_img#prizeUnder_img#priceFont_sprite';
	localParams[96]:addChild(localParams[98]);

	localParams[99] = Text:create();
	localParams[99]:setFontSize(24);
	localParams[99]:setString([[6456413]]);
	localParams[99]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[99]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[99]:setAnchorPoint(1.00, 0.50);
	localParams[99]:setContentSize({width = 107.0, height = 26.0});
	localParams[99]:setPosition(275.74, 18.36);
	self.__children['runeInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt'] = localParams[99];
	localParams[99].__children = self.__children;
	localParams[99].__Name = 'runeInfoBg_img#infoUnder_img#prizeUnder_img#amount_txt';
	localParams[96]:addChild(localParams[99]);

	localParams[100] = Text:create();
	localParams[100]:setFontSize(20);
	localParams[100]:setString([[不可出售]]);
	localParams[100]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[100]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[100]:setAnchorPoint(1.00, 0.50);
	localParams[100]:setTextColor({r = 255, g = 0, b = 0});
	localParams[100]:setContentSize({width = 83.0, height = 22.0});
	localParams[100]:setPosition(273.0, 19.0);
	self.__children['runeInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt'] = localParams[100];
	localParams[100].__children = self.__children;
	localParams[100].__Name = 'runeInfoBg_img#infoUnder_img#prizeUnder_img#unSell_txt';
	localParams[96]:addChild(localParams[100]);

	localParams[101] = Text:create();
	localParams[101]:setFontSize(20);
	localParams[101]:setString([[拥有：]]);
	localParams[101]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[101]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[101]:setAnchorPoint(0.00, 0.50);
	localParams[101]:setContentSize({width = 56.0, height = 22.0});
	localParams[101]:setPosition(168.0, 314.06);
	self.__children['runeInfoBg_img#infoUnder_img#have_txt'] = localParams[101];
	localParams[101].__children = self.__children;
	localParams[101].__Name = 'runeInfoBg_img#infoUnder_img#have_txt';
	localParams[88]:addChild(localParams[101]);

	localParams[102] = Text:create();
	localParams[102]:setFontSize(20);
	localParams[102]:setString([[999]]);
	localParams[102]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[102]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[102]:setAnchorPoint(0.00, 0.50);
	localParams[102]:setContentSize({width = 39.0, height = 22.0});
	localParams[102]:setPosition(231.0, 314.06);
	self.__children['runeInfoBg_img#infoUnder_img#count_txt'] = localParams[102];
	localParams[102].__children = self.__children;
	localParams[102].__Name = 'runeInfoBg_img#infoUnder_img#count_txt';
	localParams[88]:addChild(localParams[102]);

	localParams[103] = Text:create();
	localParams[103]:setFontSize(20);
	localParams[103]:setString([[件]]);
	localParams[103]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[103]:enableOutline({r = 50, g = 20, b = 0, a = 255}, 1.00);
	localParams[103]:setAnchorPoint(0.50, 0.50);
	localParams[103]:setContentSize({width = 24.0, height = 22.0});
	localParams[103]:setPosition(280.0, 314.06);
	self.__children['runeInfoBg_img#infoUnder_img#piece_txt'] = localParams[103];
	localParams[103].__children = self.__children;
	localParams[103].__Name = 'runeInfoBg_img#infoUnder_img#piece_txt';
	localParams[88]:addChild(localParams[103]);

	localParams[104] = Text:create();
	localParams[104]:setFontSize(20);
	localParams[104]:setString([[品质：]]);
	localParams[104]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[104]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[104]:setAnchorPoint(0.00, 0.50);
	localParams[104]:setContentSize({width = 56.0, height = 22.0});
	localParams[104]:setPosition(168.0, 275.76);
	self.__children['runeInfoBg_img#infoUnder_img#quality_txt'] = localParams[104];
	localParams[104].__children = self.__children;
	localParams[104].__Name = 'runeInfoBg_img#infoUnder_img#quality_txt';
	localParams[88]:addChild(localParams[104]);

	localParams[105] = Text:create();
	localParams[105]:setFontSize(20);
	localParams[105]:setString([[传说]]);
	localParams[105]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[105]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[105]:setAnchorPoint(0.50, 0.50);
	localParams[105]:setTextColor({r = 240, g = 0, b = 255});
	localParams[105]:setContentSize({width = 44.0, height = 22.0});
	localParams[105]:setPosition(252.0, 275.76);
	self.__children['runeInfoBg_img#infoUnder_img#worth_txt'] = localParams[105];
	localParams[105].__children = self.__children;
	localParams[105].__Name = 'runeInfoBg_img#infoUnder_img#worth_txt';
	localParams[88]:addChild(localParams[105]);

	localParams[106] = Button:create();
	localParams[106]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[106]:setTitleFontSize(14);
	localParams[106]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[106]:setScale9Enabled(true);
	localParams[106]:setCapInsets({x = 29.000000, y = 29.000000, width = 125.000000, height = 10.000000});
	localParams[106]:setAnchorPoint(0.50, 0.50);
	localParams[106]:onClick(handler(self, self._onCompose));
	localParams[106]:setTouchEnabled(true);
	localParams[106]:setContentSize({width = 183.0, height = 68.0});
	localParams[106]:setPosition(110.57, 54.61);
	self.__children['runeInfoBg_img#compose_btn'] = localParams[106];
	localParams[106].__children = self.__children;
	localParams[106].__Name = 'runeInfoBg_img#compose_btn';
	localParams[86]:addChild(localParams[106]);

	localParams[107] = Widget:create();
	localParams[107]:setAnchorPoint(0.00, 0.00);
	localParams[107]:setScaleX(0.90);
	localParams[107]:setScaleY(0.90);
	localParams[107]:setContentSize({width = 0.0, height = 0.0});
	localParams[107]:setPosition(-156.78, 44.76);
	self.__children['runeInfoBg_img#compose_btn#__SELECTED_SCALE'] = localParams[107];
	localParams[107].__children = self.__children;
	localParams[107].__Name = 'runeInfoBg_img#compose_btn#__SELECTED_SCALE';
	localParams[106]:addChild(localParams[107]);

	localParams[108] = ImageView:create('uires/public/sheet_font/fontImg0032.png', 1);
	localParams[108]:setAnchorPoint(0.50, 0.50);
	localParams[108]:setContentSize({width = 69.0, height = 30.0});
	localParams[108]:setPosition(91.5, 34.0);
	self.__children['runeInfoBg_img#compose_btn#compose_sprite'] = localParams[108];
	localParams[108].__children = self.__children;
	localParams[108].__Name = 'runeInfoBg_img#compose_btn#compose_sprite';
	localParams[106]:addChild(localParams[108]);

	localParams[109] = Button:create();
	localParams[109]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[109]:setTitleFontSize(14);
	localParams[109]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[109]:setScale9Enabled(true);
	localParams[109]:setCapInsets({x = 29.000000, y = 29.000000, width = 125.000000, height = 10.000000});
	localParams[109]:setAnchorPoint(0.50, 0.50);
	localParams[109]:onClick(handler(self, self._onSell));
	localParams[109]:setTouchEnabled(true);
	localParams[109]:setContentSize({width = 183.0, height = 68.0});
	localParams[109]:setPosition(302.17, 54.58);
	self.__children['runeInfoBg_img#sell_btn'] = localParams[109];
	localParams[109].__children = self.__children;
	localParams[109].__Name = 'runeInfoBg_img#sell_btn';
	localParams[86]:addChild(localParams[109]);

	localParams[110] = Widget:create();
	localParams[110]:setAnchorPoint(0.00, 0.00);
	localParams[110]:setScaleX(0.90);
	localParams[110]:setScaleY(0.90);
	localParams[110]:setContentSize({width = 0.0, height = 0.0});
	localParams[110]:setPosition(-370.49, 44.79);
	self.__children['runeInfoBg_img#sell_btn#__SELECTED_SCALE'] = localParams[110];
	localParams[110].__children = self.__children;
	localParams[110].__Name = 'runeInfoBg_img#sell_btn#__SELECTED_SCALE';
	localParams[109]:addChild(localParams[110]);

	localParams[111] = ImageView:create('uires/public/sheet_font/fontImg0035.png', 1);
	localParams[111]:setAnchorPoint(0.50, 0.50);
	localParams[111]:setContentSize({width = 70.0, height = 29.0});
	localParams[111]:setPosition(91.5, 34.0);
	self.__children['runeInfoBg_img#sell_btn#sell_sprite'] = localParams[111];
	localParams[111].__children = self.__children;
	localParams[111].__Name = 'runeInfoBg_img#sell_btn#sell_sprite';
	localParams[109]:addChild(localParams[111]);

	localParams[112] = ImageView:create('uires/public/sheet_bgframe/bgFrame0048.png', 1);
	localParams[112]:ignoreContentAdaptWithSize(false);
	localParams[112]:setScale9Enabled(true);
	localParams[112]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[112]:setAnchorPoint(0.50, 0.50);
	localParams[112]:setContentSize({width = 595.0, height = 570.0});
	localParams[112]:setPosition(WinSize.width - -506.00, WinSize.height/2 + (-6.00 * ccx.scaleY));
	self.__children['packageBg_img'] = localParams[112];
	localParams[112].__children = self.__children;
	localParams[112].__Name = 'packageBg_img';
	self:addChild(localParams[112]);

	localParams[113] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[113]:ignoreContentAdaptWithSize(false);
	localParams[113]:setScale9Enabled(true);
	localParams[113]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[113]:setAnchorPoint(0.50, 0.50);
	localParams[113]:setContentSize({width = 480.0, height = 500.0});
	localParams[113]:setPosition(272.28, 283.91);
	self.__children['packageBg_img#bagUnder_img'] = localParams[113];
	localParams[113].__children = self.__children;
	localParams[113].__Name = 'packageBg_img#bagUnder_img';
	localParams[112]:addChild(localParams[113]);

	localParams[114] = ScrollView:create();
	localParams[114]:setInnerContainerSize({width = 464.00, height = 490.00});
	localParams[114]:setDirection(1);
	localParams[114]:setBackGroundColorType(1);
	localParams[114]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[114]:setBackGroundColorOpacity(0);
	localParams[114]:setAnchorPoint(0.00, 0.00);
	localParams[114]:setTouchEnabled(true);
	localParams[114]:setContentSize({width = 464.0, height = 490.0});
	localParams[114]:setPosition(8.0, 5.0);
	self.__children['packageBg_img#bagUnder_img#equip_scrollView1'] = localParams[114];
	localParams[114].__children = self.__children;
	localParams[114].__Name = 'packageBg_img#bagUnder_img#equip_scrollView1';
	localParams[113]:addChild(localParams[114]);

	localParams[115] = ScrollView:create();
	localParams[115]:setInnerContainerSize({width = 464.00, height = 490.00});
	localParams[115]:setDirection(1);
	localParams[115]:setBackGroundColorType(1);
	localParams[115]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[115]:setBackGroundColorOpacity(0);
	localParams[115]:setAnchorPoint(0.00, 0.00);
	localParams[115]:setTouchEnabled(true);
	localParams[115]:setContentSize({width = 464.0, height = 490.0});
	localParams[115]:setPosition(8.0, 5.0);
	self.__children['packageBg_img#bagUnder_img#equip_scrollView2'] = localParams[115];
	localParams[115].__children = self.__children;
	localParams[115].__Name = 'packageBg_img#bagUnder_img#equip_scrollView2';
	localParams[113]:addChild(localParams[115]);

	localParams[116] = ScrollView:create();
	localParams[116]:setInnerContainerSize({width = 464.00, height = 490.00});
	localParams[116]:setDirection(1);
	localParams[116]:setBackGroundColorType(1);
	localParams[116]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[116]:setBackGroundColorOpacity(0);
	localParams[116]:setAnchorPoint(0.00, 0.00);
	localParams[116]:setTouchEnabled(true);
	localParams[116]:setContentSize({width = 464.0, height = 490.0});
	localParams[116]:setPosition(8.0, 5.0);
	self.__children['packageBg_img#bagUnder_img#equip_scrollView3'] = localParams[116];
	localParams[116].__children = self.__children;
	localParams[116].__Name = 'packageBg_img#bagUnder_img#equip_scrollView3';
	localParams[113]:addChild(localParams[116]);

	localParams[117] = ScrollView:create();
	localParams[117]:setInnerContainerSize({width = 464.00, height = 490.00});
	localParams[117]:setDirection(1);
	localParams[117]:setBackGroundColorType(1);
	localParams[117]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[117]:setBackGroundColorOpacity(0);
	localParams[117]:setAnchorPoint(0.00, 0.00);
	localParams[117]:setTouchEnabled(true);
	localParams[117]:setContentSize({width = 464.0, height = 490.0});
	localParams[117]:setPosition(8.0, 5.0);
	self.__children['packageBg_img#bagUnder_img#equip_scrollView4'] = localParams[117];
	localParams[117].__children = self.__children;
	localParams[117].__Name = 'packageBg_img#bagUnder_img#equip_scrollView4';
	localParams[113]:addChild(localParams[117]);

	localParams[118] = ScrollView:create();
	localParams[118]:setInnerContainerSize({width = 464.00, height = 490.00});
	localParams[118]:setDirection(1);
	localParams[118]:setClippingEnabled(true);
	localParams[118]:setBackGroundColorType(1);
	localParams[118]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[118]:setBackGroundColorOpacity(0);
	localParams[118]:setAnchorPoint(0.00, 0.00);
	localParams[118]:setTouchEnabled(true);
	localParams[118]:setContentSize({width = 464.0, height = 490.0});
	localParams[118]:setPosition(8.0, 5.0);
	self.__children['packageBg_img#bagUnder_img#equip_scrollView5'] = localParams[118];
	localParams[118].__children = self.__children;
	localParams[118].__Name = 'packageBg_img#bagUnder_img#equip_scrollView5';
	localParams[113]:addChild(localParams[118]);

	localParams[119] = ImageView:create('uires/public/sheet_bgframe/bgFrame0031.png', 1);
	localParams[119]:setAnchorPoint(0.50, 0.50);
	localParams[119]:setContentSize({width = 336.0, height = 62.0});
	localParams[119]:setPosition(300.84, 562.24);
	self.__children['packageBg_img#titleUnder_sprite'] = localParams[119];
	localParams[119].__children = self.__children;
	localParams[119].__Name = 'packageBg_img#titleUnder_sprite';
	localParams[112]:addChild(localParams[119]);

	localParams[120] = ImageView:create('uires/public/sheet_font/fontImg0021.png', 1);
	localParams[120]:setAnchorPoint(0.77, -2.68);
	localParams[120]:setContentSize({width = 117.0, height = 53.0});
	localParams[120]:setPosition(200.5, -137.3);
	self.__children['packageBg_img#titleUnder_sprite#title_sprite'] = localParams[120];
	localParams[120].__children = self.__children;
	localParams[120].__Name = 'packageBg_img#titleUnder_sprite#title_sprite';
	localParams[119]:addChild(localParams[120]);

	localParams[121] = Button:create();
	localParams[121]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[121]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[121]:setTitleFontSize(14);
	localParams[121]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[121]:setAnchorPoint(0.50, 0.50);
	localParams[121]:onClick(handler(self, self._onTabMenu));
	localParams[121]:setTouchEnabled(true);
	localParams[121]:setContentSize({width = 77.0, height = 78.0});
	localParams[121]:setPosition(548.82, 448.61);
	self.__children['packageBg_img#consumables_btn'] = localParams[121];
	localParams[121].__children = self.__children;
	localParams[121].__Name = 'packageBg_img#consumables_btn';
	localParams[112]:addChild(localParams[121]);

	localParams[122] = ImageView:create('uires/public/sheet_font/fontImg0027.png', 1);
	localParams[122]:setAnchorPoint(0.50, 0.50);
	localParams[122]:setContentSize({width = 63.0, height = 24.0});
	localParams[122]:setPosition(38.5, 39.0);
	self.__children['packageBg_img#consumables_btn#consumables_sprite'] = localParams[122];
	localParams[122].__children = self.__children;
	localParams[122].__Name = 'packageBg_img#consumables_btn#consumables_sprite';
	localParams[121]:addChild(localParams[122]);

	localParams[123] = Button:create();
	localParams[123]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[123]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[123]:setTitleFontSize(14);
	localParams[123]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[123]:setAnchorPoint(0.50, 0.50);
	localParams[123]:onClick(handler(self, self._onTabMenu));
	localParams[123]:setTouchEnabled(true);
	localParams[123]:setContentSize({width = 77.0, height = 78.0});
	localParams[123]:setPosition(546.96, 361.63);
	self.__children['packageBg_img#equip_btn'] = localParams[123];
	localParams[123].__children = self.__children;
	localParams[123].__Name = 'packageBg_img#equip_btn';
	localParams[112]:addChild(localParams[123]);

	localParams[124] = ImageView:create('uires/public/sheet_font/fontImg0028.png', 1);
	localParams[124]:setAnchorPoint(0.50, 0.50);
	localParams[124]:setContentSize({width = 43.0, height = 24.0});
	localParams[124]:setPosition(38.5, 39.0);
	self.__children['packageBg_img#equip_btn#equip_sprite'] = localParams[124];
	localParams[124].__children = self.__children;
	localParams[124].__Name = 'packageBg_img#equip_btn#equip_sprite';
	localParams[123]:addChild(localParams[124]);

	localParams[125] = Button:create();
	localParams[125]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[125]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[125]:setTitleFontSize(14);
	localParams[125]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[125]:setAnchorPoint(0.50, 0.50);
	localParams[125]:onClick(handler(self, self._onTabMenu));
	localParams[125]:setTouchEnabled(true);
	localParams[125]:setContentSize({width = 77.0, height = 78.0});
	localParams[125]:setPosition(547.65, 273.65);
	self.__children['packageBg_img#rune_btn'] = localParams[125];
	localParams[125].__children = self.__children;
	localParams[125].__Name = 'packageBg_img#rune_btn';
	localParams[112]:addChild(localParams[125]);

	localParams[126] = ImageView:create('uires/public/sheet_font/fontImg0073.png', 1);
	localParams[126]:setAnchorPoint(0.50, 0.50);
	localParams[126]:setContentSize({width = 43.0, height = 24.0});
	localParams[126]:setPosition(32.79, 38.79);
	self.__children['packageBg_img#rune_btn#rune_sprite'] = localParams[126];
	localParams[126].__children = self.__children;
	localParams[126].__Name = 'packageBg_img#rune_btn#rune_sprite';
	localParams[125]:addChild(localParams[126]);

	localParams[127] = Button:create();
	localParams[127]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[127]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[127]:setTitleFontSize(14);
	localParams[127]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[127]:setAnchorPoint(0.50, 0.50);
	localParams[127]:onClick(handler(self, self._onTabMenu));
	localParams[127]:setTouchEnabled(true);
	localParams[127]:setContentSize({width = 77.0, height = 78.0});
	localParams[127]:setPosition(547.65, 185.67);
	self.__children['packageBg_img#skillBook_btn'] = localParams[127];
	localParams[127].__children = self.__children;
	localParams[127].__Name = 'packageBg_img#skillBook_btn';
	localParams[112]:addChild(localParams[127]);

	localParams[128] = ImageView:create('uires/public/sheet_font/fontImg0025.png', 1);
	localParams[128]:setAnchorPoint(0.50, 0.50);
	localParams[128]:setContentSize({width = 63.0, height = 24.0});
	localParams[128]:setPosition(34.69, 38.97);
	self.__children['packageBg_img#skillBook_btn#skillBook_sprite'] = localParams[128];
	localParams[128].__children = self.__children;
	localParams[128].__Name = 'packageBg_img#skillBook_btn#skillBook_sprite';
	localParams[127]:addChild(localParams[128]);

	localParams[129] = Button:create();
	localParams[129]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[129]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[129]:setTitleFontSize(14);
	localParams[129]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[129]:setAnchorPoint(0.50, 0.50);
	localParams[129]:onClick(handler(self, self._onTabMenu));
	localParams[129]:setTouchEnabled(true);
	localParams[129]:setContentSize({width = 77.0, height = 78.0});
	localParams[129]:setPosition(548.65, 97.67);
	self.__children['packageBg_img#other_btn'] = localParams[129];
	localParams[129].__children = self.__children;
	localParams[129].__Name = 'packageBg_img#other_btn';
	localParams[112]:addChild(localParams[129]);

	localParams[130] = ImageView:create('uires/public/sheet_font/fontImg0026.png', 1);
	localParams[130]:setAnchorPoint(0.50, 0.50);
	localParams[130]:setContentSize({width = 43.0, height = 24.0});
	localParams[130]:setPosition(34.69, 38.97);
	self.__children['packageBg_img#other_btn#other_sprite'] = localParams[130];
	localParams[130].__children = self.__children;
	localParams[130].__Name = 'packageBg_img#other_btn#other_sprite';
	localParams[129]:addChild(localParams[130]);

	localParams[131] = Button:create();
	localParams[131]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[131]:setTitleFontSize(14);
	localParams[131]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[131]:setAnchorPoint(0.50, 0.50);
	localParams[131]:onClick(handler(self, self._onClose));
	localParams[131]:setTouchEnabled(true);
	localParams[131]:setContentSize({width = 72.0, height = 72.0});
	localParams[131]:setPosition(565.0, 542.0);
	self.__children['packageBg_img#close_btn'] = localParams[131];
	localParams[131].__children = self.__children;
	localParams[131].__Name = 'packageBg_img#close_btn';
	localParams[112]:addChild(localParams[131]);

	localParams[132] = Widget:create();
	localParams[132]:setAnchorPoint(0.00, 0.00);
	localParams[132]:setScaleX(0.90);
	localParams[132]:setScaleY(0.90);
	localParams[132]:setContentSize({width = 0.0, height = 0.0});
	localParams[132]:setPosition(-1115.14, -450.12);
	self.__children['packageBg_img#close_btn#__SELECTED_SCALE'] = localParams[132];
	localParams[132].__children = self.__children;
	localParams[132].__Name = 'packageBg_img#close_btn#__SELECTED_SCALE';
	localParams[131]:addChild(localParams[132]);

end
function BackpackLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function BackpackLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function BackpackLayer:_onTabMenu(sender)
    if self._clickDelegate and self._clickDelegate.onTabMenu then
        return self._clickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function BackpackLayer:_onClose(sender)
    if self._clickDelegate and self._clickDelegate.onClose then
        return self._clickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


function BackpackLayer:_onCompose(sender)
    if self._clickDelegate and self._clickDelegate.onCompose then
        return self._clickDelegate:onCompose(sender);
    end
    if self.onCompose then
        return self:onCompose(sender);
    end
end


function BackpackLayer:_onSell(sender)
    if self._clickDelegate and self._clickDelegate.onSell then
        return self._clickDelegate:onSell(sender);
    end
    if self.onSell then
        return self:onSell(sender);
    end
end


function BackpackLayer:_onUse(sender)
    if self._clickDelegate and self._clickDelegate.onUse then
        return self._clickDelegate:onUse(sender);
    end
    if self.onUse then
        return self:onUse(sender);
    end
end


return BackpackLayer;