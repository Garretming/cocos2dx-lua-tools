-- 
-- Author: generation auto
-- Brief：RiskSessionNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local RiskSessionNode = class('RiskSessionNode', gamecore.ui.BaseWidget);

function RiskSessionNode:create(...) 
    local instance = RiskSessionNode.new(...);
    return instance;
end

function RiskSessionNode:ctor(...) 
    if RiskSessionNode.super and RiskSessionNode.super.ctor then
        RiskSessionNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function RiskSessionNode:initView()
    self.__LAYER_NAME = 'risk.RiskSessionNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 16.000000, height = 14.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._onSession));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 320.0, height = 160.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['Button_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Button_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0076.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 168.0, height = 56.0});
	localParams[2]:setPosition(160.0, 80.0);
	self.__children['Button_1#image'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Button_1#image';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0304.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 320.0, height = 160.0});
	localParams[3]:setPosition(160.0, 80.0);
	self.__children['Button_1#__SELECTED_IMG'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Button_1#__SELECTED_IMG';
	localParams[1]:setSelectNode(localParams[3]);
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 103.0, height = 24.0});
	localParams[4]:setPosition(160.0, 25.0);
	self.__children['Button_1#name'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Button_1#name';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Widget:create();
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(0.0, 0.0);
	self.__children['Button_1#lock'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Button_1#lock';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[6]:ignoreContentAdaptWithSize(false);
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 310.0, height = 150.0});
	localParams[6]:setPosition(160.0, 80.0);
	self.__children['Button_1#lock#Image_4'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Button_1#lock#Image_4';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.80);
	localParams[7]:setScaleY(0.80);
	localParams[7]:setContentSize({width = 55.0, height = 68.0});
	localParams[7]:setPosition(160.0, 80.0);
	self.__children['Button_1#lock#Sprite_9'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Button_1#lock#Sprite_9';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0303.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 103.0, height = 103.0});
	localParams[8]:setPosition(55.71, 104.55);
	self.__children['Button_1#lock#uires_public_sheet_other_other0303_10'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Button_1#lock#uires_public_sheet_other_other0303_10';
	localParams[5]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0303.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 103.0, height = 103.0});
	localParams[9]:setPosition(263.86, 54.64);
	self.__children['Button_1#lock#uires_public_sheet_other_other0303_11'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Button_1#lock#uires_public_sheet_other_other0303_11';
	localParams[5]:addChild(localParams[9]);

end
function RiskSessionNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Normal.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function RiskSessionNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RiskSessionNode:_onSession(sender)
    if self._clickDelegate and self._clickDelegate.onSession then
        return self._clickDelegate:onSession(sender);
    end
    if self.onSession then
        return self:onSession(sender);
    end
end


return RiskSessionNode;