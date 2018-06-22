-- 
-- Author: generation auto
-- Brief：OccupationNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local OccupationNode = class('OccupationNode', gamecore.ui.BaseWidget);

function OccupationNode:create(...) 
    local instance = OccupationNode.new(...);
    return instance;
end

function OccupationNode:ctor(...) 
    if OccupationNode.super and OccupationNode.super.ctor then
        OccupationNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function OccupationNode:initView()
    self.__LAYER_NAME = 'heroes.OccupationNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_btn/btn0064.png', 1);
	localParams[1]:loadTexturePressed('uires/public/sheet_btn/btn0065.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onOccupation));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 137.0, height = 82.0});
	localParams[1]:setPosition(68.26, 40.09);
	self.__children['occupation_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'occupation_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setScaleX(0.90);
	localParams[2]:setScaleY(0.90);
	localParams[2]:setContentSize({width = 30.0, height = 30.0});
	localParams[2]:setPosition(23.0, 58.0);
	self.__children['occupation_btn#redPoint_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'occupation_btn#redPoint_sprite';
	localParams[1]:addChild(localParams[2]);

end
function OccupationNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function OccupationNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function OccupationNode:_onOccupation(sender)
    if self._clickDelegate and self._clickDelegate.onOccupation then
        return self._clickDelegate:onOccupation(sender);
    end
    if self.onOccupation then
        return self:onOccupation(sender);
    end
end


return OccupationNode;