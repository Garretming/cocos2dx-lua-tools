-- 
-- Author: generation auto
-- Brief：RewardPopupLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local RewardPopupLayer = class('RewardPopupLayer', gamecore.ui.BaseWidget);

function RewardPopupLayer:create(...) 
    local instance = RewardPopupLayer.new(...);
    return instance;
end

function RewardPopupLayer:ctor(...) 
    if RewardPopupLayer.super and RewardPopupLayer.super.ctor then
        RewardPopupLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function RewardPopupLayer:initView()
    self.__LAYER_NAME = 'common.ui.RewardPopupLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 570.0, height = 460.0});
	localParams[1]:setPosition(512.0, 285.0);
	self.__children['Image_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Image_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 520.0, height = 335.0});
	localParams[2]:setPosition(285.0, 267.5);
	self.__children['Image_1#Image_2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_1#Image_2';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 495.0, height = 310.0});
	localParams[3]:setPosition(260.0, 167.5);
	self.__children['Image_1#Image_2#Image_3'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_1#Image_2#Image_3';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._onSure));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 183.0, height = 68.0});
	localParams[4]:setPosition(285.0, 60.0);
	self.__children['Image_1#Button_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_1#Button_1';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Node:create();
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setScaleX(0.90);
	localParams[5]:setScaleY(0.90);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(20.0, -20.0);
	self.__children['Image_1#Button_1#__SELECTED_SCALE'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_1#Button_1#__SELECTED_SCALE';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0085.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 70.0, height = 30.0});
	localParams[6]:setPosition(91.5, 34.0);
	self.__children['Image_1#Button_1#uires_public_sheet_fontImg0085_1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_1#Button_1#uires_public_sheet_fontImg0085_1';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0003.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 204.0, height = 29.0});
	localParams[7]:setPosition(75.0, 480.0);
	self.__children['Image_1#Sprite_2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_1#Sprite_2';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0005.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 204.0, height = 29.0});
	localParams[8]:setPosition(495.0, 480.0);
	self.__children['Image_1#Sprite_3'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Image_1#Sprite_3';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0240.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 228.0, height = 50.0});
	localParams[9]:setPosition(285.0, 467.13);
	self.__children['Image_1#title_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Image_1#title_sprite';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:loadTextureNormal('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setScaleX(0.80);
	localParams[10]:setScaleY(0.80);
	localParams[10]:onClick(handler(self, self._onShowTip));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 120.0, height = 120.0});
	localParams[10]:setPosition(140.0, 345.0);
	self.__children['Image_1#Button1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Image_1#Button1';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = ImageView:create(, 0);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 46.0, height = 46.0});
	localParams[11]:setPosition(60.0, 60.0);
	self.__children['Image_1#Button1#image'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Image_1#Button1#image';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(22);
	localParams[12]:setString([[999999]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[12]:setAnchorPoint(1.00, 0.00);
	localParams[12]:setScaleX(1.10);
	localParams[12]:setScaleY(1.10);
	localParams[12]:setVisible(false);
	localParams[12]:setContentSize({width = 82.0, height = 26.0});
	localParams[12]:setPosition(110.0, 10.0);
	self.__children['Image_1#Button1#number'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Image_1#Button1#number';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(18);
	localParams[13]:setString([[冰霜忍足]]);
	localParams[13]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[13]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setVisible(false);
	localParams[13]:setContentSize({width = 77.0, height = 24.0});
	localParams[13]:setPosition(60.0, -15.0);
	self.__children['Image_1#Button1#name'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Image_1#Button1#name';
	localParams[10]:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:loadTextureNormal('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(0.80);
	localParams[14]:setScaleY(0.80);
	localParams[14]:onClick(handler(self, self._onShowTip));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 120.0, height = 120.0});
	localParams[14]:setPosition(285.0, 345.0);
	self.__children['Image_1#Button2'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Image_1#Button2';
	localParams[1]:addChild(localParams[14]);

	localParams[15] = ImageView:create(, 0);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 46.0, height = 46.0});
	localParams[15]:setPosition(60.0, 60.0);
	self.__children['Image_1#Button2#image'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Image_1#Button2#image';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(22);
	localParams[16]:setString([[999999]]);
	localParams[16]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[16]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[16]:setAnchorPoint(1.00, 0.00);
	localParams[16]:setVisible(false);
	localParams[16]:setContentSize({width = 82.0, height = 26.0});
	localParams[16]:setPosition(110.0, 10.0);
	self.__children['Image_1#Button2#number'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Image_1#Button2#number';
	localParams[14]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(18);
	localParams[17]:setString([[冰霜忍足]]);
	localParams[17]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[17]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setVisible(false);
	localParams[17]:setContentSize({width = 77.0, height = 24.0});
	localParams[17]:setPosition(60.0, -15.0);
	self.__children['Image_1#Button2#name'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Image_1#Button2#name';
	localParams[14]:addChild(localParams[17]);

	localParams[18] = Button:create();
	localParams[18]:loadTextureNormal('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[18]:setTitleFontSize(14);
	localParams[18]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setScaleX(0.80);
	localParams[18]:setScaleY(0.81);
	localParams[18]:onClick(handler(self, self._onShowTip));
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 120.0, height = 120.0});
	localParams[18]:setPosition(430.0, 345.0);
	self.__children['Image_1#Button3'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Image_1#Button3';
	localParams[1]:addChild(localParams[18]);

	localParams[19] = ImageView:create(, 0);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 46.0, height = 46.0});
	localParams[19]:setPosition(60.0, 60.0);
	self.__children['Image_1#Button3#image'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Image_1#Button3#image';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(22);
	localParams[20]:setString([[999999]]);
	localParams[20]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[20]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[20]:setAnchorPoint(1.00, 0.00);
	localParams[20]:setVisible(false);
	localParams[20]:setContentSize({width = 82.0, height = 26.0});
	localParams[20]:setPosition(110.0, 10.0);
	self.__children['Image_1#Button3#number'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'Image_1#Button3#number';
	localParams[18]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(18);
	localParams[21]:setString([[冰霜忍足]]);
	localParams[21]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[21]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setVisible(false);
	localParams[21]:setContentSize({width = 77.0, height = 24.0});
	localParams[21]:setPosition(60.0, -15.0);
	self.__children['Image_1#Button3#name'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Image_1#Button3#name';
	localParams[18]:addChild(localParams[21]);

	localParams[22] = Button:create();
	localParams[22]:loadTextureNormal('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[22]:setTitleFontSize(14);
	localParams[22]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setScaleX(0.80);
	localParams[22]:setScaleY(0.80);
	localParams[22]:onClick(handler(self, self._onShowTip));
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setContentSize({width = 120.0, height = 120.0});
	localParams[22]:setPosition(140.0, 200.0);
	self.__children['Image_1#Button4'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'Image_1#Button4';
	localParams[1]:addChild(localParams[22]);

	localParams[23] = ImageView:create(, 0);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 46.0, height = 46.0});
	localParams[23]:setPosition(60.0, 60.0);
	self.__children['Image_1#Button4#image'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'Image_1#Button4#image';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(22);
	localParams[24]:setString([[999999]]);
	localParams[24]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[24]:setAnchorPoint(1.00, 0.00);
	localParams[24]:setVisible(false);
	localParams[24]:setContentSize({width = 82.0, height = 26.0});
	localParams[24]:setPosition(110.0, 10.0);
	self.__children['Image_1#Button4#number'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'Image_1#Button4#number';
	localParams[22]:addChild(localParams[24]);

	localParams[25] = Text:create();
	localParams[25]:setFontSize(18);
	localParams[25]:setString([[冰霜忍足]]);
	localParams[25]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[25]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setVisible(false);
	localParams[25]:setContentSize({width = 77.0, height = 24.0});
	localParams[25]:setPosition(60.0, -15.0);
	self.__children['Image_1#Button4#name'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'Image_1#Button4#name';
	localParams[22]:addChild(localParams[25]);

	localParams[26] = Button:create();
	localParams[26]:loadTextureNormal('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[26]:setTitleFontSize(14);
	localParams[26]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setScaleX(0.80);
	localParams[26]:setScaleY(0.80);
	localParams[26]:onClick(handler(self, self._onShowTip));
	localParams[26]:setTouchEnabled(true);
	localParams[26]:setContentSize({width = 120.0, height = 120.0});
	localParams[26]:setPosition(285.0, 200.0);
	self.__children['Image_1#Button5'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'Image_1#Button5';
	localParams[1]:addChild(localParams[26]);

	localParams[27] = ImageView:create(, 0);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 46.0, height = 46.0});
	localParams[27]:setPosition(60.0, 60.0);
	self.__children['Image_1#Button5#image'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'Image_1#Button5#image';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(22);
	localParams[28]:setString([[999999]]);
	localParams[28]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[28]:setAnchorPoint(1.00, 0.00);
	localParams[28]:setVisible(false);
	localParams[28]:setContentSize({width = 82.0, height = 26.0});
	localParams[28]:setPosition(110.0, 10.0);
	self.__children['Image_1#Button5#number'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'Image_1#Button5#number';
	localParams[26]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(18);
	localParams[29]:setString([[冰霜忍足]]);
	localParams[29]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[29]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setVisible(false);
	localParams[29]:setContentSize({width = 77.0, height = 24.0});
	localParams[29]:setPosition(60.0, -15.0);
	self.__children['Image_1#Button5#name'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'Image_1#Button5#name';
	localParams[26]:addChild(localParams[29]);

	localParams[30] = Button:create();
	localParams[30]:loadTextureNormal('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[30]:setTitleFontSize(14);
	localParams[30]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(0.80);
	localParams[30]:setScaleY(0.80);
	localParams[30]:onClick(handler(self, self._onShowTip));
	localParams[30]:setTouchEnabled(true);
	localParams[30]:setContentSize({width = 120.0, height = 120.0});
	localParams[30]:setPosition(430.0, 200.0);
	self.__children['Image_1#Button6'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Image_1#Button6';
	localParams[1]:addChild(localParams[30]);

	localParams[31] = ImageView:create(, 0);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 46.0, height = 46.0});
	localParams[31]:setPosition(60.0, 60.0);
	self.__children['Image_1#Button6#image'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Image_1#Button6#image';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(22);
	localParams[32]:setString([[999999]]);
	localParams[32]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[32]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[32]:setAnchorPoint(1.00, 0.00);
	localParams[32]:setVisible(false);
	localParams[32]:setContentSize({width = 82.0, height = 26.0});
	localParams[32]:setPosition(110.0, 10.0);
	self.__children['Image_1#Button6#number'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'Image_1#Button6#number';
	localParams[30]:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(18);
	localParams[33]:setString([[冰霜忍足]]);
	localParams[33]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[33]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setVisible(false);
	localParams[33]:setContentSize({width = 77.0, height = 24.0});
	localParams[33]:setPosition(60.0, -15.0);
	self.__children['Image_1#Button6#name'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'Image_1#Button6#name';
	localParams[30]:addChild(localParams[33]);

end
function RewardPopupLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function RewardPopupLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RewardPopupLayer:_onSure(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSure then
        return self.m_ClickDelegate:onSure(sender);
    end
    if self.onSure then
        return self:onSure(sender);
    end
end


function RewardPopupLayer:_onShowTip(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onShowTip then
        return self.m_ClickDelegate:onShowTip(sender);
    end
    if self.onShowTip then
        return self:onShowTip(sender);
    end
end


return RewardPopupLayer;