-- 
-- Author: generation auto
-- Brief：BorderNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local BorderNode = class('BorderNode', gamecore.ui.BaseWidget);

function BorderNode:create(...) 
    local instance = BorderNode.new(...);
    return instance;
end

function BorderNode:ctor(...) 
    if BorderNode.super and BorderNode.super.ctor then
        BorderNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function BorderNode:initView()
    self.__LAYER_NAME = 'setting.BorderNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 80.000000, height = 88.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._toBorderDetails));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 110.0, height = 110.0});
	localParams[1]:setPosition(14.0, 12.0);
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 111.0, height = 111.0});
	localParams[2]:setPosition(55.0, 56.0);
	self.__children['bg#border'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#border';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0194.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 128.0, height = 128.0});
	localParams[3]:setPosition(55.79, 54.64);
	self.__children['bg#light'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#light';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create(, 0);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 55.0, height = 68.0});
	localParams[4]:setPosition(54.34, 56.12);
	self.__children['bg#level_img'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#level_img';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0047.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 61.0, height = 43.0});
	localParams[5]:setPosition(29.3, 93.4);
	self.__children['bg#new'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#new';
	localParams[1]:addChild(localParams[5]);

end
function BorderNode:loadImageSync()
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


function BorderNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function BorderNode:_toBorderDetails(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toBorderDetails then
        return self.m_ClickDelegate:toBorderDetails(sender);
    end
    if self.toBorderDetails then
        return self:toBorderDetails(sender);
    end
end


return BorderNode;