-- 
-- Author: generation auto
-- Brief：MercenaryNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local MercenaryNode = class('MercenaryNode', gamecore.ui.BaseWidget);

function MercenaryNode:create(...) 
    local instance = MercenaryNode.new(...);
    return instance;
end

function MercenaryNode:ctor(...) 
    if MercenaryNode.super and MercenaryNode.super.ctor then
        MercenaryNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
end

function MercenaryNode:initView()
    self.__LAYER_NAME = 'formation.MercenaryNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_other/other0121.png', 1);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 111.0, height = 53.0});
	localParams[1]:setPosition(58.51, 44.09);
	self.__children['checked'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'checked';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0125.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 94.0, height = 62.0});
	localParams[2]:setPosition(58.21, 52.02);
	self.__children['quality'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'quality';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0093.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 90.0, height = 21.0});
	localParams[3]:setPosition(69.71, 10.31);
	self.__children['Image_17'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_17';
	self:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[LV:10]]);
	localParams[4]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setScaleX(0.70);
	localParams[4]:setScaleY(0.70);
	localParams[4]:setTextColor({r = 240, g = 200, b = 60});
	localParams[4]:setContentSize({width = 56.0, height = 24.0});
	localParams[4]:setPosition(68.79, 10.8);
	self.__children['m_level'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'm_level';
	self:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[1/3]]);
	localParams[5]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setScaleX(0.80);
	localParams[5]:setScaleY(0.80);
	localParams[5]:setContentSize({width = 30.0, height = 27.0});
	localParams[5]:setPosition(34.55, 9.14);
	self.__children['m_num'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'm_num';
	self:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 38.0, height = 42.0});
	localParams[6]:setPosition(59.11, 43.2);
	self.__children['m_gas'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'm_gas';
	self:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(24);
	localParams[7]:setString([[9]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 19.0, height = 28.0});
	localParams[7]:setPosition(18.65, 18.0);
	self.__children['m_gas#m_gas_num'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'm_gas#m_gas_num';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:setContentSize({width = 38.0, height = 38.0});
	localParams[8]:setPosition(13.76, 12.77);
	self.__children['profession'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'profession';
	self:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setAnchorPoint(0.50, 0.00);
	localParams[9]:setScaleX(0.95);
	localParams[9]:setScaleY(0.95);
	localParams[9]:onClick(handler(self, self._toViewDetails));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 120.0, height = 120.0});
	localParams[9]:setPosition(60.0, 66.0);
	self.__children['m_btn'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'm_btn';
	self:addChild(localParams[9]);

end
function MercenaryNode:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function MercenaryNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MercenaryNode:_toViewDetails(sender)
    if self._clickDelegate and self._clickDelegate.toViewDetails then
        return self._clickDelegate:toViewDetails(sender);
    end
    if self.toViewDetails then
        return self:toViewDetails(sender);
    end
end


return MercenaryNode;