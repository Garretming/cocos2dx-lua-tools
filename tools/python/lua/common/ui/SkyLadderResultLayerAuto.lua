-- 
-- Author: generation auto
-- Brief：SkyLadderResultLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SkyLadderResultLayer = class('SkyLadderResultLayer', gamecore.ui.BaseWidget);

function SkyLadderResultLayer:create(...) 
    local instance = SkyLadderResultLayer.new(...);
    return instance;
end

function SkyLadderResultLayer:ctor(...) 
    if SkyLadderResultLayer.super and SkyLadderResultLayer.super.ctor then
        SkyLadderResultLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);
end

function SkyLadderResultLayer:initView()
    self.__LAYER_NAME = 'common.ui.SkyLadderResultLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_other/other0145.png', 1);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 386.0, height = 386.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (32.00 * ccx.scaleY));
	self.__children['star'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'star';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0146.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 340.0, height = 340.0});
	localParams[2]:setPosition(193.0, 193.0);
	self.__children['star#Sprite_1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'star#Sprite_1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0143.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 267.0, height = 267.0});
	localParams[3]:setPosition(193.0, 193.0);
	self.__children['star#Sprite_2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'star#Sprite_2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create(nil, 0);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 46.0, height = 46.0});
	localParams[4]:setPosition(193.0, 193.0);
	self.__children['star#icon'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'star#icon';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Widget:create();
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setVisible(false);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(0.0, 0.0);
	self.__children['star#Node_1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'star#Node_1';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setScaleX(1.10);
	localParams[6]:setScaleY(1.10);
	localParams[6]:setContentSize({width = 43.0, height = 40.0});
	localParams[6]:setPosition(100.0, 285.0);
	self.__children['star#Node_1#star1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'star#Node_1#star1';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setVisible(false);
	localParams[7]:setContentSize({width = 39.0, height = 36.0});
	localParams[7]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star1#sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'star#Node_1#star1#sprite';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(1.10);
	localParams[8]:setScaleY(1.10);
	localParams[8]:setContentSize({width = 43.0, height = 40.0});
	localParams[8]:setPosition(144.0, 310.0);
	self.__children['star#Node_1#star2'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'star#Node_1#star2';
	localParams[5]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setVisible(false);
	localParams[9]:setContentSize({width = 39.0, height = 36.0});
	localParams[9]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star2#sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'star#Node_1#star2#sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setScaleX(1.10);
	localParams[10]:setScaleY(1.10);
	localParams[10]:setContentSize({width = 43.0, height = 40.0});
	localParams[10]:setPosition(194.0, 326.0);
	self.__children['star#Node_1#star3'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'star#Node_1#star3';
	localParams[5]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setVisible(false);
	localParams[11]:setContentSize({width = 39.0, height = 36.0});
	localParams[11]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star3#sprite'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'star#Node_1#star3#sprite';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(1.10);
	localParams[12]:setScaleY(1.10);
	localParams[12]:setContentSize({width = 43.0, height = 40.0});
	localParams[12]:setPosition(244.0, 310.0);
	self.__children['star#Node_1#star4'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'star#Node_1#star4';
	localParams[5]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setVisible(false);
	localParams[13]:setContentSize({width = 39.0, height = 36.0});
	localParams[13]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star4#sprite'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'star#Node_1#star4#sprite';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(1.10);
	localParams[14]:setScaleY(1.10);
	localParams[14]:setContentSize({width = 43.0, height = 40.0});
	localParams[14]:setPosition(288.0, 285.0);
	self.__children['star#Node_1#star5'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'star#Node_1#star5';
	localParams[5]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setVisible(false);
	localParams[15]:setContentSize({width = 39.0, height = 36.0});
	localParams[15]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star5#sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'star#Node_1#star5#sprite';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = Widget:create();
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setVisible(false);
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(10.0, -10.0);
	self.__children['star#Node_2'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'star#Node_2';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setScaleX(1.10);
	localParams[17]:setScaleY(1.10);
	localParams[17]:setContentSize({width = 43.0, height = 40.0});
	localParams[17]:setPosition(110.0, 320.0);
	self.__children['star#Node_2#star1'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'star#Node_2#star1';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setVisible(false);
	localParams[18]:setContentSize({width = 39.0, height = 36.0});
	localParams[18]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star1#sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'star#Node_2#star1#sprite';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(1.10);
	localParams[19]:setScaleY(1.10);
	localParams[19]:setContentSize({width = 43.0, height = 40.0});
	localParams[19]:setPosition(157.0, 335.0);
	self.__children['star#Node_2#star2'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'star#Node_2#star2';
	localParams[16]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setVisible(false);
	localParams[20]:setContentSize({width = 39.0, height = 36.0});
	localParams[20]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star2#sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'star#Node_2#star2#sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setScaleX(1.10);
	localParams[21]:setScaleY(1.10);
	localParams[21]:setContentSize({width = 43.0, height = 40.0});
	localParams[21]:setPosition(209.0, 335.0);
	self.__children['star#Node_2#star3'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'star#Node_2#star3';
	localParams[16]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setVisible(false);
	localParams[22]:setContentSize({width = 39.0, height = 36.0});
	localParams[22]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star3#sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'star#Node_2#star3#sprite';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setScaleX(1.10);
	localParams[23]:setScaleY(1.10);
	localParams[23]:setContentSize({width = 43.0, height = 40.0});
	localParams[23]:setPosition(256.0, 320.0);
	self.__children['star#Node_2#star4'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'star#Node_2#star4';
	localParams[16]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setVisible(false);
	localParams[24]:setContentSize({width = 39.0, height = 36.0});
	localParams[24]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star4#sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'star#Node_2#star4#sprite';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = Widget:create();
	localParams[25]:setAnchorPoint(0.00, 0.00);
	localParams[25]:setVisible(false);
	localParams[25]:setContentSize({width = 0.0, height = 0.0});
	localParams[25]:setPosition(0.0, 0.0);
	self.__children['star#Node_3'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'star#Node_3';
	localParams[1]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setScaleX(1.10);
	localParams[26]:setScaleY(1.10);
	localParams[26]:setContentSize({width = 43.0, height = 40.0});
	localParams[26]:setPosition(144.0, 310.0);
	self.__children['star#Node_3#star1'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'star#Node_3#star1';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setVisible(false);
	localParams[27]:setContentSize({width = 39.0, height = 36.0});
	localParams[27]:setPosition(21.5, 20.0);
	self.__children['star#Node_3#star1#sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'star#Node_3#star1#sprite';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(1.10);
	localParams[28]:setScaleY(1.10);
	localParams[28]:setContentSize({width = 43.0, height = 40.0});
	localParams[28]:setPosition(194.0, 326.0);
	self.__children['star#Node_3#star2'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'star#Node_3#star2';
	localParams[25]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setVisible(false);
	localParams[29]:setContentSize({width = 39.0, height = 36.0});
	localParams[29]:setPosition(21.5, 20.0);
	self.__children['star#Node_3#star2#sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'star#Node_3#star2#sprite';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(1.10);
	localParams[30]:setScaleY(1.10);
	localParams[30]:setContentSize({width = 43.0, height = 40.0});
	localParams[30]:setPosition(244.0, 310.0);
	self.__children['star#Node_3#star3'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'star#Node_3#star3';
	localParams[25]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setVisible(false);
	localParams[31]:setContentSize({width = 39.0, height = 36.0});
	localParams[31]:setPosition(21.5, 20.0);
	self.__children['star#Node_3#star3#sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'star#Node_3#star3#sprite';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = Widget:create();
	localParams[32]:setAnchorPoint(0.00, 0.00);
	localParams[32]:setVisible(false);
	localParams[32]:setContentSize({width = 0.0, height = 0.0});
	localParams[32]:setPosition(0.0, 0.0);
	self.__children['star#Node_4'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'star#Node_4';
	localParams[1]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_other/other0009.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setScaleX(0.20);
	localParams[33]:setScaleY(0.90);
	localParams[33]:setContentSize({width = 697.0, height = 48.0});
	localParams[33]:setPosition(194.0, 320.0);
	self.__children['star#Node_4#star'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'star#Node_4#star';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0178.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 59.0, height = 58.0});
	localParams[34]:setPosition(131.0, 320.0);
	self.__children['star#Node_4#Sprite_42'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'star#Node_4#Sprite_42';
	localParams[32]:addChild(localParams[34]);

	localParams[35] = TextAtlas:create();
	localParams[35]:setProperty([[99]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setScaleX(0.90);
	localParams[35]:setScaleY(0.90);
	localParams[35]:setContentSize({width = 68.0, height = 40.0});
	localParams[35]:setPosition(194.92, 319.92);
	self.__children['star#Node_4#value'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'star#Node_4#value';
	localParams[32]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_other/other0144.png', 1);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 257.0, height = 63.0});
	localParams[36]:setPosition(193.0, 58.0);
	self.__children['star#title'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'star#title';
	localParams[1]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(32);
	localParams[37]:setString([[最强王者]]);
	localParams[37]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[37]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 133.0, height = 36.0});
	localParams[37]:setPosition(128.5, 40.95);
	self.__children['star#title#value'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'star#title#value';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_font/fontImg0227.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 213.0, height = 54.0});
	localParams[38]:setPosition(WinSize.width/2 + (0.00 * ccx.scaleX), WinSize.height/2 + (235.97 * ccx.scaleY));
	self.__children['Sprite_4'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'Sprite_4';
	self:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_common/fontImg0065.png', 1);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 204.0, height = 24.0});
	localParams[39]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 32.0);
	self.__children['Sprite_1'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'Sprite_1';
	self:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_common/bgFrame0147.png', 1);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 792.0, height = 117.0});
	localParams[40]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 118.5);
	self.__children['Node_5'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'Node_5';
	self:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_common/fontImg0243.png', 1);
	localParams[41]:setAnchorPoint(0.56, 0.60);
	localParams[41]:setContentSize({width = 86.0, height = 48.0});
	localParams[41]:setPosition(55.3, 116.32);
	self.__children['Node_5#uires_public_sheet_common_fontImg0243_29'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'Node_5#uires_public_sheet_common_fontImg0243_29';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setScaleX(0.70);
	localParams[42]:setScaleY(0.70);
	localParams[42]:setContentSize({width = 122.0, height = 122.0});
	localParams[42]:setPosition(126.0, 58.5);
	self.__children['Node_5#monster1'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'Node_5#monster1';
	localParams[40]:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 38.0, height = 38.0});
	localParams[43]:setPosition(19.09, 18.52);
	self.__children['Node_5#monster1#position'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'Node_5#monster1#position';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setContentSize({width = 38.0, height = 42.0});
	localParams[44]:setPosition(19.39, 106.0);
	self.__children['Node_5#monster1#anger'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'Node_5#monster1#anger';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = Text:create();
	localParams[45]:setFontSize(24);
	localParams[45]:setString([[9]]);
	localParams[45]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[45]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setContentSize({width = 19.0, height = 28.0});
	localParams[45]:setPosition(17.65, 19.0);
	self.__children['Node_5#monster1#anger#value'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'Node_5#monster1#anger#value';
	localParams[44]:addChild(localParams[45]);

	localParams[46] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setScaleX(0.70);
	localParams[46]:setScaleY(0.70);
	localParams[46]:setContentSize({width = 122.0, height = 122.0});
	localParams[46]:setPosition(216.0, 58.5);
	self.__children['Node_5#monster2'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'Node_5#monster2';
	localParams[40]:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 38.0, height = 38.0});
	localParams[47]:setPosition(19.09, 18.52);
	self.__children['Node_5#monster2#position'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'Node_5#monster2#position';
	localParams[46]:addChild(localParams[47]);

	localParams[48] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setContentSize({width = 38.0, height = 42.0});
	localParams[48]:setPosition(19.39, 106.0);
	self.__children['Node_5#monster2#anger'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'Node_5#monster2#anger';
	localParams[46]:addChild(localParams[48]);

	localParams[49] = Text:create();
	localParams[49]:setFontSize(24);
	localParams[49]:setString([[9]]);
	localParams[49]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[49]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setContentSize({width = 19.0, height = 28.0});
	localParams[49]:setPosition(17.65, 19.0);
	self.__children['Node_5#monster2#anger#value'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'Node_5#monster2#anger#value';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setScaleX(0.70);
	localParams[50]:setScaleY(0.70);
	localParams[50]:setContentSize({width = 122.0, height = 122.0});
	localParams[50]:setPosition(306.0, 58.5);
	self.__children['Node_5#monster3'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'Node_5#monster3';
	localParams[40]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 38.0, height = 38.0});
	localParams[51]:setPosition(19.09, 18.52);
	self.__children['Node_5#monster3#position'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'Node_5#monster3#position';
	localParams[50]:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setContentSize({width = 38.0, height = 42.0});
	localParams[52]:setPosition(19.39, 106.0);
	self.__children['Node_5#monster3#anger'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'Node_5#monster3#anger';
	localParams[50]:addChild(localParams[52]);

	localParams[53] = Text:create();
	localParams[53]:setFontSize(24);
	localParams[53]:setString([[9]]);
	localParams[53]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[53]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 19.0, height = 28.0});
	localParams[53]:setPosition(17.65, 19.0);
	self.__children['Node_5#monster3#anger#value'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'Node_5#monster3#anger#value';
	localParams[52]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setScaleX(0.70);
	localParams[54]:setScaleY(0.70);
	localParams[54]:setContentSize({width = 122.0, height = 122.0});
	localParams[54]:setPosition(396.0, 58.5);
	self.__children['Node_5#monster4'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'Node_5#monster4';
	localParams[40]:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 38.0, height = 38.0});
	localParams[55]:setPosition(19.09, 18.52);
	self.__children['Node_5#monster4#position'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'Node_5#monster4#position';
	localParams[54]:addChild(localParams[55]);

	localParams[56] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setContentSize({width = 38.0, height = 42.0});
	localParams[56]:setPosition(19.39, 106.0);
	self.__children['Node_5#monster4#anger'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'Node_5#monster4#anger';
	localParams[54]:addChild(localParams[56]);

	localParams[57] = Text:create();
	localParams[57]:setFontSize(24);
	localParams[57]:setString([[9]]);
	localParams[57]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[57]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setContentSize({width = 19.0, height = 28.0});
	localParams[57]:setPosition(17.65, 19.0);
	self.__children['Node_5#monster4#anger#value'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'Node_5#monster4#anger#value';
	localParams[56]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setScaleX(0.70);
	localParams[58]:setScaleY(0.70);
	localParams[58]:setContentSize({width = 122.0, height = 122.0});
	localParams[58]:setPosition(486.0, 58.5);
	self.__children['Node_5#monster5'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'Node_5#monster5';
	localParams[40]:addChild(localParams[58]);

	localParams[59] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 38.0, height = 38.0});
	localParams[59]:setPosition(19.09, 18.52);
	self.__children['Node_5#monster5#position'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'Node_5#monster5#position';
	localParams[58]:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 38.0, height = 42.0});
	localParams[60]:setPosition(19.39, 106.0);
	self.__children['Node_5#monster5#anger'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'Node_5#monster5#anger';
	localParams[58]:addChild(localParams[60]);

	localParams[61] = Text:create();
	localParams[61]:setFontSize(24);
	localParams[61]:setString([[9]]);
	localParams[61]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[61]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 19.0, height = 28.0});
	localParams[61]:setPosition(17.65, 19.0);
	self.__children['Node_5#monster5#anger#value'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'Node_5#monster5#anger#value';
	localParams[60]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setScaleX(0.70);
	localParams[62]:setScaleY(0.70);
	localParams[62]:setContentSize({width = 122.0, height = 122.0});
	localParams[62]:setPosition(576.0, 58.5);
	self.__children['Node_5#monster6'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'Node_5#monster6';
	localParams[40]:addChild(localParams[62]);

	localParams[63] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setContentSize({width = 38.0, height = 38.0});
	localParams[63]:setPosition(19.09, 18.52);
	self.__children['Node_5#monster6#position'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'Node_5#monster6#position';
	localParams[62]:addChild(localParams[63]);

	localParams[64] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setContentSize({width = 38.0, height = 42.0});
	localParams[64]:setPosition(19.39, 106.0);
	self.__children['Node_5#monster6#anger'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'Node_5#monster6#anger';
	localParams[62]:addChild(localParams[64]);

	localParams[65] = Text:create();
	localParams[65]:setFontSize(24);
	localParams[65]:setString([[9]]);
	localParams[65]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[65]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setContentSize({width = 19.0, height = 28.0});
	localParams[65]:setPosition(17.65, 19.0);
	self.__children['Node_5#monster6#anger#value'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'Node_5#monster6#anger#value';
	localParams[64]:addChild(localParams[65]);

	localParams[66] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[66]:setAnchorPoint(0.50, 0.50);
	localParams[66]:setScaleX(0.70);
	localParams[66]:setScaleY(0.70);
	localParams[66]:setContentSize({width = 122.0, height = 122.0});
	localParams[66]:setPosition(666.0, 58.5);
	self.__children['Node_5#monster7'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'Node_5#monster7';
	localParams[40]:addChild(localParams[66]);

	localParams[67] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[67]:setAnchorPoint(0.50, 0.50);
	localParams[67]:setContentSize({width = 38.0, height = 38.0});
	localParams[67]:setPosition(19.09, 18.52);
	self.__children['Node_5#monster7#position'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'Node_5#monster7#position';
	localParams[66]:addChild(localParams[67]);

	localParams[68] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:setContentSize({width = 38.0, height = 42.0});
	localParams[68]:setPosition(19.39, 106.0);
	self.__children['Node_5#monster7#anger'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'Node_5#monster7#anger';
	localParams[66]:addChild(localParams[68]);

	localParams[69] = Text:create();
	localParams[69]:setFontSize(24);
	localParams[69]:setString([[9]]);
	localParams[69]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[69]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:setContentSize({width = 19.0, height = 28.0});
	localParams[69]:setPosition(17.65, 19.0);
	self.__children['Node_5#monster7#anger#value'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'Node_5#monster7#anger#value';
	localParams[68]:addChild(localParams[69]);

end
function SkyLadderResultLayer:loadImage()
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg013.png');
	table.insert(self._textureList, 'uires/public/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function SkyLadderResultLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return SkyLadderResultLayer;