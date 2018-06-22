-- 
-- Author: generation auto
-- Brief：MonsterPopupLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local MonsterPopupLayer = class('MonsterPopupLayer', gamecore.ui.BaseWidget);

function MonsterPopupLayer:create(...) 
    local instance = MonsterPopupLayer.new(...);
    return instance;
end

function MonsterPopupLayer:ctor(...) 
    if MonsterPopupLayer.super and MonsterPopupLayer.super.ctor then
        MonsterPopupLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function MonsterPopupLayer:initView()
    self.__LAYER_NAME = 'common.ui.MonsterPopupLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0011.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bgImg0010_9'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bgImg0010_9';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 200.0, height = 200.0});
	localParams[2]:setPosition(300.0, 280.0);
	self.__children['bgImg0010_9#prize_monster'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bgImg0010_9#prize_monster';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0102.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 273.0, height = 42.0});
	localParams[3]:setPosition(300.0, 235.0);
	self.__children['bgImg0010_9#name_bg'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bgImg0010_9#name_bg';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 60.0, height = 29.0});
	localParams[4]:setPosition(38.0, 21.0);
	self.__children['bgImg0010_9#name_bg#other1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bgImg0010_9#name_bg#other1';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 60.0, height = 29.0});
	localParams[5]:setPosition(235.0, 21.0);
	self.__children['bgImg0010_9#name_bg#other2'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bgImg0010_9#name_bg#other2';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 255, g = 240, b = 155});
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(137.23, 21.41);
	self.__children['bgImg0010_9#name_bg#name'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bgImg0010_9#name_bg#name';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.65);
	localParams[7]:setScaleY(0.65);
	localParams[7]:setContentSize({width = 43.0, height = 41.0});
	localParams[7]:setPosition(170.0, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bgImg0010_9#starUnder_sprite1';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 43.0, height = 41.0});
	localParams[8]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite1#star_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bgImg0010_9#starUnder_sprite1#star_sprite';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setScaleX(0.65);
	localParams[9]:setScaleY(0.65);
	localParams[9]:setContentSize({width = 43.0, height = 41.0});
	localParams[9]:setPosition(198.12, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bgImg0010_9#starUnder_sprite2';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 43.0, height = 41.0});
	localParams[10]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite2#star_sprite'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bgImg0010_9#starUnder_sprite2#star_sprite';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setScaleX(0.65);
	localParams[11]:setScaleY(0.65);
	localParams[11]:setContentSize({width = 43.0, height = 41.0});
	localParams[11]:setPosition(226.24, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite3'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bgImg0010_9#starUnder_sprite3';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[12]:setAnchorPoint(0.30, 0.52);
	localParams[12]:setContentSize({width = 43.0, height = 41.0});
	localParams[12]:setPosition(13.04, 21.13);
	self.__children['bgImg0010_9#starUnder_sprite3#star_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bgImg0010_9#starUnder_sprite3#star_sprite';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(0.65);
	localParams[13]:setScaleY(0.65);
	localParams[13]:setContentSize({width = 43.0, height = 41.0});
	localParams[13]:setPosition(254.37, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite4'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bgImg0010_9#starUnder_sprite4';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 43.0, height = 41.0});
	localParams[14]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite4#star_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bgImg0010_9#starUnder_sprite4#star_sprite';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.65);
	localParams[15]:setScaleY(0.65);
	localParams[15]:setContentSize({width = 43.0, height = 41.0});
	localParams[15]:setPosition(282.49, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite5'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bgImg0010_9#starUnder_sprite5';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 43.0, height = 41.0});
	localParams[16]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite5#star_sprite'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bgImg0010_9#starUnder_sprite5#star_sprite';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setScaleX(0.65);
	localParams[17]:setScaleY(0.65);
	localParams[17]:setContentSize({width = 43.0, height = 41.0});
	localParams[17]:setPosition(310.61, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite6'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bgImg0010_9#starUnder_sprite6';
	localParams[1]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 43.0, height = 41.0});
	localParams[18]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite6#star_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bgImg0010_9#starUnder_sprite6#star_sprite';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.65);
	localParams[19]:setScaleY(0.65);
	localParams[19]:setContentSize({width = 43.0, height = 41.0});
	localParams[19]:setPosition(338.73, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite7'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bgImg0010_9#starUnder_sprite7';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 43.0, height = 41.0});
	localParams[20]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite7#star_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bgImg0010_9#starUnder_sprite7#star_sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setScaleX(0.65);
	localParams[21]:setScaleY(0.65);
	localParams[21]:setContentSize({width = 43.0, height = 41.0});
	localParams[21]:setPosition(366.86, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite8'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bgImg0010_9#starUnder_sprite8';
	localParams[1]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 43.0, height = 41.0});
	localParams[22]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite8#star_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bgImg0010_9#starUnder_sprite8#star_sprite';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setScaleX(0.65);
	localParams[23]:setScaleY(0.65);
	localParams[23]:setContentSize({width = 43.0, height = 41.0});
	localParams[23]:setPosition(394.98, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite9'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bgImg0010_9#starUnder_sprite9';
	localParams[1]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 43.0, height = 41.0});
	localParams[24]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite9#star_sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bgImg0010_9#starUnder_sprite9#star_sprite';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_other/other0116.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setScaleX(0.65);
	localParams[25]:setScaleY(0.65);
	localParams[25]:setContentSize({width = 43.0, height = 41.0});
	localParams[25]:setPosition(423.1, 185.0);
	self.__children['bgImg0010_9#starUnder_sprite10'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bgImg0010_9#starUnder_sprite10';
	localParams[1]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 43.0, height = 41.0});
	localParams[26]:setPosition(21.5, 20.5);
	self.__children['bgImg0010_9#starUnder_sprite10#star_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bgImg0010_9#starUnder_sprite10#star_sprite';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0005.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setScaleX(0.90);
	localParams[27]:setScaleY(0.90);
	localParams[27]:setContentSize({width = 204.0, height = 29.0});
	localParams[27]:setPosition(WinSize.width/2 + (229.99 * ccx.scaleX), WinSize.height - 54.50);
	self.__children['title_bg1'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'title_bg1';
	self:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_other/other0003.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(0.90);
	localParams[28]:setScaleY(0.90);
	localParams[28]:setContentSize({width = 204.0, height = 29.0});
	localParams[28]:setPosition(WinSize.width/2 + (-229.99 * ccx.scaleX), WinSize.height - 54.50);
	self.__children['title_bg2'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'title_bg2';
	self:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_common/fontImg0242.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 241.0, height = 54.0});
	localParams[29]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 57.00);
	self.__children['uires_public_sheet_common_fontImg0242_8'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'uires_public_sheet_common_fontImg0242_8';
	self:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_common/fontImg0065.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 204.0, height = 24.0});
	localParams[30]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 32.0);
	self.__children['Sprite_1'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Sprite_1';
	self:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_common/bgFrame0043.png', 1);
	localParams[31]:ignoreContentAdaptWithSize(false);
	localParams[31]:setScale9Enabled(true);
	localParams[31]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 440.0, height = 120.0});
	localParams[31]:setPosition(WinSize.width - 260.00, WinSize.height/2 + (110.02 * ccx.scaleY));
	self.__children['Image_1'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Image_1';
	self:addChild(localParams[31]);

	localParams[32] = Button:create();
	localParams[32]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[32]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[32]:setTitleFontSize(14);
	localParams[32]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setScaleX(0.90);
	localParams[32]:setScaleY(0.90);
	localParams[32]:onClick(handler(self, self._onSpecial));
	localParams[32]:setTouchEnabled(true);
	localParams[32]:setContentSize({width = 108.0, height = 108.0});
	localParams[32]:setPosition(60.0, 60.0);
	self.__children['Image_1#btn'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'Image_1#btn';
	localParams[31]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 80.0, height = 80.0});
	localParams[33]:setPosition(54.0, 54.0);
	self.__children['Image_1#btn#image'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'Image_1#btn#image';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = Text:create();
	localParams[34]:setFontSize(20);
	localParams[34]:setString([[3阶解锁]]);
	localParams[34]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[34]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setTextColor({r = 255, g = 240, b = 155});
	localParams[34]:setContentSize({width = 75.0, height = 24.0});
	localParams[34]:setPosition(54.0, 6.0);
	self.__children['Image_1#btn#name'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'Image_1#btn#name';
	localParams[32]:addChild(localParams[34]);

	localParams[35] = RichText:create();
	localParams[35]:setDefaultFontSize(20);
	localParams[35]:setString([[Text LabelText LabelText LabelText LabelText LabelText Label]]);
	localParams[35]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[35]:setTextAreaSize({width = 330, height = 100});
	localParams[35]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[35]:setAnchorPoint(0.00, 0.50);
	localParams[35]:setContentSize({width = 330.0, height = 100.0});
	localParams[35]:setPosition(126.0, 54.0);
	self.__children['Image_1#btn#desc'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'Image_1#btn#desc';
	localParams[32]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_common/bgFrame0043.png', 1);
	localParams[36]:ignoreContentAdaptWithSize(false);
	localParams[36]:setScale9Enabled(true);
	localParams[36]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 440.0, height = 120.0});
	localParams[36]:setPosition(WinSize.width - 260.00, WinSize.height/2 + (-40.00 * ccx.scaleY));
	self.__children['Image_2'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'Image_2';
	self:addChild(localParams[36]);

	localParams[37] = Button:create();
	localParams[37]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[37]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[37]:setTitleFontSize(14);
	localParams[37]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setScaleX(0.90);
	localParams[37]:setScaleY(0.90);
	localParams[37]:onClick(handler(self, self._onSpecial));
	localParams[37]:setTouchEnabled(true);
	localParams[37]:setContentSize({width = 108.0, height = 108.0});
	localParams[37]:setPosition(60.0, 60.0);
	self.__children['Image_2#btn'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'Image_2#btn';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 80.0, height = 80.0});
	localParams[38]:setPosition(54.0, 54.0);
	self.__children['Image_2#btn#image'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'Image_2#btn#image';
	localParams[37]:addChild(localParams[38]);

	localParams[39] = Text:create();
	localParams[39]:setFontSize(20);
	localParams[39]:setString([[3阶解锁]]);
	localParams[39]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[39]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setTextColor({r = 255, g = 240, b = 155});
	localParams[39]:setContentSize({width = 75.0, height = 24.0});
	localParams[39]:setPosition(54.0, 6.0);
	self.__children['Image_2#btn#name'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'Image_2#btn#name';
	localParams[37]:addChild(localParams[39]);

	localParams[40] = RichText:create();
	localParams[40]:setDefaultFontSize(20);
	localParams[40]:setString([[Text LabelText LabelText LabelText LabelText LabelText Label]]);
	localParams[40]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[40]:setTextAreaSize({width = 330, height = 100});
	localParams[40]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[40]:setAnchorPoint(0.00, 0.50);
	localParams[40]:setContentSize({width = 330.0, height = 100.0});
	localParams[40]:setPosition(126.0, 54.0);
	self.__children['Image_2#btn#desc'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'Image_2#btn#desc';
	localParams[37]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_common/bgFrame0043.png', 1);
	localParams[41]:ignoreContentAdaptWithSize(false);
	localParams[41]:setScale9Enabled(true);
	localParams[41]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 440.0, height = 120.0});
	localParams[41]:setPosition(WinSize.width - 260.00, WinSize.height/2 + (-190.02 * ccx.scaleY));
	self.__children['Image_3'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'Image_3';
	self:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[42]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0079.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setScaleX(0.90);
	localParams[42]:setScaleY(0.90);
	localParams[42]:onClick(handler(self, self._onSpecial));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 108.0, height = 108.0});
	localParams[42]:setPosition(60.0, 60.0);
	self.__children['Image_3#btn'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'Image_3#btn';
	localParams[41]:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_other/other0100.png', 1);
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 80.0, height = 80.0});
	localParams[43]:setPosition(54.0, 54.0);
	self.__children['Image_3#btn#image'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'Image_3#btn#image';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = Text:create();
	localParams[44]:setFontSize(20);
	localParams[44]:setString([[3阶解锁]]);
	localParams[44]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[44]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setTextColor({r = 255, g = 240, b = 155});
	localParams[44]:setContentSize({width = 75.0, height = 24.0});
	localParams[44]:setPosition(54.0, 6.0);
	self.__children['Image_3#btn#name'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'Image_3#btn#name';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = RichText:create();
	localParams[45]:setDefaultFontSize(20);
	localParams[45]:setString([[Text LabelText LabelText LabelText LabelText LabelText Label]]);
	localParams[45]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[45]:setTextAreaSize({width = 330, height = 100});
	localParams[45]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[45]:setAnchorPoint(0.00, 0.50);
	localParams[45]:setContentSize({width = 330.0, height = 100.0});
	localParams[45]:setPosition(126.0, 54.0);
	self.__children['Image_3#btn#desc'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'Image_3#btn#desc';
	localParams[42]:addChild(localParams[45]);

end
function MonsterPopupLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0011.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function MonsterPopupLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MonsterPopupLayer:_onSpecial(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSpecial then
        return self.m_ClickDelegate:onSpecial(sender);
    end
    if self.onSpecial then
        return self:onSpecial(sender);
    end
end


return MonsterPopupLayer;