-- 
-- Author: generation auto
-- Brief：EformationLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local EformationLayer = class('EformationLayer', gamecore.ui.BaseWidget);

function EformationLayer:create(...) 
    local instance = EformationLayer.new(...);
    return instance;
end

function EformationLayer:ctor(...) 
    if EformationLayer.super and EformationLayer.super.ctor then
        EformationLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);
end

function EformationLayer:initView()
    self.__LAYER_NAME = 'activity.goldgame.EformationLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0015.png', 0);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 374.000000, y = 253.000000,width = 388.000000, height = 262.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (0.20 * ccx.scaleX), WinSize.height/2 + (1.22 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 800.0, height = 93.0});
	localParams[2]:setPosition(WinSize.width - 400.00, WinSize.height - 46.50);
	self.__children['bg2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg2';
	self:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(22);
	localParams[3]:setString([[01:02:03后活动结束]]);
	localParams[3]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[3]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[3]:setAnchorPoint(0.00, 0.50);
	localParams[3]:setTextColor({r = 240, g = 200, b = 60});
	localParams[3]:setContentSize({width = 195.0, height = 29.0});
	localParams[3]:setPosition(160.0, 65.0);
	self.__children['bg2#time_txt'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg2#time_txt';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 537.0, height = 164.0});
	localParams[4]:setPosition(268.5, WinSize.height - 82.00);
	self.__children['bg1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg1';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0091.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 309.000000, y = 75.000000,width = 169.000000, height = 90.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = WinSize.width - 289.00, height = WinSize.height - 110.00});
	localParams[5]:setPosition(WinSize.width/2 + (-124.01 * ccx.scaleX), WinSize.height/2 + (-45.25 * ccx.scaleY));
	self.__children['skill_bg'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'skill_bg';
	self:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_btn/btn0107.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 138.0, height = 51.0});
	localParams[6]:setPosition(localParams[5]:getContentSize().width/2 + (3.16 * ccx.scaleX), localParams[5]:getContentSize().height - 14.71);
	self.__children['skill_bg#bar'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'skill_bg#bar';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_font/fontImg0089.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 44.0, height = 24.0});
	localParams[7]:setPosition(69.0, 25.5);
	self.__children['skill_bg#bar#s_title'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'skill_bg#bar#s_title';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_font/fontImg0090.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 44.0, height = 24.0});
	localParams[8]:setPosition(68.61, 25.89);
	self.__children['skill_bg#bar#m_title'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'skill_bg#bar#m_title';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = ImageView:create(nil, 0);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 46.0, height = 46.0});
	localParams[9]:setPosition(localParams[5]:getContentSize().width/2 + (194.50 * ccx.scaleX), localParams[5]:getContentSize().height/2 + (15.00 * ccx.scaleY));
	self.__children['skill_bg#m_image3'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'skill_bg#m_image3';
	localParams[5]:addChild(localParams[9]);

	localParams[10] = ImageView:create(nil, 0);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 46.0, height = 46.0});
	localParams[10]:setPosition(localParams[5]:getContentSize().width/2 + (-0.00 * ccx.scaleX), localParams[5]:getContentSize().height/2 + (15.00 * ccx.scaleY));
	self.__children['skill_bg#m_image2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'skill_bg#m_image2';
	localParams[5]:addChild(localParams[10]);

	localParams[11] = ImageView:create(nil, 0);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 46.0, height = 46.0});
	localParams[11]:setPosition(localParams[5]:getContentSize().width/2 + (-194.50 * ccx.scaleX), localParams[5]:getContentSize().height/2 + (15.00 * ccx.scaleY));
	self.__children['skill_bg#m_image1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'skill_bg#m_image1';
	localParams[5]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[请携带两个要携带的技能]]);
	localParams[12]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[12]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setTextColor({r = 255, g = 140, b = 0});
	localParams[12]:setContentSize({width = 224.0, height = 22.0});
	localParams[12]:setPosition(localParams[5]:getContentSize().width/2 + (2.72 * ccx.scaleX), localParams[5]:getContentSize().height/2 + (150.73 * ccx.scaleY));
	self.__children['skill_bg#warning_text'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'skill_bg#warning_text';
	localParams[5]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[13]:loadTexturePressed('uires/public/sheet_common/btn0005.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._m_sure_btn));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 183.0, height = 68.0});
	localParams[13]:setPosition(localParams[5]:getContentSize().width/2 + (-0.00 * ccx.scaleX), 109.69);
	self.__children['skill_bg#monster_sure_btn'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'skill_bg#monster_sure_btn';
	localParams[5]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_font/fontImg0085.png', 1);
	localParams[14]:ignoreContentAdaptWithSize(false);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 70.0, height = 30.0});
	localParams[14]:setPosition(93.0, 35.0);
	self.__children['skill_bg#monster_sure_btn#font'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'skill_bg#monster_sure_btn#font';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = Widget:create();
	localParams[15]:setAnchorPoint(0.00, 0.00);
	localParams[15]:setScaleX(0.90);
	localParams[15]:setScaleY(0.90);
	localParams[15]:setContentSize({width = 0.0, height = 0.0});
	localParams[15]:setPosition(83.62, 36.53);
	self.__children['skill_bg#monster_sure_btn#__SELECTED_SCALE'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'skill_bg#monster_sure_btn#__SELECTED_SCALE';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_font/fontImg0250.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 195.0, height = 58.0});
	localParams[16]:setPosition(235.0, WinSize.height - 30.50);
	self.__children['bg4'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg4';
	self:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_bgframe/bgFrame0069.png', 1);
	localParams[17]:ignoreContentAdaptWithSize(false);
	localParams[17]:setScale9Enabled(true);
	localParams[17]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[17]:setAnchorPoint(1.00, 0.00);
	localParams[17]:setContentSize({width = 265.0, height = WinSize.height - 85.00});
	localParams[17]:setPosition(WinSize.width - 0.00, 0.0);
	self.__children['work_m_bg'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'work_m_bg';
	self:addChild(localParams[17]);

	localParams[18] = Button:create();
	localParams[18]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[18]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[18]:setTitleFontSize(14);
	localParams[18]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[18]:setScale9Enabled(true);
	localParams[18]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:onClick(handler(self, self._complete_btn));
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 183.0, height = 68.0});
	localParams[18]:setPosition(localParams[17]:getContentSize().width - 123.77, 48.54);
	self.__children['work_m_bg#completeBtn'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'work_m_bg#completeBtn';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_font/fontImg0086.png', 1);
	localParams[19]:ignoreContentAdaptWithSize(false);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 70.0, height = 30.0});
	localParams[19]:setPosition(93.0, 35.0);
	self.__children['work_m_bg#completeBtn#font'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'work_m_bg#completeBtn#font';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = Widget:create();
	localParams[20]:setAnchorPoint(0.00, 0.00);
	localParams[20]:setScaleX(0.90);
	localParams[20]:setScaleY(0.90);
	localParams[20]:setContentSize({width = 0.0, height = 0.0});
	localParams[20]:setPosition(83.62, 36.53);
	self.__children['work_m_bg#completeBtn#__SELECTED_SCALE'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'work_m_bg#completeBtn#__SELECTED_SCALE';
	localParams[18]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[已上阵：]]);
	localParams[21]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[21]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setTextColor({r = 255, g = 140, b = 0});
	localParams[21]:setContentSize({width = 76.0, height = 22.0});
	localParams[21]:setPosition(113.58, 99.01);
	self.__children['work_m_bg#Text1'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'work_m_bg#Text1';
	localParams[17]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(20);
	localParams[22]:setString([[0/5]]);
	localParams[22]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[22]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[22]:setAnchorPoint(0.00, 0.50);
	localParams[22]:setTextColor({r = 255, g = 140, b = 0});
	localParams[22]:setContentSize({width = 36.0, height = 22.0});
	localParams[22]:setPosition(156.17, 98.73);
	self.__children['work_m_bg#battle_num'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'work_m_bg#battle_num';
	localParams[17]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:loadTextureNormal('uires/public/sheet_other/other0090.png', 1);
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 15.000000, y = 11.000000, width = 204.000000, height = 42.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:onClick(handler(self, self._profession_back_btn));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 234.0, height = 64.0});
	localParams[23]:setPosition(136.29, localParams[17]:getContentSize().height - 48.58);
	self.__children['work_m_bg#profession_back'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'work_m_bg#profession_back';
	localParams[17]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[九阳神功]]);
	localParams[24]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setTextColor({r = 255, g = 240, b = 155});
	localParams[24]:setContentSize({width = 84.0, height = 22.0});
	localParams[24]:setPosition(136.0, 33.0);
	self.__children['work_m_bg#profession_back#formation_name'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'work_m_bg#profession_back#formation_name';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ScrollView:create();
	localParams[25]:setInnerContainerSize({width = 230.00, height = 355.00});
	localParams[25]:setDirection(1);
	localParams[25]:setBackGroundColorType(1);
	localParams[25]:setBackGroundColor({r = 255, g = 150, b = 100});
	localParams[25]:setBackGroundColorOpacity(102);
	localParams[25]:setAnchorPoint(0.00, 0.00);
	localParams[25]:setTouchEnabled(true);
	localParams[25]:setContentSize({width = 230.0, height = WinSize.height - 285.00});
	localParams[25]:setPosition(25.79, 117.56);
	self.__children['work_m_bg#work_m_ScrollView'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'work_m_bg#work_m_ScrollView';
	localParams[17]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 226.0, height = 109.0});
	localParams[26]:setPosition(139.17, localParams[17]:getContentSize().height/2 + (102.50 * ccx.scaleY));
	self.__children['work_m_bg#s_bg1'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'work_m_bg#s_bg1';
	localParams[17]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 226.0, height = 109.0});
	localParams[27]:setPosition(140.29, localParams[17]:getContentSize().height/2 + (-62.50 * ccx.scaleY));
	self.__children['work_m_bg#s_bg2'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'work_m_bg#s_bg2';
	localParams[17]:addChild(localParams[27]);

	localParams[28] = Button:create();
	localParams[28]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[28]:setTitleFontSize(14);
	localParams[28]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[28]:setScale9Enabled(true);
	localParams[28]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:onClick(handler(self, self._skill_bg_btn2));
	localParams[28]:setTouchEnabled(true);
	localParams[28]:setContentSize({width = 224.0, height = 107.0});
	localParams[28]:setPosition(140.47, localParams[17]:getContentSize().height/2 + (-62.50 * ccx.scaleY));
	self.__children['work_m_bg#skill_bg2'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'work_m_bg#skill_bg2';
	localParams[17]:addChild(localParams[28]);

	localParams[29] = Text:create();
	localParams[29]:setFontSize(20);
	localParams[29]:setString([[]]);
	localParams[29]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[29]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setTextColor({r = 255, g = 165, b = 0});
	localParams[29]:setContentSize({width = 0.0, height = 0.0});
	localParams[29]:setPosition(151.42, 38.43);
	self.__children['work_m_bg#skill_bg2#skill_level2'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'work_m_bg#skill_bg2#skill_level2';
	localParams[28]:addChild(localParams[29]);

	localParams[30] = ImageView:create(nil, 0);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 46.0, height = 46.0});
	localParams[30]:setPosition(52.57, 51.42);
	self.__children['work_m_bg#skill_bg2#skill_img2'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'work_m_bg#skill_bg2#skill_img2';
	localParams[28]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setScaleX(1.08);
	localParams[31]:setContentSize({width = 38.0, height = 42.0});
	localParams[31]:setPosition(52.0, 100.0);
	self.__children['work_m_bg#skill_bg2#skill_gas2'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'work_m_bg#skill_bg2#skill_gas2';
	localParams[28]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(24);
	localParams[32]:setString([[]]);
	localParams[32]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[32]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 0.0, height = 0.0});
	localParams[32]:setPosition(17.05, 18.42);
	self.__children['work_m_bg#skill_bg2#skill_gas2#gas_txt2'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'work_m_bg#skill_bg2#skill_gas2#gas_txt2';
	localParams[31]:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(20);
	localParams[33]:setString([[]]);
	localParams[33]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[33]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setTextColor({r = 255, g = 240, b = 155});
	localParams[33]:setContentSize({width = 0.0, height = 0.0});
	localParams[33]:setPosition(158.32, 62.01);
	self.__children['work_m_bg#skill_bg2#skill_name2'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'work_m_bg#skill_bg2#skill_name2';
	localParams[28]:addChild(localParams[33]);

	localParams[34] = Button:create();
	localParams[34]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[34]:setTitleFontSize(14);
	localParams[34]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[34]:setScale9Enabled(true);
	localParams[34]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:onClick(handler(self, self._skill_bg_btn1));
	localParams[34]:setTouchEnabled(true);
	localParams[34]:setContentSize({width = 224.0, height = 107.0});
	localParams[34]:setPosition(139.12, localParams[17]:getContentSize().height/2 + (102.50 * ccx.scaleY));
	self.__children['work_m_bg#skill_bg1'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'work_m_bg#skill_bg1';
	localParams[17]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(20);
	localParams[35]:setString([[]]);
	localParams[35]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[35]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setTextColor({r = 255, g = 140, b = 0});
	localParams[35]:setContentSize({width = 0.0, height = 0.0});
	localParams[35]:setPosition(156.43, 38.0);
	self.__children['work_m_bg#skill_bg1#skill_level1'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'work_m_bg#skill_bg1#skill_level1';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = ImageView:create(nil, 0);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 46.0, height = 46.0});
	localParams[36]:setPosition(52.57, 51.42);
	self.__children['work_m_bg#skill_bg1#skill_img1'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'work_m_bg#skill_bg1#skill_img1';
	localParams[34]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 38.0, height = 42.0});
	localParams[37]:setPosition(52.0, 100.0);
	self.__children['work_m_bg#skill_bg1#skill_gas1'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'work_m_bg#skill_bg1#skill_gas1';
	localParams[34]:addChild(localParams[37]);

	localParams[38] = Text:create();
	localParams[38]:setFontSize(24);
	localParams[38]:setString([[]]);
	localParams[38]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[38]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 0.0, height = 0.0});
	localParams[38]:setPosition(17.05, 18.42);
	self.__children['work_m_bg#skill_bg1#skill_gas1#gas_txt1'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'work_m_bg#skill_bg1#skill_gas1#gas_txt1';
	localParams[37]:addChild(localParams[38]);

	localParams[39] = Text:create();
	localParams[39]:setFontSize(20);
	localParams[39]:setString([[]]);
	localParams[39]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[39]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setTextColor({r = 255, g = 240, b = 155});
	localParams[39]:setContentSize({width = 0.0, height = 0.0});
	localParams[39]:setPosition(158.86, 63.63);
	self.__children['work_m_bg#skill_bg1#skill_name1'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'work_m_bg#skill_bg1#skill_name1';
	localParams[34]:addChild(localParams[39]);

	localParams[40] = Button:create();
	localParams[40]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[40]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[40]:setTitleFontSize(14);
	localParams[40]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[40]:setScale9Enabled(true);
	localParams[40]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:onClick(handler(self, self._help_btn));
	localParams[40]:setTouchEnabled(true);
	localParams[40]:setContentSize({width = 58.0, height = 68.0});
	localParams[40]:setPosition(WinSize.width - 37.02, WinSize.height - 49.83);
	self.__children['help_btn'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'help_btn';
	self:addChild(localParams[40]);

	localParams[41] = Widget:create();
	localParams[41]:setAnchorPoint(0.00, 0.00);
	localParams[41]:setScaleX(1.20);
	localParams[41]:setScaleY(1.20);
	localParams[41]:setContentSize({width = 0.0, height = 0.0});
	localParams[41]:setPosition(52.93, -11.77);
	self.__children['help_btn#__SELECTED_SCALE'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'help_btn#__SELECTED_SCALE';
	localParams[40]:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[42]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setScale9Enabled(true);
	localParams[42]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:onClick(handler(self, self._back_btn));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 116.0, height = 77.0});
	localParams[42]:setPosition(68.17, WinSize.height - 44.38);
	self.__children['back_btn'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'back_btn';
	self:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[43]:ignoreContentAdaptWithSize(false);
	localParams[43]:setScale9Enabled(true);
	localParams[43]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[43]:setAnchorPoint(0.00, 0.50);
	localParams[43]:setContentSize({width = 270.0, height = 360.0});
	localParams[43]:setPosition(1138.71, 373.15);
	self.__children['m_message_bg'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'm_message_bg';
	self:addChild(localParams[43]);

	localParams[44] = Widget:create();
	localParams[44]:setAnchorPoint(0.00, 0.00);
	localParams[44]:setContentSize({width = 0.0, height = 0.0});
	localParams[44]:setPosition(0.0, 360.0);
	self.__children['m_message_bg#node'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'm_message_bg#node';
	localParams[43]:addChild(localParams[44]);

	localParams[45] = Text:create();
	localParams[45]:setFontSize(24);
	localParams[45]:setString([[重甲奇兵]]);
	localParams[45]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[45]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setTextColor({r = 255, g = 240, b = 155});
	localParams[45]:setContentSize({width = 100.0, height = 26.0});
	localParams[45]:setPosition(137.4, -28.0);
	self.__children['m_message_bg#node#m_name'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'm_message_bg#node#m_name';
	localParams[44]:addChild(localParams[45]);

	localParams[46] = Text:create();
	localParams[46]:setFontSize(20);
	localParams[46]:setString([[攻  击:]]);
	localParams[46]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[46]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[46]:setAnchorPoint(0.00, 0.50);
	localParams[46]:setContentSize({width = 58.0, height = 25.0});
	localParams[46]:setPosition(13.23, -60.31);
	self.__children['m_message_bg#node#property_txt1'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'm_message_bg#node#property_txt1';
	localParams[44]:addChild(localParams[46]);

	localParams[47] = RichText:create();
	localParams[47]:setDefaultFontSize(20);
	localParams[47]:setString([[d]]);
	localParams[47]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[47]:setTextAreaSize({width = 240, height = 0});
	localParams[47]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[47]:setAnchorPoint(0.00, 1.00);
	localParams[47]:setContentSize({width = 240.0, height = 0.0});
	localParams[47]:setPosition(15.0, -110.0);
	self.__children['m_message_bg#node#m_skill_explain1'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'm_message_bg#node#m_skill_explain1';
	localParams[44]:addChild(localParams[47]);

	localParams[48] = Text:create();
	localParams[48]:setFontSize(20);
	localParams[48]:setString([[血  量:]]);
	localParams[48]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[48]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[48]:setAnchorPoint(0.00, 0.50);
	localParams[48]:setContentSize({width = 58.0, height = 25.0});
	localParams[48]:setPosition(13.23, -87.5);
	self.__children['m_message_bg#node#property_txt3'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'm_message_bg#node#property_txt3';
	localParams[44]:addChild(localParams[48]);

	localParams[49] = Text:create();
	localParams[49]:setFontSize(20);
	localParams[49]:setString([[护  甲:]]);
	localParams[49]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[49]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[49]:setAnchorPoint(0.00, 0.50);
	localParams[49]:setContentSize({width = 58.0, height = 25.0});
	localParams[49]:setPosition(135.97, -60.31);
	self.__children['m_message_bg#node#property_txt2'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'm_message_bg#node#property_txt2';
	localParams[44]:addChild(localParams[49]);

	localParams[50] = Text:create();
	localParams[50]:setFontSize(20);
	localParams[50]:setString([[速  度:]]);
	localParams[50]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[50]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[50]:setAnchorPoint(0.00, 0.50);
	localParams[50]:setContentSize({width = 58.0, height = 25.0});
	localParams[50]:setPosition(135.97, -87.5);
	self.__children['m_message_bg#node#property_txt4'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'm_message_bg#node#property_txt4';
	localParams[44]:addChild(localParams[50]);

	localParams[51] = Text:create();
	localParams[51]:setFontSize(20);
	localParams[51]:setString([[99999]]);
	localParams[51]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[51]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[51]:setAnchorPoint(0.00, 0.50);
	localParams[51]:setTextColor({r = 80, g = 255, b = 0});
	localParams[51]:setContentSize({width = 58.0, height = 25.0});
	localParams[51]:setPosition(74.23, -60.95);
	self.__children['m_message_bg#node#property1'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'm_message_bg#node#property1';
	localParams[44]:addChild(localParams[51]);

	localParams[52] = Text:create();
	localParams[52]:setFontSize(20);
	localParams[52]:setString([[99999]]);
	localParams[52]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[52]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[52]:setAnchorPoint(0.00, 0.39);
	localParams[52]:setTextColor({r = 80, g = 255, b = 0});
	localParams[52]:setContentSize({width = 58.0, height = 25.0});
	localParams[52]:setPosition(198.0, -63.97);
	self.__children['m_message_bg#node#property2'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'm_message_bg#node#property2';
	localParams[44]:addChild(localParams[52]);

	localParams[53] = Text:create();
	localParams[53]:setFontSize(20);
	localParams[53]:setString([[99999]]);
	localParams[53]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[53]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[53]:setAnchorPoint(0.00, 0.50);
	localParams[53]:setTextColor({r = 80, g = 255, b = 0});
	localParams[53]:setContentSize({width = 58.0, height = 25.0});
	localParams[53]:setPosition(74.23, -89.5);
	self.__children['m_message_bg#node#property3'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'm_message_bg#node#property3';
	localParams[44]:addChild(localParams[53]);

	localParams[54] = Text:create();
	localParams[54]:setFontSize(20);
	localParams[54]:setString([[99999]]);
	localParams[54]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[54]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[54]:setAnchorPoint(0.00, 0.50);
	localParams[54]:setTextColor({r = 80, g = 255, b = 0});
	localParams[54]:setContentSize({width = 58.0, height = 25.0});
	localParams[54]:setPosition(198.0, -89.5);
	self.__children['m_message_bg#node#property4'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'm_message_bg#node#property4';
	localParams[44]:addChild(localParams[54]);

	localParams[55] = RichText:create();
	localParams[55]:setDefaultFontSize(20);
	localParams[55]:setString([[]]);
	localParams[55]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[55]:setTextAreaSize({width = 240, height = 0});
	localParams[55]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[55]:setAnchorPoint(0.00, 1.00);
	localParams[55]:setContentSize({width = 240.0, height = 0.0});
	localParams[55]:setPosition(15.0, -227.94);
	self.__children['m_message_bg#node#m_skill_explain2'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'm_message_bg#node#m_skill_explain2';
	localParams[44]:addChild(localParams[55]);

	localParams[56] = RichText:create();
	localParams[56]:setDefaultFontSize(20);
	localParams[56]:setString([[]]);
	localParams[56]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[56]:setTextAreaSize({width = 240, height = 0});
	localParams[56]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[56]:setAnchorPoint(0.00, 1.00);
	localParams[56]:setContentSize({width = 240.0, height = 0.0});
	localParams[56]:setPosition(15.0, -338.34);
	self.__children['m_message_bg#node#m_skill_explain3'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'm_message_bg#node#m_skill_explain3';
	localParams[44]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[57]:ignoreContentAdaptWithSize(false);
	localParams[57]:setScale9Enabled(true);
	localParams[57]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[57]:setAnchorPoint(0.00, 0.50);
	localParams[57]:setContentSize({width = 270.0, height = 230.0});
	localParams[57]:setPosition(1044.08, 204.9);
	self.__children['s_message_bg'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 's_message_bg';
	self:addChild(localParams[57]);

	localParams[58] = Widget:create();
	localParams[58]:setAnchorPoint(0.00, 0.00);
	localParams[58]:setContentSize({width = 0.0, height = 0.0});
	localParams[58]:setPosition(0.0, 230.0);
	self.__children['s_message_bg#Node_1'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 's_message_bg#Node_1';
	localParams[57]:addChild(localParams[58]);

	localParams[59] = Text:create();
	localParams[59]:setFontSize(24);
	localParams[59]:setString([[风华之身]]);
	localParams[59]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[59]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setTextColor({r = 250, g = 240, b = 155});
	localParams[59]:setContentSize({width = 100.0, height = 26.0});
	localParams[59]:setPosition(140.0, localParams[58]:getContentSize().height - 43.00);
	self.__children['s_message_bg#Node_1#s_name'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 's_message_bg#Node_1#s_name';
	localParams[58]:addChild(localParams[59]);

	localParams[60] = Text:create();
	localParams[60]:setFontSize(20);
	localParams[60]:setString([[技能说明:小体型 近距离小体型 近距离小体型 近距离小体型 近距离]]);
	localParams[60]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[60]:setTextAreaSize({width = 235, height = 0});
	localParams[60]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[60]:setAnchorPoint(0.50, 1.00);
	localParams[60]:setContentSize({width = 235.0, height = 0.0});
	localParams[60]:setPosition(135.0, localParams[58]:getContentSize().height - 110.00);
	self.__children['s_message_bg#Node_1#s_skill_explain'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 's_message_bg#Node_1#s_skill_explain';
	localParams[58]:addChild(localParams[60]);

	localParams[61] = Text:create();
	localParams[61]:setFontSize(20);
	localParams[61]:setString([[技能说明：]]);
	localParams[61]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[61]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 91.0, height = 25.0});
	localParams[61]:setPosition(63.08, localParams[58]:getContentSize().height - 82.50);
	self.__children['s_message_bg#Node_1#Text_1'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 's_message_bg#Node_1#Text_1';
	localParams[58]:addChild(localParams[61]);

end
function EformationLayer:loadImageSync()
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


function EformationLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function EformationLayer:_help_btn(sender)
    if self._clickDelegate and self._clickDelegate.help_btn then
        return self._clickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function EformationLayer:_back_btn(sender)
    if self._clickDelegate and self._clickDelegate.back_btn then
        return self._clickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function EformationLayer:_m_sure_btn(sender)
    if self._clickDelegate and self._clickDelegate.m_sure_btn then
        return self._clickDelegate:m_sure_btn(sender);
    end
    if self.m_sure_btn then
        return self:m_sure_btn(sender);
    end
end


function EformationLayer:_skill_bg_btn2(sender)
    if self._clickDelegate and self._clickDelegate.skill_bg_btn2 then
        return self._clickDelegate:skill_bg_btn2(sender);
    end
    if self.skill_bg_btn2 then
        return self:skill_bg_btn2(sender);
    end
end


function EformationLayer:_skill_bg_btn1(sender)
    if self._clickDelegate and self._clickDelegate.skill_bg_btn1 then
        return self._clickDelegate:skill_bg_btn1(sender);
    end
    if self.skill_bg_btn1 then
        return self:skill_bg_btn1(sender);
    end
end


function EformationLayer:_profession_back_btn(sender)
    if self._clickDelegate and self._clickDelegate.profession_back_btn then
        return self._clickDelegate:profession_back_btn(sender);
    end
    if self.profession_back_btn then
        return self:profession_back_btn(sender);
    end
end


function EformationLayer:_complete_btn(sender)
    if self._clickDelegate and self._clickDelegate.complete_btn then
        return self._clickDelegate:complete_btn(sender);
    end
    if self.complete_btn then
        return self:complete_btn(sender);
    end
end


return EformationLayer;