
local class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
      class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local ActivityMainLayer = class('ActivityMainLayer', gamecore.ui.BaseWidget);

function ActivityMainLayer:create(...) 
    local instance = ActivityMainLayer.new(...);
    return instance;
end

function ActivityMainLayer:ctor(...) 
    if ActivityMainLayer.super and ActivityMainLayer.super.ctor then
        ActivityMainLayer.super:ctor(...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(200);

end

function ActivityMainLayer:initView()
    self.__LAYER_NAME = 'activity.ActivityMainLayer';
    local local_params = {};
	local_params[1] = Node:create();
	local_params[1]:setAnchorPoint(0.00, 0.00);
	local_params[1]:setContentSize({width = 0.0 height = 0.0});
	local_params[1]:setPosition(WinSize.width/2 + (-0.00 * ugod.scaleX), WinSize.height/2 + (-0.00 * ugod.scaleY));
	self.__Children['Node_1'] = local_params[1];
	local_params[1].__Children = self.__Children;
	local_params[1].__Name = 'Node_1';
	self:addChild(local_params[1]);

	local_params[2] = Button:create();
	local_params[2]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0149.png', 1);
	local_params[2]:setTitleFontSize(30.000000);
	local_params[2]:setTitleColor({r = 65, g = 65, b = 70 });
	local_params[2]:setAnchorPoint(0.50, 0.50);
	local_params[2]:onClick(handler(self, self._onGoldGame));
	local_params[2]:setTouchEnabled(true);
	local_params[2]:setContentSize({width = 395.0 height = 464.0});
	local_params[2]:setPosition(-750.0, 0.0);
	self.__Children['Node_1#Image1'] = local_params[2];
	local_params[2].__Children = self.__Children;
	local_params[2].__Name = 'Node_1#Image1';
	local_params[1]:addChild(local_params[2]);

	local_params[3] = Sprite:createWithSpriteFrameName('uires/public/sheet_other/other0135.png');
	local_params[3]:setAnchorPoint(0.50, 0.50);
	local_params[3]:setContentSize({width = 345.0 height = 314.0});
	local_params[3]:setPosition(198.0, 271.0);
	self.__Children['Node_1#Image1#Sprite_43'] = local_params[3];
	local_params[3].__Children = self.__Children;
	local_params[3].__Name = 'Node_1#Image1#Sprite_43';
	local_params[2]:addChild(local_params[3]);

	local_params[4] = Node:create();
	local_params[4]:setAnchorPoint(0.00, 0.00);
	local_params[4]:setScaleX(0.98);
	local_params[4]:setScaleY(0.98);
	local_params[4]:setContentSize({width = 0.0 height = 0.0});
	local_params[4]:setPosition(10.0, -10.0);
	self.__Children['Node_1#Image1#__SELECTED_SCALE'] = local_params[4];
	local_params[4].__Children = self.__Children;
	local_params[4].__Name = 'Node_1#Image1#__SELECTED_SCALE';
	local_params[2]:addChild(local_params[4]);

	local_params[5] = Sprite:createWithSpriteFrameName('uires/public/sheet_other/other0307.png');
	local_params[5]:setAnchorPoint(0.50, 0.50);
	local_params[5]:setContentSize({width = 159.0 height = 48.0});
	local_params[5]:setPosition(70.0, 390.0);
	self.__Children['Node_1#Image1#sign'] = local_params[5];
	local_params[5].__Children = self.__Children;
	local_params[5].__Name = 'Node_1#Image1#sign';
	local_params[2]:addChild(local_params[5]);

	local_params[6] = Sprite:createWithSpriteFrameName('uires/public/sheet_font/fontImg0140.png');
	local_params[6]:setAnchorPoint(0.50, 0.50);
	local_params[6]:setContentSize({width = 143.0 height = 43.0});
	local_params[6]:setPosition(197.5, 110.0);
	self.__Children['Node_1#Image1#Sprite_46'] = local_params[6];
	local_params[6].__Children = self.__Children;
	local_params[6].__Name = 'Node_1#Image1#Sprite_46';
	local_params[2]:addChild(local_params[6]);

	local_params[7] = Sprite:createWithSpriteFrameName('uires/public/sheet_icon/icon0075.png');
	local_params[7]:setAnchorPoint(0.50, 0.50);
	local_params[7]:setScaleX(0.80);
	local_params[7]:setScaleY(0.80);
	local_params[7]:setContentSize({width = 72.0 height = 72.0});
	local_params[7]:setPosition(330.0, 142.9999);
	self.__Children['Node_1#Image1#Sprite_45'] = local_params[7];
	local_params[7].__Children = self.__Children;
	local_params[7].__Name = 'Node_1#Image1#Sprite_45';
	local_params[2]:addChild(local_params[7]);

	local_params[8] = Text:create();
	local_params[8]:setFontSize(20);
	local_params[8]:setString([[]]);
	local_params[8]:setFontName('uires/public/ttf/jzy.ttf');
	local_params[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	local_params[8]:setAnchorPoint(0.50, 0.50);
	local_params[8]:setTextColor({r = 255, g = 240, b = 155});
	local_params[8]:setContentSize({width = 86.0 height = 27.0});
	local_params[8]:setPosition(197.5, 75.0);
	self.__Children['Node_1#Image1#desc1'] = local_params[8];
	local_params[8].__Children = self.__Children;
	local_params[8].__Name = 'Node_1#Image1#desc1';
	local_params[2]:addChild(local_params[8]);

	local_params[9] = Text:create();
	local_params[9]:setFontSize(20);
	local_params[9]:setString([[]]);
	local_params[9]:setFontName('uires/public/ttf/jzy.ttf');
	local_params[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	local_params[9]:setAnchorPoint(0.50, 0.50);
	local_params[9]:setTextColor({r = 255, g = 0, b = 0});
	local_params[9]:setContentSize({width = 86.0 height = 27.0});
	local_params[9]:setPosition(197.5, 45.0);
	self.__Children['Node_1#Image1#desc2'] = local_params[9];
	local_params[9].__Children = self.__Children;
	local_params[9].__Name = 'Node_1#Image1#desc2';
	local_params[2]:addChild(local_params[9]);

	local_params[10] = Text:create();
	local_params[10]:setFontSize(16);
	local_params[10]:setString([[1/40]]);
	local_params[10]:setFontName('uires/public/ttf/BRITANIC.TTF');
	local_params[10]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	local_params[10]:setAnchorPoint(1.00, 0.50);
	local_params[10]:setContentSize({width = 41.0 height = 20.0});
	local_params[10]:setPosition(361.5, 141.0);
	self.__Children['Node_1#Image1#number'] = local_params[10];
	local_params[10].__Children = self.__Children;
	local_params[10].__Name = 'Node_1#Image1#number';
	local_params[2]:addChild(local_params[10]);

	local_params[11] = Button:create();
	local_params[11]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0149.png', 1);
	local_params[11]:setTitleFontSize(30.000000);
	local_params[11]:setTitleColor({r = 65, g = 65, b = 70 });
	local_params[11]:setAnchorPoint(0.50, 0.50);
	local_params[11]:onClick(handler(self, self._onWall));
	local_params[11]:setTouchEnabled(true);
	local_params[11]:setContentSize({width = 395.0 height = 464.0});
	local_params[11]:setPosition(-750.0, 0.0);
	self.__Children['Node_1#Image2'] = local_params[11];
	local_params[11].__Children = self.__Children;
	local_params[11].__Name = 'Node_1#Image2';
	local_params[1]:addChild(local_params[11]);

	local_params[12] = Sprite:createWithSpriteFrameName('uires/public/sheet_other/other0207.png');
	local_params[12]:setAnchorPoint(0.50, 0.50);
	local_params[12]:setContentSize({width = 345.0 height = 314.0});
	local_params[12]:setPosition(198.0, 271.0);
	self.__Children['Node_1#Image2#Sprite_43'] = local_params[12];
	local_params[12].__Children = self.__Children;
	local_params[12].__Name = 'Node_1#Image2#Sprite_43';
	local_params[11]:addChild(local_params[12]);

	local_params[13] = Node:create();
	local_params[13]:setAnchorPoint(0.00, 0.00);
	local_params[13]:setScaleX(0.98);
	local_params[13]:setScaleY(0.98);
	local_params[13]:setContentSize({width = 0.0 height = 0.0});
	local_params[13]:setPosition(10.0, -10.0);
	self.__Children['Node_1#Image2#__SELECTED_SCALE'] = local_params[13];
	local_params[13].__Children = self.__Children;
	local_params[13].__Name = 'Node_1#Image2#__SELECTED_SCALE';
	local_params[11]:addChild(local_params[13]);

	local_params[14] = Sprite:createWithSpriteFrameName('uires/public/sheet_other/other0307.png');
	local_params[14]:setAnchorPoint(0.50, 0.50);
	local_params[14]:setVisible(false);
	local_params[14]:setContentSize({width = 159.0 height = 48.0});
	local_params[14]:setPosition(70.0, 390.0);
	self.__Children['Node_1#Image2#sign'] = local_params[14];
	local_params[14].__Children = self.__Children;
	local_params[14].__Name = 'Node_1#Image2#sign';
	local_params[11]:addChild(local_params[14]);

	local_params[15] = Sprite:createWithSpriteFrameName('uires/public/sheet_font/fontImg0196.png');
	local_params[15]:setAnchorPoint(0.50, 0.50);
	local_params[15]:setContentSize({width = 144.0 height = 42.0});
	local_params[15]:setPosition(197.5, 110.0);
	self.__Children['Node_1#Image2#Sprite_46'] = local_params[15];
	local_params[15].__Children = self.__Children;
	local_params[15].__Name = 'Node_1#Image2#Sprite_46';
	local_params[11]:addChild(local_params[15]);

	local_params[16] = Text:create();
	local_params[16]:setFontSize(20);
	local_params[16]:setString([[更多精彩内容准备中]]);
	local_params[16]:setFontName('uires/public/ttf/jzy.ttf');
	local_params[16]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	local_params[16]:setAnchorPoint(0.50, 0.50);
	local_params[16]:setTextColor({r = 255, g = 240, b = 155});
	local_params[16]:setContentSize({width = 185.0 height = 27.0});
	local_params[16]:setPosition(197.5, 61.0);
	self.__Children['Node_1#Image2#desc1'] = local_params[16];
	local_params[16].__Children = self.__Children;
	local_params[16].__Name = 'Node_1#Image2#desc1';
	local_params[11]:addChild(local_params[16]);


end

	abc
    abc
