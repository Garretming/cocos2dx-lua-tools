-- 
-- Author: generation auto
-- Brief：EvaluateLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local EvaluateLayer = class('EvaluateLayer', gamecore.ui.BaseWidget);

function EvaluateLayer:create(...) 
    local instance = EvaluateLayer.new(...);
    return instance;
end

function EvaluateLayer:ctor(...) 
    if EvaluateLayer.super and EvaluateLayer.super.ctor then
        EvaluateLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function EvaluateLayer:initView()
    self.__LAYER_NAME = 'monster.EvaluateLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 930.0, height = 550.0});
	localParams[1]:setPosition(512.0, 313.02);
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 870.0, height = 410.0});
	localParams[2]:setPosition(465.0, 313.94);
	self.__children['bg_img#bg_img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 850.0, height = 320.0});
	localParams[3]:setPosition(435.0, 169.99);
	self.__children['bg_img#bg_img1#bg_img2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img1#bg_img2';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ListView:create();
	localParams[4]:setDirection(1);
	localParams[4]:setGravity(0);
	localParams[4]:setBackGroundColorType(1);
	localParams[4]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[4]:setBackGroundColorOpacity(0);
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:onClick(handler(self, self._onListView));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 850.0, height = 320.0});
	localParams[4]:setPosition(0.0, 0.0);
	self.__children['bg_img#bg_img1#bg_img2#ListView_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#bg_img1#bg_img2#ListView_1';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0024.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 269.0, height = 60.0});
	localParams[5]:setPosition(465.0, 533.79);
	self.__children['bg_img#Sprite_1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#Sprite_1';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0131.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 159.0, height = 47.0});
	localParams[6]:setPosition(134.5, 30.0);
	self.__children['bg_img#Sprite_1#Sprite_2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#Sprite_1#Sprite_2';
	localParams[5]:addChild(localParams[6]);

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
	localParams[7]:setPosition(906.05, 528.24);
	self.__children['bg_img#close_btn'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#close_btn';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Node:create();
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(121.67, 20.06);
	self.__children['bg_img#close_btn#__SELECTED_SCALE'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#close_btn#__SELECTED_SCALE';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 49.000000, y = 16.000000,width = 52.000000, height = 18.000000);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 650.0, height = 50.0});
	localParams[9]:setPosition(361.21, 64.84);
	self.__children['bg_img#Image_2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#Image_2';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[10]:setFontSize(14);
	localParams[10]:setPlaceholderFontSize(14);
	localParams[10]:setPlaceHolder([[请您留下对佣兵的评价(最多40字)]]);
	localParams[10]:setMaxLengthEnabled(true);
	localParams[10]:setMaxLength(40);
	localParams[10]:setPasswordEnabled(false);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:registerScriptEditBoxHandler(handler(self, self._onComment));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 580.0, height = 20.0});
	localParams[10]:setPosition(34.97, 25.0);
	self.__children['bg_img#Image_2#TextField_1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#Image_2#TextField_1';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:onClick(handler(self, self._onEvaluate));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 183.0, height = 68.0});
	localParams[11]:setPosition(804.88, 66.09);
	self.__children['bg_img#evaluate_btn'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#evaluate_btn';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = Node:create();
	localParams[12]:setAnchorPoint(0.00, 0.00);
	localParams[12]:setScaleX(0.90);
	localParams[12]:setScaleY(0.90);
	localParams[12]:setContentSize({width = 0.0, height = 0.0});
	localParams[12]:setPosition(318.52, 23.04);
	self.__children['bg_img#evaluate_btn#__SELECTED_SCALE'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#evaluate_btn#__SELECTED_SCALE';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_font/fontImg0126.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 68.0, height = 29.0});
	localParams[13]:setPosition(91.5, 34.0);
	self.__children['bg_img#evaluate_btn#font_sprite'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#evaluate_btn#font_sprite';
	localParams[11]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(1.10);
	localParams[14]:setScaleY(1.10);
	localParams[14]:setContentSize({width = 15.0, height = 16.0});
	localParams[14]:setPosition(301.88, 465.69);
	self.__children['bg_img#starUnder_sprite10'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#starUnder_sprite10';
	localParams[1]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 15.0, height = 16.0});
	localParams[15]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite10#star_sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#starUnder_sprite10#star_sprite';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(1.10);
	localParams[16]:setScaleY(1.10);
	localParams[16]:setContentSize({width = 15.0, height = 16.0});
	localParams[16]:setPosition(284.21, 465.69);
	self.__children['bg_img#starUnder_sprite9'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#starUnder_sprite9';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 15.0, height = 16.0});
	localParams[17]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite9#star_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#starUnder_sprite9#star_sprite';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setScaleX(1.10);
	localParams[18]:setScaleY(1.10);
	localParams[18]:setContentSize({width = 15.0, height = 16.0});
	localParams[18]:setPosition(266.54, 465.69);
	self.__children['bg_img#starUnder_sprite8'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#starUnder_sprite8';
	localParams[1]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 15.0, height = 16.0});
	localParams[19]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite8#star_sprite'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#starUnder_sprite8#star_sprite';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setScaleX(1.10);
	localParams[20]:setScaleY(1.10);
	localParams[20]:setContentSize({width = 15.0, height = 16.0});
	localParams[20]:setPosition(248.87, 465.69);
	self.__children['bg_img#starUnder_sprite7'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#starUnder_sprite7';
	localParams[1]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 15.0, height = 16.0});
	localParams[21]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite7#star_sprite'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#starUnder_sprite7#star_sprite';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setScaleX(1.10);
	localParams[22]:setScaleY(1.10);
	localParams[22]:setContentSize({width = 15.0, height = 16.0});
	localParams[22]:setPosition(231.2, 465.69);
	self.__children['bg_img#starUnder_sprite6'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#starUnder_sprite6';
	localParams[1]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 15.0, height = 16.0});
	localParams[23]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite6#star_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg_img#starUnder_sprite6#star_sprite';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setScaleX(1.10);
	localParams[24]:setScaleY(1.10);
	localParams[24]:setContentSize({width = 15.0, height = 16.0});
	localParams[24]:setPosition(213.53, 465.69);
	self.__children['bg_img#starUnder_sprite5'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg_img#starUnder_sprite5';
	localParams[1]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 15.0, height = 16.0});
	localParams[25]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite5#star_sprite'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg_img#starUnder_sprite5#star_sprite';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setScaleX(1.10);
	localParams[26]:setScaleY(1.10);
	localParams[26]:setContentSize({width = 15.0, height = 16.0});
	localParams[26]:setPosition(195.86, 465.69);
	self.__children['bg_img#starUnder_sprite4'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bg_img#starUnder_sprite4';
	localParams[1]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 15.0, height = 16.0});
	localParams[27]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite4#star_sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'bg_img#starUnder_sprite4#star_sprite';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(1.10);
	localParams[28]:setScaleY(1.10);
	localParams[28]:setContentSize({width = 15.0, height = 16.0});
	localParams[28]:setPosition(178.19, 465.69);
	self.__children['bg_img#starUnder_sprite3'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'bg_img#starUnder_sprite3';
	localParams[1]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 15.0, height = 16.0});
	localParams[29]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite3#star_sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'bg_img#starUnder_sprite3#star_sprite';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(1.10);
	localParams[30]:setScaleY(1.10);
	localParams[30]:setContentSize({width = 15.0, height = 16.0});
	localParams[30]:setPosition(160.52, 465.69);
	self.__children['bg_img#starUnder_sprite2'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'bg_img#starUnder_sprite2';
	localParams[1]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 15.0, height = 16.0});
	localParams[31]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite2#star_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'bg_img#starUnder_sprite2#star_sprite';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_other/other0028.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setScaleX(1.10);
	localParams[32]:setScaleY(1.10);
	localParams[32]:setContentSize({width = 15.0, height = 16.0});
	localParams[32]:setPosition(142.85, 465.69);
	self.__children['bg_img#starUnder_sprite1'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'bg_img#starUnder_sprite1';
	localParams[1]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_other/other0027.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 15.0, height = 16.0});
	localParams[33]:setPosition(7.5, 8.0);
	self.__children['bg_img#starUnder_sprite1#star_sprite'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'bg_img#starUnder_sprite1#star_sprite';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = Text:create();
	localParams[34]:setFontSize(20);
	localParams[34]:setString([[作死的大鸟]]);
	localParams[34]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[34]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setTextColor({r = 255, g = 240, b = 155});
	localParams[34]:setContentSize({width = 103.0, height = 22.0});
	localParams[34]:setPosition(221.99, 485.49);
	self.__children['bg_img#name_txt'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'bg_img#name_txt';
	localParams[1]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setScaleX(0.80);
	localParams[35]:setScaleY(0.80);
	localParams[35]:setContentSize({width = 60.0, height = 29.0});
	localParams[35]:setPosition(293.14, 487.96);
	self.__children['bg_img#right_sprite'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'bg_img#right_sprite';
	localParams[1]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setScaleX(0.80);
	localParams[36]:setScaleY(0.80);
	localParams[36]:setContentSize({width = 60.0, height = 29.0});
	localParams[36]:setPosition(153.45, 487.96);
	self.__children['bg_img#left_sprite'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'bg_img#left_sprite';
	localParams[1]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setScaleX(0.60);
	localParams[37]:setScaleY(0.60);
	localParams[37]:setContentSize({width = 122.0, height = 122.0});
	localParams[37]:setPosition(79.22, 477.57);
	self.__children['bg_img#monster_sprite'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'bg_img#monster_sprite';
	localParams[1]:addChild(localParams[37]);

end
function EvaluateLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function EvaluateLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function EvaluateLayer:_onEvaluate(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onEvaluate then
        return self.m_ClickDelegate:onEvaluate(sender);
    end
    if self.onEvaluate then
        return self:onEvaluate(sender);
    end
end


function EvaluateLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


--eventName:(began, ended, changed)
function EvaluateLayer:_onComment(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onComment then
        return self.m_ClickDelegate:onComment(eventName, editBox);
    end
    if self.onComment then
        return self:onComment(eventName, editBox);
    end
end


return EvaluateLayer;