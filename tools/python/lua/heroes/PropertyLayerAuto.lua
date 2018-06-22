-- 
-- Author: generation auto
-- Brief：PropertyLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local PropertyLayer = class('PropertyLayer', gamecore.ui.BaseWidget);

function PropertyLayer:create(...) 
    local instance = PropertyLayer.new(...);
    return instance;
end

function PropertyLayer:ctor(...) 
    if PropertyLayer.super and PropertyLayer.super.ctor then
        PropertyLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function PropertyLayer:initView()
    self.__LAYER_NAME = 'heroes.PropertyLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0061.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 59.000000, y = 59.000000,width = 62.000000, height = 62.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = WinSize.width - 64.00, height = WinSize.height - 215.00});
	localParams[1]:setPosition(WinSize.width/2 + (-17.00 * ccx.scaleX), WinSize.height/2 + (8.00 * ccx.scaleY));
	self.__children['mainNodeUnder_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'mainNodeUnder_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/hero/hero001.png', 0);
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:setFlippedX(true);
	localParams[2]:setContentSize({width = 528.0, height = 604.0});
	localParams[2]:setPosition(214.0, -113.0);
	self.__children['mainNodeUnder_img#role_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'mainNodeUnder_img#role_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0049.png', 1);
	localParams[3]:setAnchorPoint(0.00, 0.50);
	localParams[3]:setContentSize({width = 115.0, height = 27.0});
	localParams[3]:setPosition(localParams[1]:getContentSize().width - 550.00, localParams[1]:getContentSize().height/2 + (169.00 * ccx.scaleY));
	self.__children['mainNodeUnder_img#occupation_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'mainNodeUnder_img#occupation_sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[bbbbbbbbbbbbbbbbbbbbbbbbbbbb]]);
	localParams[4]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[4]:setTextAreaSize({width = 460, height = 100});
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setContentSize({width = 460.0, height = 100.0});
	localParams[4]:setPosition(localParams[1]:getContentSize().width - 550.00, localParams[1]:getContentSize().height/2 + (97.50 * ccx.scaleY));
	self.__children['mainNodeUnder_img#desc_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'mainNodeUnder_img#desc_txt';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_btn/btn0062.png', 1);
	localParams[5]:loadTexturePressed('uires/public/sheet_btn/btn0062.png', 1);
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._onPreview));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 40.0, height = 40.0});
	localParams[5]:setPosition(localParams[1]:getContentSize().width - 389.00, localParams[1]:getContentSize().height/2 + (-2.38 * ccx.scaleY));
	self.__children['mainNodeUnder_img#preview_btn'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'mainNodeUnder_img#preview_btn';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0050.png', 1);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setContentSize({width = 116.0, height = 27.0});
	localParams[6]:setPosition(localParams[1]:getContentSize().width - 550.00, localParams[1]:getContentSize().height/2 + (-8.67 * ccx.scaleY));
	self.__children['mainNodeUnder_img#base_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'mainNodeUnder_img#base_sprite';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 175.0, height = 28.0});
	localParams[7]:setPosition(89.32, -27.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'mainNodeUnder_img#base_sprite#under_img1';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[生    命：]]);
	localParams[8]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setContentSize({width = 71.0, height = 25.0});
	localParams[8]:setPosition(8.75, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img1#title_txt1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'mainNodeUnder_img#base_sprite#under_img1#title_txt1';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[8888]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[9]:setAnchorPoint(1.00, 0.50);
	localParams[9]:setTextColor({r = 80, g = 255, b = 0});
	localParams[9]:setContentSize({width = 47.0, height = 25.0});
	localParams[9]:setPosition(164.5, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img1#value_txt1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'mainNodeUnder_img#base_sprite#under_img1#value_txt1';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 175.0, height = 28.0});
	localParams[10]:setPosition(272.6, -27.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'mainNodeUnder_img#base_sprite#under_img2';
	localParams[6]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[攻    击：]]);
	localParams[11]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setContentSize({width = 71.0, height = 25.0});
	localParams[11]:setPosition(8.75, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img2#title_txt1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'mainNodeUnder_img#base_sprite#under_img2#title_txt1';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[999]]);
	localParams[12]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[12]:setAnchorPoint(1.00, 0.50);
	localParams[12]:setTextColor({r = 80, g = 255, b = 0});
	localParams[12]:setContentSize({width = 36.0, height = 25.0});
	localParams[12]:setPosition(164.5, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img2#value_txt1'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'mainNodeUnder_img#base_sprite#under_img2#value_txt1';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[13]:ignoreContentAdaptWithSize(false);
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 175.0, height = 28.0});
	localParams[13]:setPosition(89.32, -59.4);
	self.__children['mainNodeUnder_img#base_sprite#under_img3'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'mainNodeUnder_img#base_sprite#under_img3';
	localParams[6]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[护    甲：]]);
	localParams[14]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[14]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setContentSize({width = 71.0, height = 25.0});
	localParams[14]:setPosition(8.75, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img3#title_txt1'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'mainNodeUnder_img#base_sprite#under_img3#title_txt1';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(20);
	localParams[15]:setString([[88]]);
	localParams[15]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[15]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[15]:setAnchorPoint(1.00, 0.50);
	localParams[15]:setTextColor({r = 80, g = 255, b = 0});
	localParams[15]:setContentSize({width = 25.0, height = 25.0});
	localParams[15]:setPosition(164.5, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img3#value_txt1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'mainNodeUnder_img#base_sprite#under_img3#value_txt1';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[16]:ignoreContentAdaptWithSize(false);
	localParams[16]:setScale9Enabled(true);
	localParams[16]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 175.0, height = 28.0});
	localParams[16]:setPosition(272.6, -59.4);
	self.__children['mainNodeUnder_img#base_sprite#under_img4'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'mainNodeUnder_img#base_sprite#under_img4';
	localParams[6]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[速    度：]]);
	localParams[17]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[17]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[17]:setAnchorPoint(0.00, 0.50);
	localParams[17]:setContentSize({width = 71.0, height = 25.0});
	localParams[17]:setPosition(8.75, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img4#title_txt1'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'mainNodeUnder_img#base_sprite#under_img4#title_txt1';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[7777]]);
	localParams[18]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[18]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[18]:setAnchorPoint(1.00, 0.50);
	localParams[18]:setTextColor({r = 80, g = 255, b = 0});
	localParams[18]:setContentSize({width = 44.0, height = 25.0});
	localParams[18]:setPosition(164.5, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img4#value_txt1'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'mainNodeUnder_img#base_sprite#under_img4#value_txt1';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[19]:ignoreContentAdaptWithSize(false);
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 175.0, height = 28.0});
	localParams[19]:setPosition(89.32, -91.8);
	self.__children['mainNodeUnder_img#base_sprite#under_img5'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'mainNodeUnder_img#base_sprite#under_img5';
	localParams[6]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[智    慧：]]);
	localParams[20]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[20]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[20]:setAnchorPoint(0.00, 0.50);
	localParams[20]:setContentSize({width = 71.0, height = 25.0});
	localParams[20]:setPosition(8.75, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img5#title_txt1'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'mainNodeUnder_img#base_sprite#under_img5#title_txt1';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[66666]]);
	localParams[21]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[21]:setAnchorPoint(1.00, 0.50);
	localParams[21]:setTextColor({r = 80, g = 255, b = 0});
	localParams[21]:setContentSize({width = 58.0, height = 25.0});
	localParams[21]:setPosition(164.5, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img5#value_txt1'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'mainNodeUnder_img#base_sprite#under_img5#value_txt1';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[22]:ignoreContentAdaptWithSize(false);
	localParams[22]:setScale9Enabled(true);
	localParams[22]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setVisible(false);
	localParams[22]:setContentSize({width = 175.0, height = 28.0});
	localParams[22]:setPosition(272.6, -91.8);
	self.__children['mainNodeUnder_img#base_sprite#under_img6'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'mainNodeUnder_img#base_sprite#under_img6';
	localParams[6]:addChild(localParams[22]);

	localParams[23] = Text:create();
	localParams[23]:setFontSize(20);
	localParams[23]:setString([[怒    气：]]);
	localParams[23]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[23]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[23]:setAnchorPoint(0.00, 0.50);
	localParams[23]:setContentSize({width = 71.0, height = 25.0});
	localParams[23]:setPosition(8.75, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img6#title_txt1'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'mainNodeUnder_img#base_sprite#under_img6#title_txt1';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[555555]]);
	localParams[24]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[24]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[24]:setAnchorPoint(1.00, 0.50);
	localParams[24]:setTextColor({r = 80, g = 255, b = 0});
	localParams[24]:setContentSize({width = 69.0, height = 25.0});
	localParams[24]:setPosition(164.5, 14.0);
	self.__children['mainNodeUnder_img#base_sprite#under_img6#value_txt1'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'mainNodeUnder_img#base_sprite#under_img6#value_txt1';
	localParams[22]:addChild(localParams[24]);

end
function PropertyLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/hero/hero001.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function PropertyLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function PropertyLayer:_onPreview(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPreview then
        return self.m_ClickDelegate:onPreview(sender);
    end
    if self.onPreview then
        return self:onPreview(sender);
    end
end


return PropertyLayer;