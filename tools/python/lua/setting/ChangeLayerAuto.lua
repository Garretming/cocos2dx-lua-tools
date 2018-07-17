-- 
-- Author: generation auto
-- Brief：ChangeLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ChangeLayer = class('ChangeLayer', gamecore.ui.BaseWidget);

function ChangeLayer:create(...) 
    local instance = ChangeLayer.new(...);
    return instance;
end

function ChangeLayer:ctor(...) 
    if ChangeLayer.super and ChangeLayer.super.ctor then
        ChangeLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);
end

function ChangeLayer:initView()
    self.__LAYER_NAME = 'setting.ChangeLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 710.0, height = 540.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (1.15 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 36.000000, y = 36.000000,width = 48.000000, height = 48.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 600.0, height = 390.0});
	localParams[2]:setPosition(328.87, 314.76);
	self.__children['bg#img4'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#img4';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 36.000000, y = 36.000000,width = 48.000000, height = 48.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 580.0, height = 370.0});
	localParams[3]:setPosition(329.66, 314.76);
	self.__children['bg#set_bg'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#set_bg';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ScrollView:create();
	localParams[4]:setInnerContainerSize({width = 560.00, height = 350.00});
	localParams[4]:setDirection(1);
	localParams[4]:setBackGroundColorType(1);
	localParams[4]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[4]:setBackGroundColorOpacity(0);
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 560.0, height = 350.0});
	localParams[4]:setPosition(9.8, 10.0);
	self.__children['bg#set_bg#head_scrollView'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#set_bg#head_scrollView';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ScrollView:create();
	localParams[5]:setInnerContainerSize({width = 560.00, height = 350.00});
	localParams[5]:setDirection(1);
	localParams[5]:setBackGroundColorType(1);
	localParams[5]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[5]:setBackGroundColorOpacity(0);
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 560.0, height = 350.0});
	localParams[5]:setPosition(9.8, 10.0);
	self.__children['bg#set_bg#border_scrollView'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#set_bg#border_scrollView';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 268.0, height = 55.0});
	localParams[6]:setPosition(360.51, 517.56);
	self.__children['bg#changTitleBg'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#changTitleBg';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(24);
	localParams[7]:setString([[变更头像]]);
	localParams[7]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 255, g = 240, b = 155});
	localParams[7]:setContentSize({width = 100.0, height = 26.0});
	localParams[7]:setPosition(133.54, 34.31);
	self.__children['bg#changTitleBg#changTitle'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#changTitleBg#changTitle';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[8]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:onClick(handler(self, self._onTabMenu));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 77.0, height = 78.0});
	localParams[8]:setPosition(666.0, 453.0);
	self.__children['bg#head_tab'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#head_tab';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0185.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 44.0, height = 24.0});
	localParams[9]:setPosition(33.25, 38.52);
	self.__children['bg#head_tab#font'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#head_tab#font';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[10]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:onClick(handler(self, self._onTabMenu));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 77.0, height = 78.0});
	localParams[10]:setPosition(666.0, 368.0);
	self.__children['bg#border_tab'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg#border_tab';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_font/fontImg0184.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 43.0, height = 24.0});
	localParams[11]:setPosition(33.35, 39.89);
	self.__children['bg#border_tab#font'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg#border_tab#font';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_common/btn0033.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._cancel_btn));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 183.0, height = 68.0});
	localParams[12]:setPosition(273.69, 65.06);
	self.__children['bg#cancel'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg#cancel';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_font/fontImg0033.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 70.0, height = 30.0});
	localParams[13]:setPosition(94.0, 35.0);
	self.__children['bg#cancel#sure'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg#cancel#sure';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Widget:create();
	localParams[14]:setAnchorPoint(0.00, 0.00);
	localParams[14]:setScaleX(0.90);
	localParams[14]:setScaleY(0.90);
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(93.62, 26.53);
	self.__children['bg#cancel#__SELECTED_SCALE'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg#cancel#__SELECTED_SCALE';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[15]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:onClick(handler(self, self._sure_btn));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 183.0, height = 68.0});
	localParams[15]:setPosition(477.87, 64.96);
	self.__children['bg#sure_btn'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg#sure_btn';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_font/fontImg0085.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 70.0, height = 30.0});
	localParams[16]:setPosition(94.0, 35.0);
	self.__children['bg#sure_btn#sure'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg#sure_btn#sure';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Widget:create();
	localParams[17]:setAnchorPoint(0.00, 0.00);
	localParams[17]:setScaleX(0.90);
	localParams[17]:setScaleY(0.90);
	localParams[17]:setContentSize({width = 0.0, height = 0.0});
	localParams[17]:setPosition(83.62, 36.53);
	self.__children['bg#sure_btn#__SELECTED_SCALE'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg#sure_btn#__SELECTED_SCALE';
	localParams[15]:addChild(localParams[17]);

end
function ChangeLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function ChangeLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ChangeLayer:_onTabMenu(sender)
    if self._clickDelegate and self._clickDelegate.onTabMenu then
        return self._clickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function ChangeLayer:_cancel_btn(sender)
    if self._clickDelegate and self._clickDelegate.cancel_btn then
        return self._clickDelegate:cancel_btn(sender);
    end
    if self.cancel_btn then
        return self:cancel_btn(sender);
    end
end


function ChangeLayer:_sure_btn(sender)
    if self._clickDelegate and self._clickDelegate.sure_btn then
        return self._clickDelegate:sure_btn(sender);
    end
    if self.sure_btn then
        return self:sure_btn(sender);
    end
end


return ChangeLayer;