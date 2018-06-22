-- 
-- Author: generation auto
-- Brief：ExchangeLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ExchangeLayer = class('ExchangeLayer', gamecore.ui.BaseWidget);

function ExchangeLayer:create(...) 
    local instance = ExchangeLayer.new(...);
    return instance;
end

function ExchangeLayer:ctor(...) 
    if ExchangeLayer.super and ExchangeLayer.super.ctor then
        ExchangeLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function ExchangeLayer:initView()
    self.__LAYER_NAME = 'shop.ExchangeLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 527.0, height = 320.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 460.0, height = 175.0});
	localParams[2]:setPosition(263.5, 198.88);
	self.__children['bg_img#bg_img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 440.0, height = 155.0});
	localParams[3]:setPosition(263.5, 198.88);
	self.__children['bg_img#bg_img2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0168.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 34.0, height = 22.0});
	localParams[4]:setPosition(220.0, 62.0);
	self.__children['bg_img#bg_img2#Sprite_17'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#bg_img2#Sprite_17';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 268.0, height = 55.0});
	localParams[5]:setPosition(263.5, 299.81);
	self.__children['bg_img#titleUnder_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#titleUnder_sprite';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(24);
	localParams[6]:setString([[兑换金币]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 255, g = 240, b = 155});
	localParams[6]:setContentSize({width = 99.0, height = 26.0});
	localParams[6]:setPosition(134.0, 33.48);
	self.__children['bg_img#titleUnder_sprite#titleFont_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#titleUnder_sprite#titleFont_txt';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = RichText:create();
	localParams[7]:setDefaultFontSize(28);
	localParams[7]:setString([[]]);
	localParams[7]:setDefaultFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(1.00, 0.50);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(226.61, 182.4);
	self.__children['bg_img#diamond_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#diamond_txt';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = RichText:create();
	localParams[8]:setDefaultFontSize(28);
	localParams[8]:setString([[]]);
	localParams[8]:setDefaultFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(300.39, 182.4);
	self.__children['bg_img#coin_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#coin_txt';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = RichText:create();
	localParams[9]:setDefaultFontSize(18);
	localParams[9]:setString([[确定用钻石兑换成金币？]]);
	localParams[9]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 194.0, height = 24.0});
	localParams[9]:setPosition(263.5, 230.4);
	self.__children['bg_img#desc_txt'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#desc_txt';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:onClick(handler(self, self._onBuy));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 183.0, height = 68.0});
	localParams[10]:setPosition(368.9, 67.2);
	self.__children['bg_img#buy_btn'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#buy_btn';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = Widget:create();
	localParams[11]:setAnchorPoint(0.00, 0.00);
	localParams[11]:setScaleX(0.90);
	localParams[11]:setScaleY(0.90);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(20.0, -20.0);
	self.__children['bg_img#buy_btn#__SELECTED_SCALE'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#buy_btn#__SELECTED_SCALE';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_font/fontImg0169.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 72.0, height = 30.0});
	localParams[12]:setPosition(91.5, 34.0);
	self.__children['bg_img#buy_btn#uires_public_sheet_fontImg0085_1'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#buy_btn#uires_public_sheet_fontImg0085_1';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._onCancel));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 183.0, height = 68.0});
	localParams[13]:setPosition(158.1, 67.2);
	self.__children['bg_img#cancel_btn'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#cancel_btn';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = Widget:create();
	localParams[14]:setAnchorPoint(0.00, 0.00);
	localParams[14]:setScaleX(0.90);
	localParams[14]:setScaleY(0.90);
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(20.0, -20.0);
	self.__children['bg_img#cancel_btn#__SELECTED_SCALE'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#cancel_btn#__SELECTED_SCALE';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_font/fontImg0033.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 70.0, height = 30.0});
	localParams[15]:setPosition(91.5, 34.0);
	self.__children['bg_img#cancel_btn#uires_public_sheet_fontImg0085_1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#cancel_btn#uires_public_sheet_fontImg0085_1';
	localParams[13]:addChild(localParams[15]);

end
function ExchangeLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function ExchangeLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ExchangeLayer:_onBuy(sender)
    if self._clickDelegate and self._clickDelegate.onBuy then
        return self._clickDelegate:onBuy(sender);
    end
    if self.onBuy then
        return self:onBuy(sender);
    end
end


function ExchangeLayer:_onCancel(sender)
    if self._clickDelegate and self._clickDelegate.onCancel then
        return self._clickDelegate:onCancel(sender);
    end
    if self.onCancel then
        return self:onCancel(sender);
    end
end


return ExchangeLayer;