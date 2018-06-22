-- 
-- Author: generation auto
-- Brief：HeadNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local HeadNode = class('HeadNode', gamecore.ui.BaseWidget);

function HeadNode:create(...) 
    local instance = HeadNode.new(...);
    return instance;
end

function HeadNode:ctor(...) 
    if HeadNode.super and HeadNode.super.ctor then
        HeadNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function HeadNode:initView()
    self.__LAYER_NAME = 'setting.HeadNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 80.000000, height = 88.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._toHeadDetails));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 110.0, height = 110.0});
	localParams[1]:setPosition(14.0, 12.0);
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create(nil, 0);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 46.0, height = 46.0});
	localParams[2]:setPosition(55.0, 55.0);
	self.__children['bg#head'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#head';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0194.png', 1);
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setContentSize({width = 128.0, height = 128.0});
	localParams[3]:setPosition(-7.21, -8.36);
	self.__children['bg#light'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#light';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create(nil, 0);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 46.0, height = 46.0});
	localParams[4]:setPosition(54.34, 57.4);
	self.__children['bg#level_img'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#level_img';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0047.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 61.0, height = 43.0});
	localParams[5]:setPosition(29.3, 94.69);
	self.__children['bg#new'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#new';
	localParams[1]:addChild(localParams[5]);

end
function HeadNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function HeadNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function HeadNode:_toHeadDetails(sender)
    if self._clickDelegate and self._clickDelegate.toHeadDetails then
        return self._clickDelegate:toHeadDetails(sender);
    end
    if self.toHeadDetails then
        return self:toHeadDetails(sender);
    end
end


return HeadNode;