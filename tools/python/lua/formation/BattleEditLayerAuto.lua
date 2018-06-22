-- 
-- Author: generation auto
-- Brief：BattleEditLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local BattleEditLayer = class('BattleEditLayer', gamecore.ui.BaseWidget);

function BattleEditLayer:create(...) 
    local instance = BattleEditLayer.new(...);
    return instance;
end

function BattleEditLayer:ctor(...) 
    if BattleEditLayer.super and BattleEditLayer.super.ctor then
        BattleEditLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function BattleEditLayer:initView()
    self.__LAYER_NAME = 'formation.BattleEditLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0015.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (0.92 * ccx.scaleX), WinSize.height/2 + (0.64 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:onClick(handler(self, self._onMonster));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 120.0, height = 120.0});
	localParams[2]:setPosition(145.0, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster5'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#monster5';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[3]:setAnchorPoint(0.50, 0.00);
	localParams[3]:onClick(handler(self, self._onMonster));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 120.0, height = 120.0});
	localParams[3]:setPosition(338.33, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster6'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#monster6';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[4]:setAnchorPoint(0.50, 0.00);
	localParams[4]:onClick(handler(self, self._onMonster));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 120.0, height = 120.0});
	localParams[4]:setPosition(531.67, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster7'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#monster7';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[5]:setAnchorPoint(0.50, 0.00);
	localParams[5]:onClick(handler(self, self._onMonster));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 120.0, height = 120.0});
	localParams[5]:setPosition(725.0, localParams[1]:getContentSize().height - 278.00);
	self.__children['bg#monster8'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#monster8';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[6]:setAnchorPoint(0.50, 0.00);
	localParams[6]:onClick(handler(self, self._onMonster));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 120.0, height = 120.0});
	localParams[6]:setPosition(170.0, 372.5);
	self.__children['bg#monster1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#monster1';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Button:create();
	localParams[7]:setTitleFontSize(14);
	localParams[7]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[7]:setAnchorPoint(0.50, 0.00);
	localParams[7]:onClick(handler(self, self._onMonster));
	localParams[7]:setTouchEnabled(true);
	localParams[7]:setContentSize({width = 120.0, height = 120.0});
	localParams[7]:setPosition(363.33, 372.5);
	self.__children['bg#monster2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#monster2';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[8]:setAnchorPoint(0.50, 0.00);
	localParams[8]:onClick(handler(self, self._onMonster));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 120.0, height = 120.0});
	localParams[8]:setPosition(556.67, 372.5);
	self.__children['bg#monster3'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg#monster3';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[9]:setAnchorPoint(0.50, 0.00);
	localParams[9]:onClick(handler(self, self._onMonster));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 120.0, height = 120.0});
	localParams[9]:setPosition(750.0, 372.5);
	self.__children['bg#monster4'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg#monster4';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[10]:setAnchorPoint(0.50, 0.00);
	localParams[10]:onClick(handler(self, self._onMonster));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 120.0, height = 120.0});
	localParams[10]:setPosition(145.0, 260.0);
	self.__children['bg#monster9'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg#monster9';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[11]:setAnchorPoint(0.50, 0.00);
	localParams[11]:onClick(handler(self, self._onMonster));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 120.0, height = 120.0});
	localParams[11]:setPosition(338.33, 260.0);
	self.__children['bg#monster10'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg#monster10';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[12]:setAnchorPoint(0.50, 0.00);
	localParams[12]:onClick(handler(self, self._onMonster));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 120.0, height = 120.0});
	localParams[12]:setPosition(531.67, 260.0);
	self.__children['bg#monster11'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg#monster11';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[13]:setAnchorPoint(0.50, 0.00);
	localParams[13]:onClick(handler(self, self._onMonster));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 120.0, height = 120.0});
	localParams[13]:setPosition(725.0, 260.0);
	self.__children['bg#monster12'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg#monster12';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[14]:ignoreContentAdaptWithSize(false);
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 425.0, height = 170.0});
	localParams[14]:setPosition(WinSize.width - 487.50, 100.0);
	self.__children['skill_img'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'skill_img';
	self:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.80);
	localParams[15]:setScaleY(0.80);
	localParams[15]:setContentSize({width = 226.0, height = 109.0});
	localParams[15]:setPosition(317.0, 117.5);
	self.__children['skill_img#skill_bg2'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'skill_img#skill_bg2';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = Button:create();
	localParams[16]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[16]:setTitleFontSize(14);
	localParams[16]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[16]:setScale9Enabled(true);
	localParams[16]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(0.80);
	localParams[16]:setScaleY(0.80);
	localParams[16]:onClick(handler(self, self._skill_bg_btn2));
	localParams[16]:setTouchEnabled(true);
	localParams[16]:setContentSize({width = 224.0, height = 107.0});
	localParams[16]:setPosition(317.0, 117.5);
	self.__children['skill_img#use_skill_bg2'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'skill_img#use_skill_bg2';
	localParams[14]:addChild(localParams[16]);

	localParams[17] = ImageView:create(nil, 0);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setScaleX(0.85);
	localParams[17]:setScaleY(0.85);
	localParams[17]:setContentSize({width = 46.0, height = 46.0});
	localParams[17]:setPosition(270.14, 114.8);
	self.__children['skill_img#skill_img2'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'skill_img#skill_img2';
	localParams[14]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_bgframe/bgFrame0095.png', 1);
	localParams[18]:ignoreContentAdaptWithSize(false);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setScaleX(0.80);
	localParams[18]:setScaleY(0.80);
	localParams[18]:setContentSize({width = 226.0, height = 109.0});
	localParams[18]:setPosition(107.0, 117.5);
	self.__children['skill_img#skill_bg1'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'skill_img#skill_bg1';
	localParams[14]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0090.png', 1);
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = 15.000000, y = 11.000000, width = 194.000000, height = 85.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.80);
	localParams[19]:setScaleY(0.80);
	localParams[19]:onClick(handler(self, self._skill_bg_btn1));
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 224.0, height = 107.0});
	localParams[19]:setPosition(107.0, 117.5);
	self.__children['skill_img#use_skill_bg1'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'skill_img#use_skill_bg1';
	localParams[14]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(15);
	localParams[20]:setString([[]]);
	localParams[20]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[20]:setTextAreaSize({width = 180, height = 69});
	localParams[20]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[20]:setAnchorPoint(0.00, 0.50);
	localParams[20]:setContentSize({width = 180.0, height = 69.0});
	localParams[20]:setPosition(localParams[14]:getContentSize().width - 408.00, 39.5);
	self.__children['skill_img#skill_des1'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'skill_img#skill_des1';
	localParams[14]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(15);
	localParams[21]:setString([[]]);
	localParams[21]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[21]:setTextAreaSize({width = 180, height = 69});
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 180.0, height = 69.0});
	localParams[21]:setPosition(317.0, 39.5);
	self.__children['skill_img#skill_des2'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'skill_img#skill_des2';
	localParams[14]:addChild(localParams[21]);

	localParams[22] = Text:create();
	localParams[22]:setFontSize(16);
	localParams[22]:setString([[]]);
	localParams[22]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[22]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setTextColor({r = 255, g = 140, b = 0});
	localParams[22]:setContentSize({width = 0.0, height = 0.0});
	localParams[22]:setPosition(354.51, 104.47);
	self.__children['skill_img#skill_level2'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'skill_img#skill_level2';
	localParams[14]:addChild(localParams[22]);

	localParams[23] = ImageView:create(nil, 0);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setScaleX(0.85);
	localParams[23]:setScaleY(0.85);
	localParams[23]:setContentSize({width = 46.0, height = 46.0});
	localParams[23]:setPosition(60.03, 115.89);
	self.__children['skill_img#skill_img1'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'skill_img#skill_img1';
	localParams[14]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(16);
	localParams[24]:setString([[]]);
	localParams[24]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setTextColor({r = 255, g = 240, b = 155});
	localParams[24]:setContentSize({width = 0.0, height = 0.0});
	localParams[24]:setPosition(144.94, 124.43);
	self.__children['skill_img#skill_name1'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'skill_img#skill_name1';
	localParams[14]:addChild(localParams[24]);

	localParams[25] = Text:create();
	localParams[25]:setFontSize(16);
	localParams[25]:setString([[]]);
	localParams[25]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[25]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setTextColor({r = 255, g = 240, b = 155});
	localParams[25]:setContentSize({width = 0.0, height = 0.0});
	localParams[25]:setPosition(354.63, 123.37);
	self.__children['skill_img#skill_name2'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'skill_img#skill_name2';
	localParams[14]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setScaleX(0.80);
	localParams[26]:setScaleY(0.80);
	localParams[26]:setContentSize({width = 38.0, height = 42.0});
	localParams[26]:setPosition(59.6, 153.0);
	self.__children['skill_img#skill_gas1'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'skill_img#skill_gas1';
	localParams[14]:addChild(localParams[26]);

	localParams[27] = Text:create();
	localParams[27]:setFontSize(24);
	localParams[27]:setString([[]]);
	localParams[27]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[27]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 0.0, height = 0.0});
	localParams[27]:setPosition(19.0, 20.0);
	self.__children['skill_img#skill_gas1#gas_txt1'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'skill_img#skill_gas1#gas_txt1';
	localParams[26]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(16);
	localParams[28]:setString([[]]);
	localParams[28]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[28]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setTextColor({r = 255, g = 140, b = 0});
	localParams[28]:setContentSize({width = 0.0, height = 0.0});
	localParams[28]:setPosition(145.65, 105.03);
	self.__children['skill_img#skill_level1'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'skill_img#skill_level1';
	localParams[14]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setScaleX(0.80);
	localParams[29]:setScaleY(0.80);
	localParams[29]:setContentSize({width = 38.0, height = 42.0});
	localParams[29]:setPosition(269.69, 153.0);
	self.__children['skill_img#skill_gas2'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'skill_img#skill_gas2';
	localParams[14]:addChild(localParams[29]);

	localParams[30] = Text:create();
	localParams[30]:setFontSize(24);
	localParams[30]:setString([[]]);
	localParams[30]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[30]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 0.0, height = 0.0});
	localParams[30]:setPosition(19.0, 20.0);
	self.__children['skill_img#skill_gas2#gas_txt2'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'skill_img#skill_gas2#gas_txt2';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[31]:ignoreContentAdaptWithSize(false);
	localParams[31]:setScale9Enabled(true);
	localParams[31]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 180.0, height = 170.0});
	localParams[31]:setPosition(WinSize.width - 803.44, 99.72);
	self.__children['property_img'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'property_img';
	self:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(20);
	localParams[32]:setString([[攻  击：]]);
	localParams[32]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[32]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 76.0, height = 22.0});
	localParams[32]:setPosition(49.45, 149.8);
	self.__children['property_img#property_type1'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'property_img#property_type1';
	localParams[31]:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(20);
	localParams[33]:setString([[护  甲：]]);
	localParams[33]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[33]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 76.0, height = 22.0});
	localParams[33]:setPosition(49.65, 117.29);
	self.__children['property_img#property_type2'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'property_img#property_type2';
	localParams[31]:addChild(localParams[33]);

	localParams[34] = Text:create();
	localParams[34]:setFontSize(20);
	localParams[34]:setString([[血  量：]]);
	localParams[34]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[34]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 76.0, height = 22.0});
	localParams[34]:setPosition(49.38, 84.55);
	self.__children['property_img#property_type3'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'property_img#property_type3';
	localParams[31]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(20);
	localParams[35]:setString([[速  度：]]);
	localParams[35]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[35]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 76.0, height = 22.0});
	localParams[35]:setPosition(49.3, 52.77);
	self.__children['property_img#property_type4'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'property_img#property_type4';
	localParams[31]:addChild(localParams[35]);

	localParams[36] = Text:create();
	localParams[36]:setFontSize(20);
	localParams[36]:setString([[0]]);
	localParams[36]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[36]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[36]:setAnchorPoint(1.00, 0.50);
	localParams[36]:setTextColor({r = 80, g = 255, b = 0});
	localParams[36]:setContentSize({width = 15.0, height = 25.0});
	localParams[36]:setPosition(157.51, 148.72);
	self.__children['property_img#property_num1'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'property_img#property_num1';
	localParams[31]:addChild(localParams[36]);

	localParams[37] = Text:create();
	localParams[37]:setFontSize(20);
	localParams[37]:setString([[0]]);
	localParams[37]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[37]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[37]:setAnchorPoint(1.00, 0.50);
	localParams[37]:setTextColor({r = 80, g = 255, b = 0});
	localParams[37]:setContentSize({width = 15.0, height = 25.0});
	localParams[37]:setPosition(157.52, 115.07);
	self.__children['property_img#property_num2'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'property_img#property_num2';
	localParams[31]:addChild(localParams[37]);

	localParams[38] = Text:create();
	localParams[38]:setFontSize(20);
	localParams[38]:setString([[0]]);
	localParams[38]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[38]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[38]:setAnchorPoint(1.00, 0.50);
	localParams[38]:setTextColor({r = 80, g = 255, b = 0});
	localParams[38]:setContentSize({width = 15.0, height = 25.0});
	localParams[38]:setPosition(157.36, 82.7);
	self.__children['property_img#property_num3'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'property_img#property_num3';
	localParams[31]:addChild(localParams[38]);

	localParams[39] = Text:create();
	localParams[39]:setFontSize(20);
	localParams[39]:setString([[0]]);
	localParams[39]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[39]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[39]:setAnchorPoint(1.00, 0.50);
	localParams[39]:setTextColor({r = 80, g = 255, b = 0});
	localParams[39]:setContentSize({width = 15.0, height = 25.0});
	localParams[39]:setPosition(157.29, 50.77);
	self.__children['property_img#property_num4'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'property_img#property_num4';
	localParams[31]:addChild(localParams[39]);

	localParams[40] = Text:create();
	localParams[40]:setFontSize(20);
	localParams[40]:setString([[智  慧：]]);
	localParams[40]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[40]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 76.0, height = 22.0});
	localParams[40]:setPosition(49.3, 22.77);
	self.__children['property_img#property_type5'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'property_img#property_type5';
	localParams[31]:addChild(localParams[40]);

	localParams[41] = Text:create();
	localParams[41]:setFontSize(20);
	localParams[41]:setString([[0]]);
	localParams[41]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[41]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[41]:setAnchorPoint(1.00, 0.50);
	localParams[41]:setTextColor({r = 80, g = 255, b = 0});
	localParams[41]:setContentSize({width = 15.0, height = 25.0});
	localParams[41]:setPosition(157.29, 20.77);
	self.__children['property_img#property_num5'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'property_img#property_num5';
	localParams[31]:addChild(localParams[41]);

	localParams[42] = Button:create();
	localParams[42]:loadTextureNormal('uires/public/sheet_btn/btn0076.png', 1);
	localParams[42]:loadTexturePressed('uires/public/sheet_btn/btn0076.png', 1);
	localParams[42]:setTitleFontSize(14);
	localParams[42]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[42]:setScale9Enabled(true);
	localParams[42]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 62.000000});
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:onClick(handler(self, self._set_btn));
	localParams[42]:setTouchEnabled(true);
	localParams[42]:setContentSize({width = 72.0, height = 84.0});
	localParams[42]:setPosition(WinSize.width - 309.09, 227.22);
	self.__children['amend_btn'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'amend_btn';
	self:addChild(localParams[42]);

	localParams[43] = Widget:create();
	localParams[43]:setAnchorPoint(0.00, 0.00);
	localParams[43]:setScaleX(0.90);
	localParams[43]:setScaleY(0.90);
	localParams[43]:setContentSize({width = 0.0, height = 0.0});
	localParams[43]:setPosition(62.93, -21.77);
	self.__children['amend_btn#__SELECTED_SCALE'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'amend_btn#__SELECTED_SCALE';
	localParams[42]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_bgframe/bgFrame0073.png', 1);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setContentSize({width = 110.0, height = 110.0});
	localParams[44]:setPosition(WinSize.width - 961.02, 114.68);
	self.__children['head_bg'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'head_bg';
	self:addChild(localParams[44]);

	localParams[45] = ImageView:create(nil, 0);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setContentSize({width = 46.0, height = 46.0});
	localParams[45]:setPosition(53.96, 55.62);
	self.__children['head_bg#head'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'head_bg#head';
	localParams[44]:addChild(localParams[45]);

	localParams[46] = ImageView:create(nil, 0);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setScaleX(0.70);
	localParams[46]:setScaleY(0.70);
	localParams[46]:setContentSize({width = 46.0, height = 46.0});
	localParams[46]:setPosition(52.81, -25.19);
	self.__children['head_bg#profession_font'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'head_bg#profession_font';
	localParams[44]:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_bgframe/bgFrame0069.png', 1);
	localParams[47]:ignoreContentAdaptWithSize(false);
	localParams[47]:setScale9Enabled(true);
	localParams[47]:setCapInsets({x = 40.000000, y = 40.000000,width = 40.000000, height = 40.000000});
	localParams[47]:setAnchorPoint(1.00, 0.00);
	localParams[47]:setContentSize({width = 265.0, height = WinSize.height - 53.00});
	localParams[47]:setPosition(WinSize.width - 0.00, 0.0);
	self.__children['battle_edit'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'battle_edit';
	self:addChild(localParams[47]);

	localParams[48] = Button:create();
	localParams[48]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0072.png', 1);
	localParams[48]:setTitleFontSize(14);
	localParams[48]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[48]:setScale9Enabled(true);
	localParams[48]:setCapInsets({x = 15.000000, y = 11.000000, width = 205.000000, height = 42.000000});
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:onClick(handler(self, self._onSelectedFormation));
	localParams[48]:setTouchEnabled(true);
	localParams[48]:setContentSize({width = 235.0, height = 64.0});
	localParams[48]:setPosition(142.57, localParams[47]:getContentSize().height/2 + (218.48 * ccx.scaleY));
	self.__children['battle_edit#profession_back1'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'battle_edit#profession_back1';
	localParams[47]:addChild(localParams[48]);

	localParams[49] = ImageView:create('uires/public/sheet_other/other0095.png', 1);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setContentSize({width = 244.0, height = 74.0});
	localParams[49]:setPosition(116.0, 32.0);
	self.__children['battle_edit#profession_back1#light'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'battle_edit#profession_back1#light';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = Text:create();
	localParams[50]:setFontSize(20);
	localParams[50]:setString([[灵魂突破]]);
	localParams[50]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[50]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setTextColor({r = 255, g = 240, b = 155});
	localParams[50]:setContentSize({width = 84.0, height = 22.0});
	localParams[50]:setPosition(117.31, 34.06);
	self.__children['battle_edit#profession_back1#formation_name'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'battle_edit#profession_back1#formation_name';
	localParams[48]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 30.0, height = 30.0});
	localParams[51]:setPosition(localParams[48]:getContentSize().width - 14.24, 61.25);
	self.__children['battle_edit#profession_back1#point'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'battle_edit#profession_back1#point';
	localParams[48]:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_other/other0094.png', 1);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setContentSize({width = 33.0, height = 33.0});
	localParams[52]:setPosition(localParams[48]:getContentSize().width - 123.75, 33.0);
	self.__children['battle_edit#profession_back1#add'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'battle_edit#profession_back1#add';
	localParams[48]:addChild(localParams[52]);

	localParams[53] = ImageView:create('uires/public/sheet_other/other0096.png', 1);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setContentSize({width = 77.0, height = 45.0});
	localParams[53]:setPosition(localParams[48]:getContentSize().width - 33.50, 22.5);
	self.__children['battle_edit#profession_back1#battle_sign'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'battle_edit#profession_back1#battle_sign';
	localParams[48]:addChild(localParams[53]);

	localParams[54] = Button:create();
	localParams[54]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[54]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[54]:setTitleFontSize(14);
	localParams[54]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[54]:setScale9Enabled(true);
	localParams[54]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:onClick(handler(self, self._fight_btn));
	localParams[54]:setTouchEnabled(true);
	localParams[54]:setContentSize({width = 183.0, height = 68.0});
	localParams[54]:setPosition(141.5, 41.0);
	self.__children['battle_edit#fight_btn'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'battle_edit#fight_btn';
	localParams[47]:addChild(localParams[54]);

	localParams[55] = ImageView:create('uires/public/sheet_font/fontImg0088.png', 1);
	localParams[55]:ignoreContentAdaptWithSize(false);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 70.0, height = 30.0});
	localParams[55]:setPosition(93.0, 35.0);
	self.__children['battle_edit#fight_btn#font1'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'battle_edit#fight_btn#font1';
	localParams[54]:addChild(localParams[55]);

	localParams[56] = Widget:create();
	localParams[56]:setAnchorPoint(0.00, 0.00);
	localParams[56]:setScaleX(0.90);
	localParams[56]:setScaleY(0.90);
	localParams[56]:setContentSize({width = 0.0, height = 0.0});
	localParams[56]:setPosition(83.62, 36.53);
	self.__children['battle_edit#fight_btn#__SELECTED_SCALE'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'battle_edit#fight_btn#__SELECTED_SCALE';
	localParams[54]:addChild(localParams[56]);

	localParams[57] = Button:create();
	localParams[57]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0072.png', 1);
	localParams[57]:setTitleFontSize(14);
	localParams[57]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[57]:setScale9Enabled(true);
	localParams[57]:setCapInsets({x = 15.000000, y = 11.000000, width = 205.000000, height = 42.000000});
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:onClick(handler(self, self._onSelectedFormation));
	localParams[57]:setTouchEnabled(true);
	localParams[57]:setContentSize({width = 235.0, height = 64.0});
	localParams[57]:setPosition(142.3, localParams[47]:getContentSize().height/2 + (139.47 * ccx.scaleY));
	self.__children['battle_edit#profession_back2'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'battle_edit#profession_back2';
	localParams[47]:addChild(localParams[57]);

	localParams[58] = ImageView:create('uires/public/sheet_other/other0095.png', 1);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setContentSize({width = 244.0, height = 74.0});
	localParams[58]:setPosition(116.0, 31.0);
	self.__children['battle_edit#profession_back2#light'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'battle_edit#profession_back2#light';
	localParams[57]:addChild(localParams[58]);

	localParams[59] = Text:create();
	localParams[59]:setFontSize(20);
	localParams[59]:setString([[灵魂突破]]);
	localParams[59]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[59]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setTextColor({r = 255, g = 240, b = 155});
	localParams[59]:setContentSize({width = 84.0, height = 22.0});
	localParams[59]:setPosition(117.31, 34.06);
	self.__children['battle_edit#profession_back2#formation_name'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'battle_edit#profession_back2#formation_name';
	localParams[57]:addChild(localParams[59]);

	localParams[60] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 30.0, height = 30.0});
	localParams[60]:setPosition(localParams[57]:getContentSize().width - 15.00, 61.0);
	self.__children['battle_edit#profession_back2#point'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'battle_edit#profession_back2#point';
	localParams[57]:addChild(localParams[60]);

	localParams[61] = ImageView:create('uires/public/sheet_other/other0094.png', 1);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 33.0, height = 33.0});
	localParams[61]:setPosition(localParams[57]:getContentSize().width - 123.75, 33.0);
	self.__children['battle_edit#profession_back2#add'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'battle_edit#profession_back2#add';
	localParams[57]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet_other/other0096.png', 1);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setContentSize({width = 77.0, height = 45.0});
	localParams[62]:setPosition(localParams[57]:getContentSize().width - 33.50, 22.5);
	self.__children['battle_edit#profession_back2#battle_sign'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'battle_edit#profession_back2#battle_sign';
	localParams[57]:addChild(localParams[62]);

	localParams[63] = Button:create();
	localParams[63]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0072.png', 1);
	localParams[63]:setTitleFontSize(14);
	localParams[63]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[63]:setScale9Enabled(true);
	localParams[63]:setCapInsets({x = 15.000000, y = 11.000000, width = 205.000000, height = 42.000000});
	localParams[63]:setAnchorPoint(0.50, 0.50);
	localParams[63]:onClick(handler(self, self._onSelectedFormation));
	localParams[63]:setTouchEnabled(true);
	localParams[63]:setContentSize({width = 235.0, height = 64.0});
	localParams[63]:setPosition(142.65, localParams[47]:getContentSize().height/2 + (60.52 * ccx.scaleY));
	self.__children['battle_edit#profession_back3'] = localParams[63];
	localParams[63].__children = self.__children;
	localParams[63].__Name = 'battle_edit#profession_back3';
	localParams[47]:addChild(localParams[63]);

	localParams[64] = ImageView:create('uires/public/sheet_other/other0095.png', 1);
	localParams[64]:setAnchorPoint(0.50, 0.50);
	localParams[64]:setContentSize({width = 244.0, height = 74.0});
	localParams[64]:setPosition(116.0, 33.0);
	self.__children['battle_edit#profession_back3#light'] = localParams[64];
	localParams[64].__children = self.__children;
	localParams[64].__Name = 'battle_edit#profession_back3#light';
	localParams[63]:addChild(localParams[64]);

	localParams[65] = Text:create();
	localParams[65]:setFontSize(20);
	localParams[65]:setString([[灵魂突破]]);
	localParams[65]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[65]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[65]:setAnchorPoint(0.50, 0.50);
	localParams[65]:setTextColor({r = 255, g = 240, b = 155});
	localParams[65]:setContentSize({width = 84.0, height = 22.0});
	localParams[65]:setPosition(117.31, 34.06);
	self.__children['battle_edit#profession_back3#formation_name'] = localParams[65];
	localParams[65].__children = self.__children;
	localParams[65].__Name = 'battle_edit#profession_back3#formation_name';
	localParams[63]:addChild(localParams[65]);

	localParams[66] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[66]:setAnchorPoint(0.50, 0.50);
	localParams[66]:setContentSize({width = 30.0, height = 30.0});
	localParams[66]:setPosition(localParams[63]:getContentSize().width - 15.00, 61.0);
	self.__children['battle_edit#profession_back3#point'] = localParams[66];
	localParams[66].__children = self.__children;
	localParams[66].__Name = 'battle_edit#profession_back3#point';
	localParams[63]:addChild(localParams[66]);

	localParams[67] = ImageView:create('uires/public/sheet_other/other0094.png', 1);
	localParams[67]:setAnchorPoint(0.50, 0.50);
	localParams[67]:setContentSize({width = 33.0, height = 33.0});
	localParams[67]:setPosition(localParams[63]:getContentSize().width - 123.75, 33.0);
	self.__children['battle_edit#profession_back3#add'] = localParams[67];
	localParams[67].__children = self.__children;
	localParams[67].__Name = 'battle_edit#profession_back3#add';
	localParams[63]:addChild(localParams[67]);

	localParams[68] = ImageView:create('uires/public/sheet_other/other0096.png', 1);
	localParams[68]:setAnchorPoint(0.50, 0.50);
	localParams[68]:setContentSize({width = 77.0, height = 45.0});
	localParams[68]:setPosition(localParams[63]:getContentSize().width - 33.50, 22.5);
	self.__children['battle_edit#profession_back3#battle_sign'] = localParams[68];
	localParams[68].__children = self.__children;
	localParams[68].__Name = 'battle_edit#profession_back3#battle_sign';
	localParams[63]:addChild(localParams[68]);

	localParams[69] = Button:create();
	localParams[69]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0072.png', 1);
	localParams[69]:setTitleFontSize(14);
	localParams[69]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[69]:setScale9Enabled(true);
	localParams[69]:setCapInsets({x = 15.000000, y = 11.000000, width = 205.000000, height = 42.000000});
	localParams[69]:setAnchorPoint(0.50, 0.50);
	localParams[69]:onClick(handler(self, self._onSelectedFormation));
	localParams[69]:setTouchEnabled(true);
	localParams[69]:setContentSize({width = 235.0, height = 64.0});
	localParams[69]:setPosition(142.71, localParams[47]:getContentSize().height/2 + (-18.49 * ccx.scaleY));
	self.__children['battle_edit#profession_back4'] = localParams[69];
	localParams[69].__children = self.__children;
	localParams[69].__Name = 'battle_edit#profession_back4';
	localParams[47]:addChild(localParams[69]);

	localParams[70] = ImageView:create('uires/public/sheet_other/other0095.png', 1);
	localParams[70]:setAnchorPoint(0.50, 0.50);
	localParams[70]:setContentSize({width = 244.0, height = 74.0});
	localParams[70]:setPosition(116.0, 34.0);
	self.__children['battle_edit#profession_back4#light'] = localParams[70];
	localParams[70].__children = self.__children;
	localParams[70].__Name = 'battle_edit#profession_back4#light';
	localParams[69]:addChild(localParams[70]);

	localParams[71] = Text:create();
	localParams[71]:setFontSize(20);
	localParams[71]:setString([[灵魂突破]]);
	localParams[71]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[71]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[71]:setAnchorPoint(0.50, 0.50);
	localParams[71]:setTextColor({r = 255, g = 240, b = 155});
	localParams[71]:setContentSize({width = 84.0, height = 22.0});
	localParams[71]:setPosition(117.31, 34.06);
	self.__children['battle_edit#profession_back4#formation_name'] = localParams[71];
	localParams[71].__children = self.__children;
	localParams[71].__Name = 'battle_edit#profession_back4#formation_name';
	localParams[69]:addChild(localParams[71]);

	localParams[72] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[72]:setAnchorPoint(0.50, 0.50);
	localParams[72]:setContentSize({width = 30.0, height = 30.0});
	localParams[72]:setPosition(localParams[69]:getContentSize().width - 15.00, 61.0);
	self.__children['battle_edit#profession_back4#point'] = localParams[72];
	localParams[72].__children = self.__children;
	localParams[72].__Name = 'battle_edit#profession_back4#point';
	localParams[69]:addChild(localParams[72]);

	localParams[73] = ImageView:create('uires/public/sheet_other/other0094.png', 1);
	localParams[73]:setAnchorPoint(0.50, 0.50);
	localParams[73]:setContentSize({width = 33.0, height = 33.0});
	localParams[73]:setPosition(localParams[69]:getContentSize().width - 123.75, 33.0);
	self.__children['battle_edit#profession_back4#add'] = localParams[73];
	localParams[73].__children = self.__children;
	localParams[73].__Name = 'battle_edit#profession_back4#add';
	localParams[69]:addChild(localParams[73]);

	localParams[74] = ImageView:create('uires/public/sheet_other/other0096.png', 1);
	localParams[74]:setAnchorPoint(0.50, 0.50);
	localParams[74]:setContentSize({width = 77.0, height = 45.0});
	localParams[74]:setPosition(localParams[69]:getContentSize().width - 33.50, 22.5);
	self.__children['battle_edit#profession_back4#battle_sign'] = localParams[74];
	localParams[74].__children = self.__children;
	localParams[74].__Name = 'battle_edit#profession_back4#battle_sign';
	localParams[69]:addChild(localParams[74]);

	localParams[75] = Button:create();
	localParams[75]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0072.png', 1);
	localParams[75]:setTitleFontSize(14);
	localParams[75]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[75]:setScale9Enabled(true);
	localParams[75]:setCapInsets({x = 15.000000, y = 11.000000, width = 205.000000, height = 42.000000});
	localParams[75]:setAnchorPoint(0.50, 0.50);
	localParams[75]:onClick(handler(self, self._onSelectedFormation));
	localParams[75]:setTouchEnabled(true);
	localParams[75]:setContentSize({width = 235.0, height = 64.0});
	localParams[75]:setPosition(142.21, localParams[47]:getContentSize().height/2 + (-97.50 * ccx.scaleY));
	self.__children['battle_edit#profession_back5'] = localParams[75];
	localParams[75].__children = self.__children;
	localParams[75].__Name = 'battle_edit#profession_back5';
	localParams[47]:addChild(localParams[75]);

	localParams[76] = ImageView:create('uires/public/sheet_other/other0095.png', 1);
	localParams[76]:setAnchorPoint(0.50, 0.50);
	localParams[76]:setContentSize({width = 244.0, height = 74.0});
	localParams[76]:setPosition(116.0, 33.0);
	self.__children['battle_edit#profession_back5#light'] = localParams[76];
	localParams[76].__children = self.__children;
	localParams[76].__Name = 'battle_edit#profession_back5#light';
	localParams[75]:addChild(localParams[76]);

	localParams[77] = Text:create();
	localParams[77]:setFontSize(20);
	localParams[77]:setString([[灵魂突破]]);
	localParams[77]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[77]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[77]:setAnchorPoint(0.50, 0.50);
	localParams[77]:setTextColor({r = 255, g = 240, b = 155});
	localParams[77]:setContentSize({width = 84.0, height = 22.0});
	localParams[77]:setPosition(117.31, 34.06);
	self.__children['battle_edit#profession_back5#formation_name'] = localParams[77];
	localParams[77].__children = self.__children;
	localParams[77].__Name = 'battle_edit#profession_back5#formation_name';
	localParams[75]:addChild(localParams[77]);

	localParams[78] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[78]:setAnchorPoint(0.50, 0.50);
	localParams[78]:setContentSize({width = 30.0, height = 30.0});
	localParams[78]:setPosition(localParams[75]:getContentSize().width - 15.00, 61.0);
	self.__children['battle_edit#profession_back5#point'] = localParams[78];
	localParams[78].__children = self.__children;
	localParams[78].__Name = 'battle_edit#profession_back5#point';
	localParams[75]:addChild(localParams[78]);

	localParams[79] = ImageView:create('uires/public/sheet_other/other0094.png', 1);
	localParams[79]:setAnchorPoint(0.50, 0.50);
	localParams[79]:setContentSize({width = 33.0, height = 33.0});
	localParams[79]:setPosition(localParams[75]:getContentSize().width - 123.75, 33.0);
	self.__children['battle_edit#profession_back5#add'] = localParams[79];
	localParams[79].__children = self.__children;
	localParams[79].__Name = 'battle_edit#profession_back5#add';
	localParams[75]:addChild(localParams[79]);

	localParams[80] = ImageView:create('uires/public/sheet_other/other0096.png', 1);
	localParams[80]:setAnchorPoint(0.50, 0.50);
	localParams[80]:setContentSize({width = 77.0, height = 45.0});
	localParams[80]:setPosition(localParams[75]:getContentSize().width - 33.50, 22.5);
	self.__children['battle_edit#profession_back5#battle_sign'] = localParams[80];
	localParams[80].__children = self.__children;
	localParams[80].__Name = 'battle_edit#profession_back5#battle_sign';
	localParams[75]:addChild(localParams[80]);

	localParams[81] = Button:create();
	localParams[81]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0072.png', 1);
	localParams[81]:setTitleFontSize(14);
	localParams[81]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[81]:setScale9Enabled(true);
	localParams[81]:setCapInsets({x = 15.000000, y = 11.000000, width = 205.000000, height = 42.000000});
	localParams[81]:setAnchorPoint(0.50, 0.50);
	localParams[81]:onClick(handler(self, self._onSelectedFormation));
	localParams[81]:setTouchEnabled(true);
	localParams[81]:setContentSize({width = 235.0, height = 64.0});
	localParams[81]:setPosition(142.52, localParams[47]:getContentSize().height/2 + (-176.51 * ccx.scaleY));
	self.__children['battle_edit#profession_back6'] = localParams[81];
	localParams[81].__children = self.__children;
	localParams[81].__Name = 'battle_edit#profession_back6';
	localParams[47]:addChild(localParams[81]);

	localParams[82] = ImageView:create('uires/public/sheet_other/other0095.png', 1);
	localParams[82]:setAnchorPoint(0.50, 0.50);
	localParams[82]:setContentSize({width = 244.0, height = 74.0});
	localParams[82]:setPosition(116.0, 33.0);
	self.__children['battle_edit#profession_back6#light'] = localParams[82];
	localParams[82].__children = self.__children;
	localParams[82].__Name = 'battle_edit#profession_back6#light';
	localParams[81]:addChild(localParams[82]);

	localParams[83] = Text:create();
	localParams[83]:setFontSize(20);
	localParams[83]:setString([[灵魂突破]]);
	localParams[83]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[83]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[83]:setAnchorPoint(0.50, 0.50);
	localParams[83]:setTextColor({r = 255, g = 240, b = 155});
	localParams[83]:setContentSize({width = 84.0, height = 22.0});
	localParams[83]:setPosition(117.31, 34.06);
	self.__children['battle_edit#profession_back6#formation_name'] = localParams[83];
	localParams[83].__children = self.__children;
	localParams[83].__Name = 'battle_edit#profession_back6#formation_name';
	localParams[81]:addChild(localParams[83]);

	localParams[84] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[84]:setAnchorPoint(0.50, 0.50);
	localParams[84]:setContentSize({width = 30.0, height = 30.0});
	localParams[84]:setPosition(localParams[81]:getContentSize().width - 15.00, 61.0);
	self.__children['battle_edit#profession_back6#point'] = localParams[84];
	localParams[84].__children = self.__children;
	localParams[84].__Name = 'battle_edit#profession_back6#point';
	localParams[81]:addChild(localParams[84]);

	localParams[85] = ImageView:create('uires/public/sheet_other/other0094.png', 1);
	localParams[85]:setAnchorPoint(0.50, 0.50);
	localParams[85]:setContentSize({width = 33.0, height = 33.0});
	localParams[85]:setPosition(localParams[81]:getContentSize().width - 123.75, 33.0);
	self.__children['battle_edit#profession_back6#add'] = localParams[85];
	localParams[85].__children = self.__children;
	localParams[85].__Name = 'battle_edit#profession_back6#add';
	localParams[81]:addChild(localParams[85]);

	localParams[86] = ImageView:create('uires/public/sheet_other/other0096.png', 1);
	localParams[86]:setAnchorPoint(0.50, 0.50);
	localParams[86]:setContentSize({width = 77.0, height = 45.0});
	localParams[86]:setPosition(localParams[81]:getContentSize().width - 33.50, 22.5);
	self.__children['battle_edit#profession_back6#battle_sign'] = localParams[86];
	localParams[86].__children = self.__children;
	localParams[86].__Name = 'battle_edit#profession_back6#battle_sign';
	localParams[81]:addChild(localParams[86]);

	localParams[87] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[87]:ignoreContentAdaptWithSize(false);
	localParams[87]:setScale9Enabled(true);
	localParams[87]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[87]:setAnchorPoint(0.50, 0.50);
	localParams[87]:setContentSize({width = 800.0, height = 93.0});
	localParams[87]:setPosition(WinSize.width - 400.00, WinSize.height - 46.50);
	self.__children['bg2'] = localParams[87];
	localParams[87].__children = self.__children;
	localParams[87].__Name = 'bg2';
	self:addChild(localParams[87]);

	localParams[88] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[88]:setAnchorPoint(0.50, 0.50);
	localParams[88]:setContentSize({width = 537.0, height = 164.0});
	localParams[88]:setPosition(268.5, WinSize.height - 82.00);
	self.__children['bg1'] = localParams[88];
	localParams[88].__children = self.__children;
	localParams[88].__Name = 'bg1';
	self:addChild(localParams[88]);

	localParams[89] = ImageView:create('uires/public/sheet_font/fontImg0092.png', 1);
	localParams[89]:setAnchorPoint(0.50, 0.50);
	localParams[89]:setContentSize({width = 126.0, height = 57.0});
	localParams[89]:setPosition(235.0, WinSize.height - 30.00);
	self.__children['bg4'] = localParams[89];
	localParams[89].__children = self.__children;
	localParams[89].__Name = 'bg4';
	self:addChild(localParams[89]);

	localParams[90] = Button:create();
	localParams[90]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[90]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[90]:setTitleFontSize(14);
	localParams[90]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[90]:setScale9Enabled(true);
	localParams[90]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[90]:setAnchorPoint(0.50, 0.50);
	localParams[90]:onClick(handler(self, self._back_btn));
	localParams[90]:setTouchEnabled(true);
	localParams[90]:setContentSize({width = 116.0, height = 77.0});
	localParams[90]:setPosition(68.17, WinSize.height - 44.38);
	self.__children['back_btn'] = localParams[90];
	localParams[90].__children = self.__children;
	localParams[90].__Name = 'back_btn';
	self:addChild(localParams[90]);

	localParams[91] = Button:create();
	localParams[91]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[91]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[91]:setTitleFontSize(14);
	localParams[91]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[91]:setScale9Enabled(true);
	localParams[91]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[91]:setAnchorPoint(0.50, 0.50);
	localParams[91]:onClick(handler(self, self._help_btn));
	localParams[91]:setTouchEnabled(true);
	localParams[91]:setContentSize({width = 58.0, height = 68.0});
	localParams[91]:setPosition(WinSize.width - 37.02, WinSize.height - 49.83);
	self.__children['help_btn'] = localParams[91];
	localParams[91].__children = self.__children;
	localParams[91].__Name = 'help_btn';
	self:addChild(localParams[91]);

	localParams[92] = Widget:create();
	localParams[92]:setAnchorPoint(0.00, 0.00);
	localParams[92]:setScaleX(0.90);
	localParams[92]:setScaleY(0.90);
	localParams[92]:setContentSize({width = 0.0, height = 0.0});
	localParams[92]:setPosition(52.93, -11.77);
	self.__children['help_btn#__SELECTED_SCALE'] = localParams[92];
	localParams[92].__children = self.__children;
	localParams[92].__Name = 'help_btn#__SELECTED_SCALE';
	localParams[91]:addChild(localParams[92]);

	localParams[93] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[93]:ignoreContentAdaptWithSize(false);
	localParams[93]:setScale9Enabled(true);
	localParams[93]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[93]:setAnchorPoint(0.00, 0.50);
	localParams[93]:setContentSize({width = 270.0, height = 360.0});
	localParams[93]:setPosition(1138.71, 373.15);
	self.__children['m_message_bg'] = localParams[93];
	localParams[93].__children = self.__children;
	localParams[93].__Name = 'm_message_bg';
	self:addChild(localParams[93]);

	localParams[94] = Widget:create();
	localParams[94]:setAnchorPoint(0.00, 0.00);
	localParams[94]:setContentSize({width = 0.0, height = 0.0});
	localParams[94]:setPosition(0.0, 360.0);
	self.__children['m_message_bg#node'] = localParams[94];
	localParams[94].__children = self.__children;
	localParams[94].__Name = 'm_message_bg#node';
	localParams[93]:addChild(localParams[94]);

	localParams[95] = Text:create();
	localParams[95]:setFontSize(24);
	localParams[95]:setString([[重甲奇兵]]);
	localParams[95]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[95]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[95]:setAnchorPoint(0.50, 0.50);
	localParams[95]:setTextColor({r = 255, g = 240, b = 155});
	localParams[95]:setContentSize({width = 100.0, height = 26.0});
	localParams[95]:setPosition(137.4, -28.0);
	self.__children['m_message_bg#node#m_name'] = localParams[95];
	localParams[95].__children = self.__children;
	localParams[95].__Name = 'm_message_bg#node#m_name';
	localParams[94]:addChild(localParams[95]);

	localParams[96] = Text:create();
	localParams[96]:setFontSize(20);
	localParams[96]:setString([[攻  击:]]);
	localParams[96]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[96]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[96]:setAnchorPoint(0.00, 0.50);
	localParams[96]:setContentSize({width = 58.0, height = 25.0});
	localParams[96]:setPosition(13.23, -60.31);
	self.__children['m_message_bg#node#property_txt1'] = localParams[96];
	localParams[96].__children = self.__children;
	localParams[96].__Name = 'm_message_bg#node#property_txt1';
	localParams[94]:addChild(localParams[96]);

	localParams[97] = RichText:create();
	localParams[97]:setDefaultFontSize(20);
	localParams[97]:setString([[d]]);
	localParams[97]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[97]:setTextAreaSize({width = 240, height = 0});
	localParams[97]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[97]:setAnchorPoint(0.00, 1.00);
	localParams[97]:setContentSize({width = 240.0, height = 0.0});
	localParams[97]:setPosition(15.0, -110.0);
	self.__children['m_message_bg#node#m_skill_explain1'] = localParams[97];
	localParams[97].__children = self.__children;
	localParams[97].__Name = 'm_message_bg#node#m_skill_explain1';
	localParams[94]:addChild(localParams[97]);

	localParams[98] = Text:create();
	localParams[98]:setFontSize(20);
	localParams[98]:setString([[血  量:]]);
	localParams[98]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[98]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[98]:setAnchorPoint(0.00, 0.50);
	localParams[98]:setContentSize({width = 58.0, height = 25.0});
	localParams[98]:setPosition(13.23, -87.5);
	self.__children['m_message_bg#node#property_txt3'] = localParams[98];
	localParams[98].__children = self.__children;
	localParams[98].__Name = 'm_message_bg#node#property_txt3';
	localParams[94]:addChild(localParams[98]);

	localParams[99] = Text:create();
	localParams[99]:setFontSize(20);
	localParams[99]:setString([[护  甲:]]);
	localParams[99]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[99]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[99]:setAnchorPoint(0.00, 0.50);
	localParams[99]:setContentSize({width = 58.0, height = 25.0});
	localParams[99]:setPosition(135.97, -60.31);
	self.__children['m_message_bg#node#property_txt2'] = localParams[99];
	localParams[99].__children = self.__children;
	localParams[99].__Name = 'm_message_bg#node#property_txt2';
	localParams[94]:addChild(localParams[99]);

	localParams[100] = Text:create();
	localParams[100]:setFontSize(20);
	localParams[100]:setString([[速  度:]]);
	localParams[100]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[100]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[100]:setAnchorPoint(0.00, 0.50);
	localParams[100]:setContentSize({width = 58.0, height = 25.0});
	localParams[100]:setPosition(135.97, -87.5);
	self.__children['m_message_bg#node#property_txt4'] = localParams[100];
	localParams[100].__children = self.__children;
	localParams[100].__Name = 'm_message_bg#node#property_txt4';
	localParams[94]:addChild(localParams[100]);

	localParams[101] = Text:create();
	localParams[101]:setFontSize(20);
	localParams[101]:setString([[99999]]);
	localParams[101]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[101]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[101]:setAnchorPoint(0.00, 0.50);
	localParams[101]:setTextColor({r = 80, g = 255, b = 0});
	localParams[101]:setContentSize({width = 58.0, height = 25.0});
	localParams[101]:setPosition(74.23, -60.95);
	self.__children['m_message_bg#node#property1'] = localParams[101];
	localParams[101].__children = self.__children;
	localParams[101].__Name = 'm_message_bg#node#property1';
	localParams[94]:addChild(localParams[101]);

	localParams[102] = Text:create();
	localParams[102]:setFontSize(20);
	localParams[102]:setString([[99999]]);
	localParams[102]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[102]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[102]:setAnchorPoint(0.00, 0.39);
	localParams[102]:setTextColor({r = 80, g = 255, b = 0});
	localParams[102]:setContentSize({width = 58.0, height = 25.0});
	localParams[102]:setPosition(198.0, -63.97);
	self.__children['m_message_bg#node#property2'] = localParams[102];
	localParams[102].__children = self.__children;
	localParams[102].__Name = 'm_message_bg#node#property2';
	localParams[94]:addChild(localParams[102]);

	localParams[103] = Text:create();
	localParams[103]:setFontSize(20);
	localParams[103]:setString([[99999]]);
	localParams[103]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[103]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[103]:setAnchorPoint(0.00, 0.50);
	localParams[103]:setTextColor({r = 80, g = 255, b = 0});
	localParams[103]:setContentSize({width = 58.0, height = 25.0});
	localParams[103]:setPosition(74.23, -89.5);
	self.__children['m_message_bg#node#property3'] = localParams[103];
	localParams[103].__children = self.__children;
	localParams[103].__Name = 'm_message_bg#node#property3';
	localParams[94]:addChild(localParams[103]);

	localParams[104] = Text:create();
	localParams[104]:setFontSize(20);
	localParams[104]:setString([[99999]]);
	localParams[104]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[104]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[104]:setAnchorPoint(0.00, 0.50);
	localParams[104]:setTextColor({r = 80, g = 255, b = 0});
	localParams[104]:setContentSize({width = 58.0, height = 25.0});
	localParams[104]:setPosition(198.0, -89.5);
	self.__children['m_message_bg#node#property4'] = localParams[104];
	localParams[104].__children = self.__children;
	localParams[104].__Name = 'm_message_bg#node#property4';
	localParams[94]:addChild(localParams[104]);

	localParams[105] = RichText:create();
	localParams[105]:setDefaultFontSize(20);
	localParams[105]:setString([[]]);
	localParams[105]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[105]:setTextAreaSize({width = 240, height = 0});
	localParams[105]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[105]:setAnchorPoint(0.00, 1.00);
	localParams[105]:setContentSize({width = 240.0, height = 0.0});
	localParams[105]:setPosition(15.0, -227.94);
	self.__children['m_message_bg#node#m_skill_explain2'] = localParams[105];
	localParams[105].__children = self.__children;
	localParams[105].__Name = 'm_message_bg#node#m_skill_explain2';
	localParams[94]:addChild(localParams[105]);

	localParams[106] = RichText:create();
	localParams[106]:setDefaultFontSize(20);
	localParams[106]:setString([[]]);
	localParams[106]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[106]:setTextAreaSize({width = 240, height = 0});
	localParams[106]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[106]:setAnchorPoint(0.00, 1.00);
	localParams[106]:setContentSize({width = 240.0, height = 0.0});
	localParams[106]:setPosition(15.0, -338.34);
	self.__children['m_message_bg#node#m_skill_explain3'] = localParams[106];
	localParams[106].__children = self.__children;
	localParams[106].__Name = 'm_message_bg#node#m_skill_explain3';
	localParams[94]:addChild(localParams[106]);

end
function BattleEditLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0015.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function BattleEditLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function BattleEditLayer:_fight_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.fight_btn then
        return self.m_ClickDelegate:fight_btn(sender);
    end
    if self.fight_btn then
        return self:fight_btn(sender);
    end
end


function BattleEditLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function BattleEditLayer:_onSelectedFormation(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSelectedFormation then
        return self.m_ClickDelegate:onSelectedFormation(sender);
    end
    if self.onSelectedFormation then
        return self:onSelectedFormation(sender);
    end
end


function BattleEditLayer:_set_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.set_btn then
        return self.m_ClickDelegate:set_btn(sender);
    end
    if self.set_btn then
        return self:set_btn(sender);
    end
end


function BattleEditLayer:_skill_bg_btn2(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.skill_bg_btn2 then
        return self.m_ClickDelegate:skill_bg_btn2(sender);
    end
    if self.skill_bg_btn2 then
        return self:skill_bg_btn2(sender);
    end
end


function BattleEditLayer:_skill_bg_btn1(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.skill_bg_btn1 then
        return self.m_ClickDelegate:skill_bg_btn1(sender);
    end
    if self.skill_bg_btn1 then
        return self:skill_bg_btn1(sender);
    end
end


function BattleEditLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function BattleEditLayer:_onMonster(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onMonster then
        return self.m_ClickDelegate:onMonster(sender);
    end
    if self.onMonster then
        return self:onMonster(sender);
    end
end


return BattleEditLayer;