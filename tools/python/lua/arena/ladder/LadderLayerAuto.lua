-- 
-- Author: generation auto
-- Brief：LadderLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local LadderLayer = class('LadderLayer', gamecore.ui.BaseWidget);

function LadderLayer:create(...) 
    local instance = LadderLayer.new(...);
    return instance;
end

function LadderLayer:ctor(...) 
    if LadderLayer.super and LadderLayer.super.ctor then
        LadderLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function LadderLayer:initView()
    self.__LAYER_NAME = 'arena.ladder.LadderLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0015.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (0.61 * ccx.scaleX), WinSize.height/2 + (1.15 * ccx.scaleY));
	self.__children['bg_sprite'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_sprite';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/hero/hero004.png', 0);
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:setScaleX(0.95);
	localParams[2]:setScaleY(0.95);
	localParams[2]:setContentSize({width = 538.0, height = 615.0});
	localParams[2]:setPosition(731.96, 0.0);
	self.__children['role_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'role_img';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0145.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 386.0, height = 386.0});
	localParams[3]:setPosition(275.97, WinSize.height/2 + (54.21 * ccx.scaleY));
	self.__children['star'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'star';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0146.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 340.0, height = 340.0});
	localParams[4]:setPosition(193.0, 193.0);
	self.__children['star#Sprite_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'star#Sprite_1';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0143.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 267.0, height = 267.0});
	localParams[5]:setPosition(193.0, 193.0);
	self.__children['star#Sprite_2'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'star#Sprite_2';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = ImageView:create(nil, 0);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 46.0, height = 46.0});
	localParams[6]:setPosition(193.0, 193.0);
	self.__children['star#icon'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'star#icon';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 50.0, height = 50.0});
	localParams[7]:setPosition(355.0, 280.0);
	self.__children['star#strongestTimes_btn'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'star#strongestTimes_btn';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = TextAtlas:create();
	localParams[8]:setProperty([[0]], 'uires/public/font_number/fontImg0231.png', 18, 23, '0');
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 18.0, height = 23.0});
	localParams[8]:setPosition(355.0, 280.0);
	self.__children['star#rank_atlasLabel'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'star#rank_atlasLabel';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = Widget:create();
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setVisible(false);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(0.0, 0.0);
	self.__children['star#Node_1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'star#Node_1';
	localParams[3]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setScaleX(1.10);
	localParams[10]:setScaleY(1.10);
	localParams[10]:setContentSize({width = 43.0, height = 40.0});
	localParams[10]:setPosition(100.0, 285.0);
	self.__children['star#Node_1#star1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'star#Node_1#star1';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setVisible(false);
	localParams[11]:setContentSize({width = 39.0, height = 36.0});
	localParams[11]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star1#sprite'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'star#Node_1#star1#sprite';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(1.10);
	localParams[12]:setScaleY(1.10);
	localParams[12]:setContentSize({width = 43.0, height = 40.0});
	localParams[12]:setPosition(144.0, 310.0);
	self.__children['star#Node_1#star2'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'star#Node_1#star2';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setVisible(false);
	localParams[13]:setContentSize({width = 39.0, height = 36.0});
	localParams[13]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star2#sprite'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'star#Node_1#star2#sprite';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(1.10);
	localParams[14]:setScaleY(1.10);
	localParams[14]:setContentSize({width = 43.0, height = 40.0});
	localParams[14]:setPosition(194.0, 326.0);
	self.__children['star#Node_1#star3'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'star#Node_1#star3';
	localParams[9]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setVisible(false);
	localParams[15]:setContentSize({width = 39.0, height = 36.0});
	localParams[15]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star3#sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'star#Node_1#star3#sprite';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(1.10);
	localParams[16]:setScaleY(1.10);
	localParams[16]:setContentSize({width = 43.0, height = 40.0});
	localParams[16]:setPosition(244.0, 310.0);
	self.__children['star#Node_1#star4'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'star#Node_1#star4';
	localParams[9]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setVisible(false);
	localParams[17]:setContentSize({width = 39.0, height = 36.0});
	localParams[17]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star4#sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'star#Node_1#star4#sprite';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setScaleX(1.10);
	localParams[18]:setScaleY(1.10);
	localParams[18]:setContentSize({width = 43.0, height = 40.0});
	localParams[18]:setPosition(288.0, 285.0);
	self.__children['star#Node_1#star5'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'star#Node_1#star5';
	localParams[9]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setVisible(false);
	localParams[19]:setContentSize({width = 39.0, height = 36.0});
	localParams[19]:setPosition(21.5, 20.0);
	self.__children['star#Node_1#star5#sprite'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'star#Node_1#star5#sprite';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = Widget:create();
	localParams[20]:setAnchorPoint(0.00, 0.00);
	localParams[20]:setVisible(false);
	localParams[20]:setContentSize({width = 0.0, height = 0.0});
	localParams[20]:setPosition(10.0, -10.0);
	self.__children['star#Node_2'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'star#Node_2';
	localParams[3]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setScaleX(1.10);
	localParams[21]:setScaleY(1.10);
	localParams[21]:setContentSize({width = 43.0, height = 40.0});
	localParams[21]:setPosition(110.0, 320.0);
	self.__children['star#Node_2#star1'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'star#Node_2#star1';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setVisible(false);
	localParams[22]:setContentSize({width = 39.0, height = 36.0});
	localParams[22]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star1#sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'star#Node_2#star1#sprite';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setScaleX(1.10);
	localParams[23]:setScaleY(1.10);
	localParams[23]:setContentSize({width = 43.0, height = 40.0});
	localParams[23]:setPosition(157.0, 335.0);
	self.__children['star#Node_2#star2'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'star#Node_2#star2';
	localParams[20]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setVisible(false);
	localParams[24]:setContentSize({width = 39.0, height = 36.0});
	localParams[24]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star2#sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'star#Node_2#star2#sprite';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setScaleX(1.10);
	localParams[25]:setScaleY(1.10);
	localParams[25]:setContentSize({width = 43.0, height = 40.0});
	localParams[25]:setPosition(209.0, 335.0);
	self.__children['star#Node_2#star3'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'star#Node_2#star3';
	localParams[20]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setVisible(false);
	localParams[26]:setContentSize({width = 39.0, height = 36.0});
	localParams[26]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star3#sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'star#Node_2#star3#sprite';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setScaleX(1.10);
	localParams[27]:setScaleY(1.10);
	localParams[27]:setContentSize({width = 43.0, height = 40.0});
	localParams[27]:setPosition(256.0, 320.0);
	self.__children['star#Node_2#star4'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'star#Node_2#star4';
	localParams[20]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setVisible(false);
	localParams[28]:setContentSize({width = 39.0, height = 36.0});
	localParams[28]:setPosition(21.5, 20.0);
	self.__children['star#Node_2#star4#sprite'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'star#Node_2#star4#sprite';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = Widget:create();
	localParams[29]:setAnchorPoint(0.00, 0.00);
	localParams[29]:setVisible(false);
	localParams[29]:setContentSize({width = 0.0, height = 0.0});
	localParams[29]:setPosition(0.0, 0.0);
	self.__children['star#Node_3'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'star#Node_3';
	localParams[3]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setScaleX(1.10);
	localParams[30]:setScaleY(1.10);
	localParams[30]:setContentSize({width = 43.0, height = 40.0});
	localParams[30]:setPosition(144.0, 310.0);
	self.__children['star#Node_3#star1'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'star#Node_3#star1';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setVisible(false);
	localParams[31]:setContentSize({width = 39.0, height = 36.0});
	localParams[31]:setPosition(21.5, 20.0);
	self.__children['star#Node_3#star1#sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'star#Node_3#star1#sprite';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setScaleX(1.10);
	localParams[32]:setScaleY(1.10);
	localParams[32]:setContentSize({width = 43.0, height = 40.0});
	localParams[32]:setPosition(194.0, 326.0);
	self.__children['star#Node_3#star2'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'star#Node_3#star2';
	localParams[29]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setVisible(false);
	localParams[33]:setContentSize({width = 39.0, height = 36.0});
	localParams[33]:setPosition(21.5, 20.0);
	self.__children['star#Node_3#star2#sprite'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'star#Node_3#star2#sprite';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0141.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setScaleX(1.10);
	localParams[34]:setScaleY(1.10);
	localParams[34]:setContentSize({width = 43.0, height = 40.0});
	localParams[34]:setPosition(244.0, 310.0);
	self.__children['star#Node_3#star3'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'star#Node_3#star3';
	localParams[29]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setVisible(false);
	localParams[35]:setContentSize({width = 39.0, height = 36.0});
	localParams[35]:setPosition(21.5, 20.0);
	self.__children['star#Node_3#star3#sprite'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'star#Node_3#star3#sprite';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = Widget:create();
	localParams[36]:setAnchorPoint(0.00, 0.00);
	localParams[36]:setVisible(false);
	localParams[36]:setContentSize({width = 0.0, height = 0.0});
	localParams[36]:setPosition(0.0, 0.0);
	self.__children['star#Node_4'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'star#Node_4';
	localParams[3]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_other/other0009.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setScaleX(0.20);
	localParams[37]:setScaleY(0.90);
	localParams[37]:setContentSize({width = 697.0, height = 48.0});
	localParams[37]:setPosition(194.0, 320.0);
	self.__children['star#Node_4#star'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'star#Node_4#star';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_other/other0178.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 59.0, height = 58.0});
	localParams[38]:setPosition(131.0, 320.0);
	self.__children['star#Node_4#Sprite_42'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'star#Node_4#Sprite_42';
	localParams[36]:addChild(localParams[38]);

	localParams[39] = TextAtlas:create();
	localParams[39]:setProperty([[99]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setScaleX(0.90);
	localParams[39]:setScaleY(0.90);
	localParams[39]:setContentSize({width = 68.0, height = 40.0});
	localParams[39]:setPosition(194.92, 319.92);
	self.__children['star#Node_4#value'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'star#Node_4#value';
	localParams[36]:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_other/other0144.png', 1);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 257.0, height = 63.0});
	localParams[40]:setPosition(193.0, 58.0);
	self.__children['star#title'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'star#title';
	localParams[3]:addChild(localParams[40]);

	localParams[41] = Text:create();
	localParams[41]:setFontSize(32);
	localParams[41]:setString([[最强王者]]);
	localParams[41]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[41]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 133.0, height = 36.0});
	localParams[41]:setPosition(128.5, 40.95);
	self.__children['star#title#value'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'star#title#value';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = Layout:create();
	localParams[42]:setBackGroundColorOpacity(102);
	localParams[42]:setAnchorPoint(0.00, 0.00);
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 1024.0, height = 640.0});
	localParams[42]:setPosition(0.0, 160.0);
	self.__children['__FULL_LAYER'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = '__FULL_LAYER';
	self:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[43]:ignoreContentAdaptWithSize(false);
	localParams[43]:setScale9Enabled(true);
	localParams[43]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[43]:setAnchorPoint(1.00, 1.00);
	localParams[43]:setContentSize({width = 800.0, height = 93.0});
	localParams[43]:setPosition(localParams[42]:getContentSize().width - -1.56, localParams[42]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#rightTopUnder_img'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = '__FULL_LAYER#rightTopUnder_img';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[44]:setAnchorPoint(0.00, 1.00);
	localParams[44]:setContentSize({width = 537.0, height = 164.0});
	localParams[44]:setPosition(0.0, localParams[42]:getContentSize().height - 0.00);
	self.__children['__FULL_LAYER#leftTopUnder_img'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = '__FULL_LAYER#leftTopUnder_img';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = ImageView:create('uires/public/sheet_font/fontImg0157.png', 1);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setContentSize({width = 191.0, height = 57.0});
	localParams[45]:setPosition(246.19, localParams[42]:getContentSize().height - 27.96);
	self.__children['__FULL_LAYER#Sprite_23'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = '__FULL_LAYER#Sprite_23';
	localParams[42]:addChild(localParams[45]);

	localParams[46] = Button:create();
	localParams[46]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[46]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[46]:setTitleFontSize(14);
	localParams[46]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[46]:setScale9Enabled(true);
	localParams[46]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:onClick(handler(self, self._back_btn));
	localParams[46]:setTouchEnabled(true);
	localParams[46]:setContentSize({width = 116.0, height = 77.0});
	localParams[46]:setPosition(68.17, localParams[42]:getContentSize().height - 44.38);
	self.__children['__FULL_LAYER#back_btn'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = '__FULL_LAYER#back_btn';
	localParams[42]:addChild(localParams[46]);

	localParams[47] = Button:create();
	localParams[47]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[47]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[47]:setTitleFontSize(14);
	localParams[47]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[47]:setScale9Enabled(true);
	localParams[47]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:onClick(handler(self, self._help_btn));
	localParams[47]:setTouchEnabled(true);
	localParams[47]:setContentSize({width = 58.0, height = 68.0});
	localParams[47]:setPosition(localParams[42]:getContentSize().width - 38.15, localParams[42]:getContentSize().height - 47.66);
	self.__children['__FULL_LAYER#help_btn'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = '__FULL_LAYER#help_btn';
	localParams[42]:addChild(localParams[47]);

	localParams[48] = Widget:create();
	localParams[48]:setAnchorPoint(0.00, 0.00);
	localParams[48]:setScaleX(0.90);
	localParams[48]:setScaleY(0.90);
	localParams[48]:setContentSize({width = 0.0, height = 0.0});
	localParams[48]:setPosition(104.14, 30.52);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[47]:addChild(localParams[48]);

	localParams[49] = Button:create();
	localParams[49]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[49]:setTitleFontSize(14);
	localParams[49]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:onClick(handler(self, self._onStartMatch));
	localParams[49]:setTouchEnabled(true);
	localParams[49]:setContentSize({width = 183.0, height = 68.0});
	localParams[49]:setPosition(WinSize.width - 103.50, 53.0);
	self.__children['startMatch_btn'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'startMatch_btn';
	self:addChild(localParams[49]);

	localParams[50] = Widget:create();
	localParams[50]:setAnchorPoint(0.00, 0.00);
	localParams[50]:setScaleX(0.90);
	localParams[50]:setScaleY(0.90);
	localParams[50]:setContentSize({width = 0.0, height = 0.0});
	localParams[50]:setPosition(318.52, 23.04);
	self.__children['startMatch_btn#__SELECTED_SCALE'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'startMatch_btn#__SELECTED_SCALE';
	localParams[49]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_font/fontImg0137.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 110.0, height = 30.0});
	localParams[51]:setPosition(91.5, 34.0);
	self.__children['startMatch_btn#font_sprite'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'startMatch_btn#font_sprite';
	localParams[49]:addChild(localParams[51]);

	localParams[52] = Button:create();
	localParams[52]:loadTextureNormal('uires/public/sheet_btn/btn0113.png', 1);
	localParams[52]:setTitleFontSize(14);
	localParams[52]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:onClick(handler(self, self._onRankList));
	localParams[52]:setTouchEnabled(true);
	localParams[52]:setContentSize({width = 57.0, height = 238.0});
	localParams[52]:setPosition(28.5, WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['rank_btn'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'rank_btn';
	self:addChild(localParams[52]);

	localParams[53] = Widget:create();
	localParams[53]:setAnchorPoint(0.00, 0.00);
	localParams[53]:setScaleX(0.90);
	localParams[53]:setScaleY(0.90);
	localParams[53]:setContentSize({width = 0.0, height = 0.0});
	localParams[53]:setPosition(-103.12, 21.76);
	self.__children['rank_btn#__SELECTED_SCALE'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'rank_btn#__SELECTED_SCALE';
	localParams[52]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_font/fontImg0154.png', 1);
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setContentSize({width = 24.0, height = 83.0});
	localParams[54]:setPosition(14.25, 119.0);
	self.__children['rank_btn#font_sprite'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'rank_btn#font_sprite';
	localParams[52]:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet_bgframe/bgFrame0097.png', 1);
	localParams[55]:ignoreContentAdaptWithSize(false);
	localParams[55]:setScale9Enabled(true);
	localParams[55]:setCapInsets({x = 136.000000, y = 5.000000,width = 162.000000, height = 8.000000});
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 434.0, height = 200.0});
	localParams[55]:setPosition(217.0, 110.0);
	self.__children['detailsUnder_img'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'detailsUnder_img';
	self:addChild(localParams[55]);

	localParams[56] = Text:create();
	localParams[56]:setFontSize(20);
	localParams[56]:setString([[]]);
	localParams[56]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[56]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setContentSize({width = 0.0, height = 0.0});
	localParams[56]:setPosition(300.0, 137.0);
	self.__children['detailsUnder_img#time'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'detailsUnder_img#time';
	localParams[55]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_font/fontImg0156.png', 1);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setContentSize({width = 130.0, height = 24.0});
	localParams[57]:setPosition(300.0, 160.0);
	self.__children['detailsUnder_img#Sprite_3'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'detailsUnder_img#Sprite_3';
	localParams[55]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_font/fontImg0155.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setScaleX(1.10);
	localParams[58]:setScaleY(1.10);
	localParams[58]:setContentSize({width = 98.0, height = 25.0});
	localParams[58]:setPosition(75.0, 160.0);
	self.__children['detailsUnder_img#record_sprite'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'detailsUnder_img#record_sprite';
	localParams[55]:addChild(localParams[58]);

	localParams[59] = ImageView:create('uires/public/sheet_bgframe/bgFrame0053.png', 1);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setScaleX(1.10);
	localParams[59]:setScaleY(1.10);
	localParams[59]:setContentSize({width = 180.0, height = 28.0});
	localParams[59]:setPosition(117.18, 109.27);
	self.__children['detailsUnder_img#under_1'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'detailsUnder_img#under_1';
	localParams[55]:addChild(localParams[59]);

	localParams[60] = Text:create();
	localParams[60]:setFontSize(20);
	localParams[60]:setString([[总场次]]);
	localParams[60]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[60]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[60]:setAnchorPoint(0.00, 0.50);
	localParams[60]:setTextColor({r = 255, g = 240, b = 155});
	localParams[60]:setContentSize({width = 65.0, height = 24.0});
	localParams[60]:setPosition(14.4, 14.0);
	self.__children['detailsUnder_img#under_1#font_txt'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'detailsUnder_img#under_1#font_txt';
	localParams[59]:addChild(localParams[60]);

	localParams[61] = Text:create();
	localParams[61]:setFontSize(22);
	localParams[61]:setString([[666]]);
	localParams[61]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[61]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setTextColor({r = 255, g = 140, b = 0});
	localParams[61]:setContentSize({width = 43.0, height = 24.0});
	localParams[61]:setPosition(135.0, 14.0);
	self.__children['detailsUnder_img#under_1#value_txt'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'detailsUnder_img#under_1#value_txt';
	localParams[59]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet_bgframe/bgFrame0053.png', 1);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setScaleX(1.10);
	localParams[62]:setScaleY(1.10);
	localParams[62]:setContentSize({width = 180.0, height = 28.0});
	localParams[62]:setPosition(117.18, 70.54);
	self.__children['detailsUnder_img#under_2'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'detailsUnder_img#under_2';
	localParams[55]:addChild(localParams[62]);

	localParams[63] = Text:create();
	localParams[63]:setFontSize(20);
	localParams[63]:setString([[胜 场]]);
	localParams[63]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[63]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[63]:setAnchorPoint(0.00, 0.50);
	localParams[63]:setTextColor({r = 255, g = 240, b = 155});
	localParams[63]:setContentSize({width = 55.0, height = 24.0});
	localParams[63]:setPosition(14.4, 14.0);
	self.__children['detailsUnder_img#under_2#font_txt'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'detailsUnder_img#under_2#font_txt';
	localParams[62]:addChild(localParams[63]);

	localParams[64] = Text:create();
	localParams[64]:setFontSize(22);
	localParams[64]:setString([[666]]);
	localParams[64]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[64]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setTextColor({r = 255, g = 140, b = 0});
	localParams[64]:setContentSize({width = 43.0, height = 24.0});
	localParams[64]:setPosition(135.0, 14.0);
	self.__children['detailsUnder_img#under_2#value_txt'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'detailsUnder_img#under_2#value_txt';
	localParams[62]:addChild(localParams[64]);

	localParams[65] = ImageView:create('uires/public/sheet_bgframe/bgFrame0053.png', 1);
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setScaleX(1.10);
	localParams[65]:setScaleY(1.10);
	localParams[65]:setContentSize({width = 180.0, height = 28.0});
	localParams[65]:setPosition(117.18, 32.47);
	self.__children['detailsUnder_img#under_3'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'detailsUnder_img#under_3';
	localParams[55]:addChild(localParams[65]);

	localParams[66] = Text:create();
	localParams[66]:setFontSize(20);
	localParams[66]:setString([[胜 率]]);
	localParams[66]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[66]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[66]:setAnchorPoint(0.00, 0.50);
	localParams[66]:setTextColor({r = 255, g = 240, b = 155});
	localParams[66]:setContentSize({width = 55.0, height = 24.0});
	localParams[66]:setPosition(14.4, 14.0);
	self.__children['detailsUnder_img#under_3#font_txt'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'detailsUnder_img#under_3#font_txt';
	localParams[65]:addChild(localParams[66]);

	localParams[67] = Text:create();
	localParams[67]:setFontSize(22);
	localParams[67]:setString([[66.66%]]);
	localParams[67]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[67]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[67]:setAnchorPoint(0.50, 0.50);
	localParams[67]:setTextColor({r = 255, g = 140, b = 0});
	localParams[67]:setContentSize({width = 78.0, height = 24.0});
	localParams[67]:setPosition(135.0, 14.0);
	self.__children['detailsUnder_img#under_3#value_txt'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'detailsUnder_img#under_3#value_txt';
	localParams[65]:addChild(localParams[67]);

	localParams[68] = Button:create();
	localParams[68]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[68]:setTitleFontSize(14);
	localParams[68]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:onClick(handler(self, self._toViewDetails));
	localParams[68]:setTouchEnabled(true);
	localParams[68]:setContentSize({width = 110.0, height = 110.0});
	localParams[68]:setPosition(300.0, 70.75);
	self.__children['detailsUnder_img#prize_btn1'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'detailsUnder_img#prize_btn1';
	localParams[55]:addChild(localParams[68]);

	localParams[69] = Text:create();
	localParams[69]:setFontSize(16);
	localParams[69]:setString([[赛季结算奖励]]);
	localParams[69]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[69]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:setTextColor({r = 0, g = 255, b = 0});
	localParams[69]:setContentSize({width = 101.0, height = 20.0});
	localParams[69]:setPosition(55.0, 0.0);
	self.__children['detailsUnder_img#prize_btn1#Text_5'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'detailsUnder_img#prize_btn1#Text_5';
	localParams[68]:addChild(localParams[69]);

	localParams[70] = Button:create();
	localParams[70]:loadTextureNormal('uires/public/sheet_btn/btn0076.png', 1);
	localParams[70]:setTitleFontSize(14);
	localParams[70]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[70]:setScale9Enabled(true);
	localParams[70]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 62.000000});
	localParams[70]:setAnchorPoint(0.50, 0.50);
	localParams[70]:onClick(handler(self, self._onFormation));
	localParams[70]:setTouchEnabled(true);
	localParams[70]:setContentSize({width = 72.0, height = 84.0});
	localParams[70]:setPosition(WinSize.width - 236.00, 50.0);
	self.__children['formation_btn'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'formation_btn';
	self:addChild(localParams[70]);

	localParams[71] = Widget:create();
	localParams[71]:setAnchorPoint(0.00, 0.00);
	localParams[71]:setScaleX(0.90);
	localParams[71]:setScaleY(0.90);
	localParams[71]:setContentSize({width = 0.0, height = 0.0});
	localParams[71]:setPosition(328.52, 13.04);
	self.__children['formation_btn#__SELECTED_SCALE'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'formation_btn#__SELECTED_SCALE';
	localParams[70]:addChild(localParams[71]);

	localParams[72] = ImageView:create('uires/public/sheet_other/other0091.png', 1);
	localParams[72]:setAnchorPoint(0.50, 0.50);
	localParams[72]:setContentSize({width = 234.0, height = 64.0});
	localParams[72]:setPosition(WinSize.width - 393.00, 52.0);
	self.__children['professionUnder_sprite'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'professionUnder_sprite';
	self:addChild(localParams[72]);

	localParams[73] = Text:create();
	localParams[73]:setFontSize(20);
	localParams[73]:setString([[灵魂突破三]]);
	localParams[73]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[73]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setTextColor({r = 240, g = 200, b = 60});
	localParams[73]:setContentSize({width = 104.0, height = 22.0});
	localParams[73]:setPosition(145.01, 33.0);
	self.__children['professionUnder_sprite#formation_name'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'professionUnder_sprite#formation_name';
	localParams[72]:addChild(localParams[73]);

	localParams[74] = ImageView:create('uires/public/sheet_bgframe/bgFrame0086.png', 1);
	localParams[74]:ignoreContentAdaptWithSize(false);
	localParams[74]:setScale9Enabled(true);
	localParams[74]:setCapInsets({x = 29.000000, y = 18.000000,width = 110.000000, height = 20.000000});
	localParams[74]:setAnchorPoint(1.00, 0.50);
	localParams[74]:setVisible(false);
	localParams[74]:setContentSize({width = 300.0, height = 56.0});
	localParams[74]:setPosition(WinSize.width - 20.00, 131.0);
	self.__children['Image_7'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'Image_7';
	self:addChild(localParams[74]);

	localParams[75] = Button:create();
	localParams[75]:loadTextureNormal('uires/public/sheet_btn/btn0116.png', 1);
	localParams[75]:setTitleFontSize(14);
	localParams[75]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[75]:setScale9Enabled(true);
	localParams[75]:setCapInsets({x = 15.000000, y = 11.000000, width = 18.000000, height = 24.000000});
	localParams[75]:setAnchorPoint(0.50, 0.50);
	localParams[75]:onClick(handler(self, self._onAddTimes));
	localParams[75]:setTouchEnabled(true);
	localParams[75]:setContentSize({width = 48.0, height = 46.0});
	localParams[75]:setPosition(273.0, 28.0);
	self.__children['Image_7#Button_1'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'Image_7#Button_1';
	localParams[74]:addChild(localParams[75]);

	localParams[76] = Widget:create();
	localParams[76]:setAnchorPoint(0.00, 0.00);
	localParams[76]:setScaleX(0.90);
	localParams[76]:setScaleY(0.90);
	localParams[76]:setContentSize({width = 0.0, height = 0.0});
	localParams[76]:setPosition(338.52, 3.04);
	self.__children['Image_7#Button_1#__SELECTED_SCALE'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'Image_7#Button_1#__SELECTED_SCALE';
	localParams[75]:addChild(localParams[76]);

	localParams[77] = TextAtlas:create();
	localParams[77]:setProperty([[20303]], 'uires/public/font_number/fontImg0091.png', 20, 23, '.');
	localParams[77]:setAnchorPoint(0.50, 0.50);
	localParams[77]:setScaleX(0.80);
	localParams[77]:setScaleY(0.80);
	localParams[77]:setContentSize({width = 100.0, height = 23.0});
	localParams[77]:setPosition(199.88, 38.26);
	self.__children['Image_7#times'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'Image_7#times';
	localParams[74]:addChild(localParams[77]);

	localParams[78] = Text:create();
	localParams[78]:setFontSize(18);
	localParams[78]:setString([[战斗奖励次数]]);
	localParams[78]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[78]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[78]:setAnchorPoint(0.50, 0.50);
	localParams[78]:setContentSize({width = 113.0, height = 22.0});
	localParams[78]:setPosition(93.99, 38.07);
	self.__children['Image_7#text'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'Image_7#text';
	localParams[74]:addChild(localParams[78]);

	localParams[79] = Text:create();
	localParams[79]:setFontSize(16);
	localParams[79]:setString([[下次回复：00:00:00]]);
	localParams[79]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[79]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[79]:setAnchorPoint(0.50, 0.50);
	localParams[79]:setTextColor({r = 255, g = 0, b = 0});
	localParams[79]:setContentSize({width = 147.0, height = 22.0});
	localParams[79]:setPosition(138.0, 15.69);
	self.__children['Image_7#time'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'Image_7#time';
	localParams[74]:addChild(localParams[79]);

	localParams[80] = Button:create();
	localParams[80]:loadTextureNormal('uires/public/sheet_icon/icon0117.png', 1);
	localParams[80]:setTitleFontSize(14);
	localParams[80]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[80]:setScale9Enabled(true);
	localParams[80]:setCapInsets({x = 15.000000, y = 11.000000, width = 59.000000, height = 74.000000});
	localParams[80]:setAnchorPoint(0.50, 0.50);
	localParams[80]:setVisible(false);
	localParams[80]:onClick(handler(self, self._onTrain));
	localParams[80]:setTouchEnabled(true);
	localParams[80]:setContentSize({width = 89.0, height = 96.0});
	localParams[80]:setPosition(WinSize.width - 54.50, WinSize.height - 153.00);
	self.__children['trainbtn'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'trainbtn';
	self:addChild(localParams[80]);

	localParams[81] = Widget:create();
	localParams[81]:setAnchorPoint(0.00, 0.00);
	localParams[81]:setScaleX(0.90);
	localParams[81]:setScaleY(0.90);
	localParams[81]:setContentSize({width = 0.0, height = 0.0});
	localParams[81]:setPosition(328.52, 13.04);
	self.__children['trainbtn#__SELECTED_SCALE'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'trainbtn#__SELECTED_SCALE';
	localParams[80]:addChild(localParams[81]);

end
function LadderLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0015.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0091.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg013.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0231.png');
	table.insert(self._textureList, 'uires/public/hero/hero004.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function LadderLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function LadderLayer:_onTrain(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTrain then
        return self.m_ClickDelegate:onTrain(sender);
    end
    if self.onTrain then
        return self:onTrain(sender);
    end
end


function LadderLayer:_onFormation(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onFormation then
        return self.m_ClickDelegate:onFormation(sender);
    end
    if self.onFormation then
        return self:onFormation(sender);
    end
end


function LadderLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function LadderLayer:_toViewDetails(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toViewDetails then
        return self.m_ClickDelegate:toViewDetails(sender);
    end
    if self.toViewDetails then
        return self:toViewDetails(sender);
    end
end


function LadderLayer:_onAddTimes(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAddTimes then
        return self.m_ClickDelegate:onAddTimes(sender);
    end
    if self.onAddTimes then
        return self:onAddTimes(sender);
    end
end


function LadderLayer:_onRankList(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRankList then
        return self.m_ClickDelegate:onRankList(sender);
    end
    if self.onRankList then
        return self:onRankList(sender);
    end
end


function LadderLayer:_onStartMatch(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onStartMatch then
        return self.m_ClickDelegate:onStartMatch(sender);
    end
    if self.onStartMatch then
        return self:onStartMatch(sender);
    end
end


function LadderLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


return LadderLayer;