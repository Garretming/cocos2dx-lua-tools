-- 
-- Author: generation auto
-- Brief：PackageNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local PackageNode = class('PackageNode', gamecore.ui.BaseWidget);

function PackageNode:create(...) 
    local instance = PackageNode.new(...);
    return instance;
end

function PackageNode:ctor(...) 
    if PackageNode.super and PackageNode.super.ctor then
        PackageNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function PackageNode:initView()
    self.__LAYER_NAME = 'shop.PackageNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0117.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onPackage));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 185.0, height = 237.0});
	localParams[1]:setPosition(98.0, 123.0);
	self.__children['item_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'item_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0171.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 195.0, height = 42.0});
	localParams[2]:setPosition(92.5, 206.19);
	self.__children['item_btn#titleUnder_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'item_btn#titleUnder_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = RichText:create();
	localParams[3]:setDefaultFontSize(20);
	localParams[3]:setString([[]]);
	localParams[3]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[3]:setTextAreaSize({width = 200, height = 0});
	localParams[3]:setTextHorizontalAlignment(1);
	localParams[3]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setTextColor({r = 255, g = 240, b = 155});
	localParams[3]:setContentSize({width = 200.0, height = 0.0});
	localParams[3]:setPosition(97.5, 23.1);
	self.__children['item_btn#titleUnder_sprite#title_txt'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'item_btn#titleUnder_sprite#title_txt';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/bg_img/bgImg0020.png', 0);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 159.0, height = 131.0});
	localParams[4]:setPosition(92.5, 118.5);
	self.__children['item_btn#itemUnder_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'item_btn#itemUnder_sprite';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_icon/icon0090.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 118.0, height = 89.0});
	localParams[5]:setPosition(79.5, 69.43);
	self.__children['item_btn#itemUnder_sprite#icon_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'item_btn#itemUnder_sprite#icon_sprite';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = RichText:create();
	localParams[6]:setDefaultFontSize(20);
	localParams[6]:setString([[账号限购 1 次]]);
	localParams[6]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 26, g = 26, b = 26});
	localParams[6]:setContentSize({width = 133.0, height = 20.0});
	localParams[6]:setPosition(79.5, 17.03);
	self.__children['item_btn#itemUnder_sprite#times_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'item_btn#itemUnder_sprite#times_txt';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0121.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 157.0, height = 30.0});
	localParams[7]:setPosition(79.5, 15.72);
	self.__children['item_btn#itemUnder_sprite#giveUnder_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'item_btn#itemUnder_sprite#giveUnder_sprite';
	localParams[4]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[赠送 20]]);
	localParams[8]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 71.0, height = 25.0});
	localParams[8]:setPosition(78.5, 15.0);
	self.__children['item_btn#itemUnder_sprite#giveUnder_sprite#font_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'item_btn#itemUnder_sprite#giveUnder_sprite#font_txt';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0115.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 11.000000, y = 15.000000,width = 14.000000, height = 4.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 160.0, height = 32.0});
	localParams[9]:setPosition(92.5, 30.81);
	self.__children['item_btn#priceUnder_img'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'item_btn#priceUnder_img';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setVisible(false);
	localParams[10]:setContentSize({width = 44.0, height = 44.0});
	localParams[10]:setPosition(20.8, 16.0);
	self.__children['item_btn#priceUnder_img#gem_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'item_btn#priceUnder_img#gem_sprite';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[已售罄]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 155, g = 125, b = 100});
	localParams[11]:setVisible(false);
	localParams[11]:setContentSize({width = 64.0, height = 22.0});
	localParams[11]:setPosition(80.0, 16.0);
	self.__children['item_btn#priceUnder_img#price_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'item_btn#priceUnder_img#price_txt';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(24);
	localParams[12]:setString([[5555555]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setVisible(false);
	localParams[12]:setContentSize({width = 107.0, height = 26.0});
	localParams[12]:setPosition(96.0, 16.0);
	self.__children['item_btn#priceUnder_img#amount_txt'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'item_btn#priceUnder_img#amount_txt';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(24);
	localParams[13]:setString([[¥ 100]]);
	localParams[13]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[13]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setTextColor({r = 255, g = 140, b = 0});
	localParams[13]:setVisible(false);
	localParams[13]:setContentSize({width = 67.0, height = 26.0});
	localParams[13]:setPosition(80.0, 16.0);
	self.__children['item_btn#priceUnder_img#rmb'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'item_btn#priceUnder_img#rmb';
	localParams[9]:addChild(localParams[13]);

end
function PackageNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0020.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function PackageNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function PackageNode:_onPackage(sender)
    if self._clickDelegate and self._clickDelegate.onPackage then
        return self._clickDelegate:onPackage(sender);
    end
    if self.onPackage then
        return self:onPackage(sender);
    end
end


return PackageNode;