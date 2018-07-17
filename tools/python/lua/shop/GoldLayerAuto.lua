-- 
-- Author: generation auto
-- Brief：GoldLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local GoldLayer = class('GoldLayer', gamecore.ui.BaseWidget);

function GoldLayer:create(...) 
    local instance = GoldLayer.new(...);
    return instance;
end

function GoldLayer:ctor(...) 
    if GoldLayer.super and GoldLayer.super.ctor then
        GoldLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(false);
end

function GoldLayer:initView()
    self.__LAYER_NAME = 'shop.GoldLayer';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0117.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 155.000000, height = 215.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onChange));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 185.0, height = 395.0});
	localParams[1]:setPosition(WinSize.width/2 + (-284.47 * ccx.scaleX), WinSize.height - 332.50);
	self.__children['item_btn1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'item_btn1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/bg_img/bgImg0018.png', 0);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 159.0, height = 281.0});
	localParams[2]:setPosition(92.5, 197.5);
	self.__children['item_btn1#under_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'item_btn1#under_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create(nil, 0);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 46.0, height = 46.0});
	localParams[3]:setPosition(79.5, 168.6);
	self.__children['item_btn1#under_sprite#icon_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'item_btn1#under_sprite#icon_sprite';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = RichText:create();
	localParams[4]:setDefaultFontSize(18);
	localParams[4]:setString([[]]);
	localParams[4]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 26, g = 26, b = 26});
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(79.5, 56.2);
	self.__children['item_btn1#under_sprite#times_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'item_btn1#under_sprite#times_txt';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(24);
	localParams[5]:setString([[]]);
	localParams[5]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(79.5, 89.92);
	self.__children['item_btn1#under_sprite#amount_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'item_btn1#under_sprite#amount_txt';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0172.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 193.0, height = 85.0});
	localParams[6]:setPosition(92.5, 353.96);
	self.__children['item_btn1#top_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'item_btn1#top_sprite';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[]]);
	localParams[7]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 255, g = 255, b = 0});
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(96.5, 55.25);
	self.__children['item_btn1#top_sprite#font_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'item_btn1#top_sprite#font_txt';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0115.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 11.000000, y = 15.000000,width = 14.000000, height = 4.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 160.0, height = 32.0});
	localParams[8]:setPosition(92.5, 32.47);
	self.__children['item_btn1#priceUnder_img'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'item_btn1#priceUnder_img';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 44.0, height = 44.0});
	localParams[9]:setPosition(19.2, 16.0);
	self.__children['item_btn1#priceUnder_img#gem_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'item_btn1#priceUnder_img#gem_sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[已售罄]]);
	localParams[10]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setTextColor({r = 155, g = 125, b = 100});
	localParams[10]:setContentSize({width = 64.0, height = 22.0});
	localParams[10]:setPosition(80.0, 16.0);
	self.__children['item_btn1#priceUnder_img#price_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'item_btn1#priceUnder_img#price_txt';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(24);
	localParams[11]:setString([[]]);
	localParams[11]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(96.0, 16.0);
	self.__children['item_btn1#priceUnder_img#amount_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'item_btn1#priceUnder_img#amount_txt';
	localParams[8]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(24);
	localParams[12]:setString([[]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setTextColor({r = 255, g = 140, b = 0});
	localParams[12]:setContentSize({width = 0.0, height = 0.0});
	localParams[12]:setPosition(80.0, 16.0);
	self.__children['item_btn1#priceUnder_img#rmb'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'item_btn1#priceUnder_img#rmb';
	localParams[8]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0117.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 15.000000, y = 11.000000, width = 155.000000, height = 215.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._onChange));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 185.0, height = 395.0});
	localParams[13]:setPosition(WinSize.width/2 + (-77.00 * ccx.scaleX), WinSize.height - 332.50);
	self.__children['item_btn2'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'item_btn2';
	self:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/bg_img/bgImg0018.png', 0);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 159.0, height = 281.0});
	localParams[14]:setPosition(92.5, 197.5);
	self.__children['item_btn2#under_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'item_btn2#under_sprite';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create(nil, 0);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 46.0, height = 46.0});
	localParams[15]:setPosition(79.5, 168.6);
	self.__children['item_btn2#under_sprite#icon_sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'item_btn2#under_sprite#icon_sprite';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = RichText:create();
	localParams[16]:setDefaultFontSize(18);
	localParams[16]:setString([[]]);
	localParams[16]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 26, g = 26, b = 26});
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(79.5, 56.2);
	self.__children['item_btn2#under_sprite#times_txt'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'item_btn2#under_sprite#times_txt';
	localParams[14]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(24);
	localParams[17]:setString([[]]);
	localParams[17]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[17]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 0.0, height = 0.0});
	localParams[17]:setPosition(79.5, 89.92);
	self.__children['item_btn2#under_sprite#amount_txt'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'item_btn2#under_sprite#amount_txt';
	localParams[14]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_other/other0172.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 193.0, height = 85.0});
	localParams[18]:setPosition(92.5, 353.96);
	self.__children['item_btn2#top_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'item_btn2#top_sprite';
	localParams[13]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(20);
	localParams[19]:setString([[]]);
	localParams[19]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[19]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setTextColor({r = 255, g = 255, b = 0});
	localParams[19]:setContentSize({width = 0.0, height = 0.0});
	localParams[19]:setPosition(96.5, 55.25);
	self.__children['item_btn2#top_sprite#font_txt'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'item_btn2#top_sprite#font_txt';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_bgframe/bgFrame0115.png', 1);
	localParams[20]:ignoreContentAdaptWithSize(false);
	localParams[20]:setScale9Enabled(true);
	localParams[20]:setCapInsets({x = 11.000000, y = 15.000000,width = 14.000000, height = 4.000000});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 160.0, height = 32.0});
	localParams[20]:setPosition(92.5, 32.47);
	self.__children['item_btn2#priceUnder_img'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'item_btn2#priceUnder_img';
	localParams[13]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 44.0, height = 44.0});
	localParams[21]:setPosition(19.2, 16.0);
	self.__children['item_btn2#priceUnder_img#gem_sprite'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'item_btn2#priceUnder_img#gem_sprite';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = RichText:create();
	localParams[22]:setDefaultFontSize(20);
	localParams[22]:setString([[已售罄]]);
	localParams[22]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[22]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setTextColor({r = 155, g = 125, b = 100});
	localParams[22]:setContentSize({width = 64.0, height = 22.0});
	localParams[22]:setPosition(80.0, 16.0);
	self.__children['item_btn2#priceUnder_img#price_txt'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'item_btn2#priceUnder_img#price_txt';
	localParams[20]:addChild(localParams[22]);

	localParams[23] = Text:create();
	localParams[23]:setFontSize(24);
	localParams[23]:setString([[]]);
	localParams[23]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[23]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 0.0, height = 0.0});
	localParams[23]:setPosition(96.0, 16.0);
	self.__children['item_btn2#priceUnder_img#amount_txt'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'item_btn2#priceUnder_img#amount_txt';
	localParams[20]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(24);
	localParams[24]:setString([[]]);
	localParams[24]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setTextColor({r = 255, g = 140, b = 0});
	localParams[24]:setVisible(false);
	localParams[24]:setContentSize({width = 0.0, height = 0.0});
	localParams[24]:setPosition(80.0, 16.0);
	self.__children['item_btn2#priceUnder_img#rmb'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'item_btn2#priceUnder_img#rmb';
	localParams[20]:addChild(localParams[24]);

	localParams[25] = Button:create();
	localParams[25]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0117.png', 1);
	localParams[25]:setTitleFontSize(14);
	localParams[25]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[25]:setScale9Enabled(true);
	localParams[25]:setCapInsets({x = 15.000000, y = 11.000000, width = 155.000000, height = 215.000000});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:onClick(handler(self, self._onChange));
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 185.0, height = 395.0});
	localParams[25]:setPosition(WinSize.width/2 + (130.46 * ccx.scaleX), WinSize.height - 332.50);
	self.__children['item_btn3'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'item_btn3';
	self:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/bg_img/bgImg0018.png', 0);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 159.0, height = 281.0});
	localParams[26]:setPosition(92.5, 197.5);
	self.__children['item_btn3#under_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'item_btn3#under_sprite';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create(nil, 0);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 46.0, height = 46.0});
	localParams[27]:setPosition(79.5, 168.6);
	self.__children['item_btn3#under_sprite#icon_sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'item_btn3#under_sprite#icon_sprite';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = RichText:create();
	localParams[28]:setDefaultFontSize(18);
	localParams[28]:setString([[]]);
	localParams[28]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setTextColor({r = 26, g = 26, b = 26});
	localParams[28]:setContentSize({width = 0.0, height = 0.0});
	localParams[28]:setPosition(79.5, 56.2);
	self.__children['item_btn3#under_sprite#times_txt'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'item_btn3#under_sprite#times_txt';
	localParams[26]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(24);
	localParams[29]:setString([[]]);
	localParams[29]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[29]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 0.0, height = 0.0});
	localParams[29]:setPosition(79.5, 89.92);
	self.__children['item_btn3#under_sprite#amount_txt'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'item_btn3#under_sprite#amount_txt';
	localParams[26]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0172.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 193.0, height = 85.0});
	localParams[30]:setPosition(92.5, 353.96);
	self.__children['item_btn3#top_sprite'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'item_btn3#top_sprite';
	localParams[25]:addChild(localParams[30]);

	localParams[31] = Text:create();
	localParams[31]:setFontSize(20);
	localParams[31]:setString([[]]);
	localParams[31]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[31]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setTextColor({r = 255, g = 255, b = 0});
	localParams[31]:setContentSize({width = 0.0, height = 0.0});
	localParams[31]:setPosition(96.5, 55.25);
	self.__children['item_btn3#top_sprite#font_txt'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'item_btn3#top_sprite#font_txt';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_bgframe/bgFrame0115.png', 1);
	localParams[32]:ignoreContentAdaptWithSize(false);
	localParams[32]:setScale9Enabled(true);
	localParams[32]:setCapInsets({x = 11.000000, y = 15.000000,width = 14.000000, height = 4.000000});
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 160.0, height = 32.0});
	localParams[32]:setPosition(92.5, 32.47);
	self.__children['item_btn3#priceUnder_img'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'item_btn3#priceUnder_img';
	localParams[25]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 44.0, height = 44.0});
	localParams[33]:setPosition(19.2, 16.0);
	self.__children['item_btn3#priceUnder_img#gem_sprite'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'item_btn3#priceUnder_img#gem_sprite';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = RichText:create();
	localParams[34]:setDefaultFontSize(20);
	localParams[34]:setString([[已售罄]]);
	localParams[34]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[34]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setTextColor({r = 155, g = 125, b = 100});
	localParams[34]:setContentSize({width = 64.0, height = 22.0});
	localParams[34]:setPosition(80.0, 16.0);
	self.__children['item_btn3#priceUnder_img#price_txt'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'item_btn3#priceUnder_img#price_txt';
	localParams[32]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(24);
	localParams[35]:setString([[]]);
	localParams[35]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[35]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 0.0, height = 0.0});
	localParams[35]:setPosition(96.0, 16.0);
	self.__children['item_btn3#priceUnder_img#amount_txt'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'item_btn3#priceUnder_img#amount_txt';
	localParams[32]:addChild(localParams[35]);

	localParams[36] = Text:create();
	localParams[36]:setFontSize(24);
	localParams[36]:setString([[]]);
	localParams[36]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[36]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setTextColor({r = 255, g = 140, b = 0});
	localParams[36]:setVisible(false);
	localParams[36]:setContentSize({width = 0.0, height = 0.0});
	localParams[36]:setPosition(80.0, 16.0);
	self.__children['item_btn3#priceUnder_img#rmb'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'item_btn3#priceUnder_img#rmb';
	localParams[32]:addChild(localParams[36]);

end
function GoldLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0018.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function GoldLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function GoldLayer:_onChange(sender)
    if self._clickDelegate and self._clickDelegate.onChange then
        return self._clickDelegate:onChange(sender);
    end
    if self.onChange then
        return self:onChange(sender);
    end
end


return GoldLayer;