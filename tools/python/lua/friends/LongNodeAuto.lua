-- 
-- Author: generation auto
-- Brief：LongNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local LongNode = class('LongNode', gamecore.ui.BaseWidget);

function LongNode:create(...) 
    local instance = LongNode.new(...);
    return instance;
end

function LongNode:ctor(...) 
    if LongNode.super and LongNode.super.ctor then
        LongNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function LongNode:initView()
    self.__LAYER_NAME = 'friends.LongNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0112.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 35.000000, y = 31.000000, width = 38.000000, height = 34.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 520.0, height = 96.0});
	localParams[1]:setPosition(10.0, 3.0);
	self.__children['cell_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'cell_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setScaleX(0.75);
	localParams[2]:setScaleY(0.75);
	localParams[2]:setContentSize({width = 96.0, height = 96.0});
	localParams[2]:setPosition(49.4, 48.0);
	self.__children['cell_btn#icon'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'cell_btn#icon';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_other/other0196.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._toViewRoleInfo2));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 111.0, height = 111.0});
	localParams[3]:setPosition(48.0, 48.0);
	self.__children['cell_btn#icon#iconUnder_btn'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'cell_btn#icon#iconUnder_btn';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(26);
	localParams[4]:setString([[]]);
	localParams[4]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setTextColor({r = 255, g = 140, b = 0});
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(-7.68, 3.84);
	self.__children['cell_btn#icon#level'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'cell_btn#icon#level';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 240.0, height = 32.0});
	localParams[5]:setPosition(215.8, 65.28);
	self.__children['cell_btn#under_1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'cell_btn#under_1';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = RichText:create();
	localParams[6]:setDefaultFontSize(20);
	localParams[6]:setString([[]]);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setTextColor({r = 255, g = 240, b = 155});
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(7.2, 16.0);
	self.__children['cell_btn#under_1#name_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'cell_btn#under_1#name_txt';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(16);
	localParams[7]:setString([[]]);
	localParams[7]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(100.0, 28.85);
	self.__children['cell_btn#desc_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'cell_btn#desc_txt';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_btn/btn0136.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:onClick(handler(self, self._onRefuse));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 62.0, height = 62.0});
	localParams[8]:setPosition(390.0, 48.0);
	self.__children['cell_btn#refuse_btn'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'cell_btn#refuse_btn';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Widget:create();
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setScaleX(0.90);
	localParams[9]:setScaleY(0.90);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(20.0, -20.0);
	self.__children['cell_btn#refuse_btn#__SELECTED_SCALE'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'cell_btn#refuse_btn#__SELECTED_SCALE';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:loadTextureNormal('uires/public/sheet_btn/btn0137.png', 1);
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:onClick(handler(self, self._onAccept));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 62.0, height = 62.0});
	localParams[10]:setPosition(462.8, 48.0);
	self.__children['cell_btn#accept_btn'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'cell_btn#accept_btn';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = Widget:create();
	localParams[11]:setAnchorPoint(0.00, 0.00);
	localParams[11]:setScaleX(0.90);
	localParams[11]:setScaleY(0.90);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(20.0, -20.0);
	self.__children['cell_btn#accept_btn#__SELECTED_SCALE'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'cell_btn#accept_btn#__SELECTED_SCALE';
	localParams[10]:addChild(localParams[11]);

end
function LongNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function LongNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function LongNode:_onRefuse(sender)
    if self._clickDelegate and self._clickDelegate.onRefuse then
        return self._clickDelegate:onRefuse(sender);
    end
    if self.onRefuse then
        return self:onRefuse(sender);
    end
end


function LongNode:_toViewRoleInfo2(sender)
    if self._clickDelegate and self._clickDelegate.toViewRoleInfo2 then
        return self._clickDelegate:toViewRoleInfo2(sender);
    end
    if self.toViewRoleInfo2 then
        return self:toViewRoleInfo2(sender);
    end
end


function LongNode:_onAccept(sender)
    if self._clickDelegate and self._clickDelegate.onAccept then
        return self._clickDelegate:onAccept(sender);
    end
    if self.onAccept then
        return self:onAccept(sender);
    end
end


return LongNode;