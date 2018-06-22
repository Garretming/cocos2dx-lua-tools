-- 
-- Author: generation auto
-- Brief：DescPopupNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local DescPopupNode = class('DescPopupNode', gamecore.ui.BaseWidget);

function DescPopupNode:create(...) 
    local instance = DescPopupNode.new(...);
    return instance;
end

function DescPopupNode:ctor(...) 
    if DescPopupNode.super and DescPopupNode.super.ctor then
        DescPopupNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function DescPopupNode:initView()
    self.__LAYER_NAME = 'common.ui.DescPopupNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 250.0, height = 120.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['tip'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'tip';
	self:addChild(localParams[1]);

	localParams[2] = Node:create();
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setContentSize({width = 0.0, height = 0.0});
	localParams[2]:setPosition(0.0, 120.0);
	self.__children['tip#Node_1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'tip#Node_1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(17);
	localParams[3]:setString([[]]);
	localParams[3]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[3]:setTextAreaSize({width = 220, height = 0});
	localParams[3]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[3]:setAnchorPoint(0.50, 1.00);
	localParams[3]:setTextColor({r = 240, g = 200, b = 60});
	localParams[3]:setContentSize({width = 220.0, height = 0.0});
	localParams[3]:setPosition(125.0, -45.0);
	self.__children['tip#Node_1#desc'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'tip#Node_1#desc';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = RichText:create();
	localParams[4]:setDefaultFontSize(20);
	localParams[4]:setString([[汉谟拉比法典]]);
	localParams[4]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[4]:setAnchorPoint(0.00, 1.00);
	localParams[4]:setTextColor({r = 255, g = 240, b = 155});
	localParams[4]:setContentSize({width = 125.0, height = 24.0});
	localParams[4]:setPosition(15.0, -15.0);
	self.__children['tip#Node_1#name'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'tip#Node_1#name';
	localParams[2]:addChild(localParams[4]);

end
function DescPopupNode:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function DescPopupNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return DescPopupNode;