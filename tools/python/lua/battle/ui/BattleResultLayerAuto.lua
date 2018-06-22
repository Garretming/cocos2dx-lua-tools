-- 
-- Author: generation auto
-- Brief：BattleResultLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local BattleResultLayer = class('BattleResultLayer', gamecore.ui.BaseWidget);

function BattleResultLayer:create(...) 
    local instance = BattleResultLayer.new(...);
    return instance;
end

function BattleResultLayer:ctor(...) 
    if BattleResultLayer.super and BattleResultLayer.super.ctor then
        BattleResultLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function BattleResultLayer:initView()
    self.__LAYER_NAME = 'battle.ui.BattleResultLayer';
    local localParams = {};
	localParams[1] = ScrollView:create();
	localParams[1]:setInnerContainerSize({width = 600.00, height = 120.00});
	localParams[1]:setDirection(0);
	localParams[1]:setBackGroundColorType(1);
	localParams[1]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[1]:setBackGroundColorOpacity(102);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setOpacity(0);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 600.0, height = 120.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 200.0);
	self.__children['scrollView'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'scrollView';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/fontImg0065.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 204.0, height = 24.0});
	localParams[2]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 62.0);
	self.__children['Sprite_1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Sprite_1';
	self:addChild(localParams[2]);

	localParams[3] = RichText:create();
	localParams[3]:setDefaultFontSize(20);
	localParams[3]:setString([[]]);
	localParams[3]:setDefaultFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[3]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[3]:setAnchorPoint(1.00, 0.50);
	localParams[3]:setVisible(false);
	localParams[3]:setContentSize({width = 93.0, height = 24.0});
	localParams[3]:setPosition(WinSize.width/2 + (-119.00 * ccx.scaleX), 302.0);
	self.__children['text1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'text1';
	self:addChild(localParams[3]);

	localParams[4] = RichText:create();
	localParams[4]:setDefaultFontSize(20);
	localParams[4]:setString([[]]);
	localParams[4]:setDefaultFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[4]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setVisible(false);
	localParams[4]:setContentSize({width = 93.0, height = 24.0});
	localParams[4]:setPosition(WinSize.width/2 + (119.00 * ccx.scaleX), 302.0);
	self.__children['text2'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'text2';
	self:addChild(localParams[4]);

	localParams[5] = RichText:create();
	localParams[5]:setDefaultFontSize(20);
	localParams[5]:setString([[]]);
	localParams[5]:setDefaultFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[5]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setVisible(false);
	localParams[5]:setContentSize({width = 93.0, height = 24.0});
	localParams[5]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 302.0);
	self.__children['text3'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'text3';
	self:addChild(localParams[5]);

end
function BattleResultLayer:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function BattleResultLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return BattleResultLayer;