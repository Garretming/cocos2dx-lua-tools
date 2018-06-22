-- 
-- Author: generation auto
-- Brief：ActivityMainLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ActivityMainLayer = class('ActivityMainLayer', gamecore.ui.BaseWidget);

function ActivityMainLayer:create(...) 
    local instance = ActivityMainLayer.new(...);
    return instance;
end

function ActivityMainLayer:ctor(...) 
    if ActivityMainLayer.super and ActivityMainLayer.super.ctor then
        ActivityMainLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(200);
	self:setTouchEnabled(true);

end

function ActivityMainLayer:initView()
    self.__LAYER_NAME = 'activity.ActivityMainLayer';
    local localParams = {};
	localParams[1] = Widget:create();
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 0.0, height = 0.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Node_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Node_1';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0149.png', 1);
	localParams[2]:setTitleFontSize(30);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:onClick(handler(self, self._onGoldGame));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 395.0, height = 464.0});
	localParams[2]:setPosition(-750.0, 0.0);
	self.__children['Node_1#Image1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Node_1#Image1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0135.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 345.0, height = 314.0});
	localParams[3]:setPosition(198.0, 271.0);
	self.__children['Node_1#Image1#Sprite_43'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Node_1#Image1#Sprite_43';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Widget:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.98);
	localParams[4]:setScaleY(0.98);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(10.0, -10.0);
	self.__children['Node_1#Image1#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Node_1#Image1#__SELECTED_SCALE';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0307.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 159.0, height = 48.0});
	localParams[5]:setPosition(70.0, 390.0);
	self.__children['Node_1#Image1#sign'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Node_1#Image1#sign';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0140.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 143.0, height = 43.0});
	localParams[6]:setPosition(197.5, 110.0);
	self.__children['Node_1#Image1#Sprite_46'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Node_1#Image1#Sprite_46';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_icon/icon0075.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.80);
	localParams[7]:setScaleY(0.80);
	localParams[7]:setContentSize({width = 72.0, height = 72.0});
	localParams[7]:setPosition(330.0, 143.0);
	self.__children['Node_1#Image1#Sprite_45'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Node_1#Image1#Sprite_45';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[]]);
	localParams[8]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setTextColor({r = 255, g = 240, b = 155});
	localParams[8]:setContentSize({width = 86.0, height = 27.0});
	localParams[8]:setPosition(197.5, 75.0);
	self.__children['Node_1#Image1#desc1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Node_1#Image1#desc1';
	localParams[2]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setTextColor({r = 255, g = 0, b = 0});
	localParams[9]:setContentSize({width = 86.0, height = 27.0});
	localParams[9]:setPosition(197.5, 45.0);
	self.__children['Node_1#Image1#desc2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Node_1#Image1#desc2';
	localParams[2]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(16);
	localParams[10]:setString([[1/40]]);
	localParams[10]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[10]:setAnchorPoint(1.00, 0.50);
	localParams[10]:setContentSize({width = 41.0, height = 20.0});
	localParams[10]:setPosition(361.5, 141.0);
	self.__children['Node_1#Image1#number'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Node_1#Image1#number';
	localParams[2]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0149.png', 1);
	localParams[11]:setTitleFontSize(30);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:onClick(handler(self, self._onWall));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 395.0, height = 464.0});
	localParams[11]:setPosition(-750.0, 0.0);
	self.__children['Node_1#Image2'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Node_1#Image2';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0207.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 345.0, height = 314.0});
	localParams[12]:setPosition(198.0, 271.0);
	self.__children['Node_1#Image2#Sprite_43'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Node_1#Image2#Sprite_43';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = Widget:create();
	localParams[13]:setAnchorPoint(0.00, 0.00);
	localParams[13]:setScaleX(0.98);
	localParams[13]:setScaleY(0.98);
	localParams[13]:setContentSize({width = 0.0, height = 0.0});
	localParams[13]:setPosition(10.0, -10.0);
	self.__children['Node_1#Image2#__SELECTED_SCALE'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Node_1#Image2#__SELECTED_SCALE';
	localParams[11]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0307.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setVisible(false);
	localParams[14]:setContentSize({width = 159.0, height = 48.0});
	localParams[14]:setPosition(70.0, 390.0);
	self.__children['Node_1#Image2#sign'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Node_1#Image2#sign';
	localParams[11]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_font/fontImg0196.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 144.0, height = 42.0});
	localParams[15]:setPosition(197.5, 110.0);
	self.__children['Node_1#Image2#Sprite_46'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Node_1#Image2#Sprite_46';
	localParams[11]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[更多精彩内容准备中]]);
	localParams[16]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[16]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 255, g = 240, b = 155});
	localParams[16]:setContentSize({width = 185.0, height = 27.0});
	localParams[16]:setPosition(197.5, 61.0);
	self.__children['Node_1#Image2#desc1'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Node_1#Image2#desc1';
	localParams[11]:addChild(localParams[16]);

end
function ActivityMainLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function ActivityMainLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ActivityMainLayer:_onGoldGame(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGoldGame then
        return self.m_ClickDelegate:onGoldGame(sender);
    end
    if self.onGoldGame then
        return self:onGoldGame(sender);
    end
end


function ActivityMainLayer:_onWall(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onWall then
        return self.m_ClickDelegate:onWall(sender);
    end
    if self.onWall then
        return self:onWall(sender);
    end
end


return ActivityMainLayer;