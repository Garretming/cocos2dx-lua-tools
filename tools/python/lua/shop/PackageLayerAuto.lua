-- 
-- Author: generation auto
-- Brief：PackageLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local PackageLayer = class('PackageLayer', gamecore.ui.BaseWidget);

function PackageLayer:create(...) 
    local instance = PackageLayer.new(...);
    return instance;
end

function PackageLayer:ctor(...) 
    if PackageLayer.super and PackageLayer.super.ctor then
        PackageLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(false);
end

function PackageLayer:initView()
    self.__LAYER_NAME = 'shop.PackageLayer';
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
	self.__children['package_ScrollView'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'package_ScrollView';
	self:addChild(localParams[1]);

end
function PackageLayer:loadImage()
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function PackageLayer:loadPlistResources()

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return PackageLayer;