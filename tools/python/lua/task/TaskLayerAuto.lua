-- 
-- Author: generation auto
-- Brief：TaskLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local TaskLayer = class('TaskLayer', gamecore.ui.BaseWidget);

function TaskLayer:create(...) 
    local instance = TaskLayer.new(...);
    return instance;
end

function TaskLayer:ctor(...) 
    if TaskLayer.super and TaskLayer.super.ctor then
        TaskLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function TaskLayer:initView()
    self.__LAYER_NAME = 'task.TaskLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0017.png', 0);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 374.000000, y = 253.000000,width = 388.000000, height = 262.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.51 * ccx.scaleX), WinSize.height/2 + (1.41 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = LoadingBar:create(''uires/public/sheet_other/other0182.png'', 1, 100.00);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 694.0, height = 30.0});
	localParams[2]:setPosition(WinSize.width/2 + (80.49 * ccx.scaleX), WinSize.height - 140.20);
	self.__children['loading1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'loading1';
	self:addChild(localParams[2]);

	localParams[3] = LoadingBar:create(''uires/public/sheet_other/other0181.png'', 1, 0.00);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 678.0, height = 18.0});
	localParams[3]:setPosition(346.77, 14.84);
	self.__children['loading1#loading2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'loading1#loading2';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_other/other0138.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.50);
	localParams[4]:setScaleY(0.50);
	localParams[4]:onClick(handler(self, self._todayPrizeBoxBtn4));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 185.0, height = 162.0});
	localParams[4]:setPosition(708.49, 24.37);
	self.__children['loading1#todayPrizeBox4'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'loading1#todayPrizeBox4';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0041.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(2.00);
	localParams[5]:setScaleY(2.00);
	localParams[5]:setContentSize({width = 46.0, height = 33.0});
	localParams[5]:setPosition(158.32, 128.79);
	self.__children['loading1#todayPrizeBox4#open4'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'loading1#todayPrizeBox4#open4';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = TextAtlas:create();
	localParams[6]:setProperty([[120]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 102.0, height = 40.0});
	localParams[6]:setPosition(140.45, 32.82);
	self.__children['loading1#todayPrizeBox4#task_atlasLabel'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'loading1#todayPrizeBox4#task_atlasLabel';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:loadTextureNormal('uires/public/sheet_other/other0137.png', 1);
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.50);
	localParams[7]:setScaleY(0.50);
	localParams[7]:onClick(handler(self, self._todayPrizeBoxBtn3));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 185.0, height = 162.0});
	localParams[7]:setPosition(525.65, 24.2);
	self.__children['loading1#todayPrizeBox3'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'loading1#todayPrizeBox3';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0041.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(2.00);
	localParams[8]:setScaleY(2.00);
	localParams[8]:setContentSize({width = 46.0, height = 33.0});
	localParams[8]:setPosition(158.32, 128.79);
	self.__children['loading1#todayPrizeBox3#open3'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'loading1#todayPrizeBox3#open3';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = TextAtlas:create();
	localParams[9]:setProperty([[90]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 68.0, height = 40.0});
	localParams[9]:setPosition(140.45, 32.82);
	self.__children['loading1#todayPrizeBox3#task_atlasLabel'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'loading1#todayPrizeBox3#task_atlasLabel';
	localParams[7]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:loadTextureNormal('uires/public/sheet_other/other0136.png', 1);
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setScaleX(0.50);
	localParams[10]:setScaleY(0.50);
	localParams[10]:onClick(handler(self, self._todayPrizeBoxBtn2));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 185.0, height = 162.0});
	localParams[10]:setPosition(342.37, 23.93);
	self.__children['loading1#todayPrizeBox2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'loading1#todayPrizeBox2';
	localParams[2]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0041.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setScaleX(2.00);
	localParams[11]:setScaleY(2.00);
	localParams[11]:setContentSize({width = 46.0, height = 33.0});
	localParams[11]:setPosition(158.32, 128.79);
	self.__children['loading1#todayPrizeBox2#open2'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'loading1#todayPrizeBox2#open2';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = TextAtlas:create();
	localParams[12]:setProperty([[60]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 68.0, height = 40.0});
	localParams[12]:setPosition(140.45, 32.82);
	self.__children['loading1#todayPrizeBox2#task_atlasLabel'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'loading1#todayPrizeBox2#task_atlasLabel';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_other/other0184.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(0.50);
	localParams[13]:setScaleY(0.50);
	localParams[13]:onClick(handler(self, self._todayPrizeBoxBtn1));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 185.0, height = 162.0});
	localParams[13]:setPosition(158.99, 24.45);
	self.__children['loading1#todayPrizeBox1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'loading1#todayPrizeBox1';
	localParams[2]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0041.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(2.00);
	localParams[14]:setScaleY(2.00);
	localParams[14]:setContentSize({width = 46.0, height = 33.0});
	localParams[14]:setPosition(158.32, 128.79);
	self.__children['loading1#todayPrizeBox1#open1'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'loading1#todayPrizeBox1#open1';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = TextAtlas:create();
	localParams[15]:setProperty([[30]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 68.0, height = 40.0});
	localParams[15]:setPosition(150.44, 32.82);
	self.__children['loading1#todayPrizeBox1#task_atlasLabel'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'loading1#todayPrizeBox1#task_atlasLabel';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = TextAtlas:create();
	localParams[16]:setProperty([[888]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(0.80);
	localParams[16]:setScaleY(0.80);
	localParams[16]:setContentSize({width = 102.0, height = 40.0});
	localParams[16]:setPosition(-35.53, 9.74);
	self.__children['loading1#liveness_atlasLabel'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'loading1#liveness_atlasLabel';
	localParams[2]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_icon/icon0026.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 44.0, height = 44.0});
	localParams[17]:setPosition(-95.03, 11.71);
	self.__children['loading1#img1'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'loading1#img1';
	localParams[2]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[今日活跃度]]);
	localParams[18]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 103.0, height = 20.0});
	localParams[18]:setPosition(-55.4, 51.87);
	self.__children['loading1#Text_1'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'loading1#Text_1';
	localParams[2]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[19]:ignoreContentAdaptWithSize(false);
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = 39.000000, y = 39.000000,width = 12.000000, height = 12.000000});
	localParams[19]:setAnchorPoint(0.50, 0.00);
	localParams[19]:setContentSize({width = 900.0, height = WinSize.height - 190.00});
	localParams[19]:setPosition(WinSize.width/2 + (60.11 * ccx.scaleX), 5.8);
	self.__children['task_bg'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'task_bg';
	self:addChild(localParams[19]);

	localParams[20] = ListView:create();
	localParams[20]:setDirection(1);
	localParams[20]:setGravity(0);
	localParams[20]:setBackGroundColorType(1);
	localParams[20]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[20]:setBackGroundColorOpacity(102);
	localParams[20]:setAnchorPoint(0.00, 0.00);
	localParams[20]:onClick(handler(self, self._onAchievementListView));
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 870.0, height = WinSize.height - 220.00});
	localParams[20]:setPosition(15.0, 14.0);
	self.__children['task_bg#achievementListView'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'task_bg#achievementListView';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ListView:create();
	localParams[21]:setDirection(1);
	localParams[21]:setGravity(0);
	localParams[21]:setBackGroundColorType(1);
	localParams[21]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[21]:setBackGroundColorOpacity(102);
	localParams[21]:setAnchorPoint(0.00, 0.00);
	localParams[21]:onClick(handler(self, self._onEverydayListView));
	localParams[21]:setTouchEnabled(true);
	localParams[21]:setContentSize({width = 870.0, height = WinSize.height - 270.00});
	localParams[21]:setPosition(15.0, 65.0);
	self.__children['task_bg#everydayListView'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'task_bg#everydayListView';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = Layout:create();
	localParams[22]:setBackGroundColorOpacity(102);
	localParams[22]:setAnchorPoint(0.00, 0.00);
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setContentSize({width = 1024.0, height = 640.0});
	localParams[22]:setPosition(0.0, 160.0);
	self.__children['__FULL_LAYER'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = '__FULL_LAYER';
	self:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[23]:ignoreContentAdaptWithSize(false);
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 800.0, height = 93.0});
	localParams[23]:setPosition(localParams[22]:getContentSize().width - 400.00, localParams[22]:getContentSize().height - 45.50);
	self.__children['__FULL_LAYER#bg2'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = '__FULL_LAYER#bg2';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 537.0, height = 164.0});
	localParams[24]:setPosition(268.5, localParams[22]:getContentSize().height - 82.00);
	self.__children['__FULL_LAYER#bg1'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = '__FULL_LAYER#bg1';
	localParams[22]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_font/fontImg0179.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 124.0, height = 55.0});
	localParams[25]:setPosition(239.0, localParams[22]:getContentSize().height - 29.00);
	self.__children['__FULL_LAYER#bg4'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = '__FULL_LAYER#bg4';
	localParams[22]:addChild(localParams[25]);

	localParams[26] = Button:create();
	localParams[26]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[26]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[26]:setTitleFontSize(14);
	localParams[26]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[26]:setScale9Enabled(true);
	localParams[26]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:onClick(handler(self, self._back_btn));
	localParams[26]:setTouchEnabled(true);
	localParams[26]:setContentSize({width = 116.0, height = 77.0});
	localParams[26]:setPosition(68.17, localParams[22]:getContentSize().height - 44.38);
	self.__children['__FULL_LAYER#back_btn'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = '__FULL_LAYER#back_btn';
	localParams[22]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 162.0, height = 51.0});
	localParams[27]:setPosition(localParams[22]:getContentSize().width - 393.01, localParams[22]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#rmb_money'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = '__FULL_LAYER#rmb_money';
	localParams[22]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(20);
	localParams[28]:setString([[999999]]);
	localParams[28]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[28]:setAnchorPoint(1.00, 0.50);
	localParams[28]:setContentSize({width = 75.0, height = 22.0});
	localParams[28]:setPosition(141.77, localParams[27]:getContentSize().height - 18.98);
	self.__children['__FULL_LAYER#rmb_money#value'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = '__FULL_LAYER#rmb_money#value';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 44.0, height = 44.0});
	localParams[29]:setPosition(24.41, 25.4);
	self.__children['__FULL_LAYER#rmb_money#gem_sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = '__FULL_LAYER#rmb_money#gem_sprite';
	localParams[27]:addChild(localParams[29]);

	localParams[30] = Button:create();
	localParams[30]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[30]:setTitleFontSize(14);
	localParams[30]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setTouchEnabled(true);
	localParams[30]:setContentSize({width = 35.0, height = 37.0});
	localParams[30]:setPosition(160.89, 31.85);
	self.__children['__FULL_LAYER#rmb_money#gemAdd_btn'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = '__FULL_LAYER#rmb_money#gemAdd_btn';
	localParams[27]:addChild(localParams[30]);

	localParams[31] = Button:create();
	localParams[31]:setTitleFontSize(14);
	localParams[31]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[31]:setScale9Enabled(true);
	localParams[31]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:onClick(handler(self, self._onRMBMoney));
	localParams[31]:setTouchEnabled(true);
	localParams[31]:setContentSize({width = 50.0, height = 30.0});
	localParams[31]:setPosition(156.91, 30.02);
	self.__children['__FULL_LAYER#rmb_money#Button'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = '__FULL_LAYER#rmb_money#Button';
	localParams[27]:addChild(localParams[31]);

	localParams[32] = Button:create();
	localParams[32]:setTitleFontSize(14);
	localParams[32]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[32]:setScale9Enabled(true);
	localParams[32]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setTouchEnabled(true);
	localParams[32]:setContentSize({width = 120.0, height = 30.0});
	localParams[32]:setPosition(81.86, 29.58);
	self.__children['__FULL_LAYER#rmb_money#btn_desc'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = '__FULL_LAYER#rmb_money#btn_desc';
	localParams[27]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 162.0, height = 51.0});
	localParams[33]:setPosition(localParams[22]:getContentSize().width - 186.01, localParams[22]:getContentSize().height - 32.00);
	self.__children['__FULL_LAYER#game_money'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = '__FULL_LAYER#game_money';
	localParams[22]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 44.0, height = 44.0});
	localParams[34]:setPosition(24.79, 24.57);
	self.__children['__FULL_LAYER#game_money#coin_sprite'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = '__FULL_LAYER#game_money#coin_sprite';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = Button:create();
	localParams[35]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[35]:setTitleFontSize(14);
	localParams[35]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setTouchEnabled(true);
	localParams[35]:setContentSize({width = 35.0, height = 37.0});
	localParams[35]:setPosition(162.16, 31.02);
	self.__children['__FULL_LAYER#game_money#coinAdd_btn'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = '__FULL_LAYER#game_money#coinAdd_btn';
	localParams[33]:addChild(localParams[35]);

	localParams[36] = Text:create();
	localParams[36]:setFontSize(20);
	localParams[36]:setString([[999999]]);
	localParams[36]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[36]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[36]:setAnchorPoint(1.00, 0.50);
	localParams[36]:setContentSize({width = 75.0, height = 22.0});
	localParams[36]:setPosition(143.96, 30.61);
	self.__children['__FULL_LAYER#game_money#value'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = '__FULL_LAYER#game_money#value';
	localParams[33]:addChild(localParams[36]);

	localParams[37] = Button:create();
	localParams[37]:setTitleFontSize(14);
	localParams[37]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[37]:setScale9Enabled(true);
	localParams[37]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setTouchEnabled(true);
	localParams[37]:setContentSize({width = 120.0, height = 30.0});
	localParams[37]:setPosition(62.86, 30.58);
	self.__children['__FULL_LAYER#game_money#btn_desc'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = '__FULL_LAYER#game_money#btn_desc';
	localParams[33]:addChild(localParams[37]);

	localParams[38] = Button:create();
	localParams[38]:setTitleFontSize(14);
	localParams[38]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[38]:setScale9Enabled(true);
	localParams[38]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:onClick(handler(self, self._onGameMoney));
	localParams[38]:setTouchEnabled(true);
	localParams[38]:setContentSize({width = 50.0, height = 30.0});
	localParams[38]:setPosition(154.91, 31.02);
	self.__children['__FULL_LAYER#game_money#Button'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = '__FULL_LAYER#game_money#Button';
	localParams[33]:addChild(localParams[38]);

	localParams[39] = Button:create();
	localParams[39]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[39]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[39]:setTitleFontSize(14);
	localParams[39]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[39]:setScale9Enabled(true);
	localParams[39]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:onClick(handler(self, self._help_btn));
	localParams[39]:setTouchEnabled(true);
	localParams[39]:setContentSize({width = 58.0, height = 68.0});
	localParams[39]:setPosition(localParams[22]:getContentSize().width - 37.02, localParams[22]:getContentSize().height - 49.83);
	self.__children['__FULL_LAYER#help_btn'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = '__FULL_LAYER#help_btn';
	localParams[22]:addChild(localParams[39]);

	localParams[40] = Node:create();
	localParams[40]:setAnchorPoint(0.00, 0.00);
	localParams[40]:setScaleX(0.90);
	localParams[40]:setScaleY(0.90);
	localParams[40]:setContentSize({width = 0.0, height = 0.0});
	localParams[40]:setPosition(52.93, -11.77);
	self.__children['__FULL_LAYER#help_btn#__SELECTED_SCALE'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = '__FULL_LAYER#help_btn#__SELECTED_SCALE';
	localParams[39]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_bgframe/bgFrame0114.png', 1);
	localParams[41]:ignoreContentAdaptWithSize(false);
	localParams[41]:setScale9Enabled(true);
	localParams[41]:setCapInsets({x = 29.000000, y = 22.000000,width = 32.000000, height = 25.000000});
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 900.0, height = 69.0});
	localParams[41]:setPosition(WinSize.width/2 + (60.31 * ccx.scaleX), 33.18);
	self.__children['week_bg'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'week_bg';
	self:addChild(localParams[41]);

	localParams[42] = TextAtlas:create();
	localParams[42]:setProperty([[8]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setScaleX(0.80);
	localParams[42]:setScaleY(0.80);
	localParams[42]:setContentSize({width = 34.0, height = 40.0});
	localParams[42]:setPosition(173.25, 32.93);
	self.__children['week_bg#weekLiveness'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'week_bg#weekLiveness';
	localParams[41]:addChild(localParams[42]);

	localParams[43] = Text:create();
	localParams[43]:setFontSize(20);
	localParams[43]:setString([[本周活跃度]]);
	localParams[43]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 103.0, height = 20.0});
	localParams[43]:setPosition(81.39, 34.97);
	self.__children['week_bg#weekLivenessText1'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'week_bg#weekLivenessText1';
	localParams[41]:addChild(localParams[43]);

	localParams[44] = TextAtlas:create();
	localParams[44]:setProperty([[55]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setScaleX(0.80);
	localParams[44]:setScaleY(0.80);
	localParams[44]:setContentSize({width = 68.0, height = 40.0});
	localParams[44]:setPosition(380.79, 32.56);
	self.__children['week_bg#weekLivenessValue1'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'week_bg#weekLivenessValue1';
	localParams[41]:addChild(localParams[44]);

	localParams[45] = Text:create();
	localParams[45]:setFontSize(20);
	localParams[45]:setString([[可领]]);
	localParams[45]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setContentSize({width = 43.0, height = 20.0});
	localParams[45]:setPosition(454.36, 34.47);
	self.__children['week_bg#weekLivenessText2'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'week_bg#weekLivenessText2';
	localParams[41]:addChild(localParams[45]);

	localParams[46] = TextAtlas:create();
	localParams[46]:setProperty([[45]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setScaleX(0.80);
	localParams[46]:setScaleY(0.80);
	localParams[46]:setContentSize({width = 68.0, height = 40.0});
	localParams[46]:setPosition(679.42, 32.16);
	self.__children['week_bg#weekLivenessValue2'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'week_bg#weekLivenessValue2';
	localParams[41]:addChild(localParams[46]);

	localParams[47] = Text:create();
	localParams[47]:setFontSize(20);
	localParams[47]:setString([[可领]]);
	localParams[47]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 43.0, height = 20.0});
	localParams[47]:setPosition(754.05, 34.9);
	self.__children['week_bg#weekLivenessText3'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'week_bg#weekLivenessText3';
	localParams[41]:addChild(localParams[47]);

	localParams[48] = Button:create();
	localParams[48]:loadTextureNormal('uires/public/sheet_other/other0139.png', 1);
	localParams[48]:setTitleFontSize(14);
	localParams[48]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[48]:setScale9Enabled(true);
	localParams[48]:setCapInsets({x = 15.000000, y = 11.000000, width = 155.000000, height = 140.000000});
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setScaleX(0.50);
	localParams[48]:setScaleY(0.50);
	localParams[48]:onClick(handler(self, self._weekPrizeBox1Btn));
	localParams[48]:setTouchEnabled(true);
	localParams[48]:setContentSize({width = 185.0, height = 162.0});
	localParams[48]:setPosition(532.01, 45.41);
	self.__children['week_bg#weekPrizeBox1'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'week_bg#weekPrizeBox1';
	localParams[41]:addChild(localParams[48]);

	localParams[49] = ImageView:create('uires/public/sheet_other/other0041.png', 1);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setScaleX(2.00);
	localParams[49]:setScaleY(2.00);
	localParams[49]:setContentSize({width = 46.0, height = 33.0});
	localParams[49]:setPosition(134.59, 121.56);
	self.__children['week_bg#weekPrizeBox1#open'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'week_bg#weekPrizeBox1#open';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = Button:create();
	localParams[50]:loadTextureNormal('uires/public/sheet_other/other0185.png', 1);
	localParams[50]:setTitleFontSize(14);
	localParams[50]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[50]:setScale9Enabled(true);
	localParams[50]:setCapInsets({x = 15.000000, y = 11.000000, width = 155.000000, height = 140.000000});
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setScaleX(0.50);
	localParams[50]:setScaleY(0.50);
	localParams[50]:onClick(handler(self, self._weekPrizeBox2Btn));
	localParams[50]:setTouchEnabled(true);
	localParams[50]:setContentSize({width = 185.0, height = 162.0});
	localParams[50]:setPosition(834.68, 44.85);
	self.__children['week_bg#weekPrizeBox2'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'week_bg#weekPrizeBox2';
	localParams[41]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_other/other0041.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setScaleX(2.00);
	localParams[51]:setScaleY(2.00);
	localParams[51]:setContentSize({width = 46.0, height = 33.0});
	localParams[51]:setPosition(128.9, 118.24);
	self.__children['week_bg#weekPrizeBox2#open'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'week_bg#weekPrizeBox2#open';
	localParams[50]:addChild(localParams[51]);

	localParams[52] = Button:create();
	localParams[52]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[52]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[52]:setTitleFontSize(14);
	localParams[52]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[52]:setScale9Enabled(true);
	localParams[52]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 47.000000});
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:onClick(handler(self, self._onTabMenu));
	localParams[52]:setTouchEnabled(true);
	localParams[52]:setContentSize({width = 116.0, height = 69.0});
	localParams[52]:setPosition(53.1, WinSize.height - 211.90);
	self.__children['everyday'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'everyday';
	self:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_font/fontImg0176.png', 1);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 56.0, height = 26.0});
	localParams[53]:setPosition(55.46, 33.73);
	self.__children['everyday#font'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'everyday#font';
	localParams[52]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setContentSize({width = 30.0, height = 30.0});
	localParams[54]:setPosition(111.36, 60.72);
	self.__children['everyday#redPoint_sprite'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'everyday#redPoint_sprite';
	localParams[52]:addChild(localParams[54]);

	localParams[55] = Button:create();
	localParams[55]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[55]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[55]:setTitleFontSize(14);
	localParams[55]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[55]:setScale9Enabled(true);
	localParams[55]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 47.000000});
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:onClick(handler(self, self._onTabMenu));
	localParams[55]:setTouchEnabled(true);
	localParams[55]:setContentSize({width = 116.0, height = 69.0});
	localParams[55]:setPosition(53.73, WinSize.height - 289.54);
	self.__children['achievement'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'achievement';
	self:addChild(localParams[55]);

	localParams[56] = ImageView:create('uires/public/sheet_font/fontImg0177.png', 1);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setContentSize({width = 59.0, height = 26.0});
	localParams[56]:setPosition(55.46, 33.73);
	self.__children['achievement#font'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'achievement#font';
	localParams[55]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setContentSize({width = 30.0, height = 30.0});
	localParams[57]:setPosition(111.36, 58.72);
	self.__children['achievement#redPoint_sprite'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'achievement#redPoint_sprite';
	localParams[55]:addChild(localParams[57]);

	localParams[58] = Button:create();
	localParams[58]:loadTextureNormal('uires/public/sheet_btn/btn0122.png', 1);
	localParams[58]:setTitleFontSize(14);
	localParams[58]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[58]:setScale9Enabled(true);
	localParams[58]:setCapInsets({x = 15.000000, y = 11.000000, width = 35.000000, height = 40.000000});
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:onClick(handler(self, self._sortBtn));
	localParams[58]:setTouchEnabled(true);
	localParams[58]:setContentSize({width = 65.0, height = 62.0});
	localParams[58]:setPosition(WinSize.width/2 + (399.26 * ccx.scaleX), WinSize.height - 136.46);
	self.__children['sort'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'sort';
	self:addChild(localParams[58]);

	localParams[59] = TextAtlas:create();
	localParams[59]:setProperty([[88/89]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[59]:setAnchorPoint(0.00, 1.00);
	localParams[59]:setScaleX(0.80);
	localParams[59]:setScaleY(0.80);
	localParams[59]:setContentSize({width = 170.0, height = 40.0});
	localParams[59]:setPosition(-689.39, 30.24);
	self.__children['sort#current_achieve'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'sort#current_achieve';
	localParams[58]:addChild(localParams[59]);

	localParams[60] = Text:create();
	localParams[60]:setFontSize(20);
	localParams[60]:setString([[当前成就点]]);
	localParams[60]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 102.0, height = 20.0});
	localParams[60]:setPosition(-687.21, 54.46);
	self.__children['sort#weekLivenessText1_0'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'sort#weekLivenessText1_0';
	localParams[58]:addChild(localParams[60]);

	localParams[61] = Button:create();
	localParams[61]:loadTextureNormal('uires/public/sheet_other/other0139.png', 1);
	localParams[61]:setTitleFontSize(14);
	localParams[61]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[61]:setScale9Enabled(true);
	localParams[61]:setCapInsets({x = 15.000000, y = 11.000000, width = 155.000000, height = 140.000000});
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setScaleX(0.50);
	localParams[61]:setScaleY(0.50);
	localParams[61]:onClick(handler(self, self._getPrizeBoxBtn));
	localParams[61]:setTouchEnabled(true);
	localParams[61]:setContentSize({width = 185.0, height = 162.0});
	localParams[61]:setPosition(-211.23, 28.49);
	self.__children['sort#getPrizeBox'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'sort#getPrizeBox';
	localParams[58]:addChild(localParams[61]);

	localParams[62] = Text:create();
	localParams[62]:setFontSize(20);
	localParams[62]:setString([[可领]]);
	localParams[62]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[62]:setAnchorPoint(1.00, 0.00);
	localParams[62]:setContentSize({width = 43.0, height = 20.0});
	localParams[62]:setPosition(-269.66, 11.77);
	self.__children['sort#geted'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'sort#geted';
	localParams[58]:addChild(localParams[62]);

	localParams[63] = TextAtlas:create();
	localParams[63]:setProperty([[123]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:setScaleX(0.80);
	localParams[63]:setScaleY(0.80);
	localParams[63]:setContentSize({width = 102.0, height = 40.0});
	localParams[63]:setPosition(-354.97, 21.39);
	self.__children['sort#medal_num'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'sort#medal_num';
	localParams[58]:addChild(localParams[63]);

	localParams[64] = ImageView:create('uires/public/sheet_icon/icon0097.png', 1);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setScaleX(0.60);
	localParams[64]:setScaleY(0.60);
	localParams[64]:setContentSize({width = 67.0, height = 71.0});
	localParams[64]:setPosition(-715.25, 11.99);
	self.__children['sort#uires_task_sheet_icon0097_1'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'sort#uires_task_sheet_icon0097_1';
	localParams[58]:addChild(localParams[64]);

	localParams[65] = ImageView:create('uires/public/sheet_icon/icon0097.png', 1);
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setScaleX(0.60);
	localParams[65]:setScaleY(0.60);
	localParams[65]:setContentSize({width = 67.0, height = 71.0});
	localParams[65]:setPosition(-415.78, 20.51);
	self.__children['sort#medalSign'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'sort#medalSign';
	localParams[58]:addChild(localParams[65]);

end
function TaskLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0017.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg013.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function TaskLayer:loadPlistResources()
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


function TaskLayer:_onGameMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGameMoney then
        return self.m_ClickDelegate:onGameMoney(sender);
    end
    if self.onGameMoney then
        return self:onGameMoney(sender);
    end
end


function TaskLayer:_getPrizeBoxBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.getPrizeBoxBtn then
        return self.m_ClickDelegate:getPrizeBoxBtn(sender);
    end
    if self.getPrizeBoxBtn then
        return self:getPrizeBoxBtn(sender);
    end
end


function TaskLayer:_onRMBMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onRMBMoney then
        return self.m_ClickDelegate:onRMBMoney(sender);
    end
    if self.onRMBMoney then
        return self:onRMBMoney(sender);
    end
end


function TaskLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function TaskLayer:_weekPrizeBox2Btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.weekPrizeBox2Btn then
        return self.m_ClickDelegate:weekPrizeBox2Btn(sender);
    end
    if self.weekPrizeBox2Btn then
        return self:weekPrizeBox2Btn(sender);
    end
end


function TaskLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function TaskLayer:_sortBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.sortBtn then
        return self.m_ClickDelegate:sortBtn(sender);
    end
    if self.sortBtn then
        return self:sortBtn(sender);
    end
end


function TaskLayer:_weekPrizeBox1Btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.weekPrizeBox1Btn then
        return self.m_ClickDelegate:weekPrizeBox1Btn(sender);
    end
    if self.weekPrizeBox1Btn then
        return self:weekPrizeBox1Btn(sender);
    end
end


function TaskLayer:_todayPrizeBoxBtn4(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.todayPrizeBoxBtn4 then
        return self.m_ClickDelegate:todayPrizeBoxBtn4(sender);
    end
    if self.todayPrizeBoxBtn4 then
        return self:todayPrizeBoxBtn4(sender);
    end
end


function TaskLayer:_todayPrizeBoxBtn1(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.todayPrizeBoxBtn1 then
        return self.m_ClickDelegate:todayPrizeBoxBtn1(sender);
    end
    if self.todayPrizeBoxBtn1 then
        return self:todayPrizeBoxBtn1(sender);
    end
end


function TaskLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function TaskLayer:_todayPrizeBoxBtn3(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.todayPrizeBoxBtn3 then
        return self.m_ClickDelegate:todayPrizeBoxBtn3(sender);
    end
    if self.todayPrizeBoxBtn3 then
        return self:todayPrizeBoxBtn3(sender);
    end
end


function TaskLayer:_todayPrizeBoxBtn2(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.todayPrizeBoxBtn2 then
        return self.m_ClickDelegate:todayPrizeBoxBtn2(sender);
    end
    if self.todayPrizeBoxBtn2 then
        return self:todayPrizeBoxBtn2(sender);
    end
end


return TaskLayer;