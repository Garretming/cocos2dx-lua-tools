-- 
-- Author: generation auto
-- Brief：PackagePopUpLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local PackagePopUpLayer = class('PackagePopUpLayer', gamecore.ui.BaseWidget);

function PackagePopUpLayer:create(...) 
    local instance = PackagePopUpLayer.new(...);
    return instance;
end

function PackagePopUpLayer:ctor(...) 
    if PackagePopUpLayer.super and PackagePopUpLayer.super.ctor then
        PackagePopUpLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function PackagePopUpLayer:initView()
    self.__LAYER_NAME = 'shop.PackagePopUpLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 480.0, height = 280.0});
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
	localParams[2]:setContentSize({width = 420.0, height = 138.0});
	localParams[2]:setPosition(240.0, 179.2);
	self.__children['bg_img#bg_img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 265.0, height = 110.0});
	localParams[3]:setPosition(273.0, 69.0);
	self.__children['bg_img#bg_img1#descUnder'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img1#descUnder';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[]]);
	localParams[4]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[4]:setTextAreaSize({width = 240, height = 80});
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setContentSize({width = 240.0, height = 80.0});
	localParams[4]:setPosition(13.25, 55.0);
	self.__children['bg_img#bg_img1#descUnder#desc_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#bg_img1#descUnder#desc_txt';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 110.0, height = 110.0});
	localParams[5]:setPosition(71.4, 69.0);
	self.__children['bg_img#bg_img1#under_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#bg_img1#under_sprite';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_icon/icon0090.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 118.0, height = 89.0});
	localParams[6]:setPosition(55.0, 55.0);
	self.__children['bg_img#bg_img1#under_sprite#icon_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#bg_img1#under_sprite#icon_sprite';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 268.0, height = 55.0});
	localParams[7]:setPosition(240.0, 266.52);
	self.__children['bg_img#titleUnder_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#titleUnder_sprite';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = RichText:create();
	localParams[8]:setDefaultFontSize(24);
	localParams[8]:setString([[初学者礼包]]);
	localParams[8]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[8]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setTextColor({r = 255, g = 240, b = 155});
	localParams[8]:setContentSize({width = 124.0, height = 26.0});
	localParams[8]:setPosition(134.0, 33.48);
	self.__children['bg_img#titleUnder_sprite#titleFont_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#titleUnder_sprite#titleFont_txt';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._onBuy));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 183.0, height = 68.0});
	localParams[9]:setPosition(336.0, 64.4);
	self.__children['bg_img#buy_btn'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#buy_btn';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Widget:create();
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setScaleX(0.90);
	localParams[10]:setScaleY(0.90);
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(20.0, -20.0);
	self.__children['bg_img#buy_btn#__SELECTED_SCALE'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#buy_btn#__SELECTED_SCALE';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_font/fontImg0169.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 72.0, height = 30.0});
	localParams[11]:setPosition(91.5, 34.0);
	self.__children['bg_img#buy_btn#uires_public_sheet_fontImg0085_1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#buy_btn#uires_public_sheet_fontImg0085_1';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._onCancel));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 183.0, height = 68.0});
	localParams[12]:setPosition(144.0, 64.4);
	self.__children['bg_img#cancel_btn'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#cancel_btn';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = Widget:create();
	localParams[13]:setAnchorPoint(0.00, 0.00);
	localParams[13]:setScaleX(0.90);
	localParams[13]:setScaleY(0.90);
	localParams[13]:setContentSize({width = 0.0, height = 0.0});
	localParams[13]:setPosition(20.0, -20.0);
	self.__children['bg_img#cancel_btn#__SELECTED_SCALE'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#cancel_btn#__SELECTED_SCALE';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_font/fontImg0033.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 70.0, height = 30.0});
	localParams[14]:setPosition(91.5, 34.0);
	self.__children['bg_img#cancel_btn#uires_public_sheet_fontImg0085_1'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#cancel_btn#uires_public_sheet_fontImg0085_1';
	localParams[12]:addChild(localParams[14]);

end
function PackagePopUpLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function PackagePopUpLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function PackagePopUpLayer:_onBuy(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onBuy then
        return self.m_ClickDelegate:onBuy(sender);
    end
    if self.onBuy then
        return self:onBuy(sender);
    end
end


function PackagePopUpLayer:_onCancel(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCancel then
        return self.m_ClickDelegate:onCancel(sender);
    end
    if self.onCancel then
        return self:onCancel(sender);
    end
end


return PackagePopUpLayer;