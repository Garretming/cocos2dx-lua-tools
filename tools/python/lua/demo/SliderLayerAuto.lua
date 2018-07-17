-- 
-- Author: generation auto
-- Brief：SliderLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SliderLayer = class('SliderLayer', gamecore.ui.BaseWidget);

function SliderLayer:create(...) 
    local instance = SliderLayer.new(...);
    return instance;
end

function SliderLayer:ctor(...) 
    if SliderLayer.super and SliderLayer.super.ctor then
        SliderLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);
end

function SliderLayer:initView()
    self.__LAYER_NAME = 'demo.SliderLayer';
    local localParams = {};
	localParams[1] = Slider:create();
	localParams[1]:loadBarTexture('uires/public/sheet_other/other0031.png', 1);
	localParams[1]:loadProgressBarTexture('uires/public/sheet_other/other0032.png', 1);
	localParams[1]:loadSlidBallTextureNormal('set([u'uires/public/sheet_other/other0033.png'])', 1);
	localParams[1]:loadSlidBallTexturePressed('set([u'uires/public/sheet_other/other0033.png'])', 1);
	localParams[1]:loadSlidBallTextureDisabled('set([u'uires/public/sheet_other/other0033.png'])', 1);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 330.0, height = 18.0});
	localParams[1]:setPosition(387.0, 215.0);
	self.__children['Slider_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Slider_1';
	self:addChild(localParams[1]);

	localParams[2] = TextAtlas:create();
	localParams[2]:setProperty([[1/3000]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setScaleX(0.70);
	localParams[2]:setScaleY(0.70);
	localParams[2]:setContentSize({width = 78.0, height = 19.0});
	localParams[2]:setPosition(165.0, 30.0);
	self.__children['Slider_1#label'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Slider_1#label';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Slider:create();
	localParams[3]:loadBarTexture('uires/public/sheet_other/other0031.png', 1);
	localParams[3]:loadProgressBarTexture('uires/public/sheet_other/other0032.png', 1);
	localParams[3]:loadSlidBallTextureNormal('set([u'uires/public/sheet_other/other0033.png'])', 1);
	localParams[3]:loadSlidBallTexturePressed('set([u'uires/public/sheet_other/other0033.png'])', 1);
	localParams[3]:loadSlidBallTextureDisabled('set([u'uires/public/sheet_other/other0033.png'])', 1);
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 224.0, height = 18.0});
	localParams[3]:setPosition(389.0, 128.0);
	self.__children['Slider_2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Slider_2';
	self:addChild(localParams[3]);

	localParams[4] = TextAtlas:create();
	localParams[4]:setProperty([[1/2000]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.70);
	localParams[4]:setScaleY(0.70);
	localParams[4]:setContentSize({width = 78.0, height = 19.0});
	localParams[4]:setPosition(112.0, 30.0);
	self.__children['Slider_2#label'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Slider_2#label';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._onClose));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 72.0, height = 72.0});
	localParams[5]:setPosition(WinSize.width - 73.00, WinSize.height - 68.00);
	self.__children['Button_3'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Button_3';
	self:addChild(localParams[5]);

end
function SliderLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0011.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function SliderLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SliderLayer:_onClose(sender)
    if self._clickDelegate and self._clickDelegate.onClose then
        return self._clickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return SliderLayer;