-- 
-- Author: generation auto
-- Brief：UpdateLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local UpdateLayer = class('UpdateLayer', gamecore.ui.BaseWidget);

function UpdateLayer:create(...) 
    local instance = UpdateLayer.new(...);
    return instance;
end

function UpdateLayer:ctor(...) 
    if UpdateLayer.super and UpdateLayer.super.ctor then
        UpdateLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);
end

function UpdateLayer:initView()
    self.__LAYER_NAME = 'login.UpdateLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0041.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setBlendFunc({src = 770, dst = 771});
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Sprite_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Sprite_1';
	self:addChild(localParams[1]);

	localParams[2] = Text:create();
	localParams[2]:setFontSize(20);
	localParams[2]:setString([[检查更新中...]]);
	localParams[2]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[2]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 119.0, height = 27.0});
	localParams[2]:setPosition(568.0, 155.0);
	self.__children['Sprite_1#Text_15'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Sprite_1#Text_15';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_common/other0180.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 964.0, height = 38.0});
	localParams[3]:setPosition(568.0, 120.0);
	self.__children['Sprite_1#loading'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Sprite_1#loading';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = LoadingBar:create('uires/public/sheet_common/other0179.png', 1, 0.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 882.0, height = 26.0});
	localParams[4]:setPosition(482.0, 19.0);
	self.__children['Sprite_1#loading#progress'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Sprite_1#loading#progress';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(24);
	localParams[5]:setString([[0%]]);
	localParams[5]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 38.0, height = 28.0});
	localParams[5]:setPosition(482.0, 19.0);
	self.__children['Sprite_1#loading#value'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Sprite_1#loading#value';
	localParams[3]:addChild(localParams[5]);

end
function UpdateLayer:loadImage()
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0041.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function UpdateLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return UpdateLayer;