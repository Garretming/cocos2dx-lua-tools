-- 
-- Author: generation auto
-- Brief：GoodsNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local GoodsNode = class('GoodsNode', gamecore.ui.BaseWidget);

function GoodsNode:create(...) 
    local instance = GoodsNode.new(...);
    return instance;
end

function GoodsNode:ctor(...) 
    if GoodsNode.super and GoodsNode.super.ctor then
        GoodsNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function GoodsNode:initView()
    self.__LAYER_NAME = 'shop.GoodsNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0118.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onGoods));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 138.0, height = 241.0});
	localParams[1]:setPosition(74.0, 126.0);
	self.__children['item_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'item_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/bg_img/bgImg0019.png', 0);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 123.0, height = 150.0});
	localParams[2]:setPosition(69.0, 159.06);
	self.__children['item_btn#IconBackImage'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'item_btn#IconBackImage';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create(, 0);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 46.0, height = 46.0});
	localParams[3]:setPosition(61.5, 90.0);
	self.__children['item_btn#IconBackImage#Icon'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'item_btn#IconBackImage#Icon';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[aaab]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 255, g = 240, b = 155});
	localParams[4]:setContentSize({width = 44.0, height = 22.0});
	localParams[4]:setPosition(61.5, 18.21);
	self.__children['item_btn#IconBackImage#Name'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'item_btn#IconBackImage#Name';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = RichText:create();
	localParams[5]:setDefaultFontSize(18);
	localParams[5]:setString([[]]);
	localParams[5]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 26, g = 26, b = 26});
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(68.99, 61.45);
	self.__children['item_btn#TimesText'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'item_btn#TimesText';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0115.png', 1);
	localParams[6]:ignoreContentAdaptWithSize(false);
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 11.000000, y = 15.000000,width = 14.000000, height = 4.000000);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 120.0, height = 32.0});
	localParams[6]:setPosition(69.0, 25.3);
	self.__children['item_btn#priceUnder_img'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'item_btn#priceUnder_img';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(24);
	localParams[7]:setString([[¥ 100]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 255, g = 140, b = 0});
	localParams[7]:setVisible(false);
	localParams[7]:setContentSize({width = 67.0, height = 26.0});
	localParams[7]:setPosition(60.0, 16.0);
	self.__children['item_btn#priceUnder_img#rmb'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'item_btn#priceUnder_img#rmb';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(24);
	localParams[8]:setString([[55555]]);
	localParams[8]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setVisible(false);
	localParams[8]:setContentSize({width = 77.0, height = 26.0});
	localParams[8]:setPosition(76.0, 16.0);
	self.__children['item_btn#priceUnder_img#amount_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'item_btn#priceUnder_img#amount_txt';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[已售罄]]);
	localParams[9]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setTextColor({r = 155, g = 125, b = 100});
	localParams[9]:setVisible(false);
	localParams[9]:setContentSize({width = 64.0, height = 22.0});
	localParams[9]:setPosition(60.0, 16.0);
	self.__children['item_btn#priceUnder_img#price_txt'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'item_btn#priceUnder_img#price_txt';
	localParams[6]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setVisible(false);
	localParams[10]:setContentSize({width = 44.0, height = 44.0});
	localParams[10]:setPosition(20.0, 16.0);
	self.__children['item_btn#priceUnder_img#gem_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'item_btn#priceUnder_img#gem_sprite';
	localParams[6]:addChild(localParams[10]);

end
function GoodsNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0019.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function GoodsNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function GoodsNode:_onGoods(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGoods then
        return self.m_ClickDelegate:onGoods(sender);
    end
    if self.onGoods then
        return self:onGoods(sender);
    end
end


return GoodsNode;