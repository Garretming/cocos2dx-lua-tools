-- 
-- Author: generation auto
-- Brief：RewardNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local RewardNode = class('RewardNode', gamecore.ui.BaseWidget);

function RewardNode:create(...) 
    local instance = RewardNode.new(...);
    return instance;
end

function RewardNode:ctor(...) 
    if RewardNode.super and RewardNode.super.ctor then
        RewardNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function RewardNode:initView()
    self.__LAYER_NAME = 'battle.ui.RewardNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._toViewDetails));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 110.0, height = 110.0});
	localParams[1]:setPosition(60.0, 60.0);
	self.__children['item_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'item_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 98.0, height = 98.0});
	localParams[2]:setPosition(55.0, 55.0);
	self.__children['item_btn#icon_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'item_btn#icon_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(20);
	localParams[3]:setString([[25]]);
	localParams[3]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[3]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[3]:setAnchorPoint(1.00, 0.50);
	localParams[3]:setContentSize({width = 28.0, height = 24.0});
	localParams[3]:setPosition(94.6, 22.0);
	self.__children['item_btn#count_txt'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'item_btn#count_txt';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._toViewDetails));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 110.0, height = 110.0});
	localParams[4]:setPosition(60.0, 60.0);
	self.__children['item_btn1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'item_btn1';
	self:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[25]]);
	localParams[5]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(1.00, 0.50);
	localParams[5]:setContentSize({width = 28.0, height = 24.0});
	localParams[5]:setPosition(100.91, 17.49);
	self.__children['item_btn1#count_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'item_btn1#count_txt';
	localParams[4]:addChild(localParams[5]);

end
function RewardNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function RewardNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RewardNode:_toViewDetails(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toViewDetails then
        return self.m_ClickDelegate:toViewDetails(sender);
    end
    if self.toViewDetails then
        return self:toViewDetails(sender);
    end
end


return RewardNode;