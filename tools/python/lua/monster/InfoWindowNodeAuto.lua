-- 
-- Author: generation auto
-- Brief：InfoWindowNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local InfoWindowNode = class('InfoWindowNode', gamecore.ui.BaseWidget);

function InfoWindowNode:create(...) 
    local instance = InfoWindowNode.new(...);
    return instance;
end

function InfoWindowNode:ctor(...) 
    if InfoWindowNode.super and InfoWindowNode.super.ctor then
        InfoWindowNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function InfoWindowNode:initView()
    self.__LAYER_NAME = 'monster.InfoWindowNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 300.0, height = 200.0});
	localParams[1]:setPosition(-0.82, 0.6);
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = RichText:create();
	localParams[2]:setDefaultFontSize(20);
	localParams[2]:setString([[]]);
	localParams[2]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[2]:setTextAreaSize({width = 270, height = 0});
	localParams[2]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:setContentSize({width = 270.0, height = 0.0});
	localParams[2]:setPosition(150.0, 15.0);
	self.__children['bg_img#desc_txt'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#desc_txt';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setScaleX(0.70);
	localParams[3]:setScaleY(0.70);
	localParams[3]:setContentSize({width = 108.0, height = 108.0});
	localParams[3]:setPosition(65.7, 136.01);
	self.__children['under_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'under_sprite';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 80.0, height = 80.0});
	localParams[4]:setPosition(54.0, 54.0);
	self.__children['under_sprite#skillIcon_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'under_sprite#skillIcon_sprite';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(40);
	localParams[5]:setString([[灵魂突袭]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 255, g = 240, b = 155});
	localParams[5]:setContentSize({width = 164.0, height = 42.0});
	localParams[5]:setPosition(228.67, 55.16);
	self.__children['under_sprite#skillName_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'under_sprite#skillName_txt';
	localParams[3]:addChild(localParams[5]);

end
function InfoWindowNode:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function InfoWindowNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return InfoWindowNode;