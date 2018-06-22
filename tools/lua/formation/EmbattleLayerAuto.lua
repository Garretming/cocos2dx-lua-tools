-- 
-- Author: generation auto
-- Brief：EmbattleLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local EmbattleLayer = class('EmbattleLayer', gamecore.ui.BaseWidget);

function EmbattleLayer:create(...) 
    local instance = EmbattleLayer.new(...);
    return instance;
end

function EmbattleLayer:ctor(...) 
    if EmbattleLayer.super and EmbattleLayer.super.ctor then
        EmbattleLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function EmbattleLayer:initView()
    self.__LAYER_NAME = 'formation.EmbattleLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0015.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0069.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 40.000000, y = 40.000000,width = 40.000000, height = 40.000000);
	localParams[2]:setAnchorPoint(1.00, 0.00);
	localParams[2]:setContentSize({width = 265.0, height = WinSize.height - 53.00});
	localParams[2]:setPosition(WinSize.width - 0.00, 0.0);
	self.__children['work_m_bg'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'work_m_bg';
	self:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[3]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._complete_btn));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 183.0, height = 68.0});
	localParams[3]:setPosition(localParams[2]:getContentSize().width - 122.77, 48.54);
	self.__children['work_m_bg#complete_btn'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'work_m_bg#complete_btn';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0086.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 70.0, height = 30.0});
	localParams[4]:setPosition(93.0, 35.0);
	self.__children['work_m_bg#complete_btn#font'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'work_m_bg#complete_btn#font';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Node:create();
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setScaleX(0.90);
	localParams[5]:setScaleY(0.90);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(83.62, 36.53);
	self.__children['work_m_bg#complete_btn#__SELECTED_SCALE'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'work_m_bg#complete_btn#__SELECTED_SCALE';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[已上阵：]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 255, g = 140, b = 0});
	localParams[6]:setContentSize({width = 76.0, height = 22.0});
	localParams[6]:setPosition(113.58, 99.01);
	self.__children['work_m_bg#Text1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'work_m_bg#Text1';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[0/5]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setTextColor({r = 255, g = 140, b = 0});
	localParams[7]:setContentSize({width = 36.0, height = 22.0});
	localParams[7]:setPosition(156.17, 98.73);
	self.__children['work_m_bg#battle_num'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'work_m_bg#battle_num';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_other/other0090.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 15.000000, y = 11.000000, width = 204.000000, height = 42.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:onClick(handler(self, self._profession_back_btn));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 234.0, height = 64.0});
	localParams[8]:setPosition(localParams[2]:getContentSize().width - 127.00, localParams[2]:getContentSize().height/2 + (218.50 * ccx.scaleY));
	self.__children['work_m_bg#profession_back'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'work_m_bg#profession_back';
	localParams[2]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[灵]]);
	localParams[9]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setTextColor({r = 255, g = 240, b = 155});
	localParams[9]:setContentSize({width = 24.0, height = 22.0});
	localParams[9]:setPosition(134.01, 33.0);
	self.__children['work_m_bg#profession_back#formation_name'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'work_m_bg#profession_back#formation_name';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ScrollView:create();
	localParams[10]:setInnerContainerSize({width = 230.00, height = 355.00});
	localParams[10]:setDirection(1);
	localParams[10]:setBackGroundColorType(1);
	localParams[10]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[10]:setBackGroundColorOpacity(102);
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 230.0, height = WinSize.height - 285.00});
	localParams[10]:setPosition(25.79, 117.56);
	self.__children['work_m_bg#work_m_ScrollView'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'work_m_bg#work_m_ScrollView';
	localParams[2]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 226.0, height = 109.0});
	localParams[11]:setPosition(139.17, localParams[2]:getContentSize().height/2 + (110.24 * ccx.scaleY));
	self.__children['work_m_bg#s_bg1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'work_m_bg#s_bg1';
	localParams[2]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 226.0, height = 109.0});
	localParams[12]:setPosition(140.29, localParams[2]:getContentSize().height/2 + (-67.97 * ccx.scaleY));
	self.__children['work_m_bg#s_bg2'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'work_m_bg#s_bg2';
	localParams[2]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._skill_bg_btn2));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 224.0, height = 107.0});
	localParams[13]:setPosition(140.47, localParams[2]:getContentSize().height/2 + (-67.33 * ccx.scaleY));
	self.__children['work_m_bg#skill_bg2'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'work_m_bg#skill_bg2';
	localParams[2]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[]]);
	localParams[14]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[14]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setTextColor({r = 255, g = 165, b = 0});
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(151.42, 38.43);
	self.__children['work_m_bg#skill_bg2#skill_level2'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'work_m_bg#skill_bg2#skill_level2';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create(, 0);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 46.0, height = 46.0});
	localParams[15]:setPosition(51.57, 51.42);
	self.__children['work_m_bg#skill_bg2#skill_img2'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'work_m_bg#skill_bg2#skill_img2';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(1.08);
	localParams[16]:setContentSize({width = 38.0, height = 42.0});
	localParams[16]:setPosition(52.95, 106.44);
	self.__children['work_m_bg#skill_bg2#skill_gas2'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'work_m_bg#skill_bg2#skill_gas2';
	localParams[13]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(24);
	localParams[17]:setString([[]]);
	localParams[17]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[17]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 0.0, height = 0.0});
	localParams[17]:setPosition(17.05, 18.42);
	self.__children['work_m_bg#skill_bg2#skill_gas2#gas_txt2'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'work_m_bg#skill_bg2#skill_gas2#gas_txt2';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[]]);
	localParams[18]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setTextColor({r = 255, g = 240, b = 155});
	localParams[18]:setContentSize({width = 0.0, height = 0.0});
	localParams[18]:setPosition(158.32, 62.01);
	self.__children['work_m_bg#skill_bg2#skill_name2'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'work_m_bg#skill_bg2#skill_name2';
	localParams[13]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:onClick(handler(self, self._skill_bg_btn1));
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 224.0, height = 107.0});
	localParams[19]:setPosition(139.12, localParams[2]:getContentSize().height/2 + (112.47 * ccx.scaleY));
	self.__children['work_m_bg#skill_bg1'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'work_m_bg#skill_bg1';
	localParams[2]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[]]);
	localParams[20]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[20]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setTextColor({r = 255, g = 140, b = 0});
	localParams[20]:setContentSize({width = 0.0, height = 0.0});
	localParams[20]:setPosition(156.43, 38.0);
	self.__children['work_m_bg#skill_bg1#skill_level1'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'work_m_bg#skill_bg1#skill_level1';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create(, 0);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 46.0, height = 46.0});
	localParams[21]:setPosition(51.57, 52.42);
	self.__children['work_m_bg#skill_bg1#skill_img1'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'work_m_bg#skill_bg1#skill_img1';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 38.0, height = 42.0});
	localParams[22]:setPosition(53.95, 106.44);
	self.__children['work_m_bg#skill_bg1#skill_gas1'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'work_m_bg#skill_bg1#skill_gas1';
	localParams[19]:addChild(localParams[22]);

	localParams[23] = Text:create();
	localParams[23]:setFontSize(24);
	localParams[23]:setString([[]]);
	localParams[23]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[23]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 0.0, height = 0.0});
	localParams[23]:setPosition(17.05, 18.42);
	self.__children['work_m_bg#skill_bg1#skill_gas1#gas_txt1'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'work_m_bg#skill_bg1#skill_gas1#gas_txt1';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[]]);
	localParams[24]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setTextColor({r = 255, g = 240, b = 155});
	localParams[24]:setContentSize({width = 0.0, height = 0.0});
	localParams[24]:setPosition(158.86, 63.63);
	self.__children['work_m_bg#skill_bg1#skill_name1'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'work_m_bg#skill_bg1#skill_name1';
	localParams[19]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[25]:ignoreContentAdaptWithSize(false);
	localParams[25]:setScale9Enabled(true);
	localParams[25]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 800.0, height = 93.0});
	localParams[25]:setPosition(WinSize.width - 400.00, WinSize.height - 46.50);
	self.__children['bg2'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg2';
	self:addChild(localParams[25]);

	localParams[26] = Button:create();
	localParams[26]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[26]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[26]:setTitleFontSize(14);
	localParams[26]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[26]:setScale9Enabled(true);
	localParams[26]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:onClick(handler(self, self._help_btn));
	localParams[26]:setTouchEnabled(true);
	localParams[26]:setContentSize({width = 58.0, height = 68.0});
	localParams[26]:setPosition(WinSize.width - 37.02, WinSize.height - 49.83);
	self.__children['help_btn'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'help_btn';
	self:addChild(localParams[26]);

	localParams[27] = Node:create();
	localParams[27]:setAnchorPoint(0.00, 0.00);
	localParams[27]:setScaleX(1.20);
	localParams[27]:setScaleY(1.20);
	localParams[27]:setContentSize({width = 0.0, height = 0.0});
	localParams[27]:setPosition(52.93, -11.77);
	self.__children['help_btn#__SELECTED_SCALE'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'help_btn#__SELECTED_SCALE';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_bgframe/bgFrame0091.png', 1);
	localParams[28]:ignoreContentAdaptWithSize(false);
	localParams[28]:setScale9Enabled(true);
	localParams[28]:setCapInsets({x = 309.000000, y = 75.000000,width = 169.000000, height = 90.000000);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = WinSize.width - 294.00, height = WinSize.height - 110.00});
	localParams[28]:setPosition(WinSize.width/2 + (-121.04 * ccx.scaleX), WinSize.height/2 + (-46.02 * ccx.scaleY));
	self.__children['skill_bg'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'skill_bg';
	self:addChild(localParams[28]);

	localParams[29] = Button:create();
	localParams[29]:loadTextureNormal('uires/public/sheet_btn/btn0108.png', 1);
	localParams[29]:loadTexturePressed('uires/public/sheet_btn/btn0107.png', 1);
	localParams[29]:setTitleFontSize(14);
	localParams[29]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:onClick(handler(self, self._onTabMenu));
	localParams[29]:setTouchEnabled(true);
	localParams[29]:setContentSize({width = 138.0, height = 51.0});
	localParams[29]:setPosition(localParams[28]:getContentSize().width/2 + (-72.56 * ccx.scaleX), localParams[28]:getContentSize().height - 14.50);
	self.__children['skill_bg#m_bar_btn'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'skill_bg#m_bar_btn';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_font/fontImg0090.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 44.0, height = 24.0});
	localParams[30]:setPosition(69.0, 25.5);
	self.__children['skill_bg#m_bar_btn#m_title'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'skill_bg#m_bar_btn#m_title';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = Button:create();
	localParams[31]:loadTextureNormal('uires/public/sheet_btn/btn0108.png', 1);
	localParams[31]:loadTexturePressed('uires/public/sheet_btn/btn0107.png', 1);
	localParams[31]:setTitleFontSize(14);
	localParams[31]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:onClick(handler(self, self._onTabMenu));
	localParams[31]:setTouchEnabled(true);
	localParams[31]:setContentSize({width = 138.0, height = 51.0});
	localParams[31]:setPosition(localParams[28]:getContentSize().width/2 + (71.32 * ccx.scaleX), localParams[28]:getContentSize().height - 14.42);
	self.__children['skill_bg#skill_bar_btn'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'skill_bg#skill_bar_btn';
	localParams[28]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_font/fontImg0089.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 44.0, height = 24.0});
	localParams[32]:setPosition(69.0, 25.5);
	self.__children['skill_bg#skill_bar_btn#s_title'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'skill_bg#skill_bar_btn#s_title';
	localParams[31]:addChild(localParams[32]);

	node = PageView:create();
	localParams[33]:setBackGroundColorType(1);
	localParams[33]:setBackGroundColor({r = 150, g = 150, b = 100});
	localParams[33]:setBackGroundColorOpacity(102);
	localParams[33]:setAnchorPoint(0.00, 0.00);
	localParams[33]:onClick(handler(self, self._m_page_btn));
	localParams[33]:setTouchEnabled(true);
	localParams[33]:setContentSize({width = WinSize.width - 304.00, height = WinSize.height - 220.00});
	localParams[33]:setPosition(8.16, localParams[28]:getContentSize().height/2 + (-187.83 * ccx.scaleY));
	self.__children['skill_bg#m_PageView'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'skill_bg#m_PageView';
	localParams[28]:addChild(localParams[33]);

	localParams[34] = Layout:create();
	localParams[34]:setBackGroundColorType(1);
	localParams[34]:setBackGroundColor({r = 150, g = 200, b = 255});
	localParams[34]:setBackGroundColorOpacity(0);
	localParams[34]:setAnchorPoint(0.00, 0.00);
	localParams[34]:setTouchEnabled(true);
	localParams[34]:setContentSize({width = WinSize.width - 304.00, height = WinSize.height - 220.00});
	localParams[34]:setPosition(0.0, 0.0);
	self.__children['skill_bg#m_PageView#Panel1'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'skill_bg#m_PageView#Panel1';
	localParams[33]:addChild(localParams[34]);

	localParams[35] = ImageView:create(, 0);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 46.0, height = 46.0});
	localParams[35]:setPosition(localParams[34]:getContentSize().width/2 + (-255.02 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (95.76 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image1'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'skill_bg#m_PageView#Panel1#m_image1';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = ImageView:create(, 0);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 46.0, height = 46.0});
	localParams[36]:setPosition(localParams[34]:getContentSize().width/2 + (-85.03 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (96.64 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image2'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'skill_bg#m_PageView#Panel1#m_image2';
	localParams[34]:addChild(localParams[36]);

	localParams[37] = ImageView:create(, 0);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 46.0, height = 46.0});
	localParams[37]:setPosition(localParams[34]:getContentSize().width/2 + (85.03 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (96.52 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image3'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'skill_bg#m_PageView#Panel1#m_image3';
	localParams[34]:addChild(localParams[37]);

	localParams[38] = ImageView:create(, 0);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 46.0, height = 46.0});
	localParams[38]:setPosition(localParams[34]:getContentSize().width/2 + (245.02 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (96.81 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image4'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'skill_bg#m_PageView#Panel1#m_image4';
	localParams[34]:addChild(localParams[38]);

	localParams[39] = ImageView:create(, 0);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 46.0, height = 46.0});
	localParams[39]:setPosition(localParams[34]:getContentSize().width/2 + (-255.02 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (-107.98 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image5'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'skill_bg#m_PageView#Panel1#m_image5';
	localParams[34]:addChild(localParams[39]);

	localParams[40] = ImageView:create(, 0);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 46.0, height = 46.0});
	localParams[40]:setPosition(localParams[34]:getContentSize().width/2 + (-85.03 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (-107.98 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image6'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'skill_bg#m_PageView#Panel1#m_image6';
	localParams[34]:addChild(localParams[40]);

	localParams[41] = ImageView:create(, 0);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 46.0, height = 46.0});
	localParams[41]:setPosition(localParams[34]:getContentSize().width/2 + (85.03 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (-107.98 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image7'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'skill_bg#m_PageView#Panel1#m_image7';
	localParams[34]:addChild(localParams[41]);

	localParams[42] = ImageView:create(, 0);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setContentSize({width = 46.0, height = 46.0});
	localParams[42]:setPosition(localParams[34]:getContentSize().width/2 + (245.02 * ccx.scaleX), localParams[34]:getContentSize().height/2 + (-107.98 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#m_image8'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'skill_bg#m_PageView#Panel1#m_image8';
	localParams[34]:addChild(localParams[42]);

	localParams[43] = Button:create();
	localParams[43]:loadTextureNormal('uires/public/sheet_btn/btn0045.png', 1);
	localParams[43]:loadTexturePressed('uires/public/sheet_btn/btn0045.png', 1);
	localParams[43]:setTitleFontSize(14);
	localParams[43]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[43]:setScale9Enabled(true);
	localParams[43]:setCapInsets({x = 15.000000, y = 11.000000, width = 24.000000, height = 37.000000});
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setTouchEnabled(true);
	localParams[43]:setContentSize({width = 54.0, height = 59.0});
	localParams[43]:setPosition(localParams[34]:getContentSize().width - 11.81, localParams[34]:getContentSize().height/2 + (-19.99 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#right_btn'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'skill_bg#m_PageView#Panel1#right_btn';
	localParams[34]:addChild(localParams[43]);

	localParams[44] = Node:create();
	localParams[44]:setAnchorPoint(0.00, 0.00);
	localParams[44]:setScaleX(1.20);
	localParams[44]:setScaleY(1.20);
	localParams[44]:setContentSize({width = 0.0, height = 0.0});
	localParams[44]:setPosition(82.93, -41.77);
	self.__children['skill_bg#m_PageView#Panel1#right_btn#__SELECTED_SCALE'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'skill_bg#m_PageView#Panel1#right_btn#__SELECTED_SCALE';
	localParams[43]:addChild(localParams[44]);

	localParams[45] = Button:create();
	localParams[45]:loadTextureNormal('uires/public/sheet_btn/btn0044.png', 1);
	localParams[45]:loadTexturePressed('uires/public/sheet_btn/btn0044.png', 1);
	localParams[45]:setTitleFontSize(14);
	localParams[45]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[45]:setScale9Enabled(true);
	localParams[45]:setCapInsets({x = 15.000000, y = 11.000000, width = 24.000000, height = 37.000000});
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setTouchEnabled(true);
	localParams[45]:setContentSize({width = 54.0, height = 59.0});
	localParams[45]:setPosition(13.46, localParams[34]:getContentSize().height/2 + (-19.99 * ccx.scaleY));
	self.__children['skill_bg#m_PageView#Panel1#left_btn'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'skill_bg#m_PageView#Panel1#left_btn';
	localParams[34]:addChild(localParams[45]);

	localParams[46] = Node:create();
	localParams[46]:setAnchorPoint(0.00, 0.00);
	localParams[46]:setScaleX(1.20);
	localParams[46]:setScaleY(1.20);
	localParams[46]:setContentSize({width = 0.0, height = 0.0});
	localParams[46]:setPosition(-26.58, 26.02);
	self.__children['skill_bg#m_PageView#Panel1#left_btn#__SELECTED_SCALE'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'skill_bg#m_PageView#Panel1#left_btn#__SELECTED_SCALE';
	localParams[45]:addChild(localParams[46]);

	node = PageView:create();
	localParams[47]:setBackGroundColorType(1);
	localParams[47]:setBackGroundColor({r = 150, g = 150, b = 100});
	localParams[47]:setBackGroundColorOpacity(102);
	localParams[47]:setAnchorPoint(0.00, 0.00);
	localParams[47]:setTouchEnabled(true);
	localParams[47]:setContentSize({width = WinSize.width - 304.00, height = WinSize.height - 220.00});
	localParams[47]:setPosition(7.0, localParams[28]:getContentSize().height/2 + (-219.74 * ccx.scaleY));
	self.__children['skill_bg#s_PageView'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'skill_bg#s_PageView';
	localParams[28]:addChild(localParams[47]);

	localParams[48] = Layout:create();
	localParams[48]:setBackGroundColorType(1);
	localParams[48]:setBackGroundColor({r = 150, g = 200, b = 255});
	localParams[48]:setBackGroundColorOpacity(0);
	localParams[48]:setAnchorPoint(0.00, 0.00);
	localParams[48]:setVisible(false);
	localParams[48]:setTouchEnabled(true);
	localParams[48]:setContentSize({width = WinSize.width - 304.00, height = WinSize.height - 220.00});
	localParams[48]:setPosition(0.0, 0.0);
	self.__children['skill_bg#s_PageView#Panel2'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'skill_bg#s_PageView#Panel2';
	localParams[47]:addChild(localParams[48]);

	localParams[49] = ImageView:create(, 0);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setContentSize({width = 46.0, height = 46.0});
	localParams[49]:setPosition(localParams[48]:getContentSize().width/2 + (-215.06 * ccx.scaleX), localParams[48]:getContentSize().height/2 + (106.64 * ccx.scaleY));
	self.__children['skill_bg#s_PageView#Panel2#m_image1'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'skill_bg#s_PageView#Panel2#m_image1';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = ImageView:create(, 0);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setContentSize({width = 46.0, height = 46.0});
	localParams[50]:setPosition(localParams[48]:getContentSize().width/2 + (4.97 * ccx.scaleX), localParams[48]:getContentSize().height/2 + (106.51 * ccx.scaleY));
	self.__children['skill_bg#s_PageView#Panel2#m_image2'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'skill_bg#s_PageView#Panel2#m_image2';
	localParams[48]:addChild(localParams[50]);

	localParams[51] = ImageView:create(, 0);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 46.0, height = 46.0});
	localParams[51]:setPosition(localParams[48]:getContentSize().width/2 + (226.01 * ccx.scaleX), localParams[48]:getContentSize().height/2 + (106.39 * ccx.scaleY));
	self.__children['skill_bg#s_PageView#Panel2#m_image3'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'skill_bg#s_PageView#Panel2#m_image3';
	localParams[48]:addChild(localParams[51]);

	localParams[52] = ImageView:create(, 0);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setContentSize({width = 46.0, height = 46.0});
	localParams[52]:setPosition(localParams[48]:getContentSize().width/2 + (-215.78 * ccx.scaleX), 98.8);
	self.__children['skill_bg#s_PageView#Panel2#m_image4'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'skill_bg#s_PageView#Panel2#m_image4';
	localParams[48]:addChild(localParams[52]);

	localParams[53] = ImageView:create(, 0);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 46.0, height = 46.0});
	localParams[53]:setPosition(localParams[48]:getContentSize().width/2 + (4.82 * ccx.scaleX), 98.08);
	self.__children['skill_bg#s_PageView#Panel2#m_image5'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'skill_bg#s_PageView#Panel2#m_image5';
	localParams[48]:addChild(localParams[53]);

	localParams[54] = ImageView:create(, 0);
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setContentSize({width = 46.0, height = 46.0});
	localParams[54]:setPosition(localParams[48]:getContentSize().width/2 + (226.87 * ccx.scaleX), 98.65);
	self.__children['skill_bg#s_PageView#Panel2#m_image6'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'skill_bg#s_PageView#Panel2#m_image6';
	localParams[48]:addChild(localParams[54]);

	localParams[55] = RichText:create();
	localParams[55]:setDefaultFontSize(20);
	localParams[55]:setString([[第0/5页]]);
	localParams[55]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setTextColor({r = 255, g = 140, b = 0});
	localParams[55]:setContentSize({width = 73.0, height = 23.0});
	localParams[55]:setPosition(120.39, 38.83);
	self.__children['skill_bg#page_num'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'skill_bg#page_num';
	localParams[28]:addChild(localParams[55]);

	localParams[56] = ImageView:create('uires/public/sheet_other/other0174.png', 1);
	localParams[56]:ignoreContentAdaptWithSize(false);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setContentSize({width = 205.0, height = 241.0});
	localParams[56]:setPosition(localParams[28]:getContentSize().width/2 + (-0.00 * ccx.scaleX), localParams[28]:getContentSize().height/2 + (-0.00 * ccx.scaleY));
	self.__children['skill_bg#dialog_bg'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'skill_bg#dialog_bg';
	localParams[28]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setContentSize({width = 537.0, height = 164.0});
	localParams[57]:setPosition(268.5, WinSize.height - 82.00);
	self.__children['bg1'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'bg1';
	self:addChild(localParams[57]);

	localParams[58] = Button:create();
	localParams[58]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[58]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[58]:setTitleFontSize(14);
	localParams[58]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[58]:setScale9Enabled(true);
	localParams[58]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:onClick(handler(self, self._back_btn));
	localParams[58]:setTouchEnabled(true);
	localParams[58]:setContentSize({width = 116.0, height = 77.0});
	localParams[58]:setPosition(68.17, WinSize.height - 44.38);
	self.__children['back_btn'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'back_btn';
	self:addChild(localParams[58]);

	localParams[59] = ImageView:create('uires/public/sheet_font/fontImg0092.png', 1);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 126.0, height = 57.0});
	localParams[59]:setPosition(235.0, WinSize.height - 30.00);
	self.__children['bg4'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'bg4';
	self:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[60]:ignoreContentAdaptWithSize(false);
	localParams[60]:setScale9Enabled(true);
	localParams[60]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[60]:setAnchorPoint(0.00, 0.50);
	localParams[60]:setContentSize({width = 270.0, height = 360.0});
	localParams[60]:setPosition(1027.36, 360.49);
	self.__children['m_message_bg'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'm_message_bg';
	self:addChild(localParams[60]);

	localParams[61] = Node:create();
	localParams[61]:setAnchorPoint(0.00, 0.00);
	localParams[61]:setContentSize({width = 0.0, height = 0.0});
	localParams[61]:setPosition(0.0, 360.0);
	self.__children['m_message_bg#node'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'm_message_bg#node';
	localParams[60]:addChild(localParams[61]);

	localParams[62] = Text:create();
	localParams[62]:setFontSize(24);
	localParams[62]:setString([[重甲奇兵]]);
	localParams[62]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[62]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setTextColor({r = 255, g = 240, b = 155});
	localParams[62]:setContentSize({width = 100.0, height = 26.0});
	localParams[62]:setPosition(137.4, -28.0);
	self.__children['m_message_bg#node#m_name'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'm_message_bg#node#m_name';
	localParams[61]:addChild(localParams[62]);

	localParams[63] = Text:create();
	localParams[63]:setFontSize(20);
	localParams[63]:setString([[攻  击:]]);
	localParams[63]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[63]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[63]:setAnchorPoint(0.00, 0.50);
	localParams[63]:setContentSize({width = 58.0, height = 25.0});
	localParams[63]:setPosition(13.23, -60.31);
	self.__children['m_message_bg#node#property_txt1'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'm_message_bg#node#property_txt1';
	localParams[61]:addChild(localParams[63]);

	localParams[64] = RichText:create();
	localParams[64]:setDefaultFontSize(20);
	localParams[64]:setString([[d]]);
	localParams[64]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[64]:setTextAreaSize({width = 240, height = 0});
	localParams[64]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[64]:setAnchorPoint(0.00, 1.00);
	localParams[64]:setContentSize({width = 240.0, height = 0.0});
	localParams[64]:setPosition(15.0, -110.0);
	self.__children['m_message_bg#node#m_skill_explain1'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'm_message_bg#node#m_skill_explain1';
	localParams[61]:addChild(localParams[64]);

	localParams[65] = Text:create();
	localParams[65]:setFontSize(20);
	localParams[65]:setString([[血  量:]]);
	localParams[65]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[65]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[65]:setAnchorPoint(0.00, 0.50);
	localParams[65]:setContentSize({width = 58.0, height = 25.0});
	localParams[65]:setPosition(13.23, -87.5);
	self.__children['m_message_bg#node#property_txt3'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'm_message_bg#node#property_txt3';
	localParams[61]:addChild(localParams[65]);

	localParams[66] = Text:create();
	localParams[66]:setFontSize(20);
	localParams[66]:setString([[护  甲:]]);
	localParams[66]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[66]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[66]:setAnchorPoint(0.00, 0.50);
	localParams[66]:setContentSize({width = 58.0, height = 25.0});
	localParams[66]:setPosition(135.97, -60.31);
	self.__children['m_message_bg#node#property_txt2'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'm_message_bg#node#property_txt2';
	localParams[61]:addChild(localParams[66]);

	localParams[67] = Text:create();
	localParams[67]:setFontSize(20);
	localParams[67]:setString([[速  度:]]);
	localParams[67]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[67]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[67]:setAnchorPoint(0.00, 0.50);
	localParams[67]:setContentSize({width = 58.0, height = 25.0});
	localParams[67]:setPosition(135.97, -87.5);
	self.__children['m_message_bg#node#property_txt4'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'm_message_bg#node#property_txt4';
	localParams[61]:addChild(localParams[67]);

	localParams[68] = Text:create();
	localParams[68]:setFontSize(20);
	localParams[68]:setString([[99999]]);
	localParams[68]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[68]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[68]:setAnchorPoint(0.00, 0.50);
	localParams[68]:setTextColor({r = 80, g = 255, b = 0});
	localParams[68]:setContentSize({width = 58.0, height = 25.0});
	localParams[68]:setPosition(74.23, -60.95);
	self.__children['m_message_bg#node#property1'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'm_message_bg#node#property1';
	localParams[61]:addChild(localParams[68]);

	localParams[69] = Text:create();
	localParams[69]:setFontSize(20);
	localParams[69]:setString([[99999]]);
	localParams[69]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[69]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[69]:setAnchorPoint(0.00, 0.39);
	localParams[69]:setTextColor({r = 80, g = 255, b = 0});
	localParams[69]:setContentSize({width = 58.0, height = 25.0});
	localParams[69]:setPosition(198.0, -63.97);
	self.__children['m_message_bg#node#property2'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'm_message_bg#node#property2';
	localParams[61]:addChild(localParams[69]);

	localParams[70] = Text:create();
	localParams[70]:setFontSize(20);
	localParams[70]:setString([[99999]]);
	localParams[70]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[70]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[70]:setAnchorPoint(0.00, 0.50);
	localParams[70]:setTextColor({r = 80, g = 255, b = 0});
	localParams[70]:setContentSize({width = 58.0, height = 25.0});
	localParams[70]:setPosition(74.23, -89.5);
	self.__children['m_message_bg#node#property3'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'm_message_bg#node#property3';
	localParams[61]:addChild(localParams[70]);

	localParams[71] = Text:create();
	localParams[71]:setFontSize(20);
	localParams[71]:setString([[99999]]);
	localParams[71]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[71]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[71]:setAnchorPoint(0.00, 0.50);
	localParams[71]:setTextColor({r = 80, g = 255, b = 0});
	localParams[71]:setContentSize({width = 58.0, height = 25.0});
	localParams[71]:setPosition(198.0, -89.5);
	self.__children['m_message_bg#node#property4'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'm_message_bg#node#property4';
	localParams[61]:addChild(localParams[71]);

	localParams[72] = RichText:create();
	localParams[72]:setDefaultFontSize(20);
	localParams[72]:setString([[]]);
	localParams[72]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[72]:setTextAreaSize({width = 240, height = 0});
	localParams[72]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[72]:setAnchorPoint(0.00, 1.00);
	localParams[72]:setContentSize({width = 240.0, height = 0.0});
	localParams[72]:setPosition(15.0, -227.94);
	self.__children['m_message_bg#node#m_skill_explain2'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'm_message_bg#node#m_skill_explain2';
	localParams[61]:addChild(localParams[72]);

	localParams[73] = RichText:create();
	localParams[73]:setDefaultFontSize(20);
	localParams[73]:setString([[]]);
	localParams[73]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[73]:setTextAreaSize({width = 240, height = 0});
	localParams[73]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[73]:setAnchorPoint(0.00, 1.00);
	localParams[73]:setContentSize({width = 240.0, height = 0.0});
	localParams[73]:setPosition(15.0, -338.34);
	self.__children['m_message_bg#node#m_skill_explain3'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'm_message_bg#node#m_skill_explain3';
	localParams[61]:addChild(localParams[73]);

	localParams[74] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[74]:ignoreContentAdaptWithSize(false);
	localParams[74]:setScale9Enabled(true);
	localParams[74]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[74]:setAnchorPoint(0.00, 0.50);
	localParams[74]:setContentSize({width = 270.0, height = 230.0});
	localParams[74]:setPosition(1044.08, 204.9);
	self.__children['s_message_bg'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 's_message_bg';
	self:addChild(localParams[74]);

	localParams[75] = Node:create();
	localParams[75]:setAnchorPoint(0.00, 0.00);
	localParams[75]:setContentSize({width = 0.0, height = 0.0});
	localParams[75]:setPosition(0.0, 230.0);
	self.__children['s_message_bg#Node_1'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 's_message_bg#Node_1';
	localParams[74]:addChild(localParams[75]);

	localParams[76] = Text:create();
	localParams[76]:setFontSize(24);
	localParams[76]:setString([[风华之身]]);
	localParams[76]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[76]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[76]:setAnchorPoint(0.50, 0.50);
	localParams[76]:setTextColor({r = 250, g = 240, b = 155});
	localParams[76]:setContentSize({width = 100.0, height = 26.0});
	localParams[76]:setPosition(140.0, localParams[75]:getContentSize().height - 43.00);
	self.__children['s_message_bg#Node_1#s_name'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 's_message_bg#Node_1#s_name';
	localParams[75]:addChild(localParams[76]);

	localParams[77] = Text:create();
	localParams[77]:setFontSize(20);
	localParams[77]:setString([[技能说明:小体型 近距离小体型 近距离小体型 近距离小体型 近距离]]);
	localParams[77]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[77]:setTextAreaSize({width = 235, height = 0});
	localParams[77]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[77]:setAnchorPoint(0.50, 1.00);
	localParams[77]:setContentSize({width = 235.0, height = 0.0});
	localParams[77]:setPosition(135.0, localParams[75]:getContentSize().height - 110.00);
	self.__children['s_message_bg#Node_1#s_skill_explain'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 's_message_bg#Node_1#s_skill_explain';
	localParams[75]:addChild(localParams[77]);

	localParams[78] = Text:create();
	localParams[78]:setFontSize(20);
	localParams[78]:setString([[技能说明：]]);
	localParams[78]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[78]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[78]:setAnchorPoint(0.50, 0.50);
	localParams[78]:setContentSize({width = 91.0, height = 25.0});
	localParams[78]:setPosition(63.08, localParams[75]:getContentSize().height - 82.50);
	self.__children['s_message_bg#Node_1#Text_1'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 's_message_bg#Node_1#Text_1';
	localParams[75]:addChild(localParams[78]);

	localParams[79] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[79]:ignoreContentAdaptWithSize(false);
	localParams[79]:setScale9Enabled(true);
	localParams[79]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000);
	localParams[79]:setAnchorPoint(0.50, 0.50);
	localParams[79]:setContentSize({width = 460.0, height = 60.0});
	localParams[79]:setPosition(WinSize.width/2 + (-56.83 * ccx.scaleX), WinSize.height/2 + (-262.08 * ccx.scaleY));
	self.__children['Image_1'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'Image_1';
	self:addChild(localParams[79]);

	localParams[80] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[80]:ignoreContentAdaptWithSize(false);
	localParams[80]:setScale9Enabled(true);
	localParams[80]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[80]:setAnchorPoint(0.50, 0.50);
	localParams[80]:setContentSize({width = 99.0, height = 171.0});
	localParams[80]:setPosition(407.1, 133.2);
	self.__children['Image_1#positionBg_img'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'Image_1#positionBg_img';
	localParams[79]:addChild(localParams[80]);

	localParams[81] = Button:create();
	localParams[81]:setTitleFontSize(14);
	localParams[81]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[81]:setScale9Enabled(true);
	localParams[81]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[81]:setAnchorPoint(0.50, 0.50);
	localParams[81]:onClick(handler(self, self._onPositionSort));
	localParams[81]:setTouchEnabled(true);
	localParams[81]:setContentSize({width = 90.0, height = 37.0});
	localParams[81]:setPosition(48.5, 149.63);
	self.__children['Image_1#positionBg_img#Button_1'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'Image_1#positionBg_img#Button_1';
	localParams[80]:addChild(localParams[81]);

	localParams[82] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[82]:setAnchorPoint(0.50, 0.50);
	localParams[82]:setScaleX(0.40);
	localParams[82]:setScaleY(0.90);
	localParams[82]:setContentSize({width = 198.0, height = 37.0});
	localParams[82]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_1#__SELECTED_IMG'] = localParams[82];
	localParams[82].__children = self.__children;
	localParams[82].__Name = 'Image_1#positionBg_img#Button_1#__SELECTED_IMG';
	localParams[81]:addChild(localParams[82]);

	localParams[83] = Text:create();
	localParams[83]:setFontSize(18);
	localParams[83]:setString([[全部]]);
	localParams[83]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[83]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[83]:setAnchorPoint(0.50, 0.50);
	localParams[83]:setContentSize({width = 40.0, height = 20.0});
	localParams[83]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_1#condition_txt'] = localParams[83];
	localParams[83].__children = self.__children;
	localParams[83].__Name = 'Image_1#positionBg_img#Button_1#condition_txt';
	localParams[81]:addChild(localParams[83]);

	localParams[84] = Button:create();
	localParams[84]:setTitleFontSize(14);
	localParams[84]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[84]:setScale9Enabled(true);
	localParams[84]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[84]:setAnchorPoint(0.50, 0.50);
	localParams[84]:onClick(handler(self, self._onPositionSort));
	localParams[84]:setTouchEnabled(true);
	localParams[84]:setContentSize({width = 90.0, height = 37.0});
	localParams[84]:setPosition(49.5, 106.88);
	self.__children['Image_1#positionBg_img#Button_2'] = localParams[84];
	localParams[84].__children = self.__children;
	localParams[84].__Name = 'Image_1#positionBg_img#Button_2';
	localParams[80]:addChild(localParams[84]);

	localParams[85] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[85]:setAnchorPoint(0.50, 0.50);
	localParams[85]:setScaleX(0.40);
	localParams[85]:setScaleY(0.90);
	localParams[85]:setContentSize({width = 198.0, height = 37.0});
	localParams[85]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_2#__SELECTED_IMG'] = localParams[85];
	localParams[85].__children = self.__children;
	localParams[85].__Name = 'Image_1#positionBg_img#Button_2#__SELECTED_IMG';
	localParams[84]:addChild(localParams[85]);

	localParams[86] = Text:create();
	localParams[86]:setFontSize(18);
	localParams[86]:setString([[坦克]]);
	localParams[86]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[86]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[86]:setAnchorPoint(0.50, 0.50);
	localParams[86]:setContentSize({width = 40.0, height = 20.0});
	localParams[86]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_2#condition_txt'] = localParams[86];
	localParams[86].__children = self.__children;
	localParams[86].__Name = 'Image_1#positionBg_img#Button_2#condition_txt';
	localParams[84]:addChild(localParams[86]);

	localParams[87] = Button:create();
	localParams[87]:setTitleFontSize(14);
	localParams[87]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[87]:setScale9Enabled(true);
	localParams[87]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[87]:setAnchorPoint(0.50, 0.50);
	localParams[87]:onClick(handler(self, self._onPositionSort));
	localParams[87]:setTouchEnabled(true);
	localParams[87]:setContentSize({width = 90.0, height = 37.0});
	localParams[87]:setPosition(49.5, 64.13);
	self.__children['Image_1#positionBg_img#Button_3'] = localParams[87];
	localParams[87].__children = self.__children;
	localParams[87].__Name = 'Image_1#positionBg_img#Button_3';
	localParams[80]:addChild(localParams[87]);

	localParams[88] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[88]:setAnchorPoint(0.50, 0.50);
	localParams[88]:setScaleX(0.40);
	localParams[88]:setScaleY(0.90);
	localParams[88]:setContentSize({width = 198.0, height = 37.0});
	localParams[88]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_3#__SELECTED_IMG'] = localParams[88];
	localParams[88].__children = self.__children;
	localParams[88].__Name = 'Image_1#positionBg_img#Button_3#__SELECTED_IMG';
	localParams[87]:addChild(localParams[88]);

	localParams[89] = Text:create();
	localParams[89]:setFontSize(18);
	localParams[89]:setString([[输出]]);
	localParams[89]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[89]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[89]:setAnchorPoint(0.50, 0.50);
	localParams[89]:setContentSize({width = 39.0, height = 20.0});
	localParams[89]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_3#condition_txt'] = localParams[89];
	localParams[89].__children = self.__children;
	localParams[89].__Name = 'Image_1#positionBg_img#Button_3#condition_txt';
	localParams[87]:addChild(localParams[89]);

	localParams[90] = Button:create();
	localParams[90]:setTitleFontSize(14);
	localParams[90]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[90]:setScale9Enabled(true);
	localParams[90]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[90]:setAnchorPoint(0.50, 0.50);
	localParams[90]:onClick(handler(self, self._onPositionSort));
	localParams[90]:setTouchEnabled(true);
	localParams[90]:setContentSize({width = 90.0, height = 37.0});
	localParams[90]:setPosition(49.5, 21.38);
	self.__children['Image_1#positionBg_img#Button_4'] = localParams[90];
	localParams[90].__children = self.__children;
	localParams[90].__Name = 'Image_1#positionBg_img#Button_4';
	localParams[80]:addChild(localParams[90]);

	localParams[91] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[91]:setAnchorPoint(0.50, 0.50);
	localParams[91]:setScaleX(0.40);
	localParams[91]:setScaleY(0.90);
	localParams[91]:setContentSize({width = 198.0, height = 37.0});
	localParams[91]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_4#__SELECTED_IMG'] = localParams[91];
	localParams[91].__children = self.__children;
	localParams[91].__Name = 'Image_1#positionBg_img#Button_4#__SELECTED_IMG';
	localParams[90]:addChild(localParams[91]);

	localParams[92] = Text:create();
	localParams[92]:setFontSize(18);
	localParams[92]:setString([[突袭]]);
	localParams[92]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[92]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[92]:setAnchorPoint(0.50, 0.50);
	localParams[92]:setContentSize({width = 40.0, height = 20.0});
	localParams[92]:setPosition(45.0, 18.5);
	self.__children['Image_1#positionBg_img#Button_4#condition_txt'] = localParams[92];
	localParams[92].__children = self.__children;
	localParams[92].__Name = 'Image_1#positionBg_img#Button_4#condition_txt';
	localParams[90]:addChild(localParams[92]);

	localParams[93] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[93]:setAnchorPoint(0.50, 0.50);
	localParams[93]:setContentSize({width = 83.0, height = 2.0});
	localParams[93]:setPosition(49.5, 42.75);
	self.__children['Image_1#positionBg_img#line_sprite1'] = localParams[93];
	localParams[93].__children = self.__children;
	localParams[93].__Name = 'Image_1#positionBg_img#line_sprite1';
	localParams[80]:addChild(localParams[93]);

	localParams[94] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[94]:setAnchorPoint(0.50, 0.50);
	localParams[94]:setContentSize({width = 83.0, height = 2.0});
	localParams[94]:setPosition(49.5, 85.5);
	self.__children['Image_1#positionBg_img#line_sprite2'] = localParams[94];
	localParams[94].__children = self.__children;
	localParams[94].__Name = 'Image_1#positionBg_img#line_sprite2';
	localParams[80]:addChild(localParams[94]);

	localParams[95] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[95]:setAnchorPoint(0.50, 0.50);
	localParams[95]:setContentSize({width = 83.0, height = 2.0});
	localParams[95]:setPosition(49.5, 128.25);
	self.__children['Image_1#positionBg_img#line_sprite3'] = localParams[95];
	localParams[95].__children = self.__children;
	localParams[95].__Name = 'Image_1#positionBg_img#line_sprite3';
	localParams[80]:addChild(localParams[95]);

	localParams[96] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[96]:ignoreContentAdaptWithSize(false);
	localParams[96]:setScale9Enabled(true);
	localParams[96]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[96]:setAnchorPoint(0.50, 0.50);
	localParams[96]:setContentSize({width = 99.0, height = 216.0});
	localParams[96]:setPosition(407.1, 157.2);
	self.__children['Image_1#qualityBg_img'] = localParams[96];
	localParams[96].__children = self.__children;
	localParams[96].__Name = 'Image_1#qualityBg_img';
	localParams[79]:addChild(localParams[96]);

	localParams[97] = Button:create();
	localParams[97]:setTitleFontSize(14);
	localParams[97]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[97]:setScale9Enabled(true);
	localParams[97]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[97]:setAnchorPoint(0.50, 0.50);
	localParams[97]:onClick(handler(self, self._onQualitySort));
	localParams[97]:setTouchEnabled(true);
	localParams[97]:setContentSize({width = 90.0, height = 37.0});
	localParams[97]:setPosition(49.5, 194.4);
	self.__children['Image_1#qualityBg_img#Button_1'] = localParams[97];
	localParams[97].__children = self.__children;
	localParams[97].__Name = 'Image_1#qualityBg_img#Button_1';
	localParams[96]:addChild(localParams[97]);

	localParams[98] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[98]:setAnchorPoint(0.50, 0.50);
	localParams[98]:setScaleX(0.40);
	localParams[98]:setScaleY(0.90);
	localParams[98]:setContentSize({width = 198.0, height = 37.0});
	localParams[98]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_1#__SELECTED_IMG'] = localParams[98];
	localParams[98].__children = self.__children;
	localParams[98].__Name = 'Image_1#qualityBg_img#Button_1#__SELECTED_IMG';
	localParams[97]:addChild(localParams[98]);

	localParams[99] = Text:create();
	localParams[99]:setFontSize(18);
	localParams[99]:setString([[全部]]);
	localParams[99]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[99]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[99]:setAnchorPoint(0.50, 0.50);
	localParams[99]:setContentSize({width = 40.0, height = 20.0});
	localParams[99]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_1#condition_txt'] = localParams[99];
	localParams[99].__children = self.__children;
	localParams[99].__Name = 'Image_1#qualityBg_img#Button_1#condition_txt';
	localParams[97]:addChild(localParams[99]);

	localParams[100] = Button:create();
	localParams[100]:setTitleFontSize(14);
	localParams[100]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[100]:setScale9Enabled(true);
	localParams[100]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[100]:setAnchorPoint(0.50, 0.50);
	localParams[100]:onClick(handler(self, self._onQualitySort));
	localParams[100]:setTouchEnabled(true);
	localParams[100]:setContentSize({width = 90.0, height = 37.0});
	localParams[100]:setPosition(49.5, 151.2);
	self.__children['Image_1#qualityBg_img#Button_2'] = localParams[100];
	localParams[100].__children = self.__children;
	localParams[100].__Name = 'Image_1#qualityBg_img#Button_2';
	localParams[96]:addChild(localParams[100]);

	localParams[101] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[101]:setAnchorPoint(0.50, 0.50);
	localParams[101]:setScaleX(0.40);
	localParams[101]:setScaleY(0.90);
	localParams[101]:setContentSize({width = 198.0, height = 37.0});
	localParams[101]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_2#__SELECTED_IMG'] = localParams[101];
	localParams[101].__children = self.__children;
	localParams[101].__Name = 'Image_1#qualityBg_img#Button_2#__SELECTED_IMG';
	localParams[100]:addChild(localParams[101]);

	localParams[102] = Text:create();
	localParams[102]:setFontSize(18);
	localParams[102]:setString([[传说]]);
	localParams[102]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[102]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[102]:setAnchorPoint(0.50, 0.50);
	localParams[102]:setContentSize({width = 40.0, height = 20.0});
	localParams[102]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_2#condition_txt'] = localParams[102];
	localParams[102].__children = self.__children;
	localParams[102].__Name = 'Image_1#qualityBg_img#Button_2#condition_txt';
	localParams[100]:addChild(localParams[102]);

	localParams[103] = Button:create();
	localParams[103]:setTitleFontSize(14);
	localParams[103]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[103]:setScale9Enabled(true);
	localParams[103]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[103]:setAnchorPoint(0.50, 0.50);
	localParams[103]:onClick(handler(self, self._onQualitySort));
	localParams[103]:setTouchEnabled(true);
	localParams[103]:setContentSize({width = 90.0, height = 37.0});
	localParams[103]:setPosition(49.5, 108.0);
	self.__children['Image_1#qualityBg_img#Button_3'] = localParams[103];
	localParams[103].__children = self.__children;
	localParams[103].__Name = 'Image_1#qualityBg_img#Button_3';
	localParams[96]:addChild(localParams[103]);

	localParams[104] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[104]:setAnchorPoint(0.50, 0.50);
	localParams[104]:setScaleX(0.40);
	localParams[104]:setScaleY(0.90);
	localParams[104]:setContentSize({width = 198.0, height = 37.0});
	localParams[104]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_3#__SELECTED_IMG'] = localParams[104];
	localParams[104].__children = self.__children;
	localParams[104].__Name = 'Image_1#qualityBg_img#Button_3#__SELECTED_IMG';
	localParams[103]:addChild(localParams[104]);

	localParams[105] = Text:create();
	localParams[105]:setFontSize(18);
	localParams[105]:setString([[史诗]]);
	localParams[105]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[105]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[105]:setAnchorPoint(0.50, 0.50);
	localParams[105]:setContentSize({width = 40.0, height = 20.0});
	localParams[105]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_3#condition_txt'] = localParams[105];
	localParams[105].__children = self.__children;
	localParams[105].__Name = 'Image_1#qualityBg_img#Button_3#condition_txt';
	localParams[103]:addChild(localParams[105]);

	localParams[106] = Button:create();
	localParams[106]:setTitleFontSize(14);
	localParams[106]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[106]:setScale9Enabled(true);
	localParams[106]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[106]:setAnchorPoint(0.50, 0.50);
	localParams[106]:onClick(handler(self, self._onQualitySort));
	localParams[106]:setTouchEnabled(true);
	localParams[106]:setContentSize({width = 90.0, height = 37.0});
	localParams[106]:setPosition(49.5, 64.8);
	self.__children['Image_1#qualityBg_img#Button_4'] = localParams[106];
	localParams[106].__children = self.__children;
	localParams[106].__Name = 'Image_1#qualityBg_img#Button_4';
	localParams[96]:addChild(localParams[106]);

	localParams[107] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[107]:setAnchorPoint(0.50, 0.50);
	localParams[107]:setScaleX(0.40);
	localParams[107]:setScaleY(0.90);
	localParams[107]:setContentSize({width = 198.0, height = 37.0});
	localParams[107]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_4#__SELECTED_IMG'] = localParams[107];
	localParams[107].__children = self.__children;
	localParams[107].__Name = 'Image_1#qualityBg_img#Button_4#__SELECTED_IMG';
	localParams[106]:addChild(localParams[107]);

	localParams[108] = Text:create();
	localParams[108]:setFontSize(18);
	localParams[108]:setString([[稀有]]);
	localParams[108]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[108]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[108]:setAnchorPoint(0.50, 0.50);
	localParams[108]:setContentSize({width = 40.0, height = 20.0});
	localParams[108]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_4#condition_txt'] = localParams[108];
	localParams[108].__children = self.__children;
	localParams[108].__Name = 'Image_1#qualityBg_img#Button_4#condition_txt';
	localParams[106]:addChild(localParams[108]);

	localParams[109] = Button:create();
	localParams[109]:setTitleFontSize(14);
	localParams[109]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[109]:setScale9Enabled(true);
	localParams[109]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[109]:setAnchorPoint(0.50, 0.50);
	localParams[109]:onClick(handler(self, self._onQualitySort));
	localParams[109]:setTouchEnabled(true);
	localParams[109]:setContentSize({width = 90.0, height = 37.0});
	localParams[109]:setPosition(49.5, 21.6);
	self.__children['Image_1#qualityBg_img#Button_5'] = localParams[109];
	localParams[109].__children = self.__children;
	localParams[109].__Name = 'Image_1#qualityBg_img#Button_5';
	localParams[96]:addChild(localParams[109]);

	localParams[110] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[110]:setAnchorPoint(0.50, 0.50);
	localParams[110]:setScaleX(0.40);
	localParams[110]:setScaleY(0.90);
	localParams[110]:setContentSize({width = 198.0, height = 37.0});
	localParams[110]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_5#__SELECTED_IMG'] = localParams[110];
	localParams[110].__children = self.__children;
	localParams[110].__Name = 'Image_1#qualityBg_img#Button_5#__SELECTED_IMG';
	localParams[109]:addChild(localParams[110]);

	localParams[111] = Text:create();
	localParams[111]:setFontSize(18);
	localParams[111]:setString([[普通]]);
	localParams[111]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[111]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[111]:setAnchorPoint(0.50, 0.50);
	localParams[111]:setContentSize({width = 40.0, height = 20.0});
	localParams[111]:setPosition(45.0, 18.5);
	self.__children['Image_1#qualityBg_img#Button_5#condition_txt'] = localParams[111];
	localParams[111].__children = self.__children;
	localParams[111].__Name = 'Image_1#qualityBg_img#Button_5#condition_txt';
	localParams[109]:addChild(localParams[111]);

	localParams[112] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[112]:setAnchorPoint(0.50, 0.50);
	localParams[112]:setContentSize({width = 83.0, height = 2.0});
	localParams[112]:setPosition(49.5, 43.2);
	self.__children['Image_1#qualityBg_img#line_sprite1'] = localParams[112];
	localParams[112].__children = self.__children;
	localParams[112].__Name = 'Image_1#qualityBg_img#line_sprite1';
	localParams[96]:addChild(localParams[112]);

	localParams[113] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[113]:setAnchorPoint(0.50, 0.50);
	localParams[113]:setContentSize({width = 83.0, height = 2.0});
	localParams[113]:setPosition(49.5, 86.4);
	self.__children['Image_1#qualityBg_img#line_sprite2'] = localParams[113];
	localParams[113].__children = self.__children;
	localParams[113].__Name = 'Image_1#qualityBg_img#line_sprite2';
	localParams[96]:addChild(localParams[113]);

	localParams[114] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[114]:setAnchorPoint(0.50, 0.50);
	localParams[114]:setContentSize({width = 83.0, height = 2.0});
	localParams[114]:setPosition(49.5, 129.6);
	self.__children['Image_1#qualityBg_img#line_sprite3'] = localParams[114];
	localParams[114].__children = self.__children;
	localParams[114].__Name = 'Image_1#qualityBg_img#line_sprite3';
	localParams[96]:addChild(localParams[114]);

	localParams[115] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[115]:setAnchorPoint(0.50, 0.50);
	localParams[115]:setContentSize({width = 83.0, height = 2.0});
	localParams[115]:setPosition(49.5, 172.8);
	self.__children['Image_1#qualityBg_img#line_sprite4'] = localParams[115];
	localParams[115].__children = self.__children;
	localParams[115].__Name = 'Image_1#qualityBg_img#line_sprite4';
	localParams[96]:addChild(localParams[115]);

	localParams[116] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[116]:ignoreContentAdaptWithSize(false);
	localParams[116]:setScale9Enabled(true);
	localParams[116]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[116]:setAnchorPoint(0.50, 0.50);
	localParams[116]:setContentSize({width = 99.0, height = 261.0});
	localParams[116]:setPosition(407.1, 179.2);
	self.__children['Image_1#starBg_img'] = localParams[116];
	localParams[116].__children = self.__children;
	localParams[116].__Name = 'Image_1#starBg_img';
	localParams[79]:addChild(localParams[116]);

	localParams[117] = Button:create();
	localParams[117]:setTitleFontSize(14);
	localParams[117]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[117]:setScale9Enabled(true);
	localParams[117]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[117]:setAnchorPoint(0.50, 0.50);
	localParams[117]:onClick(handler(self, self._onStarSort));
	localParams[117]:setTouchEnabled(true);
	localParams[117]:setContentSize({width = 90.0, height = 37.0});
	localParams[117]:setPosition(49.5, 238.81);
	self.__children['Image_1#starBg_img#Button_1'] = localParams[117];
	localParams[117].__children = self.__children;
	localParams[117].__Name = 'Image_1#starBg_img#Button_1';
	localParams[116]:addChild(localParams[117]);

	localParams[118] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[118]:setAnchorPoint(0.50, 0.50);
	localParams[118]:setScaleX(0.40);
	localParams[118]:setScaleY(0.90);
	localParams[118]:setContentSize({width = 198.0, height = 37.0});
	localParams[118]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_1#__SELECTED_IMG'] = localParams[118];
	localParams[118].__children = self.__children;
	localParams[118].__Name = 'Image_1#starBg_img#Button_1#__SELECTED_IMG';
	localParams[117]:addChild(localParams[118]);

	localParams[119] = Text:create();
	localParams[119]:setFontSize(18);
	localParams[119]:setString([[全部]]);
	localParams[119]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[119]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[119]:setAnchorPoint(0.50, 0.50);
	localParams[119]:setContentSize({width = 40.0, height = 20.0});
	localParams[119]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_1#condition_txt'] = localParams[119];
	localParams[119].__children = self.__children;
	localParams[119].__Name = 'Image_1#starBg_img#Button_1#condition_txt';
	localParams[117]:addChild(localParams[119]);

	localParams[120] = Button:create();
	localParams[120]:setTitleFontSize(14);
	localParams[120]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[120]:setScale9Enabled(true);
	localParams[120]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[120]:setAnchorPoint(0.50, 0.50);
	localParams[120]:onClick(handler(self, self._onStarSort));
	localParams[120]:setTouchEnabled(true);
	localParams[120]:setContentSize({width = 90.0, height = 37.0});
	localParams[120]:setPosition(49.5, 195.75);
	self.__children['Image_1#starBg_img#Button_2'] = localParams[120];
	localParams[120].__children = self.__children;
	localParams[120].__Name = 'Image_1#starBg_img#Button_2';
	localParams[116]:addChild(localParams[120]);

	localParams[121] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[121]:setAnchorPoint(0.50, 0.50);
	localParams[121]:setScaleX(0.40);
	localParams[121]:setScaleY(0.90);
	localParams[121]:setContentSize({width = 198.0, height = 37.0});
	localParams[121]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_2#__SELECTED_IMG'] = localParams[121];
	localParams[121].__children = self.__children;
	localParams[121].__Name = 'Image_1#starBg_img#Button_2#__SELECTED_IMG';
	localParams[120]:addChild(localParams[121]);

	localParams[122] = Text:create();
	localParams[122]:setFontSize(18);
	localParams[122]:setString([[9~10星]]);
	localParams[122]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[122]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[122]:setAnchorPoint(0.50, 0.50);
	localParams[122]:setContentSize({width = 58.0, height = 20.0});
	localParams[122]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_2#condition_txt'] = localParams[122];
	localParams[122].__children = self.__children;
	localParams[122].__Name = 'Image_1#starBg_img#Button_2#condition_txt';
	localParams[120]:addChild(localParams[122]);

	localParams[123] = Button:create();
	localParams[123]:setTitleFontSize(14);
	localParams[123]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[123]:setScale9Enabled(true);
	localParams[123]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[123]:setAnchorPoint(0.50, 0.50);
	localParams[123]:onClick(handler(self, self._onStarSort));
	localParams[123]:setTouchEnabled(true);
	localParams[123]:setContentSize({width = 90.0, height = 37.0});
	localParams[123]:setPosition(49.5, 152.16);
	self.__children['Image_1#starBg_img#Button_3'] = localParams[123];
	localParams[123].__children = self.__children;
	localParams[123].__Name = 'Image_1#starBg_img#Button_3';
	localParams[116]:addChild(localParams[123]);

	localParams[124] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[124]:setAnchorPoint(0.50, 0.50);
	localParams[124]:setScaleX(0.40);
	localParams[124]:setScaleY(0.90);
	localParams[124]:setContentSize({width = 198.0, height = 37.0});
	localParams[124]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_3#__SELECTED_IMG'] = localParams[124];
	localParams[124].__children = self.__children;
	localParams[124].__Name = 'Image_1#starBg_img#Button_3#__SELECTED_IMG';
	localParams[123]:addChild(localParams[124]);

	localParams[125] = Text:create();
	localParams[125]:setFontSize(18);
	localParams[125]:setString([[7~8星]]);
	localParams[125]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[125]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[125]:setAnchorPoint(0.50, 0.50);
	localParams[125]:setContentSize({width = 49.0, height = 20.0});
	localParams[125]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_3#condition_txt'] = localParams[125];
	localParams[125].__children = self.__children;
	localParams[125].__Name = 'Image_1#starBg_img#Button_3#condition_txt';
	localParams[123]:addChild(localParams[125]);

	localParams[126] = Button:create();
	localParams[126]:setTitleFontSize(14);
	localParams[126]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[126]:setScale9Enabled(true);
	localParams[126]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[126]:setAnchorPoint(0.50, 0.50);
	localParams[126]:onClick(handler(self, self._onStarSort));
	localParams[126]:setTouchEnabled(true);
	localParams[126]:setContentSize({width = 90.0, height = 37.0});
	localParams[126]:setPosition(49.5, 108.84);
	self.__children['Image_1#starBg_img#Button_4'] = localParams[126];
	localParams[126].__children = self.__children;
	localParams[126].__Name = 'Image_1#starBg_img#Button_4';
	localParams[116]:addChild(localParams[126]);

	localParams[127] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[127]:setAnchorPoint(0.50, 0.50);
	localParams[127]:setScaleX(0.40);
	localParams[127]:setScaleY(0.90);
	localParams[127]:setContentSize({width = 198.0, height = 37.0});
	localParams[127]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_4#__SELECTED_IMG'] = localParams[127];
	localParams[127].__children = self.__children;
	localParams[127].__Name = 'Image_1#starBg_img#Button_4#__SELECTED_IMG';
	localParams[126]:addChild(localParams[127]);

	localParams[128] = Text:create();
	localParams[128]:setFontSize(18);
	localParams[128]:setString([[5~6星]]);
	localParams[128]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[128]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[128]:setAnchorPoint(0.50, 0.50);
	localParams[128]:setContentSize({width = 49.0, height = 20.0});
	localParams[128]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_4#condition_txt'] = localParams[128];
	localParams[128].__children = self.__children;
	localParams[128].__Name = 'Image_1#starBg_img#Button_4#condition_txt';
	localParams[126]:addChild(localParams[128]);

	localParams[129] = Button:create();
	localParams[129]:setTitleFontSize(14);
	localParams[129]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[129]:setScale9Enabled(true);
	localParams[129]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[129]:setAnchorPoint(0.50, 0.50);
	localParams[129]:onClick(handler(self, self._onStarSort));
	localParams[129]:setTouchEnabled(true);
	localParams[129]:setContentSize({width = 90.0, height = 37.0});
	localParams[129]:setPosition(49.5, 65.25);
	self.__children['Image_1#starBg_img#Button_5'] = localParams[129];
	localParams[129].__children = self.__children;
	localParams[129].__Name = 'Image_1#starBg_img#Button_5';
	localParams[116]:addChild(localParams[129]);

	localParams[130] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[130]:setAnchorPoint(0.50, 0.50);
	localParams[130]:setScaleX(0.40);
	localParams[130]:setScaleY(0.90);
	localParams[130]:setContentSize({width = 198.0, height = 37.0});
	localParams[130]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_5#__SELECTED_IMG'] = localParams[130];
	localParams[130].__children = self.__children;
	localParams[130].__Name = 'Image_1#starBg_img#Button_5#__SELECTED_IMG';
	localParams[129]:addChild(localParams[130]);

	localParams[131] = Text:create();
	localParams[131]:setFontSize(18);
	localParams[131]:setString([[3~4星]]);
	localParams[131]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[131]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[131]:setAnchorPoint(0.50, 0.50);
	localParams[131]:setContentSize({width = 49.0, height = 20.0});
	localParams[131]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_5#condition_txt'] = localParams[131];
	localParams[131].__children = self.__children;
	localParams[131].__Name = 'Image_1#starBg_img#Button_5#condition_txt';
	localParams[129]:addChild(localParams[131]);

	localParams[132] = Button:create();
	localParams[132]:setTitleFontSize(14);
	localParams[132]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[132]:setScale9Enabled(true);
	localParams[132]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[132]:setAnchorPoint(0.50, 0.50);
	localParams[132]:onClick(handler(self, self._onStarSort));
	localParams[132]:setTouchEnabled(true);
	localParams[132]:setContentSize({width = 90.0, height = 37.0});
	localParams[132]:setPosition(49.5, 21.66);
	self.__children['Image_1#starBg_img#Button_6'] = localParams[132];
	localParams[132].__children = self.__children;
	localParams[132].__Name = 'Image_1#starBg_img#Button_6';
	localParams[116]:addChild(localParams[132]);

	localParams[133] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[133]:setAnchorPoint(0.50, 0.50);
	localParams[133]:setScaleX(0.40);
	localParams[133]:setScaleY(0.90);
	localParams[133]:setContentSize({width = 198.0, height = 37.0});
	localParams[133]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_6#__SELECTED_IMG'] = localParams[133];
	localParams[133].__children = self.__children;
	localParams[133].__Name = 'Image_1#starBg_img#Button_6#__SELECTED_IMG';
	localParams[132]:addChild(localParams[133]);

	localParams[134] = Text:create();
	localParams[134]:setFontSize(18);
	localParams[134]:setString([[1~2星]]);
	localParams[134]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[134]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[134]:setAnchorPoint(0.50, 0.50);
	localParams[134]:setContentSize({width = 49.0, height = 20.0});
	localParams[134]:setPosition(45.0, 18.5);
	self.__children['Image_1#starBg_img#Button_6#condition_txt'] = localParams[134];
	localParams[134].__children = self.__children;
	localParams[134].__Name = 'Image_1#starBg_img#Button_6#condition_txt';
	localParams[132]:addChild(localParams[134]);

	localParams[135] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[135]:setAnchorPoint(0.50, 0.50);
	localParams[135]:setContentSize({width = 83.0, height = 2.0});
	localParams[135]:setPosition(49.5, 43.59);
	self.__children['Image_1#starBg_img#line_sprite1'] = localParams[135];
	localParams[135].__children = self.__children;
	localParams[135].__Name = 'Image_1#starBg_img#line_sprite1';
	localParams[116]:addChild(localParams[135]);

	localParams[136] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[136]:setAnchorPoint(0.50, 0.50);
	localParams[136]:setContentSize({width = 83.0, height = 2.0});
	localParams[136]:setPosition(49.5, 87.17);
	self.__children['Image_1#starBg_img#line_sprite2'] = localParams[136];
	localParams[136].__children = self.__children;
	localParams[136].__Name = 'Image_1#starBg_img#line_sprite2';
	localParams[116]:addChild(localParams[136]);

	localParams[137] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[137]:setAnchorPoint(0.50, 0.50);
	localParams[137]:setContentSize({width = 83.0, height = 2.0});
	localParams[137]:setPosition(49.5, 130.5);
	self.__children['Image_1#starBg_img#line_sprite3'] = localParams[137];
	localParams[137].__children = self.__children;
	localParams[137].__Name = 'Image_1#starBg_img#line_sprite3';
	localParams[116]:addChild(localParams[137]);

	localParams[138] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[138]:setAnchorPoint(0.50, 0.50);
	localParams[138]:setContentSize({width = 83.0, height = 2.0});
	localParams[138]:setPosition(49.5, 174.35);
	self.__children['Image_1#starBg_img#line_sprite4'] = localParams[138];
	localParams[138].__children = self.__children;
	localParams[138].__Name = 'Image_1#starBg_img#line_sprite4';
	localParams[116]:addChild(localParams[138]);

	localParams[139] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[139]:setAnchorPoint(0.50, 0.50);
	localParams[139]:setContentSize({width = 83.0, height = 2.0});
	localParams[139]:setPosition(49.5, 217.94);
	self.__children['Image_1#starBg_img#line_sprite5'] = localParams[139];
	localParams[139].__children = self.__children;
	localParams[139].__Name = 'Image_1#starBg_img#line_sprite5';
	localParams[116]:addChild(localParams[139]);

	localParams[140] = ImageView:create('uires/public/sheet_bgframe/bgFrame0088.png', 1);
	localParams[140]:ignoreContentAdaptWithSize(false);
	localParams[140]:setScale9Enabled(true);
	localParams[140]:setCapInsets({x = 32.000000, y = 38.000000,width = 35.000000, height = 3.000000);
	localParams[140]:setAnchorPoint(0.50, 0.50);
	localParams[140]:setContentSize({width = 99.0, height = 306.0});
	localParams[140]:setPosition(407.1, 201.2);
	self.__children['Image_1#costBg_img'] = localParams[140];
	localParams[140].__children = self.__children;
	localParams[140].__Name = 'Image_1#costBg_img';
	localParams[79]:addChild(localParams[140]);

	localParams[141] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[141]:setAnchorPoint(0.50, 0.50);
	localParams[141]:setContentSize({width = 83.0, height = 2.0});
	localParams[141]:setPosition(49.5, 43.76);
	self.__children['Image_1#costBg_img#line_sprite1'] = localParams[141];
	localParams[141].__children = self.__children;
	localParams[141].__Name = 'Image_1#costBg_img#line_sprite1';
	localParams[140]:addChild(localParams[141]);

	localParams[142] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[142]:setAnchorPoint(0.50, 0.50);
	localParams[142]:setContentSize({width = 83.0, height = 2.0});
	localParams[142]:setPosition(49.5, 87.21);
	self.__children['Image_1#costBg_img#line_sprite2'] = localParams[142];
	localParams[142].__children = self.__children;
	localParams[142].__Name = 'Image_1#costBg_img#line_sprite2';
	localParams[140]:addChild(localParams[142]);

	localParams[143] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[143]:setAnchorPoint(0.50, 0.50);
	localParams[143]:setContentSize({width = 83.0, height = 2.0});
	localParams[143]:setPosition(49.5, 130.66);
	self.__children['Image_1#costBg_img#line_sprite3'] = localParams[143];
	localParams[143].__children = self.__children;
	localParams[143].__Name = 'Image_1#costBg_img#line_sprite3';
	localParams[140]:addChild(localParams[143]);

	localParams[144] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[144]:setAnchorPoint(0.50, 0.50);
	localParams[144]:setContentSize({width = 83.0, height = 2.0});
	localParams[144]:setPosition(49.5, 174.11);
	self.__children['Image_1#costBg_img#line_sprite4'] = localParams[144];
	localParams[144].__children = self.__children;
	localParams[144].__Name = 'Image_1#costBg_img#line_sprite4';
	localParams[140]:addChild(localParams[144]);

	localParams[145] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[145]:setAnchorPoint(0.50, 0.50);
	localParams[145]:setContentSize({width = 83.0, height = 2.0});
	localParams[145]:setPosition(49.5, 217.87);
	self.__children['Image_1#costBg_img#line_sprite5'] = localParams[145];
	localParams[145].__children = self.__children;
	localParams[145].__Name = 'Image_1#costBg_img#line_sprite5';
	localParams[140]:addChild(localParams[145]);

	localParams[146] = ImageView:create('uires/public/sheet_other/other0120.png', 1);
	localParams[146]:setAnchorPoint(0.50, 0.50);
	localParams[146]:setContentSize({width = 83.0, height = 2.0});
	localParams[146]:setPosition(49.5, 261.63);
	self.__children['Image_1#costBg_img#line_sprite6'] = localParams[146];
	localParams[146].__children = self.__children;
	localParams[146].__Name = 'Image_1#costBg_img#line_sprite6';
	localParams[140]:addChild(localParams[146]);

	localParams[147] = Button:create();
	localParams[147]:setTitleFontSize(14);
	localParams[147]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[147]:setScale9Enabled(true);
	localParams[147]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[147]:setAnchorPoint(0.50, 0.50);
	localParams[147]:onClick(handler(self, self._onCostSort));
	localParams[147]:setTouchEnabled(true);
	localParams[147]:setContentSize({width = 90.0, height = 37.0});
	localParams[147]:setPosition(49.5, 283.97);
	self.__children['Image_1#costBg_img#Button_1'] = localParams[147];
	localParams[147].__children = self.__children;
	localParams[147].__Name = 'Image_1#costBg_img#Button_1';
	localParams[140]:addChild(localParams[147]);

	localParams[148] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[148]:setAnchorPoint(0.50, 0.50);
	localParams[148]:setScaleX(0.40);
	localParams[148]:setScaleY(0.90);
	localParams[148]:setContentSize({width = 198.0, height = 37.0});
	localParams[148]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_1#__SELECTED_IMG'] = localParams[148];
	localParams[148].__children = self.__children;
	localParams[148].__Name = 'Image_1#costBg_img#Button_1#__SELECTED_IMG';
	localParams[147]:addChild(localParams[148]);

	localParams[149] = Text:create();
	localParams[149]:setFontSize(18);
	localParams[149]:setString([[全部]]);
	localParams[149]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[149]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[149]:setAnchorPoint(0.50, 0.50);
	localParams[149]:setContentSize({width = 40.0, height = 20.0});
	localParams[149]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_1#condition_txt'] = localParams[149];
	localParams[149].__children = self.__children;
	localParams[149].__Name = 'Image_1#costBg_img#Button_1#condition_txt';
	localParams[147]:addChild(localParams[149]);

	localParams[150] = Button:create();
	localParams[150]:setTitleFontSize(14);
	localParams[150]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[150]:setScale9Enabled(true);
	localParams[150]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[150]:setAnchorPoint(0.50, 0.50);
	localParams[150]:onClick(handler(self, self._onCostSort));
	localParams[150]:setTouchEnabled(true);
	localParams[150]:setContentSize({width = 90.0, height = 37.0});
	localParams[150]:setPosition(49.5, 240.82);
	self.__children['Image_1#costBg_img#Button_2'] = localParams[150];
	localParams[150].__children = self.__children;
	localParams[150].__Name = 'Image_1#costBg_img#Button_2';
	localParams[140]:addChild(localParams[150]);

	localParams[151] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[151]:setAnchorPoint(0.50, 0.50);
	localParams[151]:setScaleX(0.40);
	localParams[151]:setScaleY(0.90);
	localParams[151]:setContentSize({width = 198.0, height = 37.0});
	localParams[151]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_2#__SELECTED_IMG'] = localParams[151];
	localParams[151].__children = self.__children;
	localParams[151].__Name = 'Image_1#costBg_img#Button_2#__SELECTED_IMG';
	localParams[150]:addChild(localParams[151]);

	localParams[152] = Text:create();
	localParams[152]:setFontSize(18);
	localParams[152]:setString([[6怒]]);
	localParams[152]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[152]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[152]:setAnchorPoint(0.50, 0.50);
	localParams[152]:setContentSize({width = 31.0, height = 20.0});
	localParams[152]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_2#condition_txt'] = localParams[152];
	localParams[152].__children = self.__children;
	localParams[152].__Name = 'Image_1#costBg_img#Button_2#condition_txt';
	localParams[150]:addChild(localParams[152]);

	localParams[153] = Button:create();
	localParams[153]:setTitleFontSize(14);
	localParams[153]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[153]:setScale9Enabled(true);
	localParams[153]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[153]:setAnchorPoint(0.50, 0.50);
	localParams[153]:onClick(handler(self, self._onCostSort));
	localParams[153]:setTouchEnabled(true);
	localParams[153]:setContentSize({width = 90.0, height = 37.0});
	localParams[153]:setPosition(49.5, 197.37);
	self.__children['Image_1#costBg_img#Button_3'] = localParams[153];
	localParams[153].__children = self.__children;
	localParams[153].__Name = 'Image_1#costBg_img#Button_3';
	localParams[140]:addChild(localParams[153]);

	localParams[154] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[154]:setAnchorPoint(0.50, 0.50);
	localParams[154]:setScaleX(0.40);
	localParams[154]:setScaleY(0.90);
	localParams[154]:setContentSize({width = 198.0, height = 37.0});
	localParams[154]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_3#__SELECTED_IMG'] = localParams[154];
	localParams[154].__children = self.__children;
	localParams[154].__Name = 'Image_1#costBg_img#Button_3#__SELECTED_IMG';
	localParams[153]:addChild(localParams[154]);

	localParams[155] = Text:create();
	localParams[155]:setFontSize(18);
	localParams[155]:setString([[5怒]]);
	localParams[155]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[155]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[155]:setAnchorPoint(0.50, 0.50);
	localParams[155]:setContentSize({width = 31.0, height = 20.0});
	localParams[155]:setPosition(45.0, 17.5);
	self.__children['Image_1#costBg_img#Button_3#condition_txt'] = localParams[155];
	localParams[155].__children = self.__children;
	localParams[155].__Name = 'Image_1#costBg_img#Button_3#condition_txt';
	localParams[153]:addChild(localParams[155]);

	localParams[156] = Button:create();
	localParams[156]:setTitleFontSize(14);
	localParams[156]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[156]:setScale9Enabled(true);
	localParams[156]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[156]:setAnchorPoint(0.50, 0.50);
	localParams[156]:onClick(handler(self, self._onCostSort));
	localParams[156]:setTouchEnabled(true);
	localParams[156]:setContentSize({width = 90.0, height = 37.0});
	localParams[156]:setPosition(49.5, 153.61);
	self.__children['Image_1#costBg_img#Button_4'] = localParams[156];
	localParams[156].__children = self.__children;
	localParams[156].__Name = 'Image_1#costBg_img#Button_4';
	localParams[140]:addChild(localParams[156]);

	localParams[157] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[157]:setAnchorPoint(0.50, 0.50);
	localParams[157]:setScaleX(0.40);
	localParams[157]:setScaleY(0.90);
	localParams[157]:setContentSize({width = 198.0, height = 37.0});
	localParams[157]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_4#__SELECTED_IMG'] = localParams[157];
	localParams[157].__children = self.__children;
	localParams[157].__Name = 'Image_1#costBg_img#Button_4#__SELECTED_IMG';
	localParams[156]:addChild(localParams[157]);

	localParams[158] = Text:create();
	localParams[158]:setFontSize(18);
	localParams[158]:setString([[4怒]]);
	localParams[158]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[158]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[158]:setAnchorPoint(0.50, 0.50);
	localParams[158]:setContentSize({width = 31.0, height = 20.0});
	localParams[158]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_4#condition_txt'] = localParams[158];
	localParams[158].__children = self.__children;
	localParams[158].__Name = 'Image_1#costBg_img#Button_4#condition_txt';
	localParams[156]:addChild(localParams[158]);

	localParams[159] = Button:create();
	localParams[159]:setTitleFontSize(14);
	localParams[159]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[159]:setScale9Enabled(true);
	localParams[159]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[159]:setAnchorPoint(0.50, 0.50);
	localParams[159]:onClick(handler(self, self._onCostSort));
	localParams[159]:setTouchEnabled(true);
	localParams[159]:setContentSize({width = 90.0, height = 37.0});
	localParams[159]:setPosition(49.5, 110.16);
	self.__children['Image_1#costBg_img#Button_5'] = localParams[159];
	localParams[159].__children = self.__children;
	localParams[159].__Name = 'Image_1#costBg_img#Button_5';
	localParams[140]:addChild(localParams[159]);

	localParams[160] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[160]:setAnchorPoint(0.50, 0.50);
	localParams[160]:setScaleX(0.40);
	localParams[160]:setScaleY(0.90);
	localParams[160]:setContentSize({width = 198.0, height = 37.0});
	localParams[160]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_5#__SELECTED_IMG'] = localParams[160];
	localParams[160].__children = self.__children;
	localParams[160].__Name = 'Image_1#costBg_img#Button_5#__SELECTED_IMG';
	localParams[159]:addChild(localParams[160]);

	localParams[161] = Text:create();
	localParams[161]:setFontSize(18);
	localParams[161]:setString([[3怒]]);
	localParams[161]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[161]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[161]:setAnchorPoint(0.50, 0.50);
	localParams[161]:setContentSize({width = 31.0, height = 20.0});
	localParams[161]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_5#condition_txt'] = localParams[161];
	localParams[161].__children = self.__children;
	localParams[161].__Name = 'Image_1#costBg_img#Button_5#condition_txt';
	localParams[159]:addChild(localParams[161]);

	localParams[162] = Button:create();
	localParams[162]:setTitleFontSize(14);
	localParams[162]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[162]:setScale9Enabled(true);
	localParams[162]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[162]:setAnchorPoint(0.50, 0.50);
	localParams[162]:onClick(handler(self, self._onCostSort));
	localParams[162]:setTouchEnabled(true);
	localParams[162]:setContentSize({width = 90.0, height = 37.0});
	localParams[162]:setPosition(49.5, 66.71);
	self.__children['Image_1#costBg_img#Button_6'] = localParams[162];
	localParams[162].__children = self.__children;
	localParams[162].__Name = 'Image_1#costBg_img#Button_6';
	localParams[140]:addChild(localParams[162]);

	localParams[163] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[163]:setAnchorPoint(0.50, 0.50);
	localParams[163]:setScaleX(0.40);
	localParams[163]:setScaleY(0.90);
	localParams[163]:setContentSize({width = 198.0, height = 37.0});
	localParams[163]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_6#__SELECTED_IMG'] = localParams[163];
	localParams[163].__children = self.__children;
	localParams[163].__Name = 'Image_1#costBg_img#Button_6#__SELECTED_IMG';
	localParams[162]:addChild(localParams[163]);

	localParams[164] = Text:create();
	localParams[164]:setFontSize(18);
	localParams[164]:setString([[2怒]]);
	localParams[164]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[164]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[164]:setAnchorPoint(0.50, 0.50);
	localParams[164]:setContentSize({width = 31.0, height = 20.0});
	localParams[164]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_6#condition_txt'] = localParams[164];
	localParams[164].__children = self.__children;
	localParams[164].__Name = 'Image_1#costBg_img#Button_6#condition_txt';
	localParams[162]:addChild(localParams[164]);

	localParams[165] = Button:create();
	localParams[165]:setTitleFontSize(14);
	localParams[165]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[165]:setScale9Enabled(true);
	localParams[165]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[165]:setAnchorPoint(0.50, 0.50);
	localParams[165]:onClick(handler(self, self._onCostSort));
	localParams[165]:setTouchEnabled(true);
	localParams[165]:setContentSize({width = 90.0, height = 37.0});
	localParams[165]:setPosition(49.5, 22.03);
	self.__children['Image_1#costBg_img#Button_7'] = localParams[165];
	localParams[165].__children = self.__children;
	localParams[165].__Name = 'Image_1#costBg_img#Button_7';
	localParams[140]:addChild(localParams[165]);

	localParams[166] = ImageView:create('uires/public/sheet_other/other0081.png', 1);
	localParams[166]:setAnchorPoint(0.50, 0.50);
	localParams[166]:setScaleX(0.40);
	localParams[166]:setScaleY(0.90);
	localParams[166]:setContentSize({width = 198.0, height = 37.0});
	localParams[166]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_7#__SELECTED_IMG'] = localParams[166];
	localParams[166].__children = self.__children;
	localParams[166].__Name = 'Image_1#costBg_img#Button_7#__SELECTED_IMG';
	localParams[165]:addChild(localParams[166]);

	localParams[167] = Text:create();
	localParams[167]:setFontSize(18);
	localParams[167]:setString([[1怒]]);
	localParams[167]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[167]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[167]:setAnchorPoint(0.50, 0.50);
	localParams[167]:setContentSize({width = 31.0, height = 20.0});
	localParams[167]:setPosition(45.0, 18.5);
	self.__children['Image_1#costBg_img#Button_7#condition_txt'] = localParams[167];
	localParams[167].__children = self.__children;
	localParams[167].__Name = 'Image_1#costBg_img#Button_7#condition_txt';
	localParams[165]:addChild(localParams[167]);

	localParams[168] = Button:create();
	localParams[168]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[168]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[168]:setTitleFontSize(20);
	localParams[168]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[168]:setAnchorPoint(0.50, 0.50);
	localParams[168]:onClick(handler(self, self._onSort));
	localParams[168]:setTouchEnabled(true);
	localParams[168]:setContentSize({width = 83.0, height = 46.0});
	localParams[168]:setPosition(48.94, 30.0);
	self.__children['Image_1#Button_1'] = localParams[168];
	localParams[168].__children = self.__children;
	localParams[168].__Name = 'Image_1#Button_1';
	localParams[79]:addChild(localParams[168]);

	localParams[169] = ImageView:create('uires/public/sheet_font/fontImg0128.png', 1);
	localParams[169]:setAnchorPoint(0.50, 0.50);
	localParams[169]:setContentSize({width = 43.0, height = 24.0});
	localParams[169]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_1#Sprite_1'] = localParams[169];
	localParams[169].__children = self.__children;
	localParams[169].__Name = 'Image_1#Button_1#Sprite_1';
	localParams[168]:addChild(localParams[169]);

	localParams[170] = Button:create();
	localParams[170]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[170]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[170]:setTitleFontSize(20);
	localParams[170]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[170]:setAnchorPoint(0.50, 0.50);
	localParams[170]:onClick(handler(self, self._onSort));
	localParams[170]:setTouchEnabled(true);
	localParams[170]:setContentSize({width = 83.0, height = 46.0});
	localParams[170]:setPosition(136.94, 30.0);
	self.__children['Image_1#Button_2'] = localParams[170];
	localParams[170].__children = self.__children;
	localParams[170].__Name = 'Image_1#Button_2';
	localParams[79]:addChild(localParams[170]);

	localParams[171] = ImageView:create('uires/public/sheet_font/fontImg0130.png', 1);
	localParams[171]:setAnchorPoint(0.50, 0.50);
	localParams[171]:setContentSize({width = 42.0, height = 24.0});
	localParams[171]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_2#Sprite_1'] = localParams[171];
	localParams[171].__children = self.__children;
	localParams[171].__Name = 'Image_1#Button_2#Sprite_1';
	localParams[170]:addChild(localParams[171]);

	localParams[172] = Button:create();
	localParams[172]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[172]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[172]:setTitleFontSize(20);
	localParams[172]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[172]:setAnchorPoint(0.50, 0.50);
	localParams[172]:onClick(handler(self, self._onSort));
	localParams[172]:setTouchEnabled(true);
	localParams[172]:setContentSize({width = 83.0, height = 46.0});
	localParams[172]:setPosition(224.94, 30.0);
	self.__children['Image_1#Button_3'] = localParams[172];
	localParams[172].__children = self.__children;
	localParams[172].__Name = 'Image_1#Button_3';
	localParams[79]:addChild(localParams[172]);

	localParams[173] = ImageView:create('uires/public/sheet_font/fontImg0127.png', 1);
	localParams[173]:setAnchorPoint(0.50, 0.50);
	localParams[173]:setContentSize({width = 43.0, height = 24.0});
	localParams[173]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_3#Sprite_1'] = localParams[173];
	localParams[173].__children = self.__children;
	localParams[173].__Name = 'Image_1#Button_3#Sprite_1';
	localParams[172]:addChild(localParams[173]);

	localParams[174] = Button:create();
	localParams[174]:loadTextureNormal('uires/public/sheet_btn/btn0103.png', 1);
	localParams[174]:loadTexturePressed('uires/public/sheet_btn/btn0104.png', 1);
	localParams[174]:setTitleFontSize(20);
	localParams[174]:setTitleColor({r = 240, g = 200, b = 60});
	localParams[174]:setAnchorPoint(0.50, 0.50);
	localParams[174]:onClick(handler(self, self._onSort));
	localParams[174]:setTouchEnabled(true);
	localParams[174]:setContentSize({width = 83.0, height = 46.0});
	localParams[174]:setPosition(313.94, 30.0);
	self.__children['Image_1#Button_4'] = localParams[174];
	localParams[174].__children = self.__children;
	localParams[174].__Name = 'Image_1#Button_4';
	localParams[79]:addChild(localParams[174]);

	localParams[175] = ImageView:create('uires/public/sheet_font/fontImg0129.png', 1);
	localParams[175]:setAnchorPoint(0.50, 0.50);
	localParams[175]:setContentSize({width = 44.0, height = 24.0});
	localParams[175]:setPosition(41.5, 23.0);
	self.__children['Image_1#Button_4#Sprite_1'] = localParams[175];
	localParams[175].__children = self.__children;
	localParams[175].__Name = 'Image_1#Button_4#Sprite_1';
	localParams[174]:addChild(localParams[175]);

	localParams[176] = Button:create();
	localParams[176]:loadTextureNormal('uires/public/sheet_btn/btn0106.png', 1);
	localParams[176]:loadTexturePressed('uires/public/sheet_btn/btn0106.png', 1);
	localParams[176]:setTitleFontSize(14);
	localParams[176]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[176]:setAnchorPoint(0.50, 0.50);
	localParams[176]:onClick(handler(self, self._onAllSort));
	localParams[176]:setTouchEnabled(true);
	localParams[176]:setContentSize({width = 93.0, height = 46.0});
	localParams[176]:setPosition(406.94, 30.0);
	self.__children['Image_1#all_btn'] = localParams[176];
	localParams[176].__children = self.__children;
	localParams[176].__Name = 'Image_1#all_btn';
	localParams[79]:addChild(localParams[176]);

	localParams[177] = Text:create();
	localParams[177]:setFontSize(18);
	localParams[177]:setString([[全部]]);
	localParams[177]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[177]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[177]:setAnchorPoint(1.00, 0.50);
	localParams[177]:setContentSize({width = 40.0, height = 20.0});
	localParams[177]:setPosition(62.2, 23.0);
	self.__children['Image_1#all_btn#Text_1'] = localParams[177];
	localParams[177].__children = self.__children;
	localParams[177].__Name = 'Image_1#all_btn#Text_1';
	localParams[176]:addChild(localParams[177]);

end
function EmbattleLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0015.png');
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


function EmbattleLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function EmbattleLayer:_onSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSort then
        return self.m_ClickDelegate:onSort(sender);
    end
    if self.onSort then
        return self:onSort(sender);
    end
end


function EmbattleLayer:_onCostSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onCostSort then
        return self.m_ClickDelegate:onCostSort(sender);
    end
    if self.onCostSort then
        return self:onCostSort(sender);
    end
end


function EmbattleLayer:_onQualitySort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onQualitySort then
        return self.m_ClickDelegate:onQualitySort(sender);
    end
    if self.onQualitySort then
        return self:onQualitySort(sender);
    end
end


function EmbattleLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


function EmbattleLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function EmbattleLayer:_skill_bg_btn2(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.skill_bg_btn2 then
        return self.m_ClickDelegate:skill_bg_btn2(sender);
    end
    if self.skill_bg_btn2 then
        return self:skill_bg_btn2(sender);
    end
end


function EmbattleLayer:_skill_bg_btn1(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.skill_bg_btn1 then
        return self.m_ClickDelegate:skill_bg_btn1(sender);
    end
    if self.skill_bg_btn1 then
        return self:skill_bg_btn1(sender);
    end
end


function EmbattleLayer:_onPositionSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPositionSort then
        return self.m_ClickDelegate:onPositionSort(sender);
    end
    if self.onPositionSort then
        return self:onPositionSort(sender);
    end
end


function EmbattleLayer:_profession_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.profession_back_btn then
        return self.m_ClickDelegate:profession_back_btn(sender);
    end
    if self.profession_back_btn then
        return self:profession_back_btn(sender);
    end
end


function EmbattleLayer:_onStarSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onStarSort then
        return self.m_ClickDelegate:onStarSort(sender);
    end
    if self.onStarSort then
        return self:onStarSort(sender);
    end
end


function EmbattleLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function EmbattleLayer:_complete_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.complete_btn then
        return self.m_ClickDelegate:complete_btn(sender);
    end
    if self.complete_btn then
        return self:complete_btn(sender);
    end
end


function EmbattleLayer:_onAllSort(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAllSort then
        return self.m_ClickDelegate:onAllSort(sender);
    end
    if self.onAllSort then
        return self:onAllSort(sender);
    end
end


return EmbattleLayer;