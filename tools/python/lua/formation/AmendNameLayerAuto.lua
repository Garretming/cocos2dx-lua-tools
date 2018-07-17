-- 
-- Author: generation auto
-- Brief：AmendNameLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local AmendNameLayer = class('AmendNameLayer', gamecore.ui.BaseWidget);

function AmendNameLayer:create(...) 
    local instance = AmendNameLayer.new(...);
    return instance;
end

function AmendNameLayer:ctor(...) 
    if AmendNameLayer.super and AmendNameLayer.super.ctor then
        AmendNameLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);
end

function AmendNameLayer:initView()
    self.__LAYER_NAME = 'formation.AmendNameLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 410.0, height = 250.0});
	localParams[1]:setPosition(WinSize.width/2 + (-13.62 * ccx.scaleX), WinSize.height/2 + (10.11 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 370.0, height = 120.0});
	localParams[2]:setPosition(204.0, 167.0);
	self.__children['bg#bg1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#bg1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 268.0, height = 55.0});
	localParams[3]:setPosition(213.0, 232.0);
	self.__children['bg#bg2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#bg2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0084.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 108.0, height = 30.0});
	localParams[4]:setPosition(135.0, 33.0);
	self.__children['bg#bg2#bg3'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#bg2#bg3';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[5]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._sure_btn));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 183.0, height = 68.0});
	localParams[5]:setPosition(205.0, 57.0);
	self.__children['bg#sure_btn'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#sure_btn';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0085.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 70.0, height = 30.0});
	localParams[6]:setPosition(94.0, 35.0);
	self.__children['bg#sure_btn#sure'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#sure_btn#sure';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Widget:create();
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setScaleX(0.90);
	localParams[7]:setScaleY(0.90);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(83.62, 36.53);
	self.__children['bg#sure_btn#__SELECTED_SCALE'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#sure_btn#__SELECTED_SCALE';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 49.000000, y = 0.000000,width = 52.000000, height = 50.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 330.0, height = 50.0});
	localParams[8]:setPosition(207.0, 164.0);
	self.__children['bg#bg4'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#bg4';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[9]:setFontSize(20);
	localParams[9]:setPlaceholderFontSize(20);
	localParams[9]:setMaxLength(5);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:registerScriptEditBoxHandler(handler(self, self._onChangeName));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 250.0, height = 22.0});
	localParams[9]:setPosition(165.0, 25.0);
	self.__children['bg#bg4#text_name'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#bg4#text_name';
	localParams[8]:addChild(localParams[9]);

end
function AmendNameLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function AmendNameLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


--eventName:(began, ended, changed)
function AmendNameLayer:_onChangeName(eventName, editBox)
    if self._clickDelegate and self._clickDelegate.onChangeName then
        return self._clickDelegate:onChangeName(eventName, editBox);
    end
    if self.onChangeName then
        return self:onChangeName(eventName, editBox);
    end
end


function AmendNameLayer:_sure_btn(sender)
    if self._clickDelegate and self._clickDelegate.sure_btn then
        return self._clickDelegate:sure_btn(sender);
    end
    if self.sure_btn then
        return self:sure_btn(sender);
    end
end


return AmendNameLayer;