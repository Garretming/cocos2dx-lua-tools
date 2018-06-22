-- 
-- Author: generation auto
-- Brief：PropLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local PropLayer = class('PropLayer', gamecore.ui.BaseWidget);

function PropLayer:create(...) 
    local instance = PropLayer.new(...);
    return instance;
end

function PropLayer:ctor(...) 
    if PropLayer.super and PropLayer.super.ctor then
        PropLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function PropLayer:initView()
    self.__LAYER_NAME = 'shop.PropLayer';
    local localParams = {};
	localParams[1] = ScrollView:create();
	localParams[1]:setInnerContainerSize({width = 590.00, height = 510.00});
	localParams[1]:setDirection(1);
	localParams[1]:setBackGroundColorType(1);
	localParams[1]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[1]:setBackGroundColorOpacity(0);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setOpacity(251);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = WinSize.width - 434.00, height = WinSize.height - 134.00});
	localParams[1]:setPosition(123.0, WinSize.height/2 + (-320.00 * ccx.scaleY));
	self.__children['prop_ScrollView'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'prop_ScrollView';
	self:addChild(localParams[1]);

end
function PropLayer:loadImage()
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function PropLayer:loadPlistResources()

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return PropLayer;