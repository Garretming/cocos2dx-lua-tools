-- 
-- Author: generation auto
-- Brief：ChampionItemNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ChampionItemNode = class('ChampionItemNode', gamecore.ui.BaseWidget);

function ChampionItemNode:create(...) 
    local instance = ChampionItemNode.new(...);
    return instance;
end

function ChampionItemNode:ctor(...) 
    if ChampionItemNode.super and ChampionItemNode.super.ctor then
        ChampionItemNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
end

function ChampionItemNode:initView()
    self.__LAYER_NAME = 'rank.ChampionItemNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0112.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 35.000000, y = 31.000000, width = 38.000000, height = 34.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._toViewInfo));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 560.0, height = 96.0});
	localParams[1]:setPosition(290.0, 51.0);
	self.__children['item_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'item_btn';
	self:addChild(localParams[1]);

	localParams[2] = Widget:create();
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setScaleX(0.98);
	localParams[2]:setScaleY(0.95);
	localParams[2]:setContentSize({width = 0.0, height = 0.0});
	localParams[2]:setPosition(-156.78, 44.76);
	self.__children['item_btn#__SELECTED_SCALE'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'item_btn#__SELECTED_SCALE';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0248.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 64.0, height = 37.0});
	localParams[3]:setPosition(62.0, 48.0);
	self.__children['item_btn#Sprite_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'item_btn#Sprite_1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 330.0, height = 32.0});
	localParams[4]:setPosition(347.2, 31.57);
	self.__children['item_btn#under_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'item_btn#under_1';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[最强王者]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 240, g = 200, b = 60});
	localParams[5]:setContentSize({width = 84.0, height = 22.0});
	localParams[5]:setPosition(72.6, 16.0);
	self.__children['item_btn#under_1#strongest_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'item_btn#under_1#strongest_txt';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setScaleX(0.80);
	localParams[6]:setScaleY(0.80);
	localParams[6]:setContentSize({width = 39.0, height = 36.0});
	localParams[6]:setPosition(231.0, 16.0);
	self.__children['item_btn#under_1#star_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'item_btn#under_1#star_sprite';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[x6]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 255, g = 240, b = 155});
	localParams[7]:setContentSize({width = 25.0, height = 22.0});
	localParams[7]:setPosition(264.0, 16.0);
	self.__children['item_btn#under_1#count_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'item_btn#under_1#count_txt';
	localParams[4]:addChild(localParams[7]);

	localParams[8] = ImageView:create(nil, 0);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.75);
	localParams[8]:setScaleY(0.75);
	localParams[8]:setContentSize({width = 46.0, height = 46.0});
	localParams[8]:setPosition(184.8, 32.91);
	self.__children['item_btn#strongestTimes_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'item_btn#strongestTimes_sprite';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(22);
	localParams[9]:setString([[UID:1235]]);
	localParams[9]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[9]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[9]:setAnchorPoint(1.00, 0.50);
	localParams[9]:setTextColor({r = 255, g = 240, b = 155});
	localParams[9]:setContentSize({width = 92.0, height = 26.0});
	localParams[9]:setPosition(504.5, 67.2);
	self.__children['item_btn#uid_txt'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'item_btn#uid_txt';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(22);
	localParams[10]:setString([[大鸟大鸟大鸟]]);
	localParams[10]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setTextColor({r = 255, g = 240, b = 155});
	localParams[10]:setContentSize({width = 136.0, height = 26.0});
	localParams[10]:setPosition(168.0, 67.2);
	self.__children['item_btn#name_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'item_btn#name_txt';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = TextAtlas:create();
	localParams[11]:setProperty([[1234]], 'uires/public/font_number/fontImg0002.png', 30, 39, '0');
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setScaleX(0.80);
	localParams[11]:setScaleY(0.80);
	localParams[11]:setContentSize({width = 120.0, height = 39.0});
	localParams[11]:setPosition(91.0, 48.0);
	self.__children['item_btn#rank_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'item_btn#rank_txt';
	localParams[1]:addChild(localParams[11]);

end
function ChampionItemNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0002.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function ChampionItemNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ChampionItemNode:_toViewInfo(sender)
    if self._clickDelegate and self._clickDelegate.toViewInfo then
        return self._clickDelegate:toViewInfo(sender);
    end
    if self.toViewInfo then
        return self:toViewInfo(sender);
    end
end


return ChampionItemNode;