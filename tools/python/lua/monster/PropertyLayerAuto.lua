-- 
-- Author: generation auto
-- Brief：PropertyLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local PropertyLayer = class('PropertyLayer', gamecore.ui.BaseWidget);

function PropertyLayer:create(...) 
    local instance = PropertyLayer.new(...);
    return instance;
end

function PropertyLayer:ctor(...) 
    if PropertyLayer.super and PropertyLayer.super.ctor then
        PropertyLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function PropertyLayer:initView()
    self.__LAYER_NAME = 'monster.PropertyLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 440.0, height = 400.0});
	localParams[1]:setPosition(WinSize.width - 329.00, WinSize.height/2 + (25.00 * ccx.scaleY));
	self.__children['under_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'under_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 60.0, height = 29.0});
	localParams[2]:setPosition(120.0, 375.0);
	self.__children['under_img#left_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'under_img#left_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 60.0, height = 29.0});
	localParams[3]:setPosition(320.0, 375.0);
	self.__children['under_img#right_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'under_img#right_sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(28);
	localParams[4]:setString([[作死的大鸟]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 255, g = 240, b = 155});
	localParams[4]:setContentSize({width = 143.0, height = 30.0});
	localParams[4]:setPosition(220.0, 375.0);
	self.__children['under_img#name_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'under_img#name_txt';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(0.65);
	localParams[5]:setScaleY(0.65);
	localParams[5]:setContentSize({width = 43.0, height = 41.0});
	localParams[5]:setPosition(107.8, 345.0);
	self.__children['under_img#starUnder_sprite1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'under_img#starUnder_sprite1';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 43.0, height = 41.0});
	localParams[6]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite1#star_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'under_img#starUnder_sprite1#star_sprite';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.65);
	localParams[7]:setScaleY(0.65);
	localParams[7]:setContentSize({width = 43.0, height = 41.0});
	localParams[7]:setPosition(133.32, 345.0);
	self.__children['under_img#starUnder_sprite2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'under_img#starUnder_sprite2';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 43.0, height = 41.0});
	localParams[8]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite2#star_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'under_img#starUnder_sprite2#star_sprite';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setScaleX(0.65);
	localParams[9]:setScaleY(0.65);
	localParams[9]:setContentSize({width = 43.0, height = 41.0});
	localParams[9]:setPosition(158.84, 345.0);
	self.__children['under_img#starUnder_sprite3'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'under_img#starUnder_sprite3';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 43.0, height = 41.0});
	localParams[10]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite3#star_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'under_img#starUnder_sprite3#star_sprite';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setScaleX(0.65);
	localParams[11]:setScaleY(0.65);
	localParams[11]:setContentSize({width = 43.0, height = 41.0});
	localParams[11]:setPosition(184.36, 345.0);
	self.__children['under_img#starUnder_sprite4'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'under_img#starUnder_sprite4';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 43.0, height = 41.0});
	localParams[12]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite4#star_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'under_img#starUnder_sprite4#star_sprite';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(0.65);
	localParams[13]:setScaleY(0.65);
	localParams[13]:setContentSize({width = 43.0, height = 41.0});
	localParams[13]:setPosition(209.88, 345.0);
	self.__children['under_img#starUnder_sprite5'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'under_img#starUnder_sprite5';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 43.0, height = 41.0});
	localParams[14]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite5#star_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'under_img#starUnder_sprite5#star_sprite';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.65);
	localParams[15]:setScaleY(0.65);
	localParams[15]:setContentSize({width = 43.0, height = 41.0});
	localParams[15]:setPosition(235.4, 345.0);
	self.__children['under_img#starUnder_sprite6'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'under_img#starUnder_sprite6';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 43.0, height = 41.0});
	localParams[16]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite6#star_sprite'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'under_img#starUnder_sprite6#star_sprite';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setScaleX(0.65);
	localParams[17]:setScaleY(0.65);
	localParams[17]:setContentSize({width = 43.0, height = 41.0});
	localParams[17]:setPosition(260.92, 345.0);
	self.__children['under_img#starUnder_sprite7'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'under_img#starUnder_sprite7';
	localParams[1]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 43.0, height = 41.0});
	localParams[18]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite7#star_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'under_img#starUnder_sprite7#star_sprite';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.65);
	localParams[19]:setScaleY(0.65);
	localParams[19]:setContentSize({width = 43.0, height = 41.0});
	localParams[19]:setPosition(286.44, 345.0);
	self.__children['under_img#starUnder_sprite8'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'under_img#starUnder_sprite8';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 43.0, height = 41.0});
	localParams[20]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite8#star_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'under_img#starUnder_sprite8#star_sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setScaleX(0.65);
	localParams[21]:setScaleY(0.65);
	localParams[21]:setContentSize({width = 43.0, height = 41.0});
	localParams[21]:setPosition(311.96, 345.0);
	self.__children['under_img#starUnder_sprite9'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'under_img#starUnder_sprite9';
	localParams[1]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 43.0, height = 41.0});
	localParams[22]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite9#star_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'under_img#starUnder_sprite9#star_sprite';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setScaleX(0.65);
	localParams[23]:setScaleY(0.65);
	localParams[23]:setContentSize({width = 43.0, height = 41.0});
	localParams[23]:setPosition(337.48, 345.0);
	self.__children['under_img#starUnder_sprite10'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'under_img#starUnder_sprite10';
	localParams[1]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 43.0, height = 41.0});
	localParams[24]:setPosition(21.5, 20.5);
	self.__children['under_img#starUnder_sprite10#star_sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'under_img#starUnder_sprite10#star_sprite';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[25]:ignoreContentAdaptWithSize(false);
	localParams[25]:setScale9Enabled(true);
	localParams[25]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 172.0, height = 29.0});
	localParams[25]:setPosition(118.18, 86.0);
	self.__children['under_img#under_img1'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'under_img#under_img1';
	localParams[1]:addChild(localParams[25]);

	localParams[26] = Text:create();
	localParams[26]:setFontSize(20);
	localParams[26]:setString([[生   命：]]);
	localParams[26]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[26]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[26]:setAnchorPoint(0.00, 0.50);
	localParams[26]:setContentSize({width = 66.0, height = 25.0});
	localParams[26]:setPosition(9.0, 14.0);
	self.__children['under_img#under_img1#title_txt'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'under_img#under_img1#title_txt';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = Text:create();
	localParams[27]:setFontSize(20);
	localParams[27]:setString([[8888888]]);
	localParams[27]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[27]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[27]:setAnchorPoint(1.00, 0.50);
	localParams[27]:setTextColor({r = 80, g = 255, b = 0});
	localParams[27]:setContentSize({width = 73.0, height = 22.0});
	localParams[27]:setPosition(165.1, 14.9);
	self.__children['under_img#under_img1#value_txt'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'under_img#under_img1#value_txt';
	localParams[25]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[28]:ignoreContentAdaptWithSize(false);
	localParams[28]:setScale9Enabled(true);
	localParams[28]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 172.0, height = 29.0});
	localParams[28]:setPosition(302.41, 86.36);
	self.__children['under_img#under_img2'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'under_img#under_img2';
	localParams[1]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[攻   击：]]);
	localParams[29]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[29]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[29]:setAnchorPoint(0.00, 0.50);
	localParams[29]:setContentSize({width = 66.0, height = 25.0});
	localParams[29]:setPosition(9.0, 14.0);
	self.__children['under_img#under_img2#title_txt'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'under_img#under_img2#title_txt';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = Text:create();
	localParams[30]:setFontSize(20);
	localParams[30]:setString([[8888888]]);
	localParams[30]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[30]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[30]:setAnchorPoint(1.00, 0.50);
	localParams[30]:setTextColor({r = 80, g = 255, b = 0});
	localParams[30]:setContentSize({width = 73.0, height = 22.0});
	localParams[30]:setPosition(165.1, 14.9);
	self.__children['under_img#under_img2#value_txt'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'under_img#under_img2#value_txt';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[31]:ignoreContentAdaptWithSize(false);
	localParams[31]:setScale9Enabled(true);
	localParams[31]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 172.0, height = 29.0});
	localParams[31]:setPosition(118.18, 47.0);
	self.__children['under_img#under_img3'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'under_img#under_img3';
	localParams[1]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(20);
	localParams[32]:setString([[护   甲：]]);
	localParams[32]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[32]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[32]:setAnchorPoint(0.00, 0.50);
	localParams[32]:setContentSize({width = 66.0, height = 25.0});
	localParams[32]:setPosition(9.0, 14.0);
	self.__children['under_img#under_img3#title_txt'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'under_img#under_img3#title_txt';
	localParams[31]:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(20);
	localParams[33]:setString([[8888888]]);
	localParams[33]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[33]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[33]:setAnchorPoint(1.00, 0.50);
	localParams[33]:setTextColor({r = 80, g = 255, b = 0});
	localParams[33]:setContentSize({width = 73.0, height = 22.0});
	localParams[33]:setPosition(165.1, 14.9);
	self.__children['under_img#under_img3#value_txt'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'under_img#under_img3#value_txt';
	localParams[31]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[34]:ignoreContentAdaptWithSize(false);
	localParams[34]:setScale9Enabled(true);
	localParams[34]:setCapInsets({x = 25.000000, y = 8.000000,width = 34.000000, height = 12.000000});
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 172.0, height = 29.0});
	localParams[34]:setPosition(301.4, 47.0);
	self.__children['under_img#under_img4'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'under_img#under_img4';
	localParams[1]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(20);
	localParams[35]:setString([[速   度：]]);
	localParams[35]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[35]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[35]:setAnchorPoint(0.00, 0.50);
	localParams[35]:setContentSize({width = 66.0, height = 25.0});
	localParams[35]:setPosition(9.0, 14.0);
	self.__children['under_img#under_img4#title_txt'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'under_img#under_img4#title_txt';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = Text:create();
	localParams[36]:setFontSize(20);
	localParams[36]:setString([[8888888]]);
	localParams[36]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[36]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[36]:setAnchorPoint(1.00, 0.50);
	localParams[36]:setTextColor({r = 80, g = 255, b = 0});
	localParams[36]:setContentSize({width = 73.0, height = 22.0});
	localParams[36]:setPosition(165.1, 14.9);
	self.__children['under_img#under_img4#value_txt'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'under_img#under_img4#value_txt';
	localParams[34]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(18);
	localParams[37]:setString([[幽灵剑客是一位近战爆发AD刺客，双突进的技能设置，使得他在中单游刃有余，并肯大招在队友的配合下，在团战中能够发挥至关重要的作用。]]);
	localParams[37]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[37]:setTextAreaSize({width = 360, height = 100});
	localParams[37]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 360.0, height = 100.0});
	localParams[37]:setPosition(216.11, 269.17);
	self.__children['under_img#desc_txt'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'under_img#desc_txt';
	localParams[1]:addChild(localParams[37]);

	localParams[38] = Text:create();
	localParams[38]:setFontSize(20);
	localParams[38]:setString([[定位：]]);
	localParams[38]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[38]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[38]:setAnchorPoint(0.00, 0.50);
	localParams[38]:setContentSize({width = 51.0, height = 25.0});
	localParams[38]:setPosition(35.2, 195.0);
	self.__children['under_img#location_txt'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'under_img#location_txt';
	localParams[1]:addChild(localParams[38]);

	localParams[39] = Text:create();
	localParams[39]:setFontSize(20);
	localParams[39]:setString([[输出]]);
	localParams[39]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[39]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[39]:setAnchorPoint(0.00, 0.50);
	localParams[39]:setTextColor({r = 255, g = 140, b = 0});
	localParams[39]:setContentSize({width = 43.0, height = 25.0});
	localParams[39]:setPosition(56.53, 12.5);
	self.__children['under_img#location_txt#value_txt'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'under_img#location_txt#value_txt';
	localParams[38]:addChild(localParams[39]);

	localParams[40] = Text:create();
	localParams[40]:setFontSize(20);
	localParams[40]:setString([[数量：]]);
	localParams[40]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[40]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[40]:setAnchorPoint(0.00, 0.50);
	localParams[40]:setContentSize({width = 51.0, height = 25.0});
	localParams[40]:setPosition(198.0, 195.0);
	self.__children['under_img#amount_txt'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'under_img#amount_txt';
	localParams[1]:addChild(localParams[40]);

	localParams[41] = Text:create();
	localParams[41]:setFontSize(20);
	localParams[41]:setString([[66666]]);
	localParams[41]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[41]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[41]:setAnchorPoint(0.00, 0.50);
	localParams[41]:setTextColor({r = 255, g = 140, b = 0});
	localParams[41]:setContentSize({width = 58.0, height = 25.0});
	localParams[41]:setPosition(56.53, 12.5);
	self.__children['under_img#amount_txt#value_txt'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'under_img#amount_txt#value_txt';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = Text:create();
	localParams[42]:setFontSize(20);
	localParams[42]:setString([[品质：]]);
	localParams[42]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[42]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[42]:setAnchorPoint(0.00, 0.50);
	localParams[42]:setContentSize({width = 51.0, height = 25.0});
	localParams[42]:setPosition(35.2, 159.0);
	self.__children['under_img#occupy_txt'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'under_img#occupy_txt';
	localParams[1]:addChild(localParams[42]);

	localParams[43] = Text:create();
	localParams[43]:setFontSize(20);
	localParams[43]:setString([[3]]);
	localParams[43]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[43]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[43]:setAnchorPoint(0.00, 0.50);
	localParams[43]:setTextColor({r = 255, g = 140, b = 0});
	localParams[43]:setContentSize({width = 14.0, height = 25.0});
	localParams[43]:setPosition(56.53, 12.5);
	self.__children['under_img#occupy_txt#value_txt'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'under_img#occupy_txt#value_txt';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = Text:create();
	localParams[44]:setFontSize(20);
	localParams[44]:setString([[消耗怒气：]]);
	localParams[44]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[44]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[44]:setAnchorPoint(0.00, 0.50);
	localParams[44]:setContentSize({width = 91.0, height = 25.0});
	localParams[44]:setPosition(198.0, 159.0);
	self.__children['under_img#anger_txt'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'under_img#anger_txt';
	localParams[1]:addChild(localParams[44]);

	localParams[45] = Text:create();
	localParams[45]:setFontSize(20);
	localParams[45]:setString([[8]]);
	localParams[45]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[45]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[45]:setAnchorPoint(0.00, 0.50);
	localParams[45]:setTextColor({r = 255, g = 140, b = 0});
	localParams[45]:setContentSize({width = 14.0, height = 25.0});
	localParams[45]:setPosition(100.86, 12.5);
	self.__children['under_img#anger_txt#value_txt'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'under_img#anger_txt#value_txt';
	localParams[44]:addChild(localParams[45]);

end
function PropertyLayer:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function PropertyLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return PropertyLayer;