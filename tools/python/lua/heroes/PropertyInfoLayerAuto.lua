-- 
-- Author: generation auto
-- Brief：PropertyInfoLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local PropertyInfoLayer = class('PropertyInfoLayer', gamecore.ui.BaseWidget);

function PropertyInfoLayer:create(...) 
    local instance = PropertyInfoLayer.new(...);
    return instance;
end

function PropertyInfoLayer:ctor(...) 
    if PropertyInfoLayer.super and PropertyInfoLayer.super.ctor then
        PropertyInfoLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function PropertyInfoLayer:initView()
    self.__LAYER_NAME = 'heroes.PropertyInfoLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0066.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 390.0, height = 510.0});
	localParams[1]:setPosition(337.92, 320.0);
	self.__children['infoBg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'infoBg_img';
	self:addChild(localParams[1]);

	localParams[2] = Text:create();
	localParams[2]:setFontSize(20);
	localParams[2]:setString([[特殊效果：]]);
	localParams[2]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[2]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[2]:setAnchorPoint(0.00, 0.50);
	localParams[2]:setTextColor({r = 255, g = 140, b = 0});
	localParams[2]:setContentSize({width = 91.0, height = 25.0});
	localParams[2]:setPosition(70.2, 408.0);
	self.__children['infoBg_img#specialEffect_txt'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'infoBg_img#specialEffect_txt';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(20);
	localParams[3]:setString([[]]);
	localParams[3]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[3]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[3]:setAnchorPoint(0.00, 0.50);
	localParams[3]:setContentSize({width = 0.0, height = 0.0});
	localParams[3]:setPosition(0.0, -20.0);
	self.__children['infoBg_img#specialEffect_txt#desc_txt1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'infoBg_img#specialEffect_txt#desc_txt1';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[]]);
	localParams[4]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(0.0, -52.5);
	self.__children['infoBg_img#specialEffect_txt#desc_txt2'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'infoBg_img#specialEffect_txt#desc_txt2';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[]]);
	localParams[5]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(0.0, -117.5);
	self.__children['infoBg_img#specialEffect_txt#desc_txt3'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'infoBg_img#specialEffect_txt#desc_txt3';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[]]);
	localParams[6]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(0.0, -85.0);
	self.__children['infoBg_img#specialEffect_txt#desc_txt4'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'infoBg_img#specialEffect_txt#desc_txt4';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[]]);
	localParams[7]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(0.0, -150.0);
	self.__children['infoBg_img#specialEffect_txt#desc_txt5'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'infoBg_img#specialEffect_txt#desc_txt5';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[]]);
	localParams[8]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(0.0, -215.0);
	self.__children['infoBg_img#specialEffect_txt#desc_txt6'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'infoBg_img#specialEffect_txt#desc_txt6';
	localParams[2]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[9]:setAnchorPoint(0.00, 0.50);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(0.0, -182.5);
	self.__children['infoBg_img#specialEffect_txt#desc_txt7'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'infoBg_img#specialEffect_txt#desc_txt7';
	localParams[2]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[]]);
	localParams[10]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(0.0, -247.5);
	self.__children['infoBg_img#specialEffect_txt#desc_txt8'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'infoBg_img#specialEffect_txt#desc_txt8';
	localParams[2]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[]]);
	localParams[11]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(0.0, -280.0);
	self.__children['infoBg_img#specialEffect_txt#desc_txt9'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'infoBg_img#specialEffect_txt#desc_txt9';
	localParams[2]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[]]);
	localParams[12]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[12]:setAnchorPoint(0.00, 0.50);
	localParams[12]:setContentSize({width = 0.0, height = 0.0});
	localParams[12]:setPosition(0.0, -312.5);
	self.__children['infoBg_img#specialEffect_txt#desc_txt10'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'infoBg_img#specialEffect_txt#desc_txt10';
	localParams[2]:addChild(localParams[12]);

end
function PropertyInfoLayer:loadImage()
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function PropertyInfoLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return PropertyInfoLayer;