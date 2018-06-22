-- 
-- Author: generation auto
-- Brief：CheckPopupLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local CheckPopupLayer = class('CheckPopupLayer', gamecore.ui.BaseWidget);

function CheckPopupLayer:create(...) 
    local instance = CheckPopupLayer.new(...);
    return instance;
end

function CheckPopupLayer:ctor(...) 
    if CheckPopupLayer.super and CheckPopupLayer.super.ctor then
        CheckPopupLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(200);
	self:setTouchEnabled(true);

end

function CheckPopupLayer:initView()
    self.__LAYER_NAME = 'common.ui.CheckPopupLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 420.0, height = 255.0});
	localParams[1]:setPosition(512.0, 320.0);
	self.__children['Image_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Image_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 375.0, height = 120.0});
	localParams[2]:setPosition(210.0, 172.5);
	self.__children['Image_1#Image_2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_1#Image_2';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = RichText:create();
	localParams[3]:setDefaultFontSize(20);
	localParams[3]:setString([[]]);
	localParams[3]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[3]:setTextAreaSize({width = 340, height = 100});
	localParams[3]:setTextHorizontalAlignment(1);
	localParams[3]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[3]:setDefaultShadow({r = 110, g = 110, b = 110, a = 255}, {width = 2.000000, height = -2.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 340.0, height = 100.0});
	localParams[3]:setPosition(187.5, 60.0);
	self.__children['Image_1#Image_2#text'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_1#Image_2#text';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._onSure));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 183.0, height = 68.0});
	localParams[4]:setPosition(308.5, 60.0);
	self.__children['Image_1#Button_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_1#Button_1';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Widget:create();
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setScaleX(0.90);
	localParams[5]:setScaleY(0.90);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(20.0, -20.0);
	self.__children['Image_1#Button_1#__SELECTED_SCALE'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_1#Button_1#__SELECTED_SCALE';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0085.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 70.0, height = 30.0});
	localParams[6]:setPosition(91.5, 34.0);
	self.__children['Image_1#Button_1#uires_public_sheet_fontImg0085_1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_1#Button_1#uires_public_sheet_fontImg0085_1';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._onCancel));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 183.0, height = 68.0});
	localParams[7]:setPosition(111.5, 60.0);
	self.__children['Image_1#Button_1_0'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_1#Button_1_0';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Widget:create();
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(20.0, -20.0);
	self.__children['Image_1#Button_1_0#__SELECTED_SCALE'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Image_1#Button_1_0#__SELECTED_SCALE';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0033.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 70.0, height = 30.0});
	localParams[9]:setPosition(91.5, 34.0);
	self.__children['Image_1#Button_1_0#uires_public_sheet_fontImg0085_1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Image_1#Button_1_0#uires_public_sheet_fontImg0085_1';
	localParams[7]:addChild(localParams[9]);

end
function CheckPopupLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function CheckPopupLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function CheckPopupLayer:_onSure(sender)
    if self._clickDelegate and self._clickDelegate.onSure then
        return self._clickDelegate:onSure(sender);
    end
    if self.onSure then
        return self:onSure(sender);
    end
end


function CheckPopupLayer:_onCancel(sender)
    if self._clickDelegate and self._clickDelegate.onCancel then
        return self._clickDelegate:onCancel(sender);
    end
    if self.onCancel then
        return self:onCancel(sender);
    end
end


return CheckPopupLayer;