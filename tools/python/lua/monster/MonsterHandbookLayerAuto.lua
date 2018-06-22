-- 
-- Author: generation auto
-- Brief：MonsterHandbookLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local MonsterHandbookLayer = class('MonsterHandbookLayer', gamecore.ui.BaseWidget);

function MonsterHandbookLayer:create(...) 
    local instance = MonsterHandbookLayer.new(...);
    return instance;
end

function MonsterHandbookLayer:ctor(...) 
    if MonsterHandbookLayer.super and MonsterHandbookLayer.super.ctor then
        MonsterHandbookLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function MonsterHandbookLayer:initView()
    self.__LAYER_NAME = 'monster.MonsterHandbookLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 970.0, height = 560.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Image_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Image_1';
	self:addChild(localParams[1]);

	localParams[2] = Text:create();
	localParams[2]:setFontSize(20);
	localParams[2]:setString([[收集：]]);
	localParams[2]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[2]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setTextColor({r = 240, g = 200, b = 60});
	localParams[2]:setContentSize({width = 57.0, height = 24.0});
	localParams[2]:setPosition(67.0, 515.0);
	self.__children['Image_1#Text_1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_1#Text_1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(20);
	localParams[3]:setString([[20/42]]);
	localParams[3]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[3]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[3]:setAnchorPoint(0.00, 0.50);
	localParams[3]:setContentSize({width = 61.0, height = 24.0});
	localParams[3]:setPosition(105.0, 515.0);
	self.__children['Image_1#text'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_1#text';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0024.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 269.0, height = 60.0});
	localParams[4]:setPosition(485.0, 550.0);
	self.__children['Image_1#Sprite_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_1#Sprite_1';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0244.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 159.0, height = 47.0});
	localParams[5]:setPosition(134.5, 30.0);
	self.__children['Image_1#Sprite_1#Sprite_2'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_1#Sprite_1#Sprite_2';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[6]:ignoreContentAdaptWithSize(false);
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setContentSize({width = 910.0, height = 460.0});
	localParams[6]:setPosition(30.0, 30.0);
	self.__children['Image_1#Image_2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_1#Image_2';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ScrollView:create();
	localParams[7]:setInnerContainerSize({width = 900.00, height = 450.00});
	localParams[7]:setDirection(1);
	localParams[7]:setBackGroundColorType(1);
	localParams[7]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[7]:setBackGroundColorOpacity(102);
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 900.0, height = 450.0});
	localParams[7]:setPosition(35.0, 35.0);
	self.__children['Image_1#ScrollView_1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_1#ScrollView_1';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[8]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 50.000000});
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:onClick(handler(self, self._closeBtn));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 72.0, height = 72.0});
	localParams[8]:setPosition(913.01, 503.0);
	self.__children['Image_1#close'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Image_1#close';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Widget:create();
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setScaleX(0.90);
	localParams[9]:setScaleY(0.90);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(110.29, 9.86);
	self.__children['Image_1#close#__SELECTED_SCALE'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Image_1#close#__SELECTED_SCALE';
	localParams[8]:addChild(localParams[9]);

end
function MonsterHandbookLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function MonsterHandbookLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MonsterHandbookLayer:_closeBtn(sender)
    if self._clickDelegate and self._clickDelegate.closeBtn then
        return self._clickDelegate:closeBtn(sender);
    end
    if self.closeBtn then
        return self:closeBtn(sender);
    end
end


return MonsterHandbookLayer;