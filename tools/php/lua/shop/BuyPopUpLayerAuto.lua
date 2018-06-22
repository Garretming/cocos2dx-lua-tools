-- 
-- Author: generation auto
-- Brief：BuyPopUpLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local BuyPopUpLayer = class('BuyPopUpLayer', gamecore.ui.BaseWidget);

function BuyPopUpLayer:create(...) 
    local instance = BuyPopUpLayer.new(...);
    return instance;
end

function BuyPopUpLayer:ctor(...) 
    if BuyPopUpLayer.super and BuyPopUpLayer.super.ctor then
        BuyPopUpLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function BuyPopUpLayer:initView()
    self.__LAYER_NAME = 'shop.BuyPopUpLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 490.0, height = 490.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 430.0, height = 345.0});
	localParams[2]:setPosition(245.0, 286.31);
	self.__children['bg_img#bg_img2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img2';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 416.0, height = 220.0});
	localParams[3]:setPosition(245.0, 338.1);
	self.__children['bg_img#bg_img1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 265.0, height = 110.0});
	localParams[4]:setPosition(270.4, 149.6);
	self.__children['bg_img#bg_img1#descUnder'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#bg_img1#descUnder';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[]]);
	localParams[5]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[5]:setTextAreaSize({width = 240, height = 80});
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setContentSize({width = 240.0, height = 80.0});
	localParams[5]:setPosition(13.25, 55.0);
	self.__children['bg_img#bg_img1#descUnder#desc_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#bg_img1#descUnder#desc_txt';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 110.0, height = 110.0});
	localParams[6]:setPosition(70.72, 149.6);
	self.__children['bg_img#bg_img1#under_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#bg_img1#under_sprite';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = ImageView:create(, 0);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 46.0, height = 46.0});
	localParams[7]:setPosition(55.0, 55.0);
	self.__children['bg_img#bg_img1#under_sprite#icon_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#bg_img1#under_sprite#icon_sprite';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Slider:create();
	localParams[8]:loadBarTexture('uires/public/sheet_other/other0222.png', 1);
	localParams[8]:loadProgressBarTexture('uires/public/sheet_other/other0223.png', 1);
	localParams[8]:loadSlidBallTextureNormal('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[8]:loadSlidBallTexturePressed('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[8]:loadSlidBallTextureDisabled('set([u'uires/public/sheet_other/other0050.png'])', 1);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 180.0, height = 11.0});
	localParams[8]:setPosition(118.02, 48.4);
	self.__children['bg_img#bg_img1#line_slider'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#bg_img1#line_slider';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_btn/btn0116.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 15.000000, y = 11.000000, width = 18.000000, height = 24.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._onPlus));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 48.0, height = 46.0});
	localParams[9]:setPosition(353.6, 48.4);
	self.__children['bg_img#bg_img1#plus_btn'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#bg_img1#plus_btn';
	localParams[3]:addChild(localParams[9]);

	localParams[10] = Node:create();
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setScaleX(0.90);
	localParams[10]:setScaleY(0.90);
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(29.09, -29.09);
	self.__children['bg_img#bg_img1#plus_btn#__SELECTED_SCALE'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#bg_img1#plus_btn#__SELECTED_SCALE';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_btn/btn0115.png', 1);
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = 15.000000, y = 11.000000, width = 18.000000, height = 24.000000});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:onClick(handler(self, self._onReduce));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 48.0, height = 46.0});
	localParams[11]:setPosition(62.4, 48.4);
	self.__children['bg_img#bg_img1#reduce_btn'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#bg_img1#reduce_btn';
	localParams[3]:addChild(localParams[11]);

	localParams[12] = Node:create();
	localParams[12]:setAnchorPoint(0.00, 0.00);
	localParams[12]:setScaleX(0.90);
	localParams[12]:setScaleY(0.90);
	localParams[12]:setContentSize({width = 0.0, height = 0.0});
	localParams[12]:setPosition(29.09, -29.09);
	self.__children['bg_img#bg_img1#reduce_btn#__SELECTED_SCALE'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#bg_img1#reduce_btn#__SELECTED_SCALE';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[13]:ignoreContentAdaptWithSize(false);
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 380.0, height = 37.0});
	localParams[13]:setPosition(245.0, 196.0);
	self.__children['bg_img#numUnder_img'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#numUnder_img';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(24);
	localParams[14]:setString([[购买数量]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setTextColor({r = 255, g = 140, b = 0});
	localParams[14]:setContentSize({width = 100.0, height = 26.0});
	localParams[14]:setPosition(76.61, 18.5);
	self.__children['bg_img#numUnder_img#num_txt'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#numUnder_img#num_txt';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(24);
	localParams[15]:setString([[]]);
	localParams[15]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[15]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[15]:setAnchorPoint(1.00, 0.50);
	localParams[15]:setContentSize({width = 0.0, height = 0.0});
	localParams[15]:setPosition(361.0, 18.5);
	self.__children['bg_img#numUnder_img#amount_txt'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#numUnder_img#amount_txt';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_common/bgFrame0019.png', 1);
	localParams[16]:ignoreContentAdaptWithSize(false);
	localParams[16]:setScale9Enabled(true);
	localParams[16]:setCapInsets({x = 37.000000, y = 12.000000,width = 40.000000, height = 13.000000);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 380.0, height = 37.0});
	localParams[16]:setPosition(245.0, 147.0);
	self.__children['bg_img#priceUnder_img'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#priceUnder_img';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 44.0, height = 44.0});
	localParams[17]:setPosition(349.6, 20.35);
	self.__children['bg_img#priceUnder_img#gem_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#priceUnder_img#gem_sprite';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(24);
	localParams[18]:setString([[售 价]]);
	localParams[18]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setTextColor({r = 255, g = 140, b = 0});
	localParams[18]:setContentSize({width = 64.0, height = 26.0});
	localParams[18]:setPosition(58.6, 18.5);
	self.__children['bg_img#priceUnder_img#priceFont_txt'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#priceUnder_img#priceFont_txt';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(24);
	localParams[19]:setString([[¥ 100]]);
	localParams[19]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[19]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setTextColor({r = 255, g = 140, b = 0});
	localParams[19]:setVisible(false);
	localParams[19]:setContentSize({width = 67.0, height = 26.0});
	localParams[19]:setPosition(285.0, 18.5);
	self.__children['bg_img#priceUnder_img#rmb'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#priceUnder_img#rmb';
	localParams[16]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[已售罄]]);
	localParams[20]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[20]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setTextColor({r = 155, g = 125, b = 100});
	localParams[20]:setVisible(false);
	localParams[20]:setContentSize({width = 64.0, height = 22.0});
	localParams[20]:setPosition(190.0, 18.5);
	self.__children['bg_img#priceUnder_img#price_txt'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#priceUnder_img#price_txt';
	localParams[16]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(24);
	localParams[21]:setString([[]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[21]:setAnchorPoint(1.00, 0.50);
	localParams[21]:setContentSize({width = 0.0, height = 0.0});
	localParams[21]:setPosition(315.4, 18.5);
	self.__children['bg_img#priceUnder_img#amount_txt'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#priceUnder_img#amount_txt';
	localParams[16]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 268.0, height = 55.0});
	localParams[22]:setPosition(245.0, 465.5);
	self.__children['bg_img#titleUnder_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#titleUnder_sprite';
	localParams[1]:addChild(localParams[22]);

	localParams[23] = Text:create();
	localParams[23]:setFontSize(24);
	localParams[23]:setString([[]]);
	localParams[23]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[23]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setTextColor({r = 255, g = 240, b = 155});
	localParams[23]:setContentSize({width = 0.0, height = 0.0});
	localParams[23]:setPosition(134.0, 33.48);
	self.__children['bg_img#titleUnder_sprite#name_txt'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg_img#titleUnder_sprite#name_txt';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = Button:create();
	localParams[24]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[24]:setTitleFontSize(14);
	localParams[24]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[24]:setScale9Enabled(true);
	localParams[24]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:onClick(handler(self, self._onBuy));
	localParams[24]:setTouchEnabled(true);
	localParams[24]:setContentSize({width = 183.0, height = 68.0});
	localParams[24]:setPosition(338.1, 68.6);
	self.__children['bg_img#buy_btn'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg_img#buy_btn';
	localParams[1]:addChild(localParams[24]);

	localParams[25] = Node:create();
	localParams[25]:setAnchorPoint(0.00, 0.00);
	localParams[25]:setScaleX(0.90);
	localParams[25]:setScaleY(0.90);
	localParams[25]:setContentSize({width = 0.0, height = 0.0});
	localParams[25]:setPosition(20.0, -20.0);
	self.__children['bg_img#buy_btn#__SELECTED_SCALE'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg_img#buy_btn#__SELECTED_SCALE';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_font/fontImg0169.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 72.0, height = 30.0});
	localParams[26]:setPosition(91.5, 34.0);
	self.__children['bg_img#buy_btn#uires_public_sheet_fontImg0085_1'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bg_img#buy_btn#uires_public_sheet_fontImg0085_1';
	localParams[24]:addChild(localParams[26]);

	localParams[27] = Button:create();
	localParams[27]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[27]:setTitleFontSize(14);
	localParams[27]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[27]:setScale9Enabled(true);
	localParams[27]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:onClick(handler(self, self._onCancel));
	localParams[27]:setTouchEnabled(true);
	localParams[27]:setContentSize({width = 183.0, height = 68.0});
	localParams[27]:setPosition(151.9, 68.6);
	self.__children['bg_img#cancel_btn'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'bg_img#cancel_btn';
	localParams[1]:addChild(localParams[27]);

	localParams[28] = Node:create();
	localParams[28]:setAnchorPoint(0.00, 0.00);
	localParams[28]:setScaleX(0.90);
	localParams[28]:setScaleY(0.90);
	localParams[28]:setContentSize({width = 0.0, height = 0.0});
	localParams[28]:setPosition(20.0, -20.0);
	self.__children['bg_img#cancel_btn#__SELECTED_SCALE'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'bg_img#cancel_btn#__SELECTED_SCALE';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_font/fontImg0033.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 70.0, height = 30.0});
	localParams[29]:setPosition(91.5, 34.0);
	self.__children['bg_img#cancel_btn#uires_public_sheet_fontImg0085_1'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'bg_img#cancel_btn#uires_public_sheet_fontImg0085_1';
	localParams[27]:addChild(localParams[29]);

end
function BuyPopUpLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
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


function BuyPopUpLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function BuyPopUpLayer:_onBuy(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onBuy then
        return self.m_ClickDelegate:onBuy(sender);
    end
    if self.onBuy then
        return self:onBuy(sender);
    end
end


function BuyPopUpLayer:_onReduce(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onReduce then
        return self.m_ClickDelegate:onReduce(sender);
    end
    if self.onReduce then
        return self:onReduce(sender);
    end
end


function BuyPopUpLayer:_onPlus(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPlus then
        return self.m_ClickDelegate:onPlus(sender);
    end
    if self.onPlus then
        return self:onPlus(sender);
    end
end


function BuyPopUpLayer:_onCancel(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCancel then
        return self.m_ClickDelegate:onCancel(sender);
    end
    if self.onCancel then
        return self:onCancel(sender);
    end
end


return BuyPopUpLayer;