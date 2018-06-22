-- 
-- Author: generation auto
-- Brief：PageViewLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local PageViewLayer = class('PageViewLayer', gamecore.ui.BaseWidget);

function PageViewLayer:create(...) 
    local instance = PageViewLayer.new(...);
    return instance;
end

function PageViewLayer:ctor(...) 
    if PageViewLayer.super and PageViewLayer.super.ctor then
        PageViewLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function PageViewLayer:initView()
    self.__LAYER_NAME = 'demo.PageViewLayer';
    local localParams = {};
	node = PageView:create();
	localParams[1]:setBackGroundColorType(1);
	localParams[1]:setBackGroundColor({r = 150, g = 150, b = 100});
	localParams[1]:setBackGroundColorOpacity(102);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 200.0, height = 200.0});
	localParams[1]:setPosition(100.0, 100.0);
	self.__children['PageView_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'PageView_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_btn/btn0045.png', 1);
	localParams[2]:setAnchorPoint(0.00, 0.50);
	localParams[2]:setContentSize({width = 54.0, height = 59.0});
	localParams[2]:setPosition(300.0, 200.0);
	self.__children['arrow_right'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'arrow_right';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_btn/btn0044.png', 1);
	localParams[3]:setAnchorPoint(1.00, 0.50);
	localParams[3]:setContentSize({width = 54.0, height = 59.0});
	localParams[3]:setPosition(100.0, 200.0);
	self.__children['arrow_left'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'arrow_left';
	self:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[1/1]]);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 28.0, height = 23.0});
	localParams[4]:setPosition(200.0, 85.0);
	self.__children['indicate_label'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'indicate_label';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/pageViewDotNormal.png', 0);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 15.0, height = 15.0});
	localParams[5]:setPosition(165.97, 315.0);
	self.__children['normal'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'normal';
	self:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/pageViewDotSelected.png', 0);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 15.0, height = 15.0});
	localParams[6]:setPosition(244.77, 315.0);
	self.__children['selected'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'selected';
	self:addChild(localParams[6]);

	node = PageView:create();
	localParams[7]:setBackGroundColorType(1);
	localParams[7]:setBackGroundColor({r = 150, g = 150, b = 100});
	localParams[7]:setBackGroundColorOpacity(102);
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 201.0, height = 200.0});
	localParams[7]:setPosition(500.0, 100.0);
	self.__children['PageView_2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'PageView_2';
	self:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[1/1]]);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setRotationSkewX(-90.00);
	localParams[8]:setRotationSkewY(-90.00);
	localParams[8]:setContentSize({width = 28.0, height = 23.0});
	localParams[8]:setPosition(485.0, 200.0);
	self.__children['indicate_label_2'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'indicate_label_2';
	self:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/pageViewDotNormal.png', 0);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 15.0, height = 15.0});
	localParams[9]:setPosition(715.0, 229.11);
	self.__children['normal_2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'normal_2';
	self:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/pageViewDotSelected.png', 0);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 15.0, height = 15.0});
	localParams[10]:setPosition(715.0, 200.0);
	self.__children['selected_2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'selected_2';
	self:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_btn/btn0044.png', 1);
	localParams[11]:setAnchorPoint(1.00, 0.50);
	localParams[11]:setRotationSkewX(90.00);
	localParams[11]:setRotationSkewY(90.00);
	localParams[11]:setContentSize({width = 54.0, height = 59.0});
	localParams[11]:setPosition(600.0, 300.0);
	self.__children['arrow_up'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'arrow_up';
	self:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_btn/btn0045.png', 1);
	localParams[12]:setAnchorPoint(0.00, 0.50);
	localParams[12]:setRotationSkewX(90.00);
	localParams[12]:setRotationSkewY(90.00);
	localParams[12]:setContentSize({width = 54.0, height = 59.0});
	localParams[12]:setPosition(600.0, 100.0);
	self.__children['arrow_down'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'arrow_down';
	self:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._onClose));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 72.0, height = 72.0});
	localParams[13]:setPosition(WinSize.width - 73.00, WinSize.height - 68.00);
	self.__children['Button_3'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Button_3';
	self:addChild(localParams[13]);

end
function PageViewLayer:loadImage()
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function PageViewLayer:loadPlistResources()

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function PageViewLayer:_onClose(sender)
    if self._clickDelegate and self._clickDelegate.onClose then
        return self._clickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return PageViewLayer;