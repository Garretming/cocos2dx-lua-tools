-- 
-- Author: generation auto
-- Brief：SkillBookLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SkillBookLayer = class('SkillBookLayer', gamecore.ui.BaseWidget);

function SkillBookLayer:create(...) 
    local instance = SkillBookLayer.new(...);
    return instance;
end

function SkillBookLayer:ctor(...) 
    if SkillBookLayer.super and SkillBookLayer.super.ctor then
        SkillBookLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(false);
end

function SkillBookLayer:initView()
    self.__LAYER_NAME = 'shop.SkillBookLayer';
    local localParams = {};
	localParams[1] = ScrollView:create();
	localParams[1]:setInnerContainerSize({width = 590.00, height = 505.00});
	localParams[1]:setDirection(1);
	localParams[1]:setBackGroundColorType(1);
	localParams[1]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[1]:setBackGroundColorOpacity(0);
	localParams[1]:setAnchorPoint(0.00, 1.00);
	localParams[1]:setOpacity(251);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = WinSize.width - 434.00, height = WinSize.height - 135.00});
	localParams[1]:setPosition(WinSize.width/2 + (-377.04 * ccx.scaleX), WinSize.height - 135.00);
	self.__children['ScrollView'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'ScrollView';
	self:addChild(localParams[1]);

end
function SkillBookLayer:loadImage()
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function SkillBookLayer:loadPlistResources()

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return SkillBookLayer;