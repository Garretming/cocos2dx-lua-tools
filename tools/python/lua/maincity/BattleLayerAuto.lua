-- 
-- Author: generation auto
-- Brief：BattleLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local BattleLayer = class('BattleLayer', gamecore.ui.BaseWidget);

function BattleLayer:create(...) 
    local instance = BattleLayer.new(...);
    return instance;
end

function BattleLayer:ctor(...) 
    if BattleLayer.super and BattleLayer.super.ctor then
        BattleLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(200);
	self:setTouchEnabled(true);
end

function BattleLayer:initView()
    self.__LAYER_NAME = 'maincity.BattleLayer';
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
	localParams[2]:onClick(handler(self, self._on1VS1));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 395.0, height = 464.0});
	localParams[2]:setPosition(-750.0, 0.0);
	self.__children['Node_1#Image1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Node_1#Image1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0134.png', 1);
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

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0251.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 134.0, height = 42.0});
	localParams[5]:setPosition(197.5, 110.0);
	self.__children['Node_1#Image1#Sprite_46'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Node_1#Image1#Sprite_46';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[来匹配对战试试自己的实力吧]]);
	localParams[6]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 255, g = 240, b = 155});
	localParams[6]:setContentSize({width = 265.0, height = 27.0});
	localParams[6]:setPosition(197.5, 75.0);
	self.__children['Node_1#Image1#desc1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Node_1#Image1#desc1';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[战斗失败不影响段位]]);
	localParams[7]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 255, g = 0, b = 0});
	localParams[7]:setContentSize({width = 185.0, height = 27.0});
	localParams[7]:setPosition(197.5, 45.0);
	self.__children['Node_1#Image1#desc2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Node_1#Image1#desc2';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0149.png', 1);
	localParams[8]:setTitleFontSize(30);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:onClick(handler(self, self._onWall));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 395.0, height = 464.0});
	localParams[8]:setPosition(-750.0, 0.0);
	self.__children['Node_1#Image2'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Node_1#Image2';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0207.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 345.0, height = 314.0});
	localParams[9]:setPosition(198.0, 271.0);
	self.__children['Node_1#Image2#Sprite_43'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Node_1#Image2#Sprite_43';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Widget:create();
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setScaleX(0.98);
	localParams[10]:setScaleY(0.98);
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(10.0, -10.0);
	self.__children['Node_1#Image2#__SELECTED_SCALE'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Node_1#Image2#__SELECTED_SCALE';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0307.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setVisible(false);
	localParams[11]:setContentSize({width = 159.0, height = 48.0});
	localParams[11]:setPosition(70.0, 390.0);
	self.__children['Node_1#Image2#sign'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Node_1#Image2#sign';
	localParams[8]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_font/fontImg0196.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 144.0, height = 42.0});
	localParams[12]:setPosition(197.5, 110.0);
	self.__children['Node_1#Image2#Sprite_46'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Node_1#Image2#Sprite_46';
	localParams[8]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(20);
	localParams[13]:setString([[更多精彩内容准备中]]);
	localParams[13]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[13]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setTextColor({r = 255, g = 240, b = 155});
	localParams[13]:setContentSize({width = 185.0, height = 27.0});
	localParams[13]:setPosition(197.5, 61.0);
	self.__children['Node_1#Image2#desc1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Node_1#Image2#desc1';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:loadTextureNormal('uires/public/sheet_btn/btn0076.png', 1);
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 62.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setVisible(false);
	localParams[14]:onClick(handler(self, self._onFormation));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 72.0, height = 84.0});
	localParams[14]:setPosition(148.56, -280.0);
	self.__children['Node_1#formation_btn'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Node_1#formation_btn';
	localParams[1]:addChild(localParams[14]);

	localParams[15] = Widget:create();
	localParams[15]:setAnchorPoint(0.00, 0.00);
	localParams[15]:setScaleX(0.90);
	localParams[15]:setScaleY(0.90);
	localParams[15]:setContentSize({width = 0.0, height = 0.0});
	localParams[15]:setPosition(328.52, 13.04);
	self.__children['Node_1#formation_btn#__SELECTED_SCALE'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Node_1#formation_btn#__SELECTED_SCALE';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0091.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setVisible(false);
	localParams[16]:setContentSize({width = 234.0, height = 64.0});
	localParams[16]:setPosition(-11.44, -280.0);
	self.__children['Node_1#professionUnder_sprite'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Node_1#professionUnder_sprite';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[灵魂突破三]]);
	localParams[17]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setTextColor({r = 240, g = 200, b = 60});
	localParams[17]:setContentSize({width = 104.0, height = 22.0});
	localParams[17]:setPosition(145.01, 33.0);
	self.__children['Node_1#professionUnder_sprite#formation_name'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Node_1#professionUnder_sprite#formation_name';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_font/fontImg0245.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.53);
	localParams[18]:setVisible(false);
	localParams[18]:setContentSize({width = 67.0, height = 57.0});
	localParams[18]:setPosition(220.0, -50.0);
	self.__children['Node_1#Sprite_1'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Node_1#Sprite_1';
	localParams[1]:addChild(localParams[18]);

end
function BattleLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function BattleLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function BattleLayer:_onFormation(sender)
    if self._clickDelegate and self._clickDelegate.onFormation then
        return self._clickDelegate:onFormation(sender);
    end
    if self.onFormation then
        return self:onFormation(sender);
    end
end


function BattleLayer:_on1VS1(sender)
    if self._clickDelegate and self._clickDelegate.on1VS1 then
        return self._clickDelegate:on1VS1(sender);
    end
    if self.on1VS1 then
        return self:on1VS1(sender);
    end
end


function BattleLayer:_onWall(sender)
    if self._clickDelegate and self._clickDelegate.onWall then
        return self._clickDelegate:onWall(sender);
    end
    if self.onWall then
        return self:onWall(sender);
    end
end


return BattleLayer;