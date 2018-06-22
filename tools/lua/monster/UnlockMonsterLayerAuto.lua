-- 
-- Author: generation auto
-- Brief：UnlockMonsterLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local UnlockMonsterLayer = class('UnlockMonsterLayer', gamecore.ui.BaseWidget);

function UnlockMonsterLayer:create(...) 
    local instance = UnlockMonsterLayer.new(...);
    return instance;
end

function UnlockMonsterLayer:ctor(...) 
    if UnlockMonsterLayer.super and UnlockMonsterLayer.super.ctor then
        UnlockMonsterLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function UnlockMonsterLayer:initView()
    self.__LAYER_NAME = 'monster.UnlockMonsterLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0010.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create(, 0);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 46.0, height = 46.0});
	localParams[2]:setPosition(512.0, 179.97);
	self.__children['monsterIcon_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'monsterIcon_sprite';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0065.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 204.0, height = 24.0});
	localParams[3]:setPosition(512.0, 45.18);
	self.__children['prompt_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'prompt_sprite';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0099.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 408.0, height = 54.0});
	localParams[4]:setPosition(512.0, 499.2);
	self.__children['Sprite_3'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Sprite_3';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0104.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 123.0, height = 124.0});
	localParams[5]:setPosition(608.51, 283.36);
	self.__children['hire_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'hire_sprite';
	self:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[解锁后每日可进行雇佣]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 80, g = 255, b = 0});
	localParams[6]:setContentSize({width = 204.0, height = 22.0});
	localParams[6]:setPosition(512.0, 448.0);
	self.__children['cue_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'cue_txt';
	self:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0102.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 273.0, height = 42.0});
	localParams[7]:setPosition(503.96, 102.91);
	self.__children['under_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'under_sprite';
	self:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(28);
	localParams[8]:setString([[豹子大魔王]]);
	localParams[8]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setTextColor({r = 255, g = 240, b = 155});
	localParams[8]:setContentSize({width = 144.0, height = 30.0});
	localParams[8]:setPosition(136.5, 21.0);
	self.__children['under_sprite#name_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'under_sprite#name_txt';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 60.0, height = 29.0});
	localParams[9]:setPosition(33.79, 21.0);
	self.__children['under_sprite#left_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'under_sprite#left_sprite';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 60.0, height = 29.0});
	localParams[10]:setPosition(240.32, 21.0);
	self.__children['under_sprite#right_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'under_sprite#right_sprite';
	localParams[7]:addChild(localParams[10]);

end
function UnlockMonsterLayer:loadImage()
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0010.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function UnlockMonsterLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return UnlockMonsterLayer;