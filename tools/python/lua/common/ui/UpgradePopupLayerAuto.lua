-- 
-- Author: generation auto
-- Brief：UpgradePopupLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local UpgradePopupLayer = class('UpgradePopupLayer', gamecore.ui.BaseWidget);

function UpgradePopupLayer:create(...) 
    local instance = UpgradePopupLayer.new(...);
    return instance;
end

function UpgradePopupLayer:ctor(...) 
    if UpgradePopupLayer.super and UpgradePopupLayer.super.ctor then
        UpgradePopupLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function UpgradePopupLayer:initView()
    self.__LAYER_NAME = 'common.ui.UpgradePopupLayer';
    local localParams = {};
	localParams[1] = Node:create();
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 0.0, height = 0.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Node_2'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Node_2';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/bg_img/bgImg0010.png', 0);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 1136.0, height = 768.0});
	localParams[2]:setPosition(0.0, -1.9);
	self.__children['Node_2#bg'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Node_2#bg';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/hero/hero001.png', 0);
	localParams[3]:setAnchorPoint(0.50, 0.00);
	localParams[3]:setContentSize({width = 528.0, height = 604.0});
	localParams[3]:setPosition(localParams[2]:getContentSize().width/2 + (-0.00 * ccx.scaleX), 0.0);
	self.__children['Node_2#bg#role_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Node_2#bg#role_sprite';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0234.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setVisible(false);
	localParams[4]:setContentSize({width = 194.0, height = 54.0});
	localParams[4]:setPosition(0.0, 240.0);
	self.__children['Node_2#Sprite_65'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Node_2#Sprite_65';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0003.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(0.90);
	localParams[5]:setScaleY(0.90);
	localParams[5]:setContentSize({width = 204.0, height = 29.0});
	localParams[5]:setPosition(-700.0, 240.0);
	self.__children['Node_2#title_bg'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Node_2#title_bg';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_common/fontImg0065.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 204.0, height = 24.0});
	localParams[6]:setPosition(0.0, -260.0);
	self.__children['Node_2#Sprite_1_0'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Node_2#Sprite_1_0';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0005.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.90);
	localParams[7]:setScaleY(0.90);
	localParams[7]:setContentSize({width = 204.0, height = 29.0});
	localParams[7]:setPosition(700.0, 240.0);
	self.__children['Node_2#title_bg_0'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Node_2#title_bg_0';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 335.0, height = 130.0});
	localParams[8]:setPosition(-800.0, 120.0);
	self.__children['Node_2#skill1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Node_2#skill1';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._onSkill));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 118.0, height = 119.0});
	localParams[9]:setPosition(70.0, 65.0);
	self.__children['Node_2#skill1#item'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Node_2#skill1#item';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[]]);
	localParams[10]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setTextColor({r = 255, g = 240, b = 155});
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(130.0, 100.0);
	self.__children['Node_2#skill1#item#name'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Node_2#skill1#item#name';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = ImageView:create(, 0);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 46.0, height = 46.0});
	localParams[11]:setPosition(59.0, 59.5);
	self.__children['Node_2#skill1#item#image'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Node_2#skill1#item#image';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(16);
	localParams[12]:setString([[]]);
	localParams[12]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[12]:setTextAreaSize({width = 175, height = 75});
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[12]:setAnchorPoint(0.00, 1.00);
	localParams[12]:setContentSize({width = 175.0, height = 75.0});
	localParams[12]:setPosition(130.0, 80.0);
	self.__children['Node_2#skill1#item#desc'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Node_2#skill1#item#desc';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 38.0, height = 42.0});
	localParams[13]:setPosition(38.0, 97.0);
	self.__children['Node_2#skill1#anger'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Node_2#skill1#anger';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(24);
	localParams[14]:setString([[]]);
	localParams[14]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(19.0, 20.0);
	self.__children['Node_2#skill1#anger#value'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Node_2#skill1#anger#value';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 335.0, height = 130.0});
	localParams[15]:setPosition(800.0, 120.0);
	self.__children['Node_2#skill2'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Node_2#skill2';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = Button:create();
	localParams[16]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[16]:setTitleFontSize(14);
	localParams[16]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[16]:setScale9Enabled(true);
	localParams[16]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:onClick(handler(self, self._onSkill));
	localParams[16]:setTouchEnabled(true);
	localParams[16]:setContentSize({width = 118.0, height = 119.0});
	localParams[16]:setPosition(70.0, 65.0);
	self.__children['Node_2#skill2#item'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Node_2#skill2#item';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(20);
	localParams[17]:setString([[]]);
	localParams[17]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[17]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[17]:setAnchorPoint(0.00, 0.50);
	localParams[17]:setTextColor({r = 255, g = 240, b = 155});
	localParams[17]:setContentSize({width = 0.0, height = 0.0});
	localParams[17]:setPosition(130.0, 100.0);
	self.__children['Node_2#skill2#item#name'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Node_2#skill2#item#name';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create(, 0);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 46.0, height = 46.0});
	localParams[18]:setPosition(59.0, 59.5);
	self.__children['Node_2#skill2#item#image'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Node_2#skill2#item#image';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(16);
	localParams[19]:setString([[]]);
	localParams[19]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[19]:setTextAreaSize({width = 175, height = 75});
	localParams[19]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[19]:setAnchorPoint(0.00, 1.00);
	localParams[19]:setContentSize({width = 175.0, height = 75.0});
	localParams[19]:setPosition(130.0, 80.0);
	self.__children['Node_2#skill2#item#desc'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Node_2#skill2#item#desc';
	localParams[16]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 38.0, height = 42.0});
	localParams[20]:setPosition(38.0, 97.0);
	self.__children['Node_2#skill2#anger'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'Node_2#skill2#anger';
	localParams[15]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(24);
	localParams[21]:setString([[]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 0.0, height = 0.0});
	localParams[21]:setPosition(19.0, 20.0);
	self.__children['Node_2#skill2#anger#value'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Node_2#skill2#anger#value';
	localParams[20]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[22]:ignoreContentAdaptWithSize(false);
	localParams[22]:setScale9Enabled(true);
	localParams[22]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 335.0, height = 130.0});
	localParams[22]:setPosition(-800.0, -30.0);
	self.__children['Node_2#skill3'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'Node_2#skill3';
	localParams[1]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:onClick(handler(self, self._onSkill));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 118.0, height = 119.0});
	localParams[23]:setPosition(70.0, 65.0);
	self.__children['Node_2#skill3#item'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'Node_2#skill3#item';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[]]);
	localParams[24]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[24]:setAnchorPoint(0.00, 0.50);
	localParams[24]:setTextColor({r = 255, g = 240, b = 155});
	localParams[24]:setContentSize({width = 0.0, height = 0.0});
	localParams[24]:setPosition(130.0, 100.0);
	self.__children['Node_2#skill3#item#name'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'Node_2#skill3#item#name';
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create(, 0);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 46.0, height = 46.0});
	localParams[25]:setPosition(59.0, 59.5);
	self.__children['Node_2#skill3#item#image'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'Node_2#skill3#item#image';
	localParams[23]:addChild(localParams[25]);

	localParams[26] = Text:create();
	localParams[26]:setFontSize(16);
	localParams[26]:setString([[]]);
	localParams[26]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[26]:setTextAreaSize({width = 175, height = 75});
	localParams[26]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[26]:setAnchorPoint(0.00, 1.00);
	localParams[26]:setContentSize({width = 175.0, height = 75.0});
	localParams[26]:setPosition(130.0, 80.0);
	self.__children['Node_2#skill3#item#desc'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'Node_2#skill3#item#desc';
	localParams[23]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 38.0, height = 42.0});
	localParams[27]:setPosition(38.0, 97.0);
	self.__children['Node_2#skill3#anger'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'Node_2#skill3#anger';
	localParams[22]:addChild(localParams[27]);

	localParams[28] = Text:create();
	localParams[28]:setFontSize(24);
	localParams[28]:setString([[]]);
	localParams[28]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[28]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 0.0, height = 0.0});
	localParams[28]:setPosition(19.0, 20.0);
	self.__children['Node_2#skill3#anger#value'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'Node_2#skill3#anger#value';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[29]:ignoreContentAdaptWithSize(false);
	localParams[29]:setScale9Enabled(true);
	localParams[29]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 335.0, height = 130.0});
	localParams[29]:setPosition(800.0, -30.0);
	self.__children['Node_2#skill4'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'Node_2#skill4';
	localParams[1]:addChild(localParams[29]);

	localParams[30] = Button:create();
	localParams[30]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[30]:setTitleFontSize(14);
	localParams[30]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[30]:setScale9Enabled(true);
	localParams[30]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:onClick(handler(self, self._onSkill));
	localParams[30]:setTouchEnabled(true);
	localParams[30]:setContentSize({width = 118.0, height = 119.0});
	localParams[30]:setPosition(70.0, 65.0);
	self.__children['Node_2#skill4#item'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'Node_2#skill4#item';
	localParams[29]:addChild(localParams[30]);

	localParams[31] = Text:create();
	localParams[31]:setFontSize(20);
	localParams[31]:setString([[]]);
	localParams[31]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[31]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[31]:setAnchorPoint(0.00, 0.50);
	localParams[31]:setTextColor({r = 255, g = 240, b = 155});
	localParams[31]:setContentSize({width = 0.0, height = 0.0});
	localParams[31]:setPosition(130.0, 100.0);
	self.__children['Node_2#skill4#item#name'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Node_2#skill4#item#name';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create(, 0);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 46.0, height = 46.0});
	localParams[32]:setPosition(59.0, 59.5);
	self.__children['Node_2#skill4#item#image'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'Node_2#skill4#item#image';
	localParams[30]:addChild(localParams[32]);

	localParams[33] = Text:create();
	localParams[33]:setFontSize(16);
	localParams[33]:setString([[]]);
	localParams[33]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[33]:setTextAreaSize({width = 175, height = 75});
	localParams[33]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[33]:setAnchorPoint(0.00, 1.00);
	localParams[33]:setContentSize({width = 175.0, height = 75.0});
	localParams[33]:setPosition(130.0, 80.0);
	self.__children['Node_2#skill4#item#desc'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'Node_2#skill4#item#desc';
	localParams[30]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 38.0, height = 42.0});
	localParams[34]:setPosition(38.0, 97.0);
	self.__children['Node_2#skill4#anger'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'Node_2#skill4#anger';
	localParams[29]:addChild(localParams[34]);

	localParams[35] = Text:create();
	localParams[35]:setFontSize(24);
	localParams[35]:setString([[]]);
	localParams[35]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[35]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 0.0, height = 0.0});
	localParams[35]:setPosition(19.0, 20.0);
	self.__children['Node_2#skill4#anger#value'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'Node_2#skill4#anger#value';
	localParams[34]:addChild(localParams[35]);

	localParams[36] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[36]:ignoreContentAdaptWithSize(false);
	localParams[36]:setScale9Enabled(true);
	localParams[36]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setContentSize({width = 335.0, height = 130.0});
	localParams[36]:setPosition(-800.0, -180.0);
	self.__children['Node_2#skill5'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'Node_2#skill5';
	localParams[1]:addChild(localParams[36]);

	localParams[37] = Button:create();
	localParams[37]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[37]:setTitleFontSize(14);
	localParams[37]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[37]:setScale9Enabled(true);
	localParams[37]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:onClick(handler(self, self._onSkill));
	localParams[37]:setTouchEnabled(true);
	localParams[37]:setContentSize({width = 118.0, height = 119.0});
	localParams[37]:setPosition(70.0, 65.0);
	self.__children['Node_2#skill5#item'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'Node_2#skill5#item';
	localParams[36]:addChild(localParams[37]);

	localParams[38] = Text:create();
	localParams[38]:setFontSize(20);
	localParams[38]:setString([[]]);
	localParams[38]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[38]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[38]:setAnchorPoint(0.00, 0.50);
	localParams[38]:setTextColor({r = 255, g = 240, b = 155});
	localParams[38]:setContentSize({width = 0.0, height = 0.0});
	localParams[38]:setPosition(130.0, 100.0);
	self.__children['Node_2#skill5#item#name'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'Node_2#skill5#item#name';
	localParams[37]:addChild(localParams[38]);

	localParams[39] = ImageView:create(, 0);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 46.0, height = 46.0});
	localParams[39]:setPosition(59.0, 59.5);
	self.__children['Node_2#skill5#item#image'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'Node_2#skill5#item#image';
	localParams[37]:addChild(localParams[39]);

	localParams[40] = Text:create();
	localParams[40]:setFontSize(16);
	localParams[40]:setString([[]]);
	localParams[40]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[40]:setTextAreaSize({width = 175, height = 75});
	localParams[40]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[40]:setAnchorPoint(0.00, 1.00);
	localParams[40]:setContentSize({width = 175.0, height = 75.0});
	localParams[40]:setPosition(130.0, 80.0);
	self.__children['Node_2#skill5#item#desc'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'Node_2#skill5#item#desc';
	localParams[37]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 38.0, height = 42.0});
	localParams[41]:setPosition(38.0, 97.0);
	self.__children['Node_2#skill5#anger'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'Node_2#skill5#anger';
	localParams[36]:addChild(localParams[41]);

	localParams[42] = Text:create();
	localParams[42]:setFontSize(24);
	localParams[42]:setString([[]]);
	localParams[42]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[42]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setContentSize({width = 0.0, height = 0.0});
	localParams[42]:setPosition(19.0, 20.0);
	self.__children['Node_2#skill5#anger#value'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'Node_2#skill5#anger#value';
	localParams[41]:addChild(localParams[42]);

	localParams[43] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[43]:ignoreContentAdaptWithSize(false);
	localParams[43]:setScale9Enabled(true);
	localParams[43]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:setContentSize({width = 335.0, height = 130.0});
	localParams[43]:setPosition(800.0, -180.0);
	self.__children['Node_2#skill6'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'Node_2#skill6';
	localParams[1]:addChild(localParams[43]);

	localParams[44] = Button:create();
	localParams[44]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[44]:setTitleFontSize(14);
	localParams[44]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[44]:setScale9Enabled(true);
	localParams[44]:setCapInsets({x = 15.000000, y = 11.000000, width = 88.000000, height = 97.000000});
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:onClick(handler(self, self._onSkill));
	localParams[44]:setTouchEnabled(true);
	localParams[44]:setContentSize({width = 118.0, height = 119.0});
	localParams[44]:setPosition(70.0, 65.0);
	self.__children['Node_2#skill6#item'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'Node_2#skill6#item';
	localParams[43]:addChild(localParams[44]);

	localParams[45] = Text:create();
	localParams[45]:setFontSize(20);
	localParams[45]:setString([[]]);
	localParams[45]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[45]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[45]:setAnchorPoint(0.00, 0.50);
	localParams[45]:setTextColor({r = 255, g = 240, b = 155});
	localParams[45]:setContentSize({width = 0.0, height = 0.0});
	localParams[45]:setPosition(130.0, 100.0);
	self.__children['Node_2#skill6#item#name'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'Node_2#skill6#item#name';
	localParams[44]:addChild(localParams[45]);

	localParams[46] = ImageView:create(, 0);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setContentSize({width = 46.0, height = 46.0});
	localParams[46]:setPosition(59.0, 59.5);
	self.__children['Node_2#skill6#item#image'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'Node_2#skill6#item#image';
	localParams[44]:addChild(localParams[46]);

	localParams[47] = Text:create();
	localParams[47]:setFontSize(16);
	localParams[47]:setString([[]]);
	localParams[47]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[47]:setTextAreaSize({width = 175, height = 75});
	localParams[47]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[47]:setAnchorPoint(0.00, 1.00);
	localParams[47]:setContentSize({width = 175.0, height = 75.0});
	localParams[47]:setPosition(130.0, 80.0);
	self.__children['Node_2#skill6#item#desc'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'Node_2#skill6#item#desc';
	localParams[44]:addChild(localParams[47]);

	localParams[48] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setContentSize({width = 38.0, height = 42.0});
	localParams[48]:setPosition(38.0, 97.0);
	self.__children['Node_2#skill6#anger'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'Node_2#skill6#anger';
	localParams[43]:addChild(localParams[48]);

	localParams[49] = Text:create();
	localParams[49]:setFontSize(24);
	localParams[49]:setString([[]]);
	localParams[49]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[49]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setContentSize({width = 0.0, height = 0.0});
	localParams[49]:setPosition(19.0, 20.0);
	self.__children['Node_2#skill6#anger#value'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'Node_2#skill6#anger#value';
	localParams[48]:addChild(localParams[49]);

	localParams[50] = Node:create();
	localParams[50]:setAnchorPoint(0.00, 0.00);
	localParams[50]:setContentSize({width = 0.0, height = 0.0});
	localParams[50]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 0.0);
	self.__children['Node_1'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'Node_1';
	self:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_common/fontImg0065.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 204.0, height = 24.0});
	localParams[51]:setPosition(0.0, 55.0);
	self.__children['Node_1#Sprite_1'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'Node_1#Sprite_1';
	localParams[50]:addChild(localParams[51]);

	localParams[52] = Text:create();
	localParams[52]:setFontSize(24);
	localParams[52]:setString([[恭喜你，账号达到了   级]]);
	localParams[52]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[52]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setTextColor({r = 255, g = 240, b = 155});
	localParams[52]:setContentSize({width = 281.0, height = 28.0});
	localParams[52]:setPosition(0.0, 114.0);
	self.__children['Node_1#Text_1'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'Node_1#Text_1';
	localParams[50]:addChild(localParams[52]);

	localParams[53] = Text:create();
	localParams[53]:setFontSize(24);
	localParams[53]:setString([[15]]);
	localParams[53]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[53]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:setTextColor({r = 0, g = 235, b = 255});
	localParams[53]:setContentSize({width = 33.0, height = 28.0});
	localParams[53]:setPosition(234.0, 14.0);
	self.__children['Node_1#Text_1#level'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'Node_1#Text_1#level';
	localParams[52]:addChild(localParams[53]);

end
function UpgradePopupLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0010.png');
	table.insert(self._textureList, 'uires/public/hero/hero001.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function UpgradePopupLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function UpgradePopupLayer:_onSkill(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSkill then
        return self.m_ClickDelegate:onSkill(sender);
    end
    if self.onSkill then
        return self:onSkill(sender);
    end
end


return UpgradePopupLayer;