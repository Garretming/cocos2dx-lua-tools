-- 
-- Author: generation auto
-- Brief：MainCityLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local MainCityLayer = class('MainCityLayer', gamecore.ui.BaseWidget);

function MainCityLayer:create(...) 
    local instance = MainCityLayer.new(...);
    return instance;
end

function MainCityLayer:ctor(...) 
    if MainCityLayer.super and MainCityLayer.super.ctor then
        MainCityLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function MainCityLayer:initView()
    self.__LAYER_NAME = 'maincity.MainCityLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0031.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(568.74, 320.0);
	self.__children['background'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'background';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[2]:setTitleFontSize(30);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setScaleX(0.60);
	localParams[2]:setScaleY(0.60);
	localParams[2]:onClick(handler(self, self._onPVE));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 183.0, height = 68.0});
	localParams[2]:setPosition(1357.62, 529.18);
	self.__children['pve'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'pve';
	self:addChild(localParams[2]);

	localParams[3] = Node:create();
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setScaleX(0.50);
	localParams[3]:setScaleY(0.50);
	localParams[3]:setContentSize({width = 0.0, height = 0.0});
	localParams[3]:setPosition(10.0, -10.0);
	self.__children['pve#__SELECTED_SCALE'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'pve#__SELECTED_SCALE';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[4]:setTitleFontSize(30);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.60);
	localParams[4]:setScaleY(0.60);
	localParams[4]:onClick(handler(self, self._onGuide));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 183.0, height = 68.0});
	localParams[4]:setPosition(WinSize.width/2 + (734.54 * ccx.scaleX), 371.5);
	self.__children['pve_0'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'pve_0';
	self:addChild(localParams[4]);

	localParams[5] = Node:create();
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setScaleX(0.50);
	localParams[5]:setScaleY(0.50);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(10.0, -10.0);
	self.__children['pve_0#__SELECTED_SCALE'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'pve_0#__SELECTED_SCALE';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_bgframe/bgFrame0143.png', 1);
	localParams[6]:ignoreContentAdaptWithSize(false);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 1136.0, height = 103.0});
	localParams[6]:setPosition(WinSize.width/2 + (-2.27 * ccx.scaleX), 51.5);
	self.__children['Image_1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_1';
	self:addChild(localParams[6]);

	localParams[7] = Node:create();
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 0.0);
	self.__children['Node_1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Node_1';
	self:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[8]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0145.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 15.000000, y = 11.000000, width = 115.000000, height = 67.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 145.0, height = 89.0});
	localParams[8]:setPosition(-580.0, 44.5);
	self.__children['Node_1#Button_0'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Node_1#Button_0';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[9]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0145.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 15.000000, y = 11.000000, width = 115.000000, height = 67.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._onFormation));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 145.0, height = 89.0});
	localParams[9]:setPosition(-435.0, 44.5);
	self.__children['Node_1#Button_1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Node_1#Button_1';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_btn/btn0152.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 105.0, height = 44.0});
	localParams[10]:setPosition(72.5, 52.0);
	self.__children['Node_1#Button_1#uires_public_sheet_btn_btn0152_5'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Node_1#Button_1#uires_public_sheet_btn_btn0152_5';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setVisible(false);
	localParams[11]:setContentSize({width = 30.0, height = 30.0});
	localParams[11]:setPosition(130.0, 82.0);
	self.__children['Node_1#Button_1#redPoint_sprite'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Node_1#Button_1#redPoint_sprite';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0145.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 115.000000, height = 67.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._onMonster));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 145.0, height = 89.0});
	localParams[12]:setPosition(-290.0, 44.5);
	self.__children['Node_1#Button_2'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Node_1#Button_2';
	localParams[7]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_btn/btn0153.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 105.0, height = 44.0});
	localParams[13]:setPosition(72.5, 52.0);
	self.__children['Node_1#Button_2#uires_public_sheet_btn_btn0152_5'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Node_1#Button_2#uires_public_sheet_btn_btn0152_5';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setVisible(false);
	localParams[14]:setContentSize({width = 30.0, height = 30.0});
	localParams[14]:setPosition(130.0, 82.0);
	self.__children['Node_1#Button_2#redPoint_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Node_1#Button_2#redPoint_sprite';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[15]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0145.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 15.000000, y = 11.000000, width = 115.000000, height = 67.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:onClick(handler(self, self._onHero));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 145.0, height = 89.0});
	localParams[15]:setPosition(-145.0, 44.5);
	self.__children['Node_1#Button_3'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Node_1#Button_3';
	localParams[7]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_btn/btn0154.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 105.0, height = 44.0});
	localParams[16]:setPosition(72.5, 52.0);
	self.__children['Node_1#Button_3#uires_public_sheet_btn_btn0152_5'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Node_1#Button_3#uires_public_sheet_btn_btn0152_5';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setVisible(false);
	localParams[17]:setContentSize({width = 30.0, height = 30.0});
	localParams[17]:setPosition(130.0, 82.0);
	self.__children['Node_1#Button_3#redPoint_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Node_1#Button_3#redPoint_sprite';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = Button:create();
	localParams[18]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[18]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0145.png', 1);
	localParams[18]:setTitleFontSize(14);
	localParams[18]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[18]:setScale9Enabled(true);
	localParams[18]:setCapInsets({x = 15.000000, y = 11.000000, width = 115.000000, height = 67.000000});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:onClick(handler(self, self._onRank));
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 145.0, height = 89.0});
	localParams[18]:setPosition(0.0, 44.5);
	self.__children['Node_1#Button_4'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Node_1#Button_4';
	localParams[7]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_btn/btn0155.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 105.0, height = 44.0});
	localParams[19]:setPosition(72.5, 52.0);
	self.__children['Node_1#Button_4#uires_public_sheet_btn_btn0152_5'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Node_1#Button_4#uires_public_sheet_btn_btn0152_5';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setVisible(false);
	localParams[20]:setContentSize({width = 30.0, height = 30.0});
	localParams[20]:setPosition(130.0, 82.0);
	self.__children['Node_1#Button_4#redPoint_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'Node_1#Button_4#redPoint_sprite';
	localParams[18]:addChild(localParams[20]);

	localParams[21] = Button:create();
	localParams[21]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[21]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0145.png', 1);
	localParams[21]:setTitleFontSize(14);
	localParams[21]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[21]:setScale9Enabled(true);
	localParams[21]:setCapInsets({x = 15.000000, y = 11.000000, width = 115.000000, height = 67.000000});
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:onClick(handler(self, self._onFriend));
	localParams[21]:setTouchEnabled(true);
	localParams[21]:setContentSize({width = 145.0, height = 89.0});
	localParams[21]:setPosition(145.0, 44.5);
	self.__children['Node_1#Button_5'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Node_1#Button_5';
	localParams[7]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_btn/btn0156.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 105.0, height = 44.0});
	localParams[22]:setPosition(72.5, 52.0);
	self.__children['Node_1#Button_5#uires_public_sheet_btn_btn0152_5'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'Node_1#Button_5#uires_public_sheet_btn_btn0152_5';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setVisible(false);
	localParams[23]:setContentSize({width = 30.0, height = 30.0});
	localParams[23]:setPosition(130.0, 82.0);
	self.__children['Node_1#Button_5#redPoint_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'Node_1#Button_5#redPoint_sprite';
	localParams[21]:addChild(localParams[23]);

	localParams[24] = Button:create();
	localParams[24]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[24]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0145.png', 1);
	localParams[24]:setTitleFontSize(14);
	localParams[24]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[24]:setScale9Enabled(true);
	localParams[24]:setCapInsets({x = 15.000000, y = 11.000000, width = 115.000000, height = 67.000000});
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:onClick(handler(self, self._onShop));
	localParams[24]:setTouchEnabled(true);
	localParams[24]:setContentSize({width = 145.0, height = 89.0});
	localParams[24]:setPosition(290.0, 44.5);
	self.__children['Node_1#Button_6'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'Node_1#Button_6';
	localParams[7]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_btn/btn0157.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 105.0, height = 44.0});
	localParams[25]:setPosition(72.5, 52.0);
	self.__children['Node_1#Button_6#uires_public_sheet_btn_btn0152_5'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'Node_1#Button_6#uires_public_sheet_btn_btn0152_5';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setVisible(false);
	localParams[26]:setContentSize({width = 30.0, height = 30.0});
	localParams[26]:setPosition(130.0, 82.0);
	self.__children['Node_1#Button_6#redPoint_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'Node_1#Button_6#redPoint_sprite';
	localParams[24]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_bgframe/bgFrame0144.png', 1);
	localParams[27]:ignoreContentAdaptWithSize(false);
	localParams[27]:setScale9Enabled(true);
	localParams[27]:setCapInsets({x = 47.000000, y = 29.000000,width = 51.000000, height = 31.000000});
	localParams[27]:setAnchorPoint(0.00, 0.50);
	localParams[27]:setContentSize({width = 300.0, height = 89.0});
	localParams[27]:setPosition(362.5, 44.5);
	self.__children['Node_1#Image_2'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'Node_1#Image_2';
	localParams[7]:addChild(localParams[27]);

	localParams[28] = Button:create();
	localParams[28]:loadTextureNormal('uires/public/sheet_btn/btn0158.png', 1);
	localParams[28]:setTitleFontSize(30);
	localParams[28]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:onClick(handler(self, self._onTask));
	localParams[28]:setTouchEnabled(true);
	localParams[28]:setContentSize({width = 100.0, height = 113.0});
	localParams[28]:setPosition(460.0, 60.0);
	self.__children['Node_1#task'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'Node_1#task';
	localParams[7]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setVisible(false);
	localParams[29]:setContentSize({width = 30.0, height = 30.0});
	localParams[29]:setPosition(90.0, 80.0);
	self.__children['Node_1#task#redPoint_sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'Node_1#task#redPoint_sprite';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(0.80);
	localParams[30]:setScaleY(0.80);
	localParams[30]:setContentSize({width = 103.0, height = 103.0});
	localParams[30]:setPosition(50.0, 56.5);
	self.__children['Node_1#task#lock_sprite'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Node_1#task#lock_sprite';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = Node:create();
	localParams[31]:setAnchorPoint(0.00, 0.00);
	localParams[31]:setScaleX(0.90);
	localParams[31]:setScaleY(0.90);
	localParams[31]:setContentSize({width = 0.0, height = 0.0});
	localParams[31]:setPosition(10.0, -10.0);
	self.__children['Node_1#task#__SELECTED_SCALE'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Node_1#task#__SELECTED_SCALE';
	localParams[28]:addChild(localParams[31]);

	localParams[32] = Node:create();
	localParams[32]:setAnchorPoint(0.00, 0.00);
	localParams[32]:setContentSize({width = 0.0, height = 0.0});
	localParams[32]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Node_7'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'Node_7';
	self:addChild(localParams[32]);

	localParams[33] = Button:create();
	localParams[33]:loadTextureNormal('uires/public/sheet_btn/btn0151.png', 1);
	localParams[33]:setTitleFontSize(30);
	localParams[33]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:onClick(handler(self, self._onDivination));
	localParams[33]:setTouchEnabled(true);
	localParams[33]:setContentSize({width = 200.0, height = 222.0});
	localParams[33]:setPosition(406.0, -70.0);
	self.__children['Node_7#divination'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'Node_7#divination';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0302.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 130.0, height = 130.0});
	localParams[34]:setPosition(104.12, 106.23);
	self.__children['Node_7#divination#lock'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'Node_7#divination#lock';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[35]:ignoreContentAdaptWithSize(false);
	localParams[35]:setScale9Enabled(true);
	localParams[35]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 90.0, height = 90.0});
	localParams[35]:setPosition(58.99, 70.0);
	self.__children['Node_7#divination#lock#Image_3'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'Node_7#divination#lock#Image_3';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = Text:create();
	localParams[36]:setFontSize(20);
	localParams[36]:setString([[等级达到   级解锁]]);
	localParams[36]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[36]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setTextColor({r = 255, g = 240, b = 155});
	localParams[36]:setContentSize({width = 175.0, height = 24.0});
	localParams[36]:setPosition(65.0, -16.0);
	self.__children['Node_7#divination#lock#text'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'Node_7#divination#lock#text';
	localParams[34]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(24);
	localParams[37]:setString([[6]]);
	localParams[37]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[37]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setTextColor({r = 255, g = 0, b = 0});
	localParams[37]:setContentSize({width = 19.0, height = 28.0});
	localParams[37]:setPosition(73.64, -16.18);
	self.__children['Node_7#divination#lock#level'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'Node_7#divination#lock#level';
	localParams[34]:addChild(localParams[37]);

	localParams[38] = Node:create();
	localParams[38]:setAnchorPoint(0.00, 0.00);
	localParams[38]:setScaleX(0.97);
	localParams[38]:setScaleY(0.97);
	localParams[38]:setContentSize({width = 0.0, height = 0.0});
	localParams[38]:setPosition(10.0, -10.0);
	self.__children['Node_7#divination#__SELECTED_SCALE'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'Node_7#divination#__SELECTED_SCALE';
	localParams[33]:addChild(localParams[38]);

	localParams[39] = Button:create();
	localParams[39]:loadTextureNormal('uires/public/sheet_btn/btn0150.png', 1);
	localParams[39]:setTitleFontSize(30);
	localParams[39]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:onClick(handler(self, self._onArean));
	localParams[39]:setTouchEnabled(true);
	localParams[39]:setContentSize({width = 338.0, height = 408.0});
	localParams[39]:setPosition(-67.0, 20.0);
	self.__children['Node_7#arena'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'Node_7#arena';
	localParams[32]:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_other/other0302.png', 1);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 130.0, height = 130.0});
	localParams[40]:setPosition(169.0, 204.0);
	self.__children['Node_7#arena#lock'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'Node_7#arena#lock';
	localParams[39]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[41]:ignoreContentAdaptWithSize(false);
	localParams[41]:setScale9Enabled(true);
	localParams[41]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 338.0, height = 405.0});
	localParams[41]:setPosition(65.0, 65.0);
	self.__children['Node_7#arena#lock#Image_3'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'Node_7#arena#lock#Image_3';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = Text:create();
	localParams[42]:setFontSize(20);
	localParams[42]:setString([[等级达到   级解锁]]);
	localParams[42]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[42]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setTextColor({r = 255, g = 240, b = 155});
	localParams[42]:setContentSize({width = 175.0, height = 24.0});
	localParams[42]:setPosition(65.0, -20.0);
	self.__children['Node_7#arena#lock#text'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'Node_7#arena#lock#text';
	localParams[40]:addChild(localParams[42]);

	localParams[43] = Text:create();
	localParams[43]:setFontSize(24);
	localParams[43]:setString([[6]]);
	localParams[43]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[43]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setTextColor({r = 255, g = 0, b = 0});
	localParams[43]:setContentSize({width = 19.0, height = 28.0});
	localParams[43]:setPosition(73.64, -20.18);
	self.__children['Node_7#arena#lock#level'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'Node_7#arena#lock#level';
	localParams[40]:addChild(localParams[43]);

	localParams[44] = Node:create();
	localParams[44]:setAnchorPoint(0.00, 0.00);
	localParams[44]:setScaleX(0.98);
	localParams[44]:setScaleY(0.98);
	localParams[44]:setContentSize({width = 0.0, height = 0.0});
	localParams[44]:setPosition(10.0, -10.0);
	self.__children['Node_7#arena#__SELECTED_SCALE'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'Node_7#arena#__SELECTED_SCALE';
	localParams[39]:addChild(localParams[44]);

	localParams[45] = Button:create();
	localParams[45]:loadTextureNormal('uires/public/sheet_btn/btn0148.png', 1);
	localParams[45]:setTitleFontSize(30);
	localParams[45]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:onClick(handler(self, self._onActivity));
	localParams[45]:setTouchEnabled(true);
	localParams[45]:setContentSize({width = 402.0, height = 183.0});
	localParams[45]:setPosition(304.0, 134.53);
	self.__children['Node_7#activity'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'Node_7#activity';
	localParams[32]:addChild(localParams[45]);

	localParams[46] = Button:create();
	localParams[46]:setTitleFontSize(36);
	localParams[46]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[46]:setScale9Enabled(true);
	localParams[46]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[46]:setAnchorPoint(1.00, 1.00);
	localParams[46]:setScaleX(0.50);
	localParams[46]:setScaleY(0.50);
	localParams[46]:onClick(handler(self, self._onGM));
	localParams[46]:setTouchEnabled(true);
	localParams[46]:setContentSize({width = 200.0, height = 100.0});
	localParams[46]:setPosition(localParams[45]:getContentSize().width - 4.66, localParams[45]:getContentSize().height - 6.99);
	self.__children['Node_7#activity#Button_2'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'Node_7#activity#Button_2';
	localParams[45]:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_other/other0307.png', 1);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 159.0, height = 48.0});
	localParams[47]:setPosition(74.5, 144.0);
	self.__children['Node_7#activity#sign'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'Node_7#activity#sign';
	localParams[45]:addChild(localParams[47]);

	localParams[48] = Node:create();
	localParams[48]:setAnchorPoint(0.00, 0.00);
	localParams[48]:setScaleX(0.97);
	localParams[48]:setScaleY(0.97);
	localParams[48]:setContentSize({width = 0.0, height = 0.0});
	localParams[48]:setPosition(10.0, -10.0);
	self.__children['Node_7#activity#__SELECTED_SCALE'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'Node_7#activity#__SELECTED_SCALE';
	localParams[45]:addChild(localParams[48]);

	localParams[49] = Button:create();
	localParams[49]:loadTextureNormal('uires/public/sheet_btn/btn0149.png', 1);
	localParams[49]:setTitleFontSize(30);
	localParams[49]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:onClick(handler(self, self._onRisk));
	localParams[49]:setTouchEnabled(true);
	localParams[49]:setContentSize({width = 200.0, height = 222.0});
	localParams[49]:setPosition(204.0, -70.0);
	self.__children['Node_7#risk'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'Node_7#risk';
	localParams[32]:addChild(localParams[49]);

	localParams[50] = Node:create();
	localParams[50]:setAnchorPoint(0.00, 0.00);
	localParams[50]:setScaleX(0.97);
	localParams[50]:setScaleY(0.97);
	localParams[50]:setContentSize({width = 0.0, height = 0.0});
	localParams[50]:setPosition(10.0, -10.0);
	self.__children['Node_7#risk#__SELECTED_SCALE'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'Node_7#risk#__SELECTED_SCALE';
	localParams[49]:addChild(localParams[50]);

	localParams[51] = Button:create();
	localParams[51]:loadTextureNormal('uires/public/sheet_other/other0208.png', 1);
	localParams[51]:setTitleFontSize(30);
	localParams[51]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:onClick(handler(self, self._onBattle));
	localParams[51]:setTouchEnabled(true);
	localParams[51]:setContentSize({width = 268.0, height = 408.0});
	localParams[51]:setPosition(-372.0, 20.0);
	self.__children['Node_7#battle'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'Node_7#battle';
	localParams[32]:addChild(localParams[51]);

	localParams[52] = Node:create();
	localParams[52]:setAnchorPoint(0.00, 0.00);
	localParams[52]:setScaleX(0.97);
	localParams[52]:setScaleY(0.97);
	localParams[52]:setContentSize({width = 0.0, height = 0.0});
	localParams[52]:setPosition(10.0, -10.0);
	self.__children['Node_7#battle#__SELECTED_SCALE'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'Node_7#battle#__SELECTED_SCALE';
	localParams[51]:addChild(localParams[52]);

	localParams[53] = Button:create();
	localParams[53]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0148.png', 1);
	localParams[53]:setTitleFontSize(14);
	localParams[53]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[53]:setScale9Enabled(true);
	localParams[53]:setCapInsets({x = 15.000000, y = 11.000000, width = 60.000000, height = 12.000000});
	localParams[53]:setAnchorPoint(0.00, 0.50);
	localParams[53]:onClick(handler(self, self._onChat));
	localParams[53]:setTouchEnabled(true);
	localParams[53]:setContentSize({width = 420.0, height = 34.0});
	localParams[53]:setPosition(-460.0, -203.0);
	self.__children['Node_7#chat1'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'Node_7#chat1';
	localParams[32]:addChild(localParams[53]);

	localParams[54] = Text:create();
	localParams[54]:setFontSize(25);
	localParams[54]:setString([[]]);
	localParams[54]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[54]:setTextAreaSize({width = 400, height = 25});
	localParams[54]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[54]:setAnchorPoint(0.00, 0.50);
	localParams[54]:setContentSize({width = 400.0, height = 25.0});
	localParams[54]:setPosition(10.0, 17.0);
	self.__children['Node_7#chat1#text'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'Node_7#chat1#text';
	localParams[53]:addChild(localParams[54]);

	localParams[55] = Button:create();
	localParams[55]:loadTextureNormal('uires/public/sheet_other/other0309.png', 1);
	localParams[55]:setTitleFontSize(30);
	localParams[55]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:onClick(handler(self, self._onChat));
	localParams[55]:setTouchEnabled(true);
	localParams[55]:setContentSize({width = 45.0, height = 36.0});
	localParams[55]:setPosition(-481.0, -203.0);
	self.__children['Node_7#chat'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'Node_7#chat';
	localParams[32]:addChild(localParams[55]);

	localParams[56] = ImageView:create('uires/public/sheet_other/other0308.png', 1);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setContentSize({width = 28.0, height = 26.0});
	localParams[56]:setPosition(10.92, -203.23);
	self.__children['Node_7#Sprite_14'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'Node_7#Sprite_14';
	localParams[32]:addChild(localParams[56]);

	localParams[57] = Text:create();
	localParams[57]:setFontSize(20);
	localParams[57]:setString([[每周PVP水晶球掉落上限]]);
	localParams[57]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[57]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[57]:setAnchorPoint(0.00, 0.50);
	localParams[57]:setContentSize({width = 215.0, height = 24.0});
	localParams[57]:setPosition(30.0, 13.0);
	self.__children['Node_7#Sprite_14#Text_5'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'Node_7#Sprite_14#Text_5';
	localParams[56]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_other/other0206.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setContentSize({width = 182.0, height = 39.0});
	localParams[58]:setPosition(340.0, 13.0);
	self.__children['Node_7#Sprite_14#sprite'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'Node_7#Sprite_14#sprite';
	localParams[56]:addChild(localParams[58]);

	localParams[59] = LoadingBar:create(''uires/public/sheet_other/other0205.png'', 1, 0.00);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 166.0, height = 25.0});
	localParams[59]:setPosition(91.0, 19.5);
	self.__children['Node_7#Sprite_14#sprite#loading'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'Node_7#Sprite_14#sprite#loading';
	localParams[58]:addChild(localParams[59]);

	localParams[60] = Text:create();
	localParams[60]:setFontSize(18);
	localParams[60]:setString([[200000/200000]]);
	localParams[60]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[60]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 145.0, height = 22.0});
	localParams[60]:setPosition(91.0, 19.5);
	self.__children['Node_7#Sprite_14#sprite#text'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'Node_7#Sprite_14#sprite#text';
	localParams[58]:addChild(localParams[60]);

	localParams[61]:setAnchorPoint(0.00, 0.00);
	localParams[61]:setContentSize({width = 1024.0, height = 640.0});
	localParams[61]:setPosition(0.0, 0.0);
	self.__children['FileNode_1'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'FileNode_1';
	self:addChild(localParams[61]);

end
function MainCityLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0031.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function MainCityLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MainCityLayer:_onShop(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onShop then
        return self.m_ClickDelegate:onShop(sender);
    end
    if self.onShop then
        return self:onShop(sender);
    end
end


function MainCityLayer:_onActivity(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onActivity then
        return self.m_ClickDelegate:onActivity(sender);
    end
    if self.onActivity then
        return self:onActivity(sender);
    end
end


function MainCityLayer:_onFormation(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onFormation then
        return self.m_ClickDelegate:onFormation(sender);
    end
    if self.onFormation then
        return self:onFormation(sender);
    end
end


function MainCityLayer:_onGM(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGM then
        return self.m_ClickDelegate:onGM(sender);
    end
    if self.onGM then
        return self:onGM(sender);
    end
end


function MainCityLayer:_onHero(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onHero then
        return self.m_ClickDelegate:onHero(sender);
    end
    if self.onHero then
        return self:onHero(sender);
    end
end


function MainCityLayer:_onGuide(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGuide then
        return self.m_ClickDelegate:onGuide(sender);
    end
    if self.onGuide then
        return self:onGuide(sender);
    end
end


function MainCityLayer:_onPVE(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPVE then
        return self.m_ClickDelegate:onPVE(sender);
    end
    if self.onPVE then
        return self:onPVE(sender);
    end
end


function MainCityLayer:_onBattle(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onBattle then
        return self.m_ClickDelegate:onBattle(sender);
    end
    if self.onBattle then
        return self:onBattle(sender);
    end
end


function MainCityLayer:_onFriend(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onFriend then
        return self.m_ClickDelegate:onFriend(sender);
    end
    if self.onFriend then
        return self:onFriend(sender);
    end
end


function MainCityLayer:_onTask(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTask then
        return self.m_ClickDelegate:onTask(sender);
    end
    if self.onTask then
        return self:onTask(sender);
    end
end


function MainCityLayer:_onRisk(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRisk then
        return self.m_ClickDelegate:onRisk(sender);
    end
    if self.onRisk then
        return self:onRisk(sender);
    end
end


function MainCityLayer:_onRank(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRank then
        return self.m_ClickDelegate:onRank(sender);
    end
    if self.onRank then
        return self:onRank(sender);
    end
end


function MainCityLayer:_onArean(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onArean then
        return self.m_ClickDelegate:onArean(sender);
    end
    if self.onArean then
        return self:onArean(sender);
    end
end


function MainCityLayer:_onChat(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onChat then
        return self.m_ClickDelegate:onChat(sender);
    end
    if self.onChat then
        return self:onChat(sender);
    end
end


function MainCityLayer:_onDivination(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onDivination then
        return self.m_ClickDelegate:onDivination(sender);
    end
    if self.onDivination then
        return self:onDivination(sender);
    end
end


function MainCityLayer:_onMonster(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onMonster then
        return self.m_ClickDelegate:onMonster(sender);
    end
    if self.onMonster then
        return self:onMonster(sender);
    end
end


return MainCityLayer;