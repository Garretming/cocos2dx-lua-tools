-- 
-- Author: generation auto
-- Brief：EmailLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local EmailLayer = class('EmailLayer', gamecore.ui.BaseWidget);

function EmailLayer:create(...) 
    local instance = EmailLayer.new(...);
    return instance;
end

function EmailLayer:ctor(...) 
    if EmailLayer.super and EmailLayer.super.ctor then
        EmailLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);
end

function EmailLayer:initView()
    self.__LAYER_NAME = 'email.EmailLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 39.000000,width = 144.000000, height = 144.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 970.0, height = 590.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-12.80 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 860.0, height = 525.0});
	localParams[2]:setPosition(460.75, 295.0);
	self.__children['bg_img#under_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#under_img';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 280.0, height = 505.0});
	localParams[3]:setPosition(179.45, 295.0);
	self.__children['bg_img#under_img1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#under_img1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0173.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 83.0, height = 83.0});
	localParams[4]:setPosition(140.0, 277.75);
	self.__children['bg_img#under_img1#cue_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#under_img1#cue_sprite';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[您还没有邮件！]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 155, g = 125, b = 100});
	localParams[5]:setContentSize({width = 133.0, height = 24.0});
	localParams[5]:setPosition(41.5, -20.75);
	self.__children['bg_img#under_img1#cue_sprite#font_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#under_img1#cue_sprite#font_txt';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ListView:create();
	localParams[6]:setDirection(1);
	localParams[6]:setGravity(0);
	localParams[6]:setBackGroundColorType(1);
	localParams[6]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[6]:setBackGroundColorOpacity(0);
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setEventCallback(handler(self, self._onEmailListView));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 270.0, height = 495.0});
	localParams[6]:setPosition(5.0, 5.0);
	self.__children['bg_img#under_img1#email_listView'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#under_img1#email_listView';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = ListView:create();
	localParams[7]:setDirection(1);
	localParams[7]:setGravity(0);
	localParams[7]:setBackGroundColorType(1);
	localParams[7]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[7]:setBackGroundColorOpacity(0);
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setEventCallback(handler(self, self._onReportListView));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 270.0, height = 495.0});
	localParams[7]:setPosition(5.0, 5.0);
	self.__children['bg_img#under_img1#report_listView'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#under_img1#report_listView';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 555.0, height = 505.0});
	localParams[8]:setPosition(605.0, 295.0);
	self.__children['bg_img#under_img2'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#under_img2';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0174.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 205.0, height = 241.0});
	localParams[9]:setPosition(277.5, 252.5);
	self.__children['bg_img#under_img2#qiaoba_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#under_img2#qiaoba_sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0119.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 29.000000, y = 12.000000,width = 32.000000, height = 14.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 530.0, height = 38.0});
	localParams[10]:setPosition(277.5, 474.7);
	self.__children['bg_img#under_img2#topUnder_img1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#under_img2#topUnder_img1';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[系统补偿发放奖励]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setTextColor({r = 240, g = 200, b = 60});
	localParams[11]:setContentSize({width = 165.0, height = 24.0});
	localParams[11]:setPosition(23.48, 19.0);
	self.__children['bg_img#under_img2#topUnder_img1#title_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#under_img2#topUnder_img1#title_txt';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[有效期限：2017-4-30 24：00]]);
	localParams[12]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[12]:setAnchorPoint(1.00, 0.50);
	localParams[12]:setTextColor({r = 255, g = 0, b = 0});
	localParams[12]:setContentSize({width = 264.0, height = 24.0});
	localParams[12]:setPosition(514.1, 19.0);
	self.__children['bg_img#under_img2#topUnder_img1#timeLimit_txt'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#under_img2#topUnder_img1#timeLimit_txt';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[13]:ignoreContentAdaptWithSize(false);
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 530.0, height = 210.0});
	localParams[13]:setPosition(277.5, 343.4);
	self.__children['bg_img#under_img2#descUnder_img1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#under_img2#descUnder_img1';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = RichText:create();
	localParams[14]:setDefaultFontSize(20);
	localParams[14]:setString([[]]);
	localParams[14]:setTextAreaSize({width = 480, height = 170});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 480.0, height = 170.0});
	localParams[14]:setPosition(265.0, 105.0);
	self.__children['bg_img#under_img2#descUnder_img1#desc_txt'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#under_img2#descUnder_img1#desc_txt';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 530.0, height = 125.0});
	localParams[15]:setPosition(277.5, 166.65);
	self.__children['bg_img#under_img2#prizeUnder_img1'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#under_img2#prizeUnder_img1';
	localParams[8]:addChild(localParams[15]);

	localParams[16] = Button:create();
	localParams[16]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[16]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[16]:setTitleFontSize(14);
	localParams[16]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(0.70);
	localParams[16]:setScaleY(0.70);
	localParams[16]:onClick(handler(self, self._toViewPrizeDetails));
	localParams[16]:setTouchEnabled(true);
	localParams[16]:setContentSize({width = 110.0, height = 110.0});
	localParams[16]:setPosition(53.0, 62.5);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn1'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn1';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 98.0, height = 98.0});
	localParams[17]:setPosition(55.0, 54.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn1#icon_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn1#icon_sprite';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[25]]);
	localParams[18]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[18]:setAnchorPoint(1.00, 0.50);
	localParams[18]:setContentSize({width = 27.0, height = 22.0});
	localParams[18]:setPosition(94.6, 22.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn1#count_txt'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn1#count_txt';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[19]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.70);
	localParams[19]:setScaleY(0.70);
	localParams[19]:onClick(handler(self, self._toViewPrizeDetails));
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 110.0, height = 110.0});
	localParams[19]:setPosition(137.8, 62.5);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn2'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn2';
	localParams[15]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 98.0, height = 98.0});
	localParams[20]:setPosition(55.0, 54.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn2#icon_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn2#icon_sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[25]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[21]:setAnchorPoint(1.00, 0.50);
	localParams[21]:setContentSize({width = 27.0, height = 22.0});
	localParams[21]:setPosition(94.6, 22.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn2#count_txt'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn2#count_txt';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = Button:create();
	localParams[22]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[22]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[22]:setTitleFontSize(14);
	localParams[22]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setScaleX(0.70);
	localParams[22]:setScaleY(0.70);
	localParams[22]:onClick(handler(self, self._toViewPrizeDetails));
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setContentSize({width = 110.0, height = 110.0});
	localParams[22]:setPosition(222.6, 62.5);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn3'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn3';
	localParams[15]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 98.0, height = 98.0});
	localParams[23]:setPosition(55.0, 54.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn3#icon_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn3#icon_sprite';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[25]]);
	localParams[24]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[24]:setAnchorPoint(1.00, 0.50);
	localParams[24]:setContentSize({width = 27.0, height = 22.0});
	localParams[24]:setPosition(94.6, 22.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn3#count_txt'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn3#count_txt';
	localParams[22]:addChild(localParams[24]);

	localParams[25] = Button:create();
	localParams[25]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[25]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[25]:setTitleFontSize(14);
	localParams[25]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setScaleX(0.70);
	localParams[25]:setScaleY(0.70);
	localParams[25]:onClick(handler(self, self._toViewPrizeDetails));
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 110.0, height = 110.0});
	localParams[25]:setPosition(307.4, 62.5);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn4'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn4';
	localParams[15]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 98.0, height = 98.0});
	localParams[26]:setPosition(55.0, 54.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn4#icon_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn4#icon_sprite';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = Text:create();
	localParams[27]:setFontSize(20);
	localParams[27]:setString([[25]]);
	localParams[27]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[27]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[27]:setAnchorPoint(1.00, 0.50);
	localParams[27]:setContentSize({width = 27.0, height = 22.0});
	localParams[27]:setPosition(94.6, 22.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn4#count_txt'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn4#count_txt';
	localParams[25]:addChild(localParams[27]);

	localParams[28] = Button:create();
	localParams[28]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[28]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[28]:setTitleFontSize(14);
	localParams[28]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(0.70);
	localParams[28]:setScaleY(0.70);
	localParams[28]:onClick(handler(self, self._toViewPrizeDetails));
	localParams[28]:setTouchEnabled(true);
	localParams[28]:setContentSize({width = 110.0, height = 110.0});
	localParams[28]:setPosition(392.2, 62.5);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn5'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn5';
	localParams[15]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 98.0, height = 98.0});
	localParams[29]:setPosition(55.0, 54.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn5#icon_sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn5#icon_sprite';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = Text:create();
	localParams[30]:setFontSize(20);
	localParams[30]:setString([[25]]);
	localParams[30]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[30]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[30]:setAnchorPoint(1.00, 0.50);
	localParams[30]:setContentSize({width = 27.0, height = 22.0});
	localParams[30]:setPosition(94.6, 22.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn5#count_txt'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn5#count_txt';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = Button:create();
	localParams[31]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[31]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[31]:setTitleFontSize(14);
	localParams[31]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setScaleX(0.70);
	localParams[31]:setScaleY(0.70);
	localParams[31]:onClick(handler(self, self._toViewPrizeDetails));
	localParams[31]:setTouchEnabled(true);
	localParams[31]:setContentSize({width = 110.0, height = 110.0});
	localParams[31]:setPosition(477.0, 62.5);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn6'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn6';
	localParams[15]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 98.0, height = 98.0});
	localParams[32]:setPosition(55.0, 54.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn6#icon_sprite'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn6#icon_sprite';
	localParams[31]:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(20);
	localParams[33]:setString([[25]]);
	localParams[33]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[33]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[33]:setAnchorPoint(1.00, 0.50);
	localParams[33]:setContentSize({width = 27.0, height = 22.0});
	localParams[33]:setPosition(94.6, 22.0);
	self.__children['bg_img#under_img2#prizeUnder_img1#item_btn6#count_txt'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'bg_img#under_img2#prizeUnder_img1#item_btn6#count_txt';
	localParams[31]:addChild(localParams[33]);

	localParams[34] = Button:create();
	localParams[34]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[34]:setTitleFontSize(36);
	localParams[34]:setTitleColor({r = 255, g = 255, b = 255});
	localParams[34]:setScale9Enabled(true);
	localParams[34]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:onClick(handler(self, self._onReceive));
	localParams[34]:setTouchEnabled(true);
	localParams[34]:setContentSize({width = 183.0, height = 68.0});
	localParams[34]:setPosition(277.5, 50.5);
	self.__children['bg_img#under_img2#receive1_btn'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'bg_img#under_img2#receive1_btn';
	localParams[8]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_font/fontImg0136.png', 1);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 66.0, height = 28.0});
	localParams[35]:setPosition(91.5, 34.0);
	self.__children['bg_img#under_img2#receive1_btn#font_sprite'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'bg_img#under_img2#receive1_btn#font_sprite';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = Widget:create();
	localParams[36]:setAnchorPoint(0.00, 0.00);
	localParams[36]:setScaleX(0.90);
	localParams[36]:setScaleY(0.90);
	localParams[36]:setContentSize({width = 0.0, height = 0.0});
	localParams[36]:setPosition(-1105.14, -460.12);
	self.__children['bg_img#under_img2#receive1_btn#__SELECTED_SCALE'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'bg_img#under_img2#receive1_btn#__SELECTED_SCALE';
	localParams[34]:addChild(localParams[36]);

	localParams[37] = Button:create();
	localParams[37]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[37]:setTitleFontSize(36);
	localParams[37]:setTitleColor({r = 255, g = 255, b = 255});
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:onClick(handler(self, self._onDelete));
	localParams[37]:setTouchEnabled(true);
	localParams[37]:setContentSize({width = 183.0, height = 68.0});
	localParams[37]:setPosition(277.5, 50.5);
	self.__children['bg_img#under_img2#delete1_btn'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'bg_img#under_img2#delete1_btn';
	localParams[8]:addChild(localParams[37]);

	localParams[38] = ImageView:create('uires/public/sheet_font/fontImg0175.png', 1);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 68.0, height = 28.0});
	localParams[38]:setPosition(91.5, 34.0);
	self.__children['bg_img#under_img2#delete1_btn#font_sprite'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'bg_img#under_img2#delete1_btn#font_sprite';
	localParams[37]:addChild(localParams[38]);

	localParams[39] = Widget:create();
	localParams[39]:setAnchorPoint(0.00, 0.00);
	localParams[39]:setScaleX(0.90);
	localParams[39]:setScaleY(0.90);
	localParams[39]:setContentSize({width = 0.0, height = 0.0});
	localParams[39]:setPosition(-1105.14, -460.12);
	self.__children['bg_img#under_img2#delete1_btn#__SELECTED_SCALE'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'bg_img#under_img2#delete1_btn#__SELECTED_SCALE';
	localParams[37]:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[40]:ignoreContentAdaptWithSize(false);
	localParams[40]:setScale9Enabled(true);
	localParams[40]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 555.0, height = 505.0});
	localParams[40]:setPosition(605.0, 295.0);
	self.__children['bg_img#under_img3'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'bg_img#under_img3';
	localParams[1]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_other/other0174.png', 1);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 205.0, height = 241.0});
	localParams[41]:setPosition(277.5, 252.5);
	self.__children['bg_img#under_img3#qiaoba_sprite'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'bg_img#under_img3#qiaoba_sprite';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = ImageView:create('uires/public/sheet_bgframe/bgFrame0119.png', 1);
	localParams[42]:ignoreContentAdaptWithSize(false);
	localParams[42]:setScale9Enabled(true);
	localParams[42]:setCapInsets({x = 29.000000, y = 12.000000,width = 32.000000, height = 14.000000});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setContentSize({width = 530.0, height = 38.0});
	localParams[42]:setPosition(277.5, 474.7);
	self.__children['bg_img#under_img3#topUnder_img1'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'bg_img#under_img3#topUnder_img1';
	localParams[40]:addChild(localParams[42]);

	localParams[43] = Text:create();
	localParams[43]:setFontSize(20);
	localParams[43]:setString([[系统补偿发放奖励]]);
	localParams[43]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[43]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[43]:setAnchorPoint(0.00, 0.50);
	localParams[43]:setTextColor({r = 240, g = 200, b = 60});
	localParams[43]:setContentSize({width = 165.0, height = 24.0});
	localParams[43]:setPosition(23.48, 19.0);
	self.__children['bg_img#under_img3#topUnder_img1#title_txt'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'bg_img#under_img3#topUnder_img1#title_txt';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = Text:create();
	localParams[44]:setFontSize(20);
	localParams[44]:setString([[有效期限：2017-4-30 24：00]]);
	localParams[44]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[44]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[44]:setAnchorPoint(1.00, 0.50);
	localParams[44]:setTextColor({r = 255, g = 0, b = 0});
	localParams[44]:setContentSize({width = 264.0, height = 24.0});
	localParams[44]:setPosition(514.1, 19.0);
	self.__children['bg_img#under_img3#topUnder_img1#timeLimit_txt'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'bg_img#under_img3#topUnder_img1#timeLimit_txt';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[45]:ignoreContentAdaptWithSize(false);
	localParams[45]:setScale9Enabled(true);
	localParams[45]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[45]:setAnchorPoint(0.50, 1.00);
	localParams[45]:setContentSize({width = 530.0, height = 350.0});
	localParams[45]:setPosition(277.5, 445.0);
	self.__children['bg_img#under_img3#descUnder_img1'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'bg_img#under_img3#descUnder_img1';
	localParams[40]:addChild(localParams[45]);

	localParams[46] = RichText:create();
	localParams[46]:setDefaultFontSize(20);
	localParams[46]:setString([[]]);
	localParams[46]:setTextAreaSize({width = 480, height = 300});
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setContentSize({width = 480.0, height = 300.0});
	localParams[46]:setPosition(265.0, 175.0);
	self.__children['bg_img#under_img3#descUnder_img1#desc_txt'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'bg_img#under_img3#descUnder_img1#desc_txt';
	localParams[45]:addChild(localParams[46]);

	localParams[47] = Button:create();
	localParams[47]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[47]:setTitleFontSize(36);
	localParams[47]:setTitleColor({r = 255, g = 255, b = 255});
	localParams[47]:setScale9Enabled(true);
	localParams[47]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setScaleX(0.95);
	localParams[47]:setScaleY(0.95);
	localParams[47]:onClick(handler(self, self._onReplay));
	localParams[47]:setTouchEnabled(true);
	localParams[47]:setContentSize({width = 183.0, height = 68.0});
	localParams[47]:setPosition(138.8, 50.5);
	self.__children['bg_img#under_img3#replay_btn'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'bg_img#under_img3#replay_btn';
	localParams[40]:addChild(localParams[47]);

	localParams[48] = ImageView:create('uires/public/sheet_font/fontImg0174.png', 1);
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setContentSize({width = 66.0, height = 28.0});
	localParams[48]:setPosition(91.5, 34.0);
	self.__children['bg_img#under_img3#replay_btn#font_sprite'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'bg_img#under_img3#replay_btn#font_sprite';
	localParams[47]:addChild(localParams[48]);

	localParams[49] = Widget:create();
	localParams[49]:setAnchorPoint(0.00, 0.00);
	localParams[49]:setScaleX(0.90);
	localParams[49]:setScaleY(0.90);
	localParams[49]:setContentSize({width = 0.0, height = 0.0});
	localParams[49]:setPosition(-1105.14, -460.12);
	self.__children['bg_img#under_img3#replay_btn#__SELECTED_SCALE'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'bg_img#under_img3#replay_btn#__SELECTED_SCALE';
	localParams[47]:addChild(localParams[49]);

	localParams[50] = Button:create();
	localParams[50]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[50]:setTitleFontSize(36);
	localParams[50]:setTitleColor({r = 255, g = 255, b = 255});
	localParams[50]:setScale9Enabled(true);
	localParams[50]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setScaleX(0.95);
	localParams[50]:setScaleY(0.95);
	localParams[50]:onClick(handler(self, self._onDelete));
	localParams[50]:setTouchEnabled(true);
	localParams[50]:setContentSize({width = 183.0, height = 68.0});
	localParams[50]:setPosition(416.25, 50.5);
	self.__children['bg_img#under_img3#delete2_btn'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'bg_img#under_img3#delete2_btn';
	localParams[40]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_font/fontImg0175.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 68.0, height = 28.0});
	localParams[51]:setPosition(91.5, 34.0);
	self.__children['bg_img#under_img3#delete2_btn#font_sprite'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'bg_img#under_img3#delete2_btn#font_sprite';
	localParams[50]:addChild(localParams[51]);

	localParams[52] = Widget:create();
	localParams[52]:setAnchorPoint(0.00, 0.00);
	localParams[52]:setScaleX(0.90);
	localParams[52]:setScaleY(0.90);
	localParams[52]:setContentSize({width = 0.0, height = 0.0});
	localParams[52]:setPosition(-1105.14, -460.12);
	self.__children['bg_img#under_img3#delete2_btn#__SELECTED_SCALE'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'bg_img#under_img3#delete2_btn#__SELECTED_SCALE';
	localParams[50]:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_bgframe/bgFrame0031.png', 1);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 336.0, height = 62.0});
	localParams[53]:setPosition(485.0, 584.1);
	self.__children['bg_img#titleUnder_sprite'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'bg_img#titleUnder_sprite';
	localParams[1]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_font/fontImg0170.png', 1);
	localParams[54]:setAnchorPoint(0.77, -2.68);
	localParams[54]:setContentSize({width = 124.0, height = 53.0});
	localParams[54]:setPosition(200.5, -137.3);
	self.__children['bg_img#titleUnder_sprite#title_sprite'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'bg_img#titleUnder_sprite#title_sprite';
	localParams[53]:addChild(localParams[54]);

	localParams[55] = Button:create();
	localParams[55]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[55]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[55]:setTitleFontSize(14);
	localParams[55]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:onClick(handler(self, self._onClose));
	localParams[55]:setTouchEnabled(true);
	localParams[55]:setContentSize({width = 72.0, height = 72.0});
	localParams[55]:setPosition(944.64, 566.64);
	self.__children['bg_img#close_btn'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'bg_img#close_btn';
	localParams[1]:addChild(localParams[55]);

	localParams[56] = Widget:create();
	localParams[56]:setAnchorPoint(0.00, 0.00);
	localParams[56]:setScaleX(0.90);
	localParams[56]:setScaleY(0.90);
	localParams[56]:setContentSize({width = 0.0, height = 0.0});
	localParams[56]:setPosition(-1115.14, -450.12);
	self.__children['bg_img#close_btn#__SELECTED_SCALE'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'bg_img#close_btn#__SELECTED_SCALE';
	localParams[55]:addChild(localParams[56]);

	localParams[57] = Button:create();
	localParams[57]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[57]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[57]:setTitleFontSize(14);
	localParams[57]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:onClick(handler(self, self._onTabMenu));
	localParams[57]:setTouchEnabled(true);
	localParams[57]:setContentSize({width = 77.0, height = 78.0});
	localParams[57]:setPosition(927.32, 460.2);
	self.__children['bg_img#email_btn'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'bg_img#email_btn';
	localParams[1]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setContentSize({width = 30.0, height = 30.0});
	localParams[58]:setPosition(73.92, 68.64);
	self.__children['bg_img#email_btn#redPoint_sprite'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'bg_img#email_btn#redPoint_sprite';
	localParams[57]:addChild(localParams[58]);

	localParams[59] = ImageView:create('uires/public/sheet_font/fontImg0171.png', 1);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 43.0, height = 24.0});
	localParams[59]:setPosition(38.5, 39.0);
	self.__children['bg_img#email_btn#font_sprite'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'bg_img#email_btn#font_sprite';
	localParams[57]:addChild(localParams[59]);

	localParams[60] = Button:create();
	localParams[60]:loadTextureNormal('uires/public/sheet_btn/btn0041.png', 1);
	localParams[60]:loadTexturePressed('uires/public/sheet_btn/btn0042.png', 1);
	localParams[60]:setTitleFontSize(14);
	localParams[60]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:onClick(handler(self, self._onTabMenu));
	localParams[60]:setTouchEnabled(true);
	localParams[60]:setContentSize({width = 77.0, height = 78.0});
	localParams[60]:setPosition(927.32, 368.75);
	self.__children['bg_img#report_btn'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'bg_img#report_btn';
	localParams[1]:addChild(localParams[60]);

	localParams[61] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 30.0, height = 30.0});
	localParams[61]:setPosition(73.92, 68.64);
	self.__children['bg_img#report_btn#redPoint_sprite'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'bg_img#report_btn#redPoint_sprite';
	localParams[60]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet_font/fontImg0172.png', 1);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setContentSize({width = 43.0, height = 24.0});
	localParams[62]:setPosition(38.5, 39.0);
	self.__children['bg_img#report_btn#font_sprite'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'bg_img#report_btn#font_sprite';
	localParams[60]:addChild(localParams[62]);

end
function EmailLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
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


function EmailLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function EmailLayer:_onDelete(sender)
    if self._clickDelegate and self._clickDelegate.onDelete then
        return self._clickDelegate:onDelete(sender);
    end
    if self.onDelete then
        return self:onDelete(sender);
    end
end


function EmailLayer:_toViewPrizeDetails(sender)
    if self._clickDelegate and self._clickDelegate.toViewPrizeDetails then
        return self._clickDelegate:toViewPrizeDetails(sender);
    end
    if self.toViewPrizeDetails then
        return self:toViewPrizeDetails(sender);
    end
end


function EmailLayer:_onClose(sender)
    if self._clickDelegate and self._clickDelegate.onClose then
        return self._clickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function EmailLayer:_onEmailListView(eventName, listView, row, column, index, cell)
    if self._clickDelegate and self._clickDelegate.onEmailListView then
        return self._clickDelegate:onEmailListView(eventName, listView, row, column, index, cell);
    end
    if self.onEmailListView then
        return self:onEmailListView(eventName, listView, row, column, index, cell);
    end
end


function EmailLayer:_onReceive(sender)
    if self._clickDelegate and self._clickDelegate.onReceive then
        return self._clickDelegate:onReceive(sender);
    end
    if self.onReceive then
        return self:onReceive(sender);
    end
end


function EmailLayer:_onTabMenu(sender)
    if self._clickDelegate and self._clickDelegate.onTabMenu then
        return self._clickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function EmailLayer:_onReplay(sender)
    if self._clickDelegate and self._clickDelegate.onReplay then
        return self._clickDelegate:onReplay(sender);
    end
    if self.onReplay then
        return self:onReplay(sender);
    end
end


--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function EmailLayer:_onReportListView(eventName, listView, row, column, index, cell)
    if self._clickDelegate and self._clickDelegate.onReportListView then
        return self._clickDelegate:onReportListView(eventName, listView, row, column, index, cell);
    end
    if self.onReportListView then
        return self:onReportListView(eventName, listView, row, column, index, cell);
    end
end


return EmailLayer;