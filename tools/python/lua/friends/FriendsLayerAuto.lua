-- 
-- Author: generation auto
-- Brief：FriendsLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local FriendsLayer = class('FriendsLayer', gamecore.ui.BaseWidget);

function FriendsLayer:create(...) 
    local instance = FriendsLayer.new(...);
    return instance;
end

function FriendsLayer:ctor(...) 
    if FriendsLayer.super and FriendsLayer.super.ctor then
        FriendsLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function FriendsLayer:initView()
    self.__LAYER_NAME = 'friends.FriendsLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 39.000000,width = 144.000000, height = 144.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 960.0, height = 595.0});
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
	localParams[2]:setContentSize({width = 850.0, height = 530.0});
	localParams[2]:setPosition(504.0, 297.5);
	self.__children['bg_img#addBg_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#addBg_img';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_btn/btn0134.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._onSearch));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 65.0, height = 62.0});
	localParams[3]:setPosition(799.0, 492.9);
	self.__children['bg_img#addBg_img#search_btn'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#addBg_img#search_btn';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Widget:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.90);
	localParams[4]:setScaleY(0.90);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(318.52, 23.04);
	self.__children['bg_img#addBg_img#search_btn#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#addBg_img#search_btn#__SELECTED_SCALE';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 49.000000, y = 16.000000,width = 52.000000, height = 18.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 740.0, height = 50.0});
	localParams[5]:setPosition(382.5, 492.9);
	self.__children['bg_img#addBg_img#Image_2'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#addBg_img#Image_2';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[6]:setFontSize(22);
	localParams[6]:setPlaceholderFontSize(22);
	localParams[6]:setPlaceHolder([[可输入名称或用户ID搜索...]]);
	localParams[6]:setMaxLength(15);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setColor({r = 191, g = 191, b = 191});
	localParams[6]:registerScriptEditBoxHandler(handler(self, self._onCommentSearch));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 620.0, height = 50.0});
	localParams[6]:setPosition(39.81, 25.0);
	self.__children['bg_img#addBg_img#Image_2#TextField_1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#addBg_img#Image_2#TextField_1';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_other/other0237.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:onClick(handler(self, self._onReturn));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 25.0, height = 25.0});
	localParams[7]:setPosition(688.2, 25.0);
	self.__children['bg_img#addBg_img#Image_2#return_btn'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#addBg_img#Image_2#return_btn';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 275.0, height = 440.0});
	localParams[8]:setPosition(146.95, 238.5);
	self.__children['bg_img#addBg_img#under_img1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#addBg_img#under_img1';
	localParams[2]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0173.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 83.0, height = 83.0});
	localParams[9]:setPosition(137.5, 242.0);
	self.__children['bg_img#addBg_img#under_img1#cue_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#addBg_img#under_img1#cue_sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[无推荐好友！]]);
	localParams[10]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setTextColor({r = 155, g = 125, b = 100});
	localParams[10]:setContentSize({width = 113.0, height = 24.0});
	localParams[10]:setPosition(41.5, -20.75);
	self.__children['bg_img#addBg_img#under_img1#cue_sprite#font_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#addBg_img#under_img1#cue_sprite#font_txt';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_bgframe/bgFrame0119.png', 1);
	localParams[11]:ignoreContentAdaptWithSize(false);
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = 29.000000, y = 12.000000,width = 32.000000, height = 14.000000});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 260.0, height = 38.0});
	localParams[11]:setPosition(137.5, 409.2);
	self.__children['bg_img#addBg_img#under_img1#topUnder_img1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#addBg_img#under_img1#topUnder_img1';
	localParams[8]:addChild(localParams[11]);

	localParams[12] = RichText:create();
	localParams[12]:setDefaultFontSize(20);
	localParams[12]:setString([[搜索结果：]]);
	localParams[12]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[12]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[12]:setAnchorPoint(0.00, 0.50);
	localParams[12]:setTextColor({r = 255, g = 240, b = 155});
	localParams[12]:setContentSize({width = 97.0, height = 24.0});
	localParams[12]:setPosition(16.43, 19.0);
	self.__children['bg_img#addBg_img#under_img1#topUnder_img1#title_txt'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#addBg_img#under_img1#topUnder_img1#title_txt';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = ScrollView:create();
	localParams[13]:setInnerContainerSize({width = 280.00, height = 380.00});
	localParams[13]:setDirection(1);
	localParams[13]:setBackGroundColorType(1);
	localParams[13]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[13]:setBackGroundColorOpacity(20);
	localParams[13]:setAnchorPoint(0.00, 0.00);
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 280.0, height = 380.0});
	localParams[13]:setPosition(-2.5, 5.28);
	self.__children['bg_img#addBg_img#under_img1#ScrollView_1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#addBg_img#under_img1#ScrollView_1';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[14]:ignoreContentAdaptWithSize(false);
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 545.0, height = 440.0});
	localParams[14]:setPosition(566.1, 238.5);
	self.__children['bg_img#addBg_img#under_img2'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#addBg_img#under_img2';
	localParams[2]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0174.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setVisible(false);
	localParams[15]:setContentSize({width = 205.0, height = 241.0});
	localParams[15]:setPosition(272.5, 220.0);
	self.__children['bg_img#addBg_img#under_img2#qiaoba_sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#addBg_img#under_img2#qiaoba_sprite';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_bgframe/bgFrame0119.png', 1);
	localParams[16]:ignoreContentAdaptWithSize(false);
	localParams[16]:setScale9Enabled(true);
	localParams[16]:setCapInsets({x = 29.000000, y = 12.000000,width = 32.000000, height = 14.000000});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 530.0, height = 38.0});
	localParams[16]:setPosition(272.5, 409.2);
	self.__children['bg_img#addBg_img#under_img2#topUnder_img2'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#addBg_img#under_img2#topUnder_img2';
	localParams[14]:addChild(localParams[16]);

	localParams[17] = RichText:create();
	localParams[17]:setDefaultFontSize(20);
	localParams[17]:setString([[好友申请：]]);
	localParams[17]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[17]:setAnchorPoint(0.00, 0.50);
	localParams[17]:setTextColor({r = 255, g = 240, b = 155});
	localParams[17]:setContentSize({width = 97.0, height = 24.0});
	localParams[17]:setPosition(23.48, 19.0);
	self.__children['bg_img#addBg_img#under_img2#topUnder_img2#title_txt'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#addBg_img#under_img2#topUnder_img2#title_txt';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ScrollView:create();
	localParams[18]:setInnerContainerSize({width = 540.00, height = 380.00});
	localParams[18]:setDirection(1);
	localParams[18]:setBackGroundColorType(1);
	localParams[18]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[18]:setBackGroundColorOpacity(0);
	localParams[18]:setAnchorPoint(0.00, 0.00);
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 540.0, height = 380.0});
	localParams[18]:setPosition(2.5, 5.28);
	self.__children['bg_img#addBg_img#under_img2#ScrollView_2'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#addBg_img#under_img2#ScrollView_2';
	localParams[14]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[19]:ignoreContentAdaptWithSize(false);
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 850.0, height = 530.0});
	localParams[19]:setPosition(504.0, 297.5);
	self.__children['bg_img#friendBg_img'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#friendBg_img';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[20]:ignoreContentAdaptWithSize(false);
	localParams[20]:setScale9Enabled(true);
	localParams[20]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 275.0, height = 500.0});
	localParams[20]:setPosition(147.9, 265.0);
	self.__children['bg_img#friendBg_img#under_img1'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#friendBg_img#under_img1';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0173.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setVisible(false);
	localParams[21]:setContentSize({width = 83.0, height = 83.0});
	localParams[21]:setPosition(137.5, 265.0);
	self.__children['bg_img#friendBg_img#under_img1#cue_sprite'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#friendBg_img#under_img1#cue_sprite';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(20);
	localParams[22]:setString([[暂无好友！]]);
	localParams[22]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[22]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setTextColor({r = 155, g = 125, b = 100});
	localParams[22]:setContentSize({width = 93.0, height = 24.0});
	localParams[22]:setPosition(41.5, -20.75);
	self.__children['bg_img#friendBg_img#under_img1#cue_sprite#font_txt'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#friendBg_img#under_img1#cue_sprite#font_txt';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_bgframe/bgFrame0119.png', 1);
	localParams[23]:ignoreContentAdaptWithSize(false);
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 29.000000, y = 12.000000,width = 32.000000, height = 14.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 260.0, height = 38.0});
	localParams[23]:setPosition(137.5, 470.0);
	self.__children['bg_img#friendBg_img#under_img1#topUnder_img1'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg_img#friendBg_img#under_img1#topUnder_img1';
	localParams[20]:addChild(localParams[23]);

	localParams[24] = RichText:create();
	localParams[24]:setDefaultFontSize(20);
	localParams[24]:setString([[好友：]]);
	localParams[24]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[24]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[24]:setAnchorPoint(0.00, 0.50);
	localParams[24]:setTextColor({r = 255, g = 240, b = 155});
	localParams[24]:setContentSize({width = 57.0, height = 24.0});
	localParams[24]:setPosition(41.42, 19.0);
	self.__children['bg_img#friendBg_img#under_img1#topUnder_img1#title_txt'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg_img#friendBg_img#under_img1#topUnder_img1#title_txt';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ListView:create();
	localParams[25]:setDirection(1);
	localParams[25]:setGravity(0);
	localParams[25]:setBackGroundColorType(1);
	localParams[25]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[25]:setBackGroundColorOpacity(0);
	localParams[25]:setAnchorPoint(0.00, 0.00);
	localParams[25]:setEventCallback(handler(self, self._onListViewLeft));
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 280.0, height = 440.0});
	localParams[25]:setPosition(-2.5, 6.0);
	self.__children['bg_img#friendBg_img#under_img1#ListView_2'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg_img#friendBg_img#under_img1#ListView_2';
	localParams[20]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[26]:ignoreContentAdaptWithSize(false);
	localParams[26]:setScale9Enabled(true);
	localParams[26]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 545.0, height = 500.0});
	localParams[26]:setPosition(567.38, 265.0);
	self.__children['bg_img#friendBg_img#under_img2'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bg_img#friendBg_img#under_img2';
	localParams[19]:addChild(localParams[26]);

	localParams[27] = Layout:create();
	localParams[27]:setBackGroundColorType(1);
	localParams[27]:setBackGroundColor({r = 150, g = 200, b = 255});
	localParams[27]:setBackGroundColorOpacity(0);
	localParams[27]:setAnchorPoint(0.00, 0.00);
	localParams[27]:setTouchEnabled(true);
	localParams[27]:setContentSize({width = 545.0, height = 500.0});
	localParams[27]:setPosition(0.0, 0.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'bg_img#friendBg_img#under_img2#Panel_1';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setScaleX(0.75);
	localParams[28]:setScaleY(0.75);
	localParams[28]:setContentSize({width = 96.0, height = 96.0});
	localParams[28]:setPosition(51.77, 445.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#icon'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#icon';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 111.0, height = 111.0});
	localParams[29]:setPosition(48.0, 48.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#icon#iconUnder'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#icon#iconUnder';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = Text:create();
	localParams[30]:setFontSize(26);
	localParams[30]:setString([[LV:25]]);
	localParams[30]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[30]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[30]:setAnchorPoint(0.00, 0.50);
	localParams[30]:setTextColor({r = 255, g = 140, b = 0});
	localParams[30]:setContentSize({width = 69.0, height = 30.0});
	localParams[30]:setPosition(-7.68, 3.84);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#icon#level'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#icon#level';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[31]:ignoreContentAdaptWithSize(false);
	localParams[31]:setScale9Enabled(true);
	localParams[31]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 180.0, height = 32.0});
	localParams[31]:setPosition(185.3, 466.85);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#nameUnder'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#nameUnder';
	localParams[27]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(20);
	localParams[32]:setString([[]]);
	localParams[32]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[32]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setTextColor({r = 255, g = 240, b = 155});
	localParams[32]:setContentSize({width = 0.0, height = 0.0});
	localParams[32]:setPosition(90.0, 16.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#nameUnder#name'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#nameUnder#name';
	localParams[31]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[33]:ignoreContentAdaptWithSize(false);
	localParams[33]:setScale9Enabled(true);
	localParams[33]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 180.0, height = 32.0});
	localParams[33]:setPosition(185.3, 424.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#titleUnder'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#titleUnder';
	localParams[27]:addChild(localParams[33]);

	localParams[34] = Text:create();
	localParams[34]:setFontSize(20);
	localParams[34]:setString([[]]);
	localParams[34]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[34]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setTextColor({r = 255, g = 140, b = 0});
	localParams[34]:setContentSize({width = 0.0, height = 0.0});
	localParams[34]:setPosition(90.0, 16.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#titleUnder#value'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#titleUnder#value';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[35]:ignoreContentAdaptWithSize(false);
	localParams[35]:setScale9Enabled(true);
	localParams[35]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 530.0, height = 310.0});
	localParams[35]:setPosition(272.5, 235.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#dialogueUnder'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#dialogueUnder';
	localParams[27]:addChild(localParams[35]);

	localParams[36] = ListView:create();
	localParams[36]:setDirection(1);
	localParams[36]:setGravity(0);
	localParams[36]:setBackGroundColorType(1);
	localParams[36]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[36]:setBackGroundColorOpacity(0);
	localParams[36]:setAnchorPoint(0.00, 0.00);
	localParams[36]:setEventCallback(handler(self, self._onListView));
	localParams[36]:setTouchEnabled(true);
	localParams[36]:setContentSize({width = 520.0, height = 300.0});
	localParams[36]:setPosition(5.0, 3.72);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#dialogueUnder#listView'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#dialogueUnder#listView';
	localParams[35]:addChild(localParams[36]);

	localParams[37] = Button:create();
	localParams[37]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[37]:setTitleFontSize(14);
	localParams[37]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setScaleX(0.90);
	localParams[37]:setScaleY(0.90);
	localParams[37]:onClick(handler(self, self._onSend));
	localParams[37]:setTouchEnabled(true);
	localParams[37]:setContentSize({width = 183.0, height = 68.0});
	localParams[37]:setPosition(445.87, 40.98);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#send_btn'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#send_btn';
	localParams[27]:addChild(localParams[37]);

	localParams[38] = Widget:create();
	localParams[38]:setAnchorPoint(0.00, 0.00);
	localParams[38]:setScaleX(0.80);
	localParams[38]:setScaleY(0.80);
	localParams[38]:setContentSize({width = 0.0, height = 0.0});
	localParams[38]:setPosition(318.52, 23.04);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#send_btn#__SELECTED_SCALE'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#send_btn#__SELECTED_SCALE';
	localParams[37]:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_font/fontImg0193.png', 1);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 70.0, height = 30.0});
	localParams[39]:setPosition(91.5, 34.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#send_btn#font_sprite'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#send_btn#font_sprite';
	localParams[37]:addChild(localParams[39]);

	localParams[40] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[40]:ignoreContentAdaptWithSize(false);
	localParams[40]:setScale9Enabled(true);
	localParams[40]:setCapInsets({x = 49.000000, y = 16.000000,width = 52.000000, height = 18.000000});
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 330.0, height = 50.0});
	localParams[40]:setPosition(177.51, 42.7);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#textUnder'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#textUnder';
	localParams[27]:addChild(localParams[40]);

	localParams[41] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[41]:setFontSize(20);
	localParams[41]:setPlaceholderFontSize(20);
	localParams[41]:setPlaceHolder([[点击输入文字]]);
	localParams[41]:setMaxLength(40);
	localParams[41]:setAnchorPoint(0.00, 0.50);
	localParams[41]:setColor({r = 191, g = 191, b = 191});
	localParams[41]:registerScriptEditBoxHandler(handler(self, self._onCommentText));
	localParams[41]:setTouchEnabled(true);
	localParams[41]:setContentSize({width = 270.0, height = 25.0});
	localParams[41]:setPosition(30.0, 25.0);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#textUnder#TextField_1'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#textUnder#TextField_1';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_btn/btn0138.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:onClick(handler(self, self._onFight));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 75.0, height = 86.0});
	localParams[42]:setPosition(327.0, 448.5);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#fight_btn'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#fight_btn';
	localParams[27]:addChild(localParams[42]);

	localParams[43] = Widget:create();
	localParams[43]:setAnchorPoint(0.00, 0.00);
	localParams[43]:setScaleX(0.90);
	localParams[43]:setScaleY(0.90);
	localParams[43]:setContentSize({width = 0.0, height = 0.0});
	localParams[43]:setPosition(-1095.14, -470.12);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#fight_btn#__SELECTED_SCALE'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#fight_btn#__SELECTED_SCALE';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = Text:create();
	localParams[44]:setFontSize(20);
	localParams[44]:setString([[决 斗]]);
	localParams[44]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[44]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setTextColor({r = 240, g = 200, b = 60});
	localParams[44]:setContentSize({width = 54.0, height = 22.0});
	localParams[44]:setPosition(37.5, 8.6);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#fight_btn#value'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#fight_btn#value';
	localParams[42]:addChild(localParams[44]);

	localParams[45] = Text:create();
	localParams[45]:setFontSize(20);
	localParams[45]:setString([[04:25]]);
	localParams[45]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[45]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setTextColor({r = 255, g = 0, b = 0});
	localParams[45]:setVisible(false);
	localParams[45]:setContentSize({width = 57.0, height = 22.0});
	localParams[45]:setPosition(37.5, 8.6);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#fight_btn#time_txt'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#fight_btn#time_txt';
	localParams[42]:addChild(localParams[45]);

	localParams[46] = Button:create();
	localParams[46]:loadTextureNormal('uires/public/sheet_btn/btn0139.png', 1);
	localParams[46]:setTitleFontSize(14);
	localParams[46]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:onClick(handler(self, self._onData));
	localParams[46]:setTouchEnabled(true);
	localParams[46]:setContentSize({width = 75.0, height = 86.0});
	localParams[46]:setPosition(410.11, 448.5);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#data_btn'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#data_btn';
	localParams[27]:addChild(localParams[46]);

	localParams[47] = Widget:create();
	localParams[47]:setAnchorPoint(0.00, 0.00);
	localParams[47]:setScaleX(0.90);
	localParams[47]:setScaleY(0.90);
	localParams[47]:setContentSize({width = 0.0, height = 0.0});
	localParams[47]:setPosition(-1085.14, -480.12);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#data_btn#__SELECTED_SCALE'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#data_btn#__SELECTED_SCALE';
	localParams[46]:addChild(localParams[47]);

	localParams[48] = Text:create();
	localParams[48]:setFontSize(20);
	localParams[48]:setString([[数 据]]);
	localParams[48]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[48]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setTextColor({r = 240, g = 200, b = 60});
	localParams[48]:setContentSize({width = 54.0, height = 22.0});
	localParams[48]:setPosition(37.5, 8.6);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#data_btn#value'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#data_btn#value';
	localParams[46]:addChild(localParams[48]);

	localParams[49] = Button:create();
	localParams[49]:loadTextureNormal('uires/public/sheet_btn/btn0140.png', 1);
	localParams[49]:setTitleFontSize(14);
	localParams[49]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:onClick(handler(self, self._onDelete));
	localParams[49]:setTouchEnabled(true);
	localParams[49]:setContentSize({width = 75.0, height = 86.0});
	localParams[49]:setPosition(493.23, 448.5);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#delete_btn'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#delete_btn';
	localParams[27]:addChild(localParams[49]);

	localParams[50] = Widget:create();
	localParams[50]:setAnchorPoint(0.00, 0.00);
	localParams[50]:setScaleX(0.90);
	localParams[50]:setScaleY(0.90);
	localParams[50]:setContentSize({width = 0.0, height = 0.0});
	localParams[50]:setPosition(-1075.14, -490.12);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#delete_btn#__SELECTED_SCALE'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#delete_btn#__SELECTED_SCALE';
	localParams[49]:addChild(localParams[50]);

	localParams[51] = Text:create();
	localParams[51]:setFontSize(20);
	localParams[51]:setString([[删 除]]);
	localParams[51]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[51]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setTextColor({r = 240, g = 200, b = 60});
	localParams[51]:setContentSize({width = 54.0, height = 22.0});
	localParams[51]:setPosition(37.5, 8.6);
	self.__children['bg_img#friendBg_img#under_img2#Panel_1#delete_btn#value'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'bg_img#friendBg_img#under_img2#Panel_1#delete_btn#value';
	localParams[49]:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_other/other0174.png', 1);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setVisible(false);
	localParams[52]:setContentSize({width = 205.0, height = 241.0});
	localParams[52]:setPosition(272.5, 250.0);
	self.__children['bg_img#friendBg_img#under_img2#qiaoba_sprite'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'bg_img#friendBg_img#under_img2#qiaoba_sprite';
	localParams[26]:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_bgframe/bgFrame0031.png', 1);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 336.0, height = 62.0});
	localParams[53]:setPosition(480.0, 586.08);
	self.__children['bg_img#titleUnder_sprite'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'bg_img#titleUnder_sprite';
	localParams[1]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_font/fontImg0217.png', 1);
	localParams[54]:setAnchorPoint(0.77, -2.68);
	localParams[54]:setContentSize({width = 124.0, height = 53.0});
	localParams[54]:setPosition(200.5, -137.3);
	self.__children['bg_img#titleUnder_sprite#title_sprite'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'bg_img#titleUnder_sprite#title_sprite';
	localParams[53]:addChild(localParams[54]);

	localParams[55] = Button:create();
	localParams[55]:loadTextureNormal('uires/public/sheet_other/other0238.png', 1);
	localParams[55]:loadTexturePressed('uires/public/sheet_other/other0238.png', 1);
	localParams[55]:setTitleFontSize(14);
	localParams[55]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:onClick(handler(self, self._onHelp));
	localParams[55]:setTouchEnabled(true);
	localParams[55]:setContentSize({width = 31.0, height = 31.0});
	localParams[55]:setPosition(255.36, 31.0);
	self.__children['bg_img#titleUnder_sprite#help_btn'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'bg_img#titleUnder_sprite#help_btn';
	localParams[53]:addChild(localParams[55]);

	localParams[56] = Widget:create();
	localParams[56]:setAnchorPoint(0.00, 0.00);
	localParams[56]:setScaleX(0.90);
	localParams[56]:setScaleY(0.90);
	localParams[56]:setContentSize({width = 0.0, height = 0.0});
	localParams[56]:setPosition(-1105.14, -460.12);
	self.__children['bg_img#titleUnder_sprite#help_btn#__SELECTED_SCALE'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'bg_img#titleUnder_sprite#help_btn#__SELECTED_SCALE';
	localParams[55]:addChild(localParams[56]);

	localParams[57] = Button:create();
	localParams[57]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[57]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[57]:setTitleFontSize(14);
	localParams[57]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:onClick(handler(self, self._onClose));
	localParams[57]:setTouchEnabled(true);
	localParams[57]:setContentSize({width = 72.0, height = 72.0});
	localParams[57]:setPosition(944.5, 573.51);
	self.__children['bg_img#close_btn'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'bg_img#close_btn';
	localParams[1]:addChild(localParams[57]);

	localParams[58] = Widget:create();
	localParams[58]:setAnchorPoint(0.00, 0.00);
	localParams[58]:setScaleX(0.90);
	localParams[58]:setScaleY(0.90);
	localParams[58]:setContentSize({width = 0.0, height = 0.0});
	localParams[58]:setPosition(-1115.14, -450.12);
	self.__children['bg_img#close_btn#__SELECTED_SCALE'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'bg_img#close_btn#__SELECTED_SCALE';
	localParams[57]:addChild(localParams[58]);

	localParams[59] = Button:create();
	localParams[59]:loadTextureNormal('uires/public/sheet_btn/btn0085.png', 1);
	localParams[59]:loadTexturePressed('uires/public/sheet_btn/btn0086.png', 1);
	localParams[59]:setTitleFontSize(14);
	localParams[59]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:onClick(handler(self, self._onTabMenu));
	localParams[59]:setTouchEnabled(true);
	localParams[59]:setContentSize({width = 77.0, height = 78.0});
	localParams[59]:setPosition(41.28, 476.0);
	self.__children['bg_img#friend_btn'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'bg_img#friend_btn';
	localParams[1]:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 30.0, height = 30.0});
	localParams[60]:setPosition(0.0, 70.2);
	self.__children['bg_img#friend_btn#redPoint_sprite'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'bg_img#friend_btn#redPoint_sprite';
	localParams[59]:addChild(localParams[60]);

	localParams[61] = ImageView:create('uires/public/sheet_font/fontImg0216.png', 1);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 43.0, height = 24.0});
	localParams[61]:setPosition(38.5, 39.0);
	self.__children['bg_img#friend_btn#font_sprite'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'bg_img#friend_btn#font_sprite';
	localParams[59]:addChild(localParams[61]);

	localParams[62] = Button:create();
	localParams[62]:loadTextureNormal('uires/public/sheet_btn/btn0085.png', 1);
	localParams[62]:loadTexturePressed('uires/public/sheet_btn/btn0086.png', 1);
	localParams[62]:setTitleFontSize(14);
	localParams[62]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:onClick(handler(self, self._onTabMenu));
	localParams[62]:setTouchEnabled(true);
	localParams[62]:setContentSize({width = 77.0, height = 78.0});
	localParams[62]:setPosition(41.28, 386.75);
	self.__children['bg_img#add_btn'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'bg_img#add_btn';
	localParams[1]:addChild(localParams[62]);

	localParams[63] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setContentSize({width = 30.0, height = 30.0});
	localParams[63]:setPosition(0.0, 70.2);
	self.__children['bg_img#add_btn#redPoint_sprite'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'bg_img#add_btn#redPoint_sprite';
	localParams[62]:addChild(localParams[63]);

	localParams[64] = ImageView:create('uires/public/sheet_font/fontImg0215.png', 1);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setContentSize({width = 43.0, height = 24.0});
	localParams[64]:setPosition(38.5, 39.0);
	self.__children['bg_img#add_btn#font_sprite'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'bg_img#add_btn#font_sprite';
	localParams[62]:addChild(localParams[64]);

end
function FriendsLayer:loadImageSync()
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


function FriendsLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function FriendsLayer:_onListView(eventName, listView, row, column, index, cell)
    if self.m_ClickDelegate and self.m_ClickDelegate.onListView then
        return self.m_ClickDelegate:onListView(eventName, listView, row, column, index, cell);
    end
    if self.onListView then
        return self:onListView(eventName, listView, row, column, index, cell);
    end
end


function FriendsLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


--eventName:(began, ended, changed)
function FriendsLayer:_onCommentText(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCommentText then
        return self.m_ClickDelegate:onCommentText(eventName, editBox);
    end
    if self.onCommentText then
        return self:onCommentText(eventName, editBox);
    end
end


function FriendsLayer:_onFight(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onFight then
        return self.m_ClickDelegate:onFight(sender);
    end
    if self.onFight then
        return self:onFight(sender);
    end
end


function FriendsLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


function FriendsLayer:_onHelp(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onHelp then
        return self.m_ClickDelegate:onHelp(sender);
    end
    if self.onHelp then
        return self:onHelp(sender);
    end
end


function FriendsLayer:_onDelete(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onDelete then
        return self.m_ClickDelegate:onDelete(sender);
    end
    if self.onDelete then
        return self:onDelete(sender);
    end
end


function FriendsLayer:_onSend(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSend then
        return self.m_ClickDelegate:onSend(sender);
    end
    if self.onSend then
        return self:onSend(sender);
    end
end


function FriendsLayer:_onData(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onData then
        return self.m_ClickDelegate:onData(sender);
    end
    if self.onData then
        return self:onData(sender);
    end
end


function FriendsLayer:_onReturn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onReturn then
        return self.m_ClickDelegate:onReturn(sender);
    end
    if self.onReturn then
        return self:onReturn(sender);
    end
end


--eventName:(began, ended, changed)
function FriendsLayer:_onCommentSearch(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCommentSearch then
        return self.m_ClickDelegate:onCommentSearch(eventName, editBox);
    end
    if self.onCommentSearch then
        return self:onCommentSearch(eventName, editBox);
    end
end


--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function FriendsLayer:_onListViewLeft(eventName, listView, row, column, index, cell)
    if self.m_ClickDelegate and self.m_ClickDelegate.onListViewLeft then
        return self.m_ClickDelegate:onListViewLeft(eventName, listView, row, column, index, cell);
    end
    if self.onListViewLeft then
        return self:onListViewLeft(eventName, listView, row, column, index, cell);
    end
end


function FriendsLayer:_onSearch(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSearch then
        return self.m_ClickDelegate:onSearch(sender);
    end
    if self.onSearch then
        return self:onSearch(sender);
    end
end


return FriendsLayer;