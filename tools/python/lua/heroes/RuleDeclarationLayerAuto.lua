-- 
-- Author: generation auto
-- Brief：RuleDeclarationLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local RuleDeclarationLayer = class('RuleDeclarationLayer', gamecore.ui.BaseWidget);

function RuleDeclarationLayer:create(...) 
    local instance = RuleDeclarationLayer.new(...);
    return instance;
end

function RuleDeclarationLayer:ctor(...) 
    if RuleDeclarationLayer.super and RuleDeclarationLayer.super.ctor then
        RuleDeclarationLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function RuleDeclarationLayer:initView()
    self.__LAYER_NAME = 'heroes.RuleDeclarationLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 690.0, height = 540.0});
	localParams[1]:setPosition(512.0, 320.0);
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 620.0, height = 470.0});
	localParams[2]:setPosition(345.0, 270.0);
	self.__children['bg_img#bg_img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 605.0, height = 450.0});
	localParams[3]:setPosition(345.0, 270.0);
	self.__children['bg_img#bg_img2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0029.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 268.0, height = 55.0});
	localParams[4]:setPosition(345.0, 520.02);
	self.__children['bg_img#titleUnder_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#titleUnder_sprite';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(24);
	localParams[5]:setString([[规则说明]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 255, g = 240, b = 155});
	localParams[5]:setContentSize({width = 100.0, height = 26.0});
	localParams[5]:setPosition(134.0, 35.75);
	self.__children['bg_img#titleUnder_sprite#titleFont_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#titleUnder_sprite#titleFont_txt';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = RichText:create();
	localParams[6]:setDefaultFontSize(18);
	localParams[6]:setString([[床前明月光，大鸟喝米汤。喝了一整缸，尿满了裤裆。]]);
	localParams[6]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[6]:setTextAreaSize({width = 570, height = 410});
	localParams[6]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 570.0, height = 410.0});
	localParams[6]:setPosition(345.0, 270.0);
	self.__children['bg_img#desc_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#desc_txt';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[7]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 50.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._onClose));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 72.0, height = 72.0});
	localParams[7]:setPosition(664.47, 514.03);
	self.__children['bg_img#close_btn'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#close_btn';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Widget:create();
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(104.14, 30.52);
	self.__children['bg_img#close_btn#__SELECTED_SCALE'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#close_btn#__SELECTED_SCALE';
	localParams[7]:addChild(localParams[8]);

end
function RuleDeclarationLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function RuleDeclarationLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RuleDeclarationLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return RuleDeclarationLayer;