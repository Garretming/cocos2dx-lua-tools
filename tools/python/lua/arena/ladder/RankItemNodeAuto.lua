-- 
-- Author: generation auto
-- Brief：RankItemNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local RankItemNode = class('RankItemNode', gamecore.ui.BaseWidget);

function RankItemNode:create(...) 
    local instance = RankItemNode.new(...);
    return instance;
end

function RankItemNode:ctor(...) 
    if RankItemNode.super and RankItemNode.super.ctor then
        RankItemNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function RankItemNode:initView()
    self.__LAYER_NAME = 'arena.ladder.RankItemNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0112.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 35.000000, y = 31.000000,width = 38.000000, height = 34.000000);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 560.0, height = 96.0});
	localParams[1]:setPosition(10.0, 3.0);
	self.__children['under_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'under_img';
	self:addChild(localParams[1]);

	localParams[2] = TextAtlas:create();
	localParams[2]:setProperty([[0]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 34.0, height = 40.0});
	localParams[2]:setPosition(78.4, 48.0);
	self.__children['under_img#rank_atlasLabel'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'under_img#rank_atlasLabel';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_icon/icon0078.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 82.0, height = 82.0});
	localParams[3]:setPosition(89.6, 48.0);
	self.__children['under_img#Sprite_11'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'under_img#Sprite_11';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 330.0, height = 32.0});
	localParams[4]:setPosition(347.2, 31.57);
	self.__children['under_img#under_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'under_img#under_1';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[最强王者]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 240, g = 200, b = 60});
	localParams[5]:setContentSize({width = 84.0, height = 22.0});
	localParams[5]:setPosition(72.6, 16.0);
	self.__children['under_img#under_1#strongest_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'under_img#under_1#strongest_txt';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setScaleX(0.80);
	localParams[6]:setScaleY(0.80);
	localParams[6]:setContentSize({width = 39.0, height = 36.0});
	localParams[6]:setPosition(231.0, 16.0);
	self.__children['under_img#under_1#star_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'under_img#under_1#star_sprite';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[x6]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 255, g = 240, b = 155});
	localParams[7]:setContentSize({width = 25.0, height = 22.0});
	localParams[7]:setPosition(264.0, 16.0);
	self.__children['under_img#under_1#count_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'under_img#under_1#count_txt';
	localParams[4]:addChild(localParams[7]);

	localParams[8] = ImageView:create(, 0);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.75);
	localParams[8]:setScaleY(0.75);
	localParams[8]:setContentSize({width = 46.0, height = 46.0});
	localParams[8]:setPosition(184.8, 32.91);
	self.__children['under_img#strongestTimes_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'under_img#strongestTimes_sprite';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(22);
	localParams[9]:setString([[胜率：]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[9]:setAnchorPoint(1.00, 0.50);
	localParams[9]:setTextColor({r = 255, g = 240, b = 155});
	localParams[9]:setContentSize({width = 57.0, height = 29.0});
	localParams[9]:setPosition(459.42, 67.2);
	self.__children['under_img#win_text11'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'under_img#win_text11';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(22);
	localParams[10]:setString([[50.00%]]);
	localParams[10]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[10]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setTextColor({r = 255, g = 240, b = 155});
	localParams[10]:setContentSize({width = 75.0, height = 29.0});
	localParams[10]:setPosition(461.1, 67.2);
	self.__children['under_img#win_text'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'under_img#win_text';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(22);
	localParams[11]:setString([[LV.25]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 255, g = 240, b = 155});
	localParams[11]:setContentSize({width = 59.0, height = 26.0});
	localParams[11]:setPosition(350.71, 67.2);
	self.__children['under_img#level_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'under_img#level_txt';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(22);
	localParams[12]:setString([[大鸟大鸟大鸟]]);
	localParams[12]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[12]:setAnchorPoint(0.00, 0.50);
	localParams[12]:setTextColor({r = 255, g = 240, b = 155});
	localParams[12]:setContentSize({width = 136.0, height = 26.0});
	localParams[12]:setPosition(168.0, 67.2);
	self.__children['under_img#name_txt'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'under_img#name_txt';
	localParams[1]:addChild(localParams[12]);

end
function RankItemNode:loadImageSync()
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg013.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function RankItemNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return RankItemNode;