-- 
-- Author: generation auto
-- Brief：EquipItemNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local EquipItemNode = class('EquipItemNode', gamecore.ui.BaseWidget);

function EquipItemNode:create(...) 
    local instance = EquipItemNode.new(...);
    return instance;
end

function EquipItemNode:ctor(...) 
    if EquipItemNode.super and EquipItemNode.super.ctor then
        EquipItemNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function EquipItemNode:initView()
    self.__LAYER_NAME = 'backpack.EquipItemNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[1]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._toViewDetails));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 110.0, height = 110.0});
	localParams[1]:setPosition(58.0, 58.0);
	self.__children['item_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'item_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0037.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 120.0, height = 120.0});
	localParams[2]:setPosition(55.0, 55.0);
	self.__children['item_btn#__SELECTED_IMG'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'item_btn#__SELECTED_IMG';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create(, 0);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 46.0, height = 46.0});
	localParams[3]:setPosition(55.0, 54.0);
	self.__children['item_btn#icon_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'item_btn#icon_sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[LV:25]]);
	localParams[4]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[4]:setAnchorPoint(1.00, 0.50);
	localParams[4]:setContentSize({width = 54.0, height = 22.0});
	localParams[4]:setPosition(102.3, 17.6);
	self.__children['item_btn#count_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'item_btn#count_txt';
	localParams[1]:addChild(localParams[4]);

end
function EquipItemNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function EquipItemNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function EquipItemNode:_toViewDetails(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toViewDetails then
        return self.m_ClickDelegate:toViewDetails(sender);
    end
    if self.toViewDetails then
        return self:toViewDetails(sender);
    end
end


return EquipItemNode;