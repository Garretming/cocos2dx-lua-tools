-- 
-- Author: generation auto
-- Brief：MonsterDetailLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local MonsterDetailLayer = class('MonsterDetailLayer', gamecore.ui.BaseWidget);

function MonsterDetailLayer:create(...) 
    local instance = MonsterDetailLayer.new(...);
    return instance;
end

function MonsterDetailLayer:ctor(...) 
    if MonsterDetailLayer.super and MonsterDetailLayer.super.ctor then
        MonsterDetailLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function MonsterDetailLayer:initView()
    self.__LAYER_NAME = 'common.ui.MonsterDetailLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 830.0, height = 490.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Image_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Image_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 770.0, height = 430.0});
	localParams[2]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Image_2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_2';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/bg_img/bgImg0021.png', 0);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 325.0, height = 387.0});
	localParams[3]:setPosition(184.0, 215.0);
	self.__children['Image_2#Sprite_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_2#Sprite_1';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[4]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.80);
	localParams[4]:setScaleY(0.80);
	localParams[4]:onClick(handler(self, self._onSpecial));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 108.0, height = 108.0});
	localParams[4]:setPosition(74.0, 176.0);
	self.__children['Image_2#skill_btn3'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_2#skill_btn3';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 80.0, height = 80.0});
	localParams[5]:setPosition(54.0, 54.0);
	self.__children['Image_2#skill_btn3#skillIcon_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_2#skill_btn3#skillIcon_sprite';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[6]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setScaleX(0.80);
	localParams[6]:setScaleY(0.80);
	localParams[6]:onClick(handler(self, self._onSpecial));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 108.0, height = 108.0});
	localParams[6]:setPosition(74.0, 266.0);
	self.__children['Image_2#skill_btn2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_2#skill_btn2';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 80.0, height = 80.0});
	localParams[7]:setPosition(54.0, 54.0);
	self.__children['Image_2#skill_btn2#skillIcon_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_2#skill_btn2#skillIcon_sprite';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[8]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.80);
	localParams[8]:setScaleY(0.80);
	localParams[8]:onClick(handler(self, self._onSpecial));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 108.0, height = 108.0});
	localParams[8]:setPosition(74.0, 356.0);
	self.__children['Image_2#skill_btn1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Image_2#skill_btn1';
	localParams[2]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 80.0, height = 80.0});
	localParams[9]:setPosition(54.0, 54.0);
	self.__children['Image_2#skill_btn1#skillIcon_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Image_2#skill_btn1#skillIcon_sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create(, 0);
	localParams[10]:setAnchorPoint(0.50, 0.00);
	localParams[10]:setContentSize({width = 46.0, height = 46.0});
	localParams[10]:setPosition(180.0, 110.0);
	self.__children['Image_2#monster_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Image_2#monster_sprite';
	localParams[2]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[11]:ignoreContentAdaptWithSize(false);
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 380.0, height = 387.0});
	localParams[11]:setPosition(558.0, 215.0);
	self.__children['Image_2#Image_3'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Image_2#Image_3';
	localParams[2]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 60.0, height = 29.0});
	localParams[12]:setPosition(80.0, 350.0);
	self.__children['Image_2#Image_3#left_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Image_2#Image_3#left_sprite';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 60.0, height = 29.0});
	localParams[13]:setPosition(300.0, 350.0);
	self.__children['Image_2#Image_3#right_sprite'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Image_2#Image_3#right_sprite';
	localParams[11]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(28);
	localParams[14]:setString([[作死的大鸟]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setTextColor({r = 255, g = 240, b = 155});
	localParams[14]:setContentSize({width = 143.0, height = 30.0});
	localParams[14]:setPosition(190.0, 350.0);
	self.__children['Image_2#Image_3#name_txt'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Image_2#Image_3#name_txt';
	localParams[11]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0170.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 19.000000, y = 1.000000,width = 22.000000, height = 2.000000);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 350.0, height = 2.0});
	localParams[15]:setPosition(190.0, 110.0);
	self.__children['Image_2#Image_3#Image_1_0'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Image_2#Image_3#Image_1_0';
	localParams[11]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[消耗怒气：]]);
	localParams[16]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[16]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[16]:setAnchorPoint(0.00, 0.50);
	localParams[16]:setContentSize({width = 91.0, height = 25.0});
	localParams[16]:setPosition(171.0, 145.0);
	self.__children['Image_2#Image_3#anger_txt'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Image_2#Image_3#anger_txt';
	localParams[11]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[8]]);
	localParams[17]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[17]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[17]:setAnchorPoint(0.00, 0.50);
	localParams[17]:setTextColor({r = 255, g = 140, b = 0});
	localParams[17]:setContentSize({width = 14.0, height = 25.0});
	localParams[17]:setPosition(100.86, 12.5);
	self.__children['Image_2#Image_3#anger_txt#value_txt'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Image_2#Image_3#anger_txt#value_txt';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[幽灵剑客是一位近战爆发AD刺客，双突进]]);
	localParams[18]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[18]:setTextAreaSize({width = 340, height = 100});
	localParams[18]:setTextVerticalAlignment(1);
	localParams[18]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 340.0, height = 100.0});
	localParams[18]:setPosition(190.0, 226.0);
	self.__children['Image_2#Image_3#desc_txt'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Image_2#Image_3#desc_txt';
	localParams[11]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(22);
	localParams[19]:setString([[Text LabelText LabelText LabelText LabelText Label]]);
	localParams[19]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[19]:setTextAreaSize({width = 340, height = 80});
	localParams[19]:setTextVerticalAlignment(1);
	localParams[19]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setTextColor({r = 255, g = 255, b = 0});
	localParams[19]:setContentSize({width = 340.0, height = 80.0});
	localParams[19]:setPosition(190.0, 54.0);
	self.__children['Image_2#Image_3#out_desc'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Image_2#Image_3#out_desc';
	localParams[11]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[定位：]]);
	localParams[20]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[20]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[20]:setAnchorPoint(0.00, 0.50);
	localParams[20]:setContentSize({width = 51.0, height = 25.0});
	localParams[20]:setPosition(20.0, 145.0);
	self.__children['Image_2#Image_3#location_txt'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'Image_2#Image_3#location_txt';
	localParams[11]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[输出]]);
	localParams[21]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[21]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[21]:setAnchorPoint(0.00, 0.50);
	localParams[21]:setTextColor({r = 255, g = 140, b = 0});
	localParams[21]:setContentSize({width = 43.0, height = 25.0});
	localParams[21]:setPosition(56.53, 12.5);
	self.__children['Image_2#Image_3#location_txt#value_txt'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Image_2#Image_3#location_txt#value_txt';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setScaleX(0.65);
	localParams[22]:setScaleY(0.65);
	localParams[22]:setContentSize({width = 43.0, height = 41.0});
	localParams[22]:setPosition(61.5, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite1'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'Image_2#Image_3#starUnder_sprite1';
	localParams[11]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 43.0, height = 41.0});
	localParams[23]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite1#star_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'Image_2#Image_3#starUnder_sprite1#star_sprite';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setScaleX(0.65);
	localParams[24]:setScaleY(0.65);
	localParams[24]:setContentSize({width = 43.0, height = 41.0});
	localParams[24]:setPosition(90.06, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite2'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'Image_2#Image_3#starUnder_sprite2';
	localParams[11]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 43.0, height = 41.0});
	localParams[25]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite2#star_sprite'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'Image_2#Image_3#starUnder_sprite2#star_sprite';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setScaleX(0.65);
	localParams[26]:setScaleY(0.65);
	localParams[26]:setContentSize({width = 43.0, height = 41.0});
	localParams[26]:setPosition(118.61, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite3'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'Image_2#Image_3#starUnder_sprite3';
	localParams[11]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 43.0, height = 41.0});
	localParams[27]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite3#star_sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'Image_2#Image_3#starUnder_sprite3#star_sprite';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(0.65);
	localParams[28]:setScaleY(0.65);
	localParams[28]:setContentSize({width = 43.0, height = 41.0});
	localParams[28]:setPosition(147.17, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite4'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'Image_2#Image_3#starUnder_sprite4';
	localParams[11]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 43.0, height = 41.0});
	localParams[29]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite4#star_sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'Image_2#Image_3#starUnder_sprite4#star_sprite';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(0.65);
	localParams[30]:setScaleY(0.65);
	localParams[30]:setContentSize({width = 43.0, height = 41.0});
	localParams[30]:setPosition(175.72, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite5'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Image_2#Image_3#starUnder_sprite5';
	localParams[11]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 43.0, height = 41.0});
	localParams[31]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite5#star_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Image_2#Image_3#starUnder_sprite5#star_sprite';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setScaleX(0.65);
	localParams[32]:setScaleY(0.65);
	localParams[32]:setContentSize({width = 43.0, height = 41.0});
	localParams[32]:setPosition(204.28, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite6'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'Image_2#Image_3#starUnder_sprite6';
	localParams[11]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 43.0, height = 41.0});
	localParams[33]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite6#star_sprite'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'Image_2#Image_3#starUnder_sprite6#star_sprite';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setScaleX(0.65);
	localParams[34]:setScaleY(0.65);
	localParams[34]:setContentSize({width = 43.0, height = 41.0});
	localParams[34]:setPosition(232.83, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite7'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'Image_2#Image_3#starUnder_sprite7';
	localParams[11]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 43.0, height = 41.0});
	localParams[35]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite7#star_sprite'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'Image_2#Image_3#starUnder_sprite7#star_sprite';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setScaleX(0.65);
	localParams[36]:setScaleY(0.65);
	localParams[36]:setContentSize({width = 43.0, height = 41.0});
	localParams[36]:setPosition(261.39, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite8'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'Image_2#Image_3#starUnder_sprite8';
	localParams[11]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 43.0, height = 41.0});
	localParams[37]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite8#star_sprite'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'Image_2#Image_3#starUnder_sprite8#star_sprite';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setScaleX(0.65);
	localParams[38]:setScaleY(0.65);
	localParams[38]:setContentSize({width = 43.0, height = 41.0});
	localParams[38]:setPosition(289.94, 302.0);
	self.__children['Image_2#Image_3#starUnder_sprite9'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'Image_2#Image_3#starUnder_sprite9';
	localParams[11]:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 43.0, height = 41.0});
	localParams[39]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite9#star_sprite'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'Image_2#Image_3#starUnder_sprite9#star_sprite';
	localParams[38]:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setScaleX(0.65);
	localParams[40]:setScaleY(0.65);
	localParams[40]:setContentSize({width = 43.0, height = 41.0});
	localParams[40]:setPosition(318.5, 303.0);
	self.__children['Image_2#Image_3#starUnder_sprite10'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'Image_2#Image_3#starUnder_sprite10';
	localParams[11]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 43.0, height = 41.0});
	localParams[41]:setPosition(21.5, 20.5);
	self.__children['Image_2#Image_3#starUnder_sprite10#star_sprite'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'Image_2#Image_3#starUnder_sprite10#star_sprite';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[42]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setScale9Enabled(true);
	localParams[42]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 50.000000});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:onClick(handler(self, self._closeBtn));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 72.0, height = 72.0});
	localParams[42]:setPosition(779.0, 439.0);
	self.__children['Image_2#close'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'Image_2#close';
	localParams[2]:addChild(localParams[42]);

	localParams[43] = Node:create();
	localParams[43]:setAnchorPoint(0.00, 0.00);
	localParams[43]:setScaleX(0.90);
	localParams[43]:setScaleY(0.90);
	localParams[43]:setContentSize({width = 0.0, height = 0.0});
	localParams[43]:setPosition(110.29, 9.86);
	self.__children['Image_2#close#__SELECTED_SCALE'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'Image_2#close#__SELECTED_SCALE';
	localParams[42]:addChild(localParams[43]);

end
function MonsterDetailLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0021.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function MonsterDetailLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MonsterDetailLayer:_closeBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.closeBtn then
        return self.m_ClickDelegate:closeBtn(sender);
    end
    if self.closeBtn then
        return self:closeBtn(sender);
    end
end


function MonsterDetailLayer:_onSpecial(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSpecial then
        return self.m_ClickDelegate:onSpecial(sender);
    end
    if self.onSpecial then
        return self:onSpecial(sender);
    end
end


return MonsterDetailLayer;