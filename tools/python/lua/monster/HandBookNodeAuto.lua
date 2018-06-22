-- 
-- Author: generation auto
-- Brief：HandBookNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local HandBookNode = class('HandBookNode', gamecore.ui.BaseWidget);

function HandBookNode:create(...) 
    local instance = HandBookNode.new(...);
    return instance;
end

function HandBookNode:ctor(...) 
    if HandBookNode.super and HandBookNode.super.ctor then
        HandBookNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function HandBookNode:initView()
    self.__LAYER_NAME = 'monster.HandBookNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_common/dragon001_3.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setScaleX(0.90);
	localParams[1]:setScaleY(0.90);
	localParams[1]:onClick(handler(self, self._onMonster));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 117.0, height = 355.0});
	localParams[1]:setPosition(3.0, 3.0);
	self.__children['monster'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'monster';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 38.0, height = 42.0});
	localParams[2]:setPosition(90.0, 75.0);
	self.__children['monster#anger'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'monster#anger';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(24);
	localParams[3]:setString([[9]]);
	localParams[3]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[3]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 19.0, height = 28.0});
	localParams[3]:setPosition(18.65, 19.0);
	self.__children['monster#anger#value'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'monster#anger#value';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.80);
	localParams[4]:setScaleY(0.80);
	localParams[4]:setContentSize({width = 34.0, height = 34.0});
	localParams[4]:setPosition(18.0, 25.0);
	self.__children['monster#position'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'monster#position';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(16);
	localParams[5]:setString([[]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setTextColor({r = 255, g = 240, b = 155});
	localParams[5]:setContentSize({width = 82.0, height = 20.0});
	localParams[5]:setPosition(30.0, 25.0);
	self.__children['monster#name'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'monster#name';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0151.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 94.0, height = 94.0});
	localParams[6]:setPosition(45.0, 310.0);
	self.__children['monster#quality'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'monster#quality';
	localParams[1]:addChild(localParams[6]);

end
function HandBookNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function HandBookNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function HandBookNode:_onMonster(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onMonster then
        return self.m_ClickDelegate:onMonster(sender);
    end
    if self.onMonster then
        return self:onMonster(sender);
    end
end


return HandBookNode;