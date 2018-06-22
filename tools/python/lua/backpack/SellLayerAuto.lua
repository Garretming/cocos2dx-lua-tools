-- 
-- Author: generation auto
-- Brief：SellLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SellLayer = class('SellLayer', gamecore.ui.BaseWidget);

function SellLayer:create(...) 
    local instance = SellLayer.new(...);
    return instance;
end

function SellLayer:ctor(...) 
    if SellLayer.super and SellLayer.super.ctor then
        SellLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function SellLayer:initView()
    self.__LAYER_NAME = 'backpack.SellLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 415.0, height = 565.0});
	localParams[1]:setPosition(WinSize.width/2 + (0.92 * ccx.scaleX), WinSize.height/2 + (-2.24 * ccx.scaleY));
	self.__children['sellBg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'sellBg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 30.000000, y = 16.000000,width = 74.000000, height = 74.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 370.0, height = 445.0});
	localParams[2]:setPosition(207.94, 319.76);
	self.__children['sellBg_img#sellUnder_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'sellBg_img#sellUnder_img';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 350.0, height = 365.0});
	localParams[3]:setPosition(185.16, 252.42);
	self.__children['sellBg_img#sellUnder_img#interUnder_img'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'sellBg_img#sellUnder_img#interUnder_img';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 332.0, height = 37.0});
	localParams[4]:setPosition(176.96, 164.87);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#sellUnder_img'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'sellBg_img#sellUnder_img#interUnder_img#sellUnder_img';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0031.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 102.0, height = 28.0});
	localParams[5]:setPosition(65.35, 18.52);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#sellUnder_img#unitPriceFont_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'sellBg_img#sellUnder_img#interUnder_img#sellUnder_img#unitPriceFont_sprite';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 44.0, height = 44.0});
	localParams[6]:setPosition(303.61, 20.69);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#sellUnder_img#coin_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'sellBg_img#sellUnder_img#interUnder_img#sellUnder_img#coin_sprite';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[9999999]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(1.00, 0.50);
	localParams[7]:setContentSize({width = 87.0, height = 22.0});
	localParams[7]:setPosition(274.01, 19.0);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#sellUnder_img#unitPrice_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'sellBg_img#sellUnder_img#interUnder_img#sellUnder_img#unitPrice_txt';
	localParams[4]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 332.0, height = 37.0});
	localParams[8]:setPosition(176.96, 99.82);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#amountUnder_img'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'sellBg_img#sellUnder_img#interUnder_img#amountUnder_img';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0029.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 101.0, height = 28.0});
	localParams[9]:setPosition(65.35, 18.52);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#amountUnder_img#sellCount_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'sellBg_img#sellUnder_img#interUnder_img#amountUnder_img#sellCount_sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[1]]);
	localParams[10]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[10]:setAnchorPoint(1.00, 0.50);
	localParams[10]:setContentSize({width = 13.0, height = 22.0});
	localParams[10]:setPosition(312.08, 18.5);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#amountUnder_img#sellCount_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'sellBg_img#sellUnder_img#interUnder_img#amountUnder_img#sellCount_txt';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Slider:create();
	localParams[11]:loadBarTexture('uires/public/sheet_other/other0222.png', 1);
	localParams[11]:loadProgressBarTexture('uires/public/sheet_other/other0223.png', 1);
	localParams[11]:loadSlidBallTextureNormal('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[11]:loadSlidBallTexturePressed('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[11]:loadSlidBallTextureDisabled('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 180.0, height = 11.0});
	localParams[11]:setPosition(85.02, 40.15);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#line_slider'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'sellBg_img#sellUnder_img#interUnder_img#line_slider';
	localParams[3]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_btn/btn0115.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 18.000000, height = 24.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._onReduce));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 48.0, height = 46.0});
	localParams[12]:setPosition(35.0, 40.15);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#reduce_btn'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'sellBg_img#sellUnder_img#interUnder_img#reduce_btn';
	localParams[3]:addChild(localParams[12]);

	localParams[13] = Widget:create();
	localParams[13]:setAnchorPoint(0.00, 0.00);
	localParams[13]:setScaleX(0.90);
	localParams[13]:setScaleY(0.90);
	localParams[13]:setContentSize({width = 0.0, height = 0.0});
	localParams[13]:setPosition(29.09, -29.09);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#reduce_btn#__SELECTED_SCALE'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'sellBg_img#sellUnder_img#interUnder_img#reduce_btn#__SELECTED_SCALE';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:loadTextureNormal('uires/public/sheet_btn/btn0116.png', 1);
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = 15.000000, y = 11.000000, width = 18.000000, height = 24.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:onClick(handler(self, self._onPlus));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 48.0, height = 46.0});
	localParams[14]:setPosition(315.0, 40.15);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#plus_btn'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'sellBg_img#sellUnder_img#interUnder_img#plus_btn';
	localParams[3]:addChild(localParams[14]);

	localParams[15] = Widget:create();
	localParams[15]:setAnchorPoint(0.00, 0.00);
	localParams[15]:setScaleX(0.90);
	localParams[15]:setScaleY(0.90);
	localParams[15]:setContentSize({width = 0.0, height = 0.0});
	localParams[15]:setPosition(29.09, -29.09);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#plus_btn#__SELECTED_SCALE'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'sellBg_img#sellUnder_img#interUnder_img#plus_btn#__SELECTED_SCALE';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_bgframe/bgFrame0049.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 217.0, height = 33.0});
	localParams[16]:setPosition(179.1, 357.01);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#titleUnder_sprite'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'sellBg_img#sellUnder_img#interUnder_img#titleUnder_sprite';
	localParams[3]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[倚天贱]]);
	localParams[17]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:setTextHorizontalAlignment(1);
	localParams[17]:setTextVerticalAlignment(1);
	localParams[17]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setTextColor({r = 255, g = 240, b = 155});
	localParams[17]:setContentSize({width = 64.0, height = 22.0});
	localParams[17]:setPosition(108.5, 16.5);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#titleUnder_sprite#equipName_txt'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'sellBg_img#sellUnder_img#interUnder_img#titleUnder_sprite#equipName_txt';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[拥有：]]);
	localParams[18]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[18]:setAnchorPoint(0.00, 0.50);
	localParams[18]:setContentSize({width = 56.0, height = 22.0});
	localParams[18]:setPosition(171.21, 298.33);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#have_txt'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'sellBg_img#sellUnder_img#interUnder_img#have_txt';
	localParams[3]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(20);
	localParams[19]:setString([[件]]);
	localParams[19]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[19]:enableOutline({r = 50, g = 20, b = 0, a = 255}, 1.00);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 24.0, height = 22.0});
	localParams[19]:setPosition(280.0, 299.3);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#piece_txt'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'sellBg_img#sellUnder_img#interUnder_img#piece_txt';
	localParams[3]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[999]]);
	localParams[20]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[20]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[20]:setAnchorPoint(0.00, 0.50);
	localParams[20]:setContentSize({width = 39.0, height = 22.0});
	localParams[20]:setPosition(231.0, 299.3);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#count_txt'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'sellBg_img#sellUnder_img#interUnder_img#count_txt';
	localParams[3]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[品质：]]);
	localParams[21]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[21]:setAnchorPoint(0.00, 0.50);
	localParams[21]:setContentSize({width = 56.0, height = 22.0});
	localParams[21]:setPosition(170.73, 259.02);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#quality_txt'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'sellBg_img#sellUnder_img#interUnder_img#quality_txt';
	localParams[3]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(20);
	localParams[22]:setString([[传说]]);
	localParams[22]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[22]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setTextColor({r = 240, g = 0, b = 255});
	localParams[22]:setContentSize({width = 44.0, height = 22.0});
	localParams[22]:setPosition(254.21, 258.32);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#worth_txt'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'sellBg_img#sellUnder_img#interUnder_img#worth_txt';
	localParams[3]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 110.0, height = 110.0});
	localParams[23]:setPosition(108.57, 276.0);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#equipUnder_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'sellBg_img#sellUnder_img#interUnder_img#equipUnder_sprite';
	localParams[3]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_common/other0049.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 98.0, height = 98.0});
	localParams[24]:setPosition(55.0, 55.0);
	self.__children['sellBg_img#sellUnder_img#interUnder_img#equipUnder_sprite#equip_sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'sellBg_img#sellUnder_img#interUnder_img#equipUnder_sprite#equip_sprite';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[25]:ignoreContentAdaptWithSize(false);
	localParams[25]:setScale9Enabled(true);
	localParams[25]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 332.0, height = 37.0});
	localParams[25]:setPosition(186.56, 38.09);
	self.__children['sellBg_img#sellUnder_img#getUnder_img'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'sellBg_img#sellUnder_img#getUnder_img';
	localParams[2]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_common/fontImg0030.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 100.0, height = 28.0});
	localParams[26]:setPosition(65.35, 18.52);
	self.__children['sellBg_img#sellUnder_img#getUnder_img#getCoinFont_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'sellBg_img#sellUnder_img#getUnder_img#getCoinFont_sprite';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 44.0, height = 44.0});
	localParams[27]:setPosition(303.61, 20.69);
	self.__children['sellBg_img#sellUnder_img#getUnder_img#coin_sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'sellBg_img#sellUnder_img#getUnder_img#coin_sprite';
	localParams[25]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[110]]);
	localParams[28]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[28]:setAnchorPoint(1.00, 0.50);
	localParams[28]:setContentSize({width = 40.0, height = 22.0});
	localParams[28]:setPosition(271.01, 19.0);
	self.__children['sellBg_img#sellUnder_img#getUnder_img#getMoney_txt'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'sellBg_img#sellUnder_img#getUnder_img#getMoney_txt';
	localParams[25]:addChild(localParams[28]);

	localParams[29] = Button:create();
	localParams[29]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[29]:setTitleFontSize(14);
	localParams[29]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[29]:setScale9Enabled(true);
	localParams[29]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:onClick(handler(self, self._onCancel));
	localParams[29]:setTouchEnabled(true);
	localParams[29]:setContentSize({width = 183.0, height = 68.0});
	localParams[29]:setPosition(114.48, 56.58);
	self.__children['sellBg_img#cancel_btn'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'sellBg_img#cancel_btn';
	localParams[1]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_font/fontImg0033.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 70.0, height = 30.0});
	localParams[30]:setPosition(93.15, 34.13);
	self.__children['sellBg_img#cancel_btn#cancelFont_sprite'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'sellBg_img#cancel_btn#cancelFont_sprite';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = Widget:create();
	localParams[31]:setAnchorPoint(0.00, 0.00);
	localParams[31]:setScaleX(0.90);
	localParams[31]:setScaleY(0.90);
	localParams[31]:setContentSize({width = 0.0, height = 0.0});
	localParams[31]:setPosition(52.93, -11.77);
	self.__children['sellBg_img#cancel_btn#__SELECTED_SCALE'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'sellBg_img#cancel_btn#__SELECTED_SCALE';
	localParams[29]:addChild(localParams[31]);

	localParams[32] = Button:create();
	localParams[32]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[32]:setTitleFontSize(14);
	localParams[32]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:onClick(handler(self, self._onConfirmedSale));
	localParams[32]:setTouchEnabled(true);
	localParams[32]:setContentSize({width = 183.0, height = 68.0});
	localParams[32]:setPosition(303.74, 56.58);
	self.__children['sellBg_img#confirmedSale_btn'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'sellBg_img#confirmedSale_btn';
	localParams[1]:addChild(localParams[32]);

	localParams[33] = Widget:create();
	localParams[33]:setAnchorPoint(0.00, 0.00);
	localParams[33]:setScaleX(0.90);
	localParams[33]:setScaleY(0.90);
	localParams[33]:setContentSize({width = 0.0, height = 0.0});
	localParams[33]:setPosition(62.93, -21.77);
	self.__children['sellBg_img#confirmedSale_btn#__SELECTED_SCALE'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'sellBg_img#confirmedSale_btn#__SELECTED_SCALE';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_font/fontImg0035.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 70.0, height = 29.0});
	localParams[34]:setPosition(93.21, 37.43);
	self.__children['sellBg_img#confirmedSale_btn#sellFont_sprite'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'sellBg_img#confirmedSale_btn#sellFont_sprite';
	localParams[32]:addChild(localParams[34]);

end
function SellLayer:loadImageSync()
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


function SellLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SellLayer:_onReduce(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onReduce then
        return self.m_ClickDelegate:onReduce(sender);
    end
    if self.onReduce then
        return self:onReduce(sender);
    end
end


function SellLayer:_onConfirmedSale(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onConfirmedSale then
        return self.m_ClickDelegate:onConfirmedSale(sender);
    end
    if self.onConfirmedSale then
        return self:onConfirmedSale(sender);
    end
end


function SellLayer:_onPlus(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPlus then
        return self.m_ClickDelegate:onPlus(sender);
    end
    if self.onPlus then
        return self:onPlus(sender);
    end
end


function SellLayer:_onCancel(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCancel then
        return self.m_ClickDelegate:onCancel(sender);
    end
    if self.onCancel then
        return self:onCancel(sender);
    end
end


return SellLayer;