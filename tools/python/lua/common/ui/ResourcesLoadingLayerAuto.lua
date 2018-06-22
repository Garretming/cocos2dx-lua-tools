-- 
-- Author: generation auto
-- Brief：ResourcesLoadingLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ResourcesLoadingLayer = class('ResourcesLoadingLayer', gamecore.ui.BaseWidget);

function ResourcesLoadingLayer:create(...) 
    local instance = ResourcesLoadingLayer.new(...);
    return instance;
end

function ResourcesLoadingLayer:ctor(...) 
    if ResourcesLoadingLayer.super and ResourcesLoadingLayer.super.ctor then
        ResourcesLoadingLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function ResourcesLoadingLayer:initView()
    self.__LAYER_NAME = 'common.ui.ResourcesLoadingLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0032.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setBlendFunc({src = 770, dst = 771});
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Sprite_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Sprite_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/other0180.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 964.0, height = 38.0});
	localParams[2]:setPosition(568.0, 120.0);
	self.__children['Sprite_1#loading'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Sprite_1#loading';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = LoadingBar:create('uires/public/sheet_common/other0179.png', 1, 0.00);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 882.0, height = 26.0});
	localParams[3]:setPosition(482.0, 19.0);
	self.__children['Sprite_1#loading#progress'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Sprite_1#loading#progress';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(24);
	localParams[4]:setString([[0%]]);
	localParams[4]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 38.0, height = 28.0});
	localParams[4]:setPosition(482.0, 19.0);
	self.__children['Sprite_1#loading#value'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Sprite_1#loading#value';
	localParams[2]:addChild(localParams[4]);

end
function ResourcesLoadingLayer:loadImageSync()
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0032.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function ResourcesLoadingLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return ResourcesLoadingLayer;