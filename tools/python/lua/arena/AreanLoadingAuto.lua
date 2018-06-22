-- 
-- Author: generation auto
-- Brief：AreanLoadingAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local AreanLoading = class('AreanLoading', gamecore.ui.BaseWidget);

function AreanLoading:create(...) 
    local instance = AreanLoading.new(...);
    return instance;
end

function AreanLoading:ctor(...) 
    if AreanLoading.super and AreanLoading.super.ctor then
        AreanLoading.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function AreanLoading:initView()
    self.__LAYER_NAME = 'arena.AreanLoading';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0016.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_sprite'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_sprite';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/hero/hero001.png', 0);
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setScaleX(0.90);
	localParams[2]:setScaleY(0.90);
	localParams[2]:setFlippedX(true);
	localParams[2]:setContentSize({width = 528.0, height = 604.0});
	localParams[2]:setPosition(-500.0, 0.0);
	self.__children['bg_sprite#role_left'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_sprite#role_left';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/hero/hero001.png', 0);
	localParams[3]:setAnchorPoint(1.00, 0.00);
	localParams[3]:setScaleX(0.90);
	localParams[3]:setScaleY(0.90);
	localParams[3]:setContentSize({width = 528.0, height = 604.0});
	localParams[3]:setPosition(localParams[1]:getContentSize().width - -500.00, 0.0);
	self.__children['bg_sprite#role_right'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_sprite#role_right';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0097.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 136.000000, y = 5.000000,width = 162.000000, height = 8.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 450.0, height = 110.0});
	localParams[4]:setPosition(-300.0, 220.0);
	self.__children['bg_sprite#role_data_left'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_sprite#role_data_left';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_icon/icon0076.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(0.40);
	localParams[5]:setScaleY(0.40);
	localParams[5]:setContentSize({width = 180.0, height = 196.0});
	localParams[5]:setPosition(72.0, 63.8);
	self.__children['bg_sprite#role_data_left#icon'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_sprite#role_data_left#icon';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[最强王者]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 240, g = 200, b = 60});
	localParams[6]:setContentSize({width = 84.0, height = 22.0});
	localParams[6]:setPosition(72.0, 25.3);
	self.__children['bg_sprite#role_data_left#title'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_sprite#role_data_left#title';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 207.0, height = 32.0});
	localParams[7]:setPosition(243.0, 74.8);
	self.__children['bg_sprite#role_data_left#under_1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_sprite#role_data_left#under_1';
	localParams[4]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[大鸟]]);
	localParams[8]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[8]:setAnchorPoint(0.75, 0.64);
	localParams[8]:setTextColor({r = 255, g = 240, b = 155});
	localParams[8]:setContentSize({width = 44.0, height = 24.0});
	localParams[8]:setPosition(114.57, 19.29);
	self.__children['bg_sprite#role_data_left#under_1#name'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_sprite#role_data_left#under_1#name';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 207.0, height = 32.0});
	localParams[9]:setPosition(243.0, 33.0);
	self.__children['bg_sprite#role_data_left#under_2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_sprite#role_data_left#under_2';
	localParams[4]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(22);
	localParams[10]:setString([[LV:25]]);
	localParams[10]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setTextColor({r = 255, g = 140, b = 0});
	localParams[10]:setContentSize({width = 59.0, height = 26.0});
	localParams[10]:setPosition(103.5, 16.0);
	self.__children['bg_sprite#role_data_left#under_2#value'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_sprite#role_data_left#under_2#value';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Widget:create();
	localParams[11]:setAnchorPoint(0.00, 0.00);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(1136.0, 0.0);
	self.__children['bg_sprite#Node_14'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_sprite#Node_14';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_bgframe/bgFrame0097.png', 1);
	localParams[12]:ignoreContentAdaptWithSize(false);
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 136.000000, y = 5.000000,width = 162.000000, height = 8.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setRotationSkewX(180.00);
	localParams[12]:setRotationSkewY(180.00);
	localParams[12]:setContentSize({width = 450.0, height = 110.0});
	localParams[12]:setPosition(300.0, 220.0);
	self.__children['bg_sprite#Node_14#role_data_right'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_sprite#Node_14#role_data_right';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_icon/icon0076.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(0.40);
	localParams[13]:setScaleY(0.40);
	localParams[13]:setRotationSkewX(180.00);
	localParams[13]:setRotationSkewY(180.00);
	localParams[13]:setContentSize({width = 180.0, height = 196.0});
	localParams[13]:setPosition(72.0, 46.2);
	self.__children['bg_sprite#Node_14#role_data_right#icon'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_sprite#Node_14#role_data_right#icon';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[最强王者]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setTextColor({r = 240, g = 200, b = 60});
	localParams[14]:setRotationSkewX(180.00);
	localParams[14]:setRotationSkewY(180.00);
	localParams[14]:setContentSize({width = 84.0, height = 22.0});
	localParams[14]:setPosition(72.0, 84.7);
	self.__children['bg_sprite#Node_14#role_data_right#title'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_sprite#Node_14#role_data_right#title';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setRotationSkewX(180.00);
	localParams[15]:setRotationSkewY(180.00);
	localParams[15]:setContentSize({width = 207.0, height = 32.0});
	localParams[15]:setPosition(243.0, 33.0);
	self.__children['bg_sprite#Node_14#role_data_right#under_1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_sprite#Node_14#role_data_right#under_1';
	localParams[12]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[大鸟]]);
	localParams[16]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[16]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 255, g = 240, b = 155});
	localParams[16]:setContentSize({width = 44.0, height = 24.0});
	localParams[16]:setPosition(103.5, 16.0);
	self.__children['bg_sprite#Node_14#role_data_right#under_1#name'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_sprite#Node_14#role_data_right#under_1#name';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[17]:ignoreContentAdaptWithSize(false);
	localParams[17]:setScale9Enabled(true);
	localParams[17]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setRotationSkewX(180.00);
	localParams[17]:setRotationSkewY(180.00);
	localParams[17]:setContentSize({width = 207.0, height = 32.0});
	localParams[17]:setPosition(243.0, 74.8);
	self.__children['bg_sprite#Node_14#role_data_right#under_2'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_sprite#Node_14#role_data_right#under_2';
	localParams[12]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(22);
	localParams[18]:setString([[LV:25]]);
	localParams[18]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setTextColor({r = 255, g = 140, b = 0});
	localParams[18]:setContentSize({width = 59.0, height = 26.0});
	localParams[18]:setPosition(103.5, 16.0);
	self.__children['bg_sprite#Node_14#role_data_right#under_2#value'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_sprite#Node_14#role_data_right#under_2#value';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_common/other0180.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 964.0, height = 38.0});
	localParams[19]:setPosition(568.0, 120.0);
	self.__children['bg_sprite#loading'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_sprite#loading';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = LoadingBar:create('uires/public/sheet_common/other0179.png', 1, 0.00);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 882.0, height = 26.0});
	localParams[20]:setPosition(482.0, 19.0);
	self.__children['bg_sprite#loading#progress'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_sprite#loading#progress';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(24);
	localParams[21]:setString([[0%]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 38.0, height = 28.0});
	localParams[21]:setPosition(482.0, 19.0);
	self.__children['bg_sprite#loading#value'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_sprite#loading#value';
	localParams[19]:addChild(localParams[21]);

end
function AreanLoading:loadImage()
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0016.png');
	table.insert(self._textureList, 'uires/public/hero/hero001.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function AreanLoading:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return AreanLoading;