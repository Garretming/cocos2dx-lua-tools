-- 
-- Author: generation auto
-- Brief：ScrollViewLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ScrollViewLayer = class('ScrollViewLayer', gamecore.ui.BaseWidget);

function ScrollViewLayer:create(...) 
    local instance = ScrollViewLayer.new(...);
    return instance;
end

function ScrollViewLayer:ctor(...) 
    if ScrollViewLayer.super and ScrollViewLayer.super.ctor then
        ScrollViewLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function ScrollViewLayer:initView()
    self.__LAYER_NAME = 'demo.ScrollViewLayer';
    local localParams = {};
	localParams[1] = ScrollView:create();
	localParams[1]:setInnerContainerSize({width = 200.00, height = 600.00});
	localParams[1]:setDirection(1);
	localParams[1]:setClippingEnabled(true);
	localParams[1]:setBackGroundColorType(1);
	localParams[1]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[1]:setBackGroundColorOpacity(102);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 200.0, height = 200.0});
	localParams[1]:setPosition(50.0, 200.0);
	self.__children['ScrollView_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'ScrollView_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/scrollBarBg.png', 0);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 0.000000, y = 6.000000,width = 3.000000, height = 8.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setOpacity(0);
	localParams[2]:setContentSize({width = 3.0, height = 180.0});
	localParams[2]:setPosition(55.0, 300.0);
	self.__children['Image_1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_1';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/scrollBar.png', 0);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 1.000000, y = 6.000000,width = 3.000000, height = 8.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 5.0, height = 180.0});
	localParams[3]:setPosition(1.5, 90.0);
	self.__children['Image_1#Image_2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_1#Image_2';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_btn/btn0045.png', 1);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setRotationSkewX(90.00);
	localParams[4]:setRotationSkewY(90.00);
	localParams[4]:setContentSize({width = 54.0, height = 59.0});
	localParams[4]:setPosition(150.0, 200.0);
	self.__children['arrow_down'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'arrow_down';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_btn/btn0044.png', 1);
	localParams[5]:setAnchorPoint(1.00, 0.50);
	localParams[5]:setRotationSkewX(90.00);
	localParams[5]:setRotationSkewY(90.00);
	localParams[5]:setContentSize({width = 54.0, height = 59.0});
	localParams[5]:setPosition(150.0, 400.0);
	self.__children['arrow_up'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'arrow_up';
	self:addChild(localParams[5]);

	localParams[6] = ScrollView:create();
	localParams[6]:setInnerContainerSize({width = 600.00, height = 200.00});
	localParams[6]:setDirection(0);
	localParams[6]:setClippingEnabled(true);
	localParams[6]:setBackGroundColorType(1);
	localParams[6]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[6]:setBackGroundColorOpacity(102);
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 200.0, height = 200.0});
	localParams[6]:setPosition(600.0, 200.0);
	self.__children['ScrollView_2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'ScrollView_2';
	self:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_btn/btn0045.png', 1);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setContentSize({width = 54.0, height = 59.0});
	localParams[7]:setPosition(800.0, 300.0);
	self.__children['arrow_right'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'arrow_right';
	self:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_btn/btn0044.png', 1);
	localParams[8]:setAnchorPoint(1.00, 0.50);
	localParams[8]:setContentSize({width = 54.0, height = 59.0});
	localParams[8]:setPosition(600.0, 300.0);
	self.__children['arrow_left'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'arrow_left';
	self:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/scrollBarBg.png', 0);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 1.000000, y = 0.000000,width = 1.000000, height = 20.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setOpacity(0);
	localParams[9]:setRotationSkewX(90.00);
	localParams[9]:setRotationSkewY(90.00);
	localParams[9]:setContentSize({width = 3.0, height = 180.0});
	localParams[9]:setPosition(700.0, 205.0);
	self.__children['Image_3'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Image_3';
	self:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/scrollBar.png', 0);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 1.000000, y = 1.000000,width = 3.000000, height = 18.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 5.0, height = 180.0});
	localParams[10]:setPosition(1.5, 90.0);
	self.__children['Image_3#Image_4'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Image_3#Image_4';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:onClick(handler(self, self._onClose));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 72.0, height = 72.0});
	localParams[11]:setPosition(WinSize.width - 73.00, WinSize.height - 68.00);
	self.__children['Button_3'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Button_3';
	self:addChild(localParams[11]);

end
function ScrollViewLayer:loadImage()
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function ScrollViewLayer:loadPlistResources()

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ScrollViewLayer:_onClose(sender)
    if self._clickDelegate and self._clickDelegate.onClose then
        return self._clickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return ScrollViewLayer;