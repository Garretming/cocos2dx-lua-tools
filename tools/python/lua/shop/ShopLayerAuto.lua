-- 
-- Author: generation auto
-- Brief：ShopLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ShopLayer = class('ShopLayer', gamecore.ui.BaseWidget);

function ShopLayer:create(...) 
    local instance = ShopLayer.new(...);
    return instance;
end

function ShopLayer:ctor(...) 
    if ShopLayer.super and ShopLayer.super.ctor then
        ShopLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function ShopLayer:initView()
    self.__LAYER_NAME = 'shop.ShopLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0017.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setBlendFunc({src = 770, dst = 771});
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(512.0, 320.0);
	self.__children['bg_sprite'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_sprite';
	self:addChild(localParams[1]);

	localParams[2] = Layout:create();
	localParams[2]:setBackGroundColorOpacity(102);
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 1024.0, height = 640.0});
	localParams[2]:setPosition(0.0, 160.0);
	self.__children['__FULL_LAYER'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = '__FULL_LAYER';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[3]:setAnchorPoint(1.00, 1.00);
	localParams[3]:setContentSize({width = 800.0, height = 93.0});
	localParams[3]:setPosition(localParams[2]:getContentSize().width - 0.00, localParams[2]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#rightTopUnder_img'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = '__FULL_LAYER#rightTopUnder_img';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[4]:setAnchorPoint(0.00, 1.00);
	localParams[4]:setContentSize({width = 537.0, height = 164.0});
	localParams[4]:setPosition(0.0, localParams[2]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#leftTopUnder_img'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = '__FULL_LAYER#leftTopUnder_img';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0167.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 124.0, height = 55.0});
	localParams[5]:setPosition(235.0, localParams[2]:getContentSize().height - 30.00);
	self.__children['__FULL_LAYER#shopFont_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = '__FULL_LAYER#shopFont_sprite';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[6]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._back_btn));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 116.0, height = 77.0});
	localParams[6]:setPosition(68.17, localParams[2]:getContentSize().height - 44.38);
	self.__children['__FULL_LAYER#back_btn'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = '__FULL_LAYER#back_btn';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 162.0, height = 51.0});
	localParams[7]:setPosition(localParams[2]:getContentSize().width - 181.00, localParams[2]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#game_money'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = '__FULL_LAYER#game_money';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 44.0, height = 44.0});
	localParams[8]:setPosition(24.79, 24.57);
	self.__children['__FULL_LAYER#game_money#coin_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = '__FULL_LAYER#game_money#coin_sprite';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[999999]]);
	localParams[9]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[9]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[9]:setAnchorPoint(1.00, 0.50);
	localParams[9]:setContentSize({width = 75.0, height = 22.0});
	localParams[9]:setPosition(143.96, 31.61);
	self.__children['__FULL_LAYER#game_money#value'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = '__FULL_LAYER#game_money#value';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 120.0, height = 30.0});
	localParams[10]:setPosition(62.86, 30.58);
	self.__children['__FULL_LAYER#game_money#btn_desc'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = '__FULL_LAYER#game_money#btn_desc';
	localParams[7]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 162.0, height = 51.0});
	localParams[11]:setPosition(localParams[2]:getContentSize().width - 371.00, localParams[2]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#rmb_money'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = '__FULL_LAYER#rmb_money';
	localParams[2]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[999999]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[12]:setAnchorPoint(1.00, 0.50);
	localParams[12]:setContentSize({width = 75.0, height = 22.0});
	localParams[12]:setPosition(141.77, localParams[11]:getContentSize().height - 18.98);
	self.__children['__FULL_LAYER#rmb_money#value'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = '__FULL_LAYER#rmb_money#value';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 44.0, height = 44.0});
	localParams[13]:setPosition(24.41, 25.4);
	self.__children['__FULL_LAYER#rmb_money#gem_sprite'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = '__FULL_LAYER#rmb_money#gem_sprite';
	localParams[11]:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 120.0, height = 30.0});
	localParams[14]:setPosition(64.86, 29.58);
	self.__children['__FULL_LAYER#rmb_money#btn_desc'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = '__FULL_LAYER#rmb_money#btn_desc';
	localParams[11]:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[15]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:onClick(handler(self, self._help_btn));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 58.0, height = 68.0});
	localParams[15]:setPosition(localParams[2]:getContentSize().width - 38.15, localParams[2]:getContentSize().height - 47.66);
	self.__children['__FULL_LAYER#help_btn'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = '__FULL_LAYER#help_btn';
	localParams[2]:addChild(localParams[15]);

	localParams[16] = Widget:create();
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setScaleX(0.90);
	localParams[16]:setScaleY(0.90);
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(104.14, 30.52);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Button:create();
	localParams[17]:setTitleFontSize(14);
	localParams[17]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:onClick(handler(self, self._onNpcClick));
	localParams[17]:setTouchEnabled(true);
	localParams[17]:setContentSize({width = 330.0, height = 500.0});
	localParams[17]:setPosition(WinSize.width - 152.44, 215.25);
	self.__children['Button_1'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Button_1';
	self:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/role/role107.png', 0);
	localParams[18]:setAnchorPoint(1.00, 0.00);
	localParams[18]:setScaleY(0.98);
	localParams[18]:setContentSize({width = 383.0, height = 600.0});
	localParams[18]:setPosition(WinSize.width - 0.00, 0.0);
	self.__children['role_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'role_sprite';
	self:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[19]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:onClick(handler(self, self._onTabMenu));
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 116.0, height = 69.0});
	localParams[19]:setPosition(58.0, WinSize.height - 172.20);
	self.__children['diamond_btn'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'diamond_btn';
	self:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_font/fontImg0159.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 59.0, height = 26.0});
	localParams[20]:setPosition(58.0, 34.5);
	self.__children['diamond_btn#font_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'diamond_btn#font_sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Button:create();
	localParams[21]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[21]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[21]:setTitleFontSize(14);
	localParams[21]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:onClick(handler(self, self._onTabMenu));
	localParams[21]:setTouchEnabled(true);
	localParams[21]:setContentSize({width = 116.0, height = 69.0});
	localParams[21]:setPosition(58.0, WinSize.height - 379.50);
	self.__children['gold_btn'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'gold_btn';
	self:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_font/fontImg0164.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 60.0, height = 26.0});
	localParams[22]:setPosition(58.0, 34.5);
	self.__children['gold_btn#font_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'gold_btn#font_sprite';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[23]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:onClick(handler(self, self._onTabMenu));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 116.0, height = 69.0});
	localParams[23]:setPosition(58.0, WinSize.height - 310.40);
	self.__children['skill_book_btn'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'skill_book_btn';
	self:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_font/fontImg0253.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 70.0, height = 26.0});
	localParams[24]:setPosition(58.0, 34.5);
	self.__children['skill_book_btn#font_sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'skill_book_btn#font_sprite';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_other/other0150.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 204.0, height = 104.0});
	localParams[25]:setPosition(WinSize.width - 199.00, 164.99);
	self.__children['dialogBox_sprite'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'dialogBox_sprite';
	self:addChild(localParams[25]);

	localParams[26] = Text:create();
	localParams[26]:setFontSize(20);
	localParams[26]:setString([[]]);
	localParams[26]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[26]:setTextAreaSize({width = 180, height = 60});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setTextColor({r = 50, g = 25, b = 0});
	localParams[26]:setContentSize({width = 180.0, height = 60.0});
	localParams[26]:setPosition(102.0, 41.6);
	self.__children['dialogBox_sprite#value_txt'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'dialogBox_sprite#value_txt';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = Button:create();
	localParams[27]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[27]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[27]:setTitleFontSize(14);
	localParams[27]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:onClick(handler(self, self._onTabMenu));
	localParams[27]:setTouchEnabled(true);
	localParams[27]:setContentSize({width = 116.0, height = 69.0});
	localParams[27]:setPosition(58.0, WinSize.height - 241.30);
	self.__children['monster_btn'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'monster_btn';
	self:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_font/fontImg0254.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 59.0, height = 26.0});
	localParams[28]:setPosition(58.0, 34.5);
	self.__children['monster_btn#font_sprite'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'monster_btn#font_sprite';
	localParams[27]:addChild(localParams[28]);

end
function ShopLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0017.png');
	table.insert(self._textureList, 'uires/public/role/role107.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function ShopLayer:loadPlistResources()
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


function ShopLayer:_help_btn(sender)
    if self._clickDelegate and self._clickDelegate.help_btn then
        return self._clickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function ShopLayer:_onTabMenu(sender)
    if self._clickDelegate and self._clickDelegate.onTabMenu then
        return self._clickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function ShopLayer:_back_btn(sender)
    if self._clickDelegate and self._clickDelegate.back_btn then
        return self._clickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function ShopLayer:_onNpcClick(sender)
    if self._clickDelegate and self._clickDelegate.onNpcClick then
        return self._clickDelegate:onNpcClick(sender);
    end
    if self.onNpcClick then
        return self:onNpcClick(sender);
    end
end


return ShopLayer;