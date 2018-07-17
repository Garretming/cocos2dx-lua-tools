-- 
-- Author: generation auto
-- Brief：CardSpriteAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local CardSprite = class('CardSprite', gamecore.ui.BaseWidget);

function CardSprite:create(...) 
    local instance = CardSprite.new(...);
    return instance;
end

function CardSprite:ctor(...) 
    if CardSprite.super and CardSprite.super.ctor then
        CardSprite.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
end

function CardSprite:initView()
    self.__LAYER_NAME = 'battle.ui.CardSprite';
    local localParams = {};
	localParams[1] = ImageView:create('uires/battle/sheet/bgFrame0129.png', 1);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 132.0, height = 133.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['monster'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'monster';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create(nil, 0);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setVisible(false);
	localParams[2]:setContentSize({width = 46.0, height = 46.0});
	localParams[2]:setPosition(66.0, 130.0);
	self.__children['monster#image'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'monster#image';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/battle/sheet/other0227.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.00);
	localParams[3]:setContentSize({width = 130.0, height = 70.0});
	localParams[3]:setPosition(66.0, 0.0);
	self.__children['monster#quality'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'monster#quality';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.00);
	localParams[4]:setVisible(false);
	localParams[4]:setContentSize({width = 38.0, height = 42.0});
	localParams[4]:setPosition(66.0, 0.0);
	self.__children['monster#anger'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'monster#anger';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = TextAtlas:create();
	localParams[5]:setProperty([[0]], 'uires/public/font_number/fontImg0022.png', 18, 21, '.');
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(0.80);
	localParams[5]:setScaleY(0.80);
	localParams[5]:setContentSize({width = 18.0, height = 21.0});
	localParams[5]:setPosition(19.0, 19.0);
	self.__children['monster#anger#value'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'monster#anger#value';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_common/icon0072.png', 1);
	localParams[6]:setAnchorPoint(0.47, 0.54);
	localParams[6]:setVisible(false);
	localParams[6]:setContentSize({width = 34.0, height = 34.0});
	localParams[6]:setPosition(23.82, 41.25);
	self.__children['monster#position'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'monster#position';
	localParams[1]:addChild(localParams[6]);

end
function CardSprite:loadImageSync()
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/battle/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0022.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function CardSprite:loadPlistResources()
	table.insert(self._plistList, 'uires/battle/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return CardSprite;