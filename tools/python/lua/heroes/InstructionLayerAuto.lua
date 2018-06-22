-- 
-- Author: generation auto
-- Brief：InstructionLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local InstructionLayer = class('InstructionLayer', gamecore.ui.BaseWidget);

function InstructionLayer:create(...) 
    local instance = InstructionLayer.new(...);
    return instance;
end

function InstructionLayer:ctor(...) 
    if InstructionLayer.super and InstructionLayer.super.ctor then
        InstructionLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function InstructionLayer:initView()
    self.__LAYER_NAME = 'heroes.InstructionLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0066.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 390.0, height = 510.0});
	localParams[1]:setPosition(512.0, 320.0);
	self.__children['Bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Bg_img';
	self:addChild(localParams[1]);

	localParams[2] = Text:create();
	localParams[2]:setFontSize(18);
	localParams[2]:setString([[生    命：]]);
	localParams[2]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[2]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[2]:setAnchorPoint(0.00, 0.50);
	localParams[2]:setTextColor({r = 255, g = 140, b = 0});
	localParams[2]:setContentSize({width = 66.0, height = 22.0});
	localParams[2]:setPosition(39.0, 428.4);
	self.__children['Bg_img#life_txt'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Bg_img#life_txt';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(18);
	localParams[3]:setString([[]]);
	localParams[3]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[3]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[3]:setAnchorPoint(0.00, 0.50);
	localParams[3]:setContentSize({width = 0.0, height = 0.0});
	localParams[3]:setPosition(72.6, 11.0);
	self.__children['Bg_img#life_txt#desc_txt'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Bg_img#life_txt#desc_txt';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(18);
	localParams[4]:setString([[攻    击：]]);
	localParams[4]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[4]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setTextColor({r = 255, g = 140, b = 0});
	localParams[4]:setContentSize({width = 66.0, height = 22.0});
	localParams[4]:setPosition(39.0, 383.22);
	self.__children['Bg_img#attack_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Bg_img#attack_txt';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(18);
	localParams[5]:setString([[]]);
	localParams[5]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(72.6, 11.0);
	self.__children['Bg_img#attack_txt#desc_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Bg_img#attack_txt#desc_txt';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(18);
	localParams[6]:setString([[护    甲：]]);
	localParams[6]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setTextColor({r = 255, g = 140, b = 0});
	localParams[6]:setContentSize({width = 66.0, height = 22.0});
	localParams[6]:setPosition(39.0, 338.04);
	self.__children['Bg_img#armor_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Bg_img#armor_txt';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(18);
	localParams[7]:setString([[]]);
	localParams[7]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(72.6, 11.0);
	self.__children['Bg_img#armor_txt#desc_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Bg_img#armor_txt#desc_txt';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(18);
	localParams[8]:setString([[速    度：]]);
	localParams[8]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setTextColor({r = 255, g = 140, b = 0});
	localParams[8]:setContentSize({width = 66.0, height = 22.0});
	localParams[8]:setPosition(39.0, 292.86);
	self.__children['Bg_img#speed_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Bg_img#speed_txt';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(18);
	localParams[9]:setString([[]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[9]:setAnchorPoint(0.00, 0.50);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(72.6, 11.0);
	self.__children['Bg_img#speed_txt#desc_txt'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Bg_img#speed_txt#desc_txt';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(18);
	localParams[10]:setString([[智    慧：]]);
	localParams[10]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[10]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setTextColor({r = 255, g = 140, b = 0});
	localParams[10]:setContentSize({width = 66.0, height = 22.0});
	localParams[10]:setPosition(39.0, 247.68);
	self.__children['Bg_img#magic_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Bg_img#magic_txt';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(18);
	localParams[11]:setString([[]]);
	localParams[11]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[11]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(72.6, 11.0);
	self.__children['Bg_img#magic_txt#desc_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Bg_img#magic_txt#desc_txt';
	localParams[10]:addChild(localParams[11]);

end
function InstructionLayer:loadImage()
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function InstructionLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return InstructionLayer;