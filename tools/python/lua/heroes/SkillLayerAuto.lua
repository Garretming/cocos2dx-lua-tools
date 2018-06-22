-- 
-- Author: generation auto
-- Brief：SkillLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SkillLayer = class('SkillLayer', gamecore.ui.BaseWidget);

function SkillLayer:create(...) 
    local instance = SkillLayer.new(...);
    return instance;
end

function SkillLayer:ctor(...) 
    if SkillLayer.super and SkillLayer.super.ctor then
        SkillLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function SkillLayer:initView()
    self.__LAYER_NAME = 'heroes.SkillLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0061.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 59.000000, y = 59.000000,width = 62.000000, height = 62.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = WinSize.width - 64.00, height = WinSize.height - 215.00});
	localParams[1]:setPosition(WinSize.width/2 + (-17.00 * ccx.scaleX), WinSize.height/2 + (8.00 * ccx.scaleY));
	self.__children['mainNodeUnder_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'mainNodeUnder_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/hero/hero001.png', 0);
	localParams[2]:setAnchorPoint(0.50, 0.00);
	localParams[2]:setFlippedX(true);
	localParams[2]:setContentSize({width = 528.0, height = 604.0});
	localParams[2]:setPosition(214.0, -113.0);
	self.__children['mainNodeUnder_img#role_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'mainNodeUnder_img#role_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[3]:loadTexturePressed('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 4.000000, width = 88.000000, height = 111.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._onSkill));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 118.0, height = 119.0});
	localParams[3]:setPosition(localParams[1]:getContentSize().width - 489.00, localParams[1]:getContentSize().height/2 + (113.01 * ccx.scaleY));
	self.__children['mainNodeUnder_img#Button_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'mainNodeUnder_img#Button_1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0079.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 126.0, height = 129.0});
	localParams[4]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_1#__SELECTED_IMG'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'mainNodeUnder_img#Button_1#__SELECTED_IMG';
	localParams[3]:setSelectNode(localParams[4]);
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create(nil, 0);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 46.0, height = 46.0});
	localParams[5]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_1#skillItem_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'mainNodeUnder_img#Button_1#skillItem_sprite';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = RichText:create();
	localParams[6]:setDefaultFontSize(20);
	localParams[6]:setString([[能量倾泻]]);
	localParams[6]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 255, g = 240, b = 155});
	localParams[6]:setContentSize({width = 84.0, height = 22.0});
	localParams[6]:setPosition(59.0, -8.0);
	self.__children['mainNodeUnder_img#Button_1#skillName_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'mainNodeUnder_img#Button_1#skillName_txt';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0068.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 111.0, height = 19.0});
	localParams[7]:setPosition(63.72, -38.08);
	self.__children['mainNodeUnder_img#Button_1#expBg_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'mainNodeUnder_img#Button_1#expBg_sprite';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = LoadingBar:create('uires/public/sheet_other/other0067.png', 1, 66.00);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 111.0, height = 19.0});
	localParams[8]:setPosition(63.72, -38.08);
	self.__children['mainNodeUnder_img#Button_1#exp_loadingBar'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'mainNodeUnder_img#Button_1#exp_loadingBar';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_icon/icon0053.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 42.0, height = 36.0});
	localParams[9]:setPosition(3.0, -38.0);
	self.__children['mainNodeUnder_img#Button_1#exp_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'mainNodeUnder_img#Button_1#exp_sprite';
	localParams[3]:addChild(localParams[9]);

	localParams[10] = RichText:create();
	localParams[10]:setDefaultFontSize(20);
	localParams[10]:setString([[5/20]]);
	localParams[10]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[10]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 45.0, height = 25.0});
	localParams[10]:setPosition(63.0, -38.0);
	self.__children['mainNodeUnder_img#Button_1#exp_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'mainNodeUnder_img#Button_1#exp_txt';
	localParams[3]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 103.0, height = 103.0});
	localParams[11]:setPosition(59.0, 52.36);
	self.__children['mainNodeUnder_img#Button_1#lock_sprite'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'mainNodeUnder_img#Button_1#lock_sprite';
	localParams[3]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_font/fontImg0063.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 69.0, height = 26.0});
	localParams[12]:setPosition(59.0, 15.47);
	self.__children['mainNodeUnder_img#Button_1#cue_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'mainNodeUnder_img#Button_1#cue_sprite';
	localParams[3]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[13]:loadTexturePressed('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 15.000000, y = 4.000000, width = 88.000000, height = 111.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:onClick(handler(self, self._onSkill));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 118.0, height = 119.0});
	localParams[13]:setPosition(localParams[1]:getContentSize().width - 329.00, localParams[1]:getContentSize().height/2 + (113.01 * ccx.scaleY));
	self.__children['mainNodeUnder_img#Button_2'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'mainNodeUnder_img#Button_2';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0079.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 126.0, height = 129.0});
	localParams[14]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_2#__SELECTED_IMG'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'mainNodeUnder_img#Button_2#__SELECTED_IMG';
	localParams[13]:setSelectNode(localParams[14]);
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create(nil, 0);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 46.0, height = 46.0});
	localParams[15]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_2#skillItem_sprite'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'mainNodeUnder_img#Button_2#skillItem_sprite';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = RichText:create();
	localParams[16]:setDefaultFontSize(20);
	localParams[16]:setString([[能量倾泻]]);
	localParams[16]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[16]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 255, g = 240, b = 155});
	localParams[16]:setContentSize({width = 84.0, height = 22.0});
	localParams[16]:setPosition(59.0, -8.0);
	self.__children['mainNodeUnder_img#Button_2#skillName_txt'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'mainNodeUnder_img#Button_2#skillName_txt';
	localParams[13]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0068.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 111.0, height = 19.0});
	localParams[17]:setPosition(61.36, -38.08);
	self.__children['mainNodeUnder_img#Button_2#expBg_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'mainNodeUnder_img#Button_2#expBg_sprite';
	localParams[13]:addChild(localParams[17]);

	localParams[18] = LoadingBar:create('uires/public/sheet_other/other0067.png', 1, 79.00);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 111.0, height = 19.0});
	localParams[18]:setPosition(63.72, -38.08);
	self.__children['mainNodeUnder_img#Button_2#exp_loadingBar'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'mainNodeUnder_img#Button_2#exp_loadingBar';
	localParams[13]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_icon/icon0053.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 42.0, height = 36.0});
	localParams[19]:setPosition(3.0, -38.0);
	self.__children['mainNodeUnder_img#Button_2#exp_sprite'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'mainNodeUnder_img#Button_2#exp_sprite';
	localParams[13]:addChild(localParams[19]);

	localParams[20] = RichText:create();
	localParams[20]:setDefaultFontSize(20);
	localParams[20]:setString([[5/20]]);
	localParams[20]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[20]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 45.0, height = 25.0});
	localParams[20]:setPosition(63.0, -38.0);
	self.__children['mainNodeUnder_img#Button_2#exp_txt'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'mainNodeUnder_img#Button_2#exp_txt';
	localParams[13]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 103.0, height = 103.0});
	localParams[21]:setPosition(59.0, 52.36);
	self.__children['mainNodeUnder_img#Button_2#lock_sprite'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'mainNodeUnder_img#Button_2#lock_sprite';
	localParams[13]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_font/fontImg0056.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 68.0, height = 26.0});
	localParams[22]:setPosition(59.0, 15.47);
	self.__children['mainNodeUnder_img#Button_2#cue_sprite'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'mainNodeUnder_img#Button_2#cue_sprite';
	localParams[13]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[23]:loadTexturePressed('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = 15.000000, y = 4.000000, width = 88.000000, height = 111.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:onClick(handler(self, self._onSkill));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 118.0, height = 119.0});
	localParams[23]:setPosition(localParams[1]:getContentSize().width - 169.00, localParams[1]:getContentSize().height/2 + (113.01 * ccx.scaleY));
	self.__children['mainNodeUnder_img#Button_3'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'mainNodeUnder_img#Button_3';
	localParams[1]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_other/other0079.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 126.0, height = 129.0});
	localParams[24]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_3#__SELECTED_IMG'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'mainNodeUnder_img#Button_3#__SELECTED_IMG';
	localParams[23]:setSelectNode(localParams[24]);
	localParams[23]:addChild(localParams[24]);

	localParams[25] = ImageView:create(nil, 0);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 46.0, height = 46.0});
	localParams[25]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_3#skillItem_sprite'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'mainNodeUnder_img#Button_3#skillItem_sprite';
	localParams[23]:addChild(localParams[25]);

	localParams[26] = RichText:create();
	localParams[26]:setDefaultFontSize(20);
	localParams[26]:setString([[能量倾泻]]);
	localParams[26]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[26]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setTextColor({r = 255, g = 240, b = 155});
	localParams[26]:setContentSize({width = 84.0, height = 22.0});
	localParams[26]:setPosition(59.0, -8.0);
	self.__children['mainNodeUnder_img#Button_3#skillName_txt'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'mainNodeUnder_img#Button_3#skillName_txt';
	localParams[23]:addChild(localParams[26]);

	localParams[27] = ImageView:create('uires/public/sheet_other/other0068.png', 1);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setContentSize({width = 111.0, height = 19.0});
	localParams[27]:setPosition(61.36, -38.08);
	self.__children['mainNodeUnder_img#Button_3#expBg_sprite'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'mainNodeUnder_img#Button_3#expBg_sprite';
	localParams[23]:addChild(localParams[27]);

	localParams[28] = LoadingBar:create('uires/public/sheet_other/other0067.png', 1, 100.00);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 111.0, height = 19.0});
	localParams[28]:setPosition(63.72, -38.08);
	self.__children['mainNodeUnder_img#Button_3#exp_loadingBar'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'mainNodeUnder_img#Button_3#exp_loadingBar';
	localParams[23]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_icon/icon0053.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 42.0, height = 36.0});
	localParams[29]:setPosition(3.0, -38.0);
	self.__children['mainNodeUnder_img#Button_3#exp_sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'mainNodeUnder_img#Button_3#exp_sprite';
	localParams[23]:addChild(localParams[29]);

	localParams[30] = RichText:create();
	localParams[30]:setDefaultFontSize(20);
	localParams[30]:setString([[5/20]]);
	localParams[30]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[30]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 45.0, height = 25.0});
	localParams[30]:setPosition(63.0, -38.0);
	self.__children['mainNodeUnder_img#Button_3#exp_txt'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'mainNodeUnder_img#Button_3#exp_txt';
	localParams[23]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 103.0, height = 103.0});
	localParams[31]:setPosition(59.0, 52.36);
	self.__children['mainNodeUnder_img#Button_3#lock_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'mainNodeUnder_img#Button_3#lock_sprite';
	localParams[23]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_font/fontImg0063.png', 1);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 69.0, height = 26.0});
	localParams[32]:setPosition(59.0, 15.47);
	self.__children['mainNodeUnder_img#Button_3#cue_sprite'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'mainNodeUnder_img#Button_3#cue_sprite';
	localParams[23]:addChild(localParams[32]);

	localParams[33] = Button:create();
	localParams[33]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[33]:loadTexturePressed('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[33]:setTitleFontSize(14);
	localParams[33]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[33]:setScale9Enabled(true);
	localParams[33]:setCapInsets({x = 15.000000, y = 4.000000, width = 88.000000, height = 111.000000});
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:onClick(handler(self, self._onSkill));
	localParams[33]:setTouchEnabled(true);
	localParams[33]:setContentSize({width = 118.0, height = 119.0});
	localParams[33]:setPosition(localParams[1]:getContentSize().width - 489.00, localParams[1]:getContentSize().height/2 + (-73.01 * ccx.scaleY));
	self.__children['mainNodeUnder_img#Button_4'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'mainNodeUnder_img#Button_4';
	localParams[1]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0079.png', 1);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 126.0, height = 129.0});
	localParams[34]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_4#__SELECTED_IMG'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'mainNodeUnder_img#Button_4#__SELECTED_IMG';
	localParams[33]:setSelectNode(localParams[34]);
	localParams[33]:addChild(localParams[34]);

	localParams[35] = ImageView:create(nil, 0);
	localParams[35]:setAnchorPoint(0.50, 0.50);
	localParams[35]:setContentSize({width = 46.0, height = 46.0});
	localParams[35]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_4#skillItem_sprite'] = localParams[35];
	localParams[35].__children = self.__children;
	localParams[35].__Name = 'mainNodeUnder_img#Button_4#skillItem_sprite';
	localParams[33]:addChild(localParams[35]);

	localParams[36] = RichText:create();
	localParams[36]:setDefaultFontSize(20);
	localParams[36]:setString([[能量倾泻]]);
	localParams[36]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[36]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[36]:setAnchorPoint(0.50, 0.50);
	localParams[36]:setTextColor({r = 255, g = 240, b = 155});
	localParams[36]:setContentSize({width = 84.0, height = 22.0});
	localParams[36]:setPosition(59.0, -8.0);
	self.__children['mainNodeUnder_img#Button_4#skillName_txt'] = localParams[36];
	localParams[36].__children = self.__children;
	localParams[36].__Name = 'mainNodeUnder_img#Button_4#skillName_txt';
	localParams[33]:addChild(localParams[36]);

	localParams[37] = ImageView:create('uires/public/sheet_other/other0068.png', 1);
	localParams[37]:setAnchorPoint(0.50, 0.50);
	localParams[37]:setContentSize({width = 111.0, height = 19.0});
	localParams[37]:setPosition(61.36, -38.08);
	self.__children['mainNodeUnder_img#Button_4#expBg_sprite'] = localParams[37];
	localParams[37].__children = self.__children;
	localParams[37].__Name = 'mainNodeUnder_img#Button_4#expBg_sprite';
	localParams[33]:addChild(localParams[37]);

	localParams[38] = LoadingBar:create('uires/public/sheet_other/other0067.png', 1, 86.00);
	localParams[38]:setAnchorPoint(0.50, 0.50);
	localParams[38]:setContentSize({width = 111.0, height = 19.0});
	localParams[38]:setPosition(63.72, -38.08);
	self.__children['mainNodeUnder_img#Button_4#exp_loadingBar'] = localParams[38];
	localParams[38].__children = self.__children;
	localParams[38].__Name = 'mainNodeUnder_img#Button_4#exp_loadingBar';
	localParams[33]:addChild(localParams[38]);

	localParams[39] = ImageView:create('uires/public/sheet_icon/icon0053.png', 1);
	localParams[39]:setAnchorPoint(0.50, 0.50);
	localParams[39]:setContentSize({width = 42.0, height = 36.0});
	localParams[39]:setPosition(3.0, -38.0);
	self.__children['mainNodeUnder_img#Button_4#exp_sprite'] = localParams[39];
	localParams[39].__children = self.__children;
	localParams[39].__Name = 'mainNodeUnder_img#Button_4#exp_sprite';
	localParams[33]:addChild(localParams[39]);

	localParams[40] = RichText:create();
	localParams[40]:setDefaultFontSize(20);
	localParams[40]:setString([[5/20]]);
	localParams[40]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[40]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[40]:setAnchorPoint(0.50, 0.50);
	localParams[40]:setContentSize({width = 45.0, height = 25.0});
	localParams[40]:setPosition(63.0, -38.0);
	self.__children['mainNodeUnder_img#Button_4#exp_txt'] = localParams[40];
	localParams[40].__children = self.__children;
	localParams[40].__Name = 'mainNodeUnder_img#Button_4#exp_txt';
	localParams[33]:addChild(localParams[40]);

	localParams[41] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[41]:setAnchorPoint(0.50, 0.50);
	localParams[41]:setContentSize({width = 103.0, height = 103.0});
	localParams[41]:setPosition(59.0, 52.36);
	self.__children['mainNodeUnder_img#Button_4#lock_sprite'] = localParams[41];
	localParams[41].__children = self.__children;
	localParams[41].__Name = 'mainNodeUnder_img#Button_4#lock_sprite';
	localParams[33]:addChild(localParams[41]);

	localParams[42] = ImageView:create('uires/public/sheet_font/fontImg0054.png', 1);
	localParams[42]:setAnchorPoint(0.50, 0.50);
	localParams[42]:setContentSize({width = 68.0, height = 26.0});
	localParams[42]:setPosition(59.0, 15.47);
	self.__children['mainNodeUnder_img#Button_4#cue_sprite'] = localParams[42];
	localParams[42].__children = self.__children;
	localParams[42].__Name = 'mainNodeUnder_img#Button_4#cue_sprite';
	localParams[33]:addChild(localParams[42]);

	localParams[43] = Button:create();
	localParams[43]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[43]:loadTexturePressed('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[43]:setTitleFontSize(14);
	localParams[43]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[43]:setScale9Enabled(true);
	localParams[43]:setCapInsets({x = 15.000000, y = 4.000000, width = 88.000000, height = 111.000000});
	localParams[43]:setAnchorPoint(0.50, 0.50);
	localParams[43]:onClick(handler(self, self._onSkill));
	localParams[43]:setTouchEnabled(true);
	localParams[43]:setContentSize({width = 118.0, height = 119.0});
	localParams[43]:setPosition(localParams[1]:getContentSize().width - 329.00, localParams[1]:getContentSize().height/2 + (-73.01 * ccx.scaleY));
	self.__children['mainNodeUnder_img#Button_5'] = localParams[43];
	localParams[43].__children = self.__children;
	localParams[43].__Name = 'mainNodeUnder_img#Button_5';
	localParams[1]:addChild(localParams[43]);

	localParams[44] = ImageView:create('uires/public/sheet_other/other0079.png', 1);
	localParams[44]:setAnchorPoint(0.50, 0.50);
	localParams[44]:setContentSize({width = 126.0, height = 129.0});
	localParams[44]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_5#__SELECTED_IMG'] = localParams[44];
	localParams[44].__children = self.__children;
	localParams[44].__Name = 'mainNodeUnder_img#Button_5#__SELECTED_IMG';
	localParams[43]:setSelectNode(localParams[44]);
	localParams[43]:addChild(localParams[44]);

	localParams[45] = ImageView:create(nil, 0);
	localParams[45]:setAnchorPoint(0.50, 0.50);
	localParams[45]:setContentSize({width = 46.0, height = 46.0});
	localParams[45]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_5#skillItem_sprite'] = localParams[45];
	localParams[45].__children = self.__children;
	localParams[45].__Name = 'mainNodeUnder_img#Button_5#skillItem_sprite';
	localParams[43]:addChild(localParams[45]);

	localParams[46] = RichText:create();
	localParams[46]:setDefaultFontSize(20);
	localParams[46]:setString([[能量倾泻]]);
	localParams[46]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[46]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[46]:setAnchorPoint(0.50, 0.50);
	localParams[46]:setTextColor({r = 255, g = 240, b = 155});
	localParams[46]:setContentSize({width = 84.0, height = 22.0});
	localParams[46]:setPosition(59.0, -8.0);
	self.__children['mainNodeUnder_img#Button_5#skillName_txt'] = localParams[46];
	localParams[46].__children = self.__children;
	localParams[46].__Name = 'mainNodeUnder_img#Button_5#skillName_txt';
	localParams[43]:addChild(localParams[46]);

	localParams[47] = ImageView:create('uires/public/sheet_other/other0068.png', 1);
	localParams[47]:setAnchorPoint(0.50, 0.50);
	localParams[47]:setContentSize({width = 111.0, height = 19.0});
	localParams[47]:setPosition(61.36, -38.08);
	self.__children['mainNodeUnder_img#Button_5#expBg_sprite'] = localParams[47];
	localParams[47].__children = self.__children;
	localParams[47].__Name = 'mainNodeUnder_img#Button_5#expBg_sprite';
	localParams[43]:addChild(localParams[47]);

	localParams[48] = LoadingBar:create('uires/public/sheet_other/other0067.png', 1, 39.00);
	localParams[48]:setAnchorPoint(0.50, 0.50);
	localParams[48]:setContentSize({width = 111.0, height = 19.0});
	localParams[48]:setPosition(63.72, -38.08);
	self.__children['mainNodeUnder_img#Button_5#exp_loadingBar'] = localParams[48];
	localParams[48].__children = self.__children;
	localParams[48].__Name = 'mainNodeUnder_img#Button_5#exp_loadingBar';
	localParams[43]:addChild(localParams[48]);

	localParams[49] = ImageView:create('uires/public/sheet_icon/icon0053.png', 1);
	localParams[49]:setAnchorPoint(0.50, 0.50);
	localParams[49]:setContentSize({width = 42.0, height = 36.0});
	localParams[49]:setPosition(3.0, -38.0);
	self.__children['mainNodeUnder_img#Button_5#exp_sprite'] = localParams[49];
	localParams[49].__children = self.__children;
	localParams[49].__Name = 'mainNodeUnder_img#Button_5#exp_sprite';
	localParams[43]:addChild(localParams[49]);

	localParams[50] = RichText:create();
	localParams[50]:setDefaultFontSize(20);
	localParams[50]:setString([[5/20]]);
	localParams[50]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[50]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[50]:setAnchorPoint(0.50, 0.50);
	localParams[50]:setContentSize({width = 45.0, height = 25.0});
	localParams[50]:setPosition(63.0, -38.0);
	self.__children['mainNodeUnder_img#Button_5#exp_txt'] = localParams[50];
	localParams[50].__children = self.__children;
	localParams[50].__Name = 'mainNodeUnder_img#Button_5#exp_txt';
	localParams[43]:addChild(localParams[50]);

	localParams[51] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[51]:setAnchorPoint(0.50, 0.50);
	localParams[51]:setContentSize({width = 103.0, height = 103.0});
	localParams[51]:setPosition(59.0, 52.36);
	self.__children['mainNodeUnder_img#Button_5#lock_sprite'] = localParams[51];
	localParams[51].__children = self.__children;
	localParams[51].__Name = 'mainNodeUnder_img#Button_5#lock_sprite';
	localParams[43]:addChild(localParams[51]);

	localParams[52] = ImageView:create('uires/public/sheet_font/fontImg0063.png', 1);
	localParams[52]:setAnchorPoint(0.50, 0.50);
	localParams[52]:setContentSize({width = 69.0, height = 26.0});
	localParams[52]:setPosition(59.0, 15.47);
	self.__children['mainNodeUnder_img#Button_5#cue_sprite'] = localParams[52];
	localParams[52].__children = self.__children;
	localParams[52].__Name = 'mainNodeUnder_img#Button_5#cue_sprite';
	localParams[43]:addChild(localParams[52]);

	localParams[53] = Button:create();
	localParams[53]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[53]:loadTexturePressed('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[53]:setTitleFontSize(14);
	localParams[53]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[53]:setScale9Enabled(true);
	localParams[53]:setCapInsets({x = 15.000000, y = 4.000000, width = 88.000000, height = 111.000000});
	localParams[53]:setAnchorPoint(0.50, 0.50);
	localParams[53]:onClick(handler(self, self._onSkill));
	localParams[53]:setTouchEnabled(true);
	localParams[53]:setContentSize({width = 118.0, height = 119.0});
	localParams[53]:setPosition(localParams[1]:getContentSize().width - 169.00, localParams[1]:getContentSize().height/2 + (-73.01 * ccx.scaleY));
	self.__children['mainNodeUnder_img#Button_6'] = localParams[53];
	localParams[53].__children = self.__children;
	localParams[53].__Name = 'mainNodeUnder_img#Button_6';
	localParams[1]:addChild(localParams[53]);

	localParams[54] = ImageView:create('uires/public/sheet_other/other0079.png', 1);
	localParams[54]:setAnchorPoint(0.50, 0.50);
	localParams[54]:setContentSize({width = 126.0, height = 129.0});
	localParams[54]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_6#__SELECTED_IMG'] = localParams[54];
	localParams[54].__children = self.__children;
	localParams[54].__Name = 'mainNodeUnder_img#Button_6#__SELECTED_IMG';
	localParams[53]:setSelectNode(localParams[54]);
	localParams[53]:addChild(localParams[54]);

	localParams[55] = ImageView:create(nil, 0);
	localParams[55]:setAnchorPoint(0.50, 0.50);
	localParams[55]:setContentSize({width = 46.0, height = 46.0});
	localParams[55]:setPosition(59.0, 59.5);
	self.__children['mainNodeUnder_img#Button_6#skillItem_sprite'] = localParams[55];
	localParams[55].__children = self.__children;
	localParams[55].__Name = 'mainNodeUnder_img#Button_6#skillItem_sprite';
	localParams[53]:addChild(localParams[55]);

	localParams[56] = RichText:create();
	localParams[56]:setDefaultFontSize(20);
	localParams[56]:setString([[能量倾泻]]);
	localParams[56]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[56]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[56]:setAnchorPoint(0.50, 0.50);
	localParams[56]:setTextColor({r = 255, g = 240, b = 155});
	localParams[56]:setContentSize({width = 84.0, height = 22.0});
	localParams[56]:setPosition(59.0, -8.0);
	self.__children['mainNodeUnder_img#Button_6#skillName_txt'] = localParams[56];
	localParams[56].__children = self.__children;
	localParams[56].__Name = 'mainNodeUnder_img#Button_6#skillName_txt';
	localParams[53]:addChild(localParams[56]);

	localParams[57] = ImageView:create('uires/public/sheet_other/other0068.png', 1);
	localParams[57]:setAnchorPoint(0.50, 0.50);
	localParams[57]:setContentSize({width = 111.0, height = 19.0});
	localParams[57]:setPosition(61.36, -38.08);
	self.__children['mainNodeUnder_img#Button_6#expBg_sprite'] = localParams[57];
	localParams[57].__children = self.__children;
	localParams[57].__Name = 'mainNodeUnder_img#Button_6#expBg_sprite';
	localParams[53]:addChild(localParams[57]);

	localParams[58] = LoadingBar:create('uires/public/sheet_other/other0067.png', 1, 63.00);
	localParams[58]:setAnchorPoint(0.50, 0.50);
	localParams[58]:setContentSize({width = 111.0, height = 19.0});
	localParams[58]:setPosition(63.72, -38.08);
	self.__children['mainNodeUnder_img#Button_6#exp_loadingBar'] = localParams[58];
	localParams[58].__children = self.__children;
	localParams[58].__Name = 'mainNodeUnder_img#Button_6#exp_loadingBar';
	localParams[53]:addChild(localParams[58]);

	localParams[59] = ImageView:create('uires/public/sheet_icon/icon0053.png', 1);
	localParams[59]:setAnchorPoint(0.50, 0.50);
	localParams[59]:setContentSize({width = 42.0, height = 36.0});
	localParams[59]:setPosition(3.0, -38.0);
	self.__children['mainNodeUnder_img#Button_6#exp_sprite'] = localParams[59];
	localParams[59].__children = self.__children;
	localParams[59].__Name = 'mainNodeUnder_img#Button_6#exp_sprite';
	localParams[53]:addChild(localParams[59]);

	localParams[60] = RichText:create();
	localParams[60]:setDefaultFontSize(20);
	localParams[60]:setString([[5/20]]);
	localParams[60]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[60]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[60]:setAnchorPoint(0.50, 0.50);
	localParams[60]:setContentSize({width = 45.0, height = 25.0});
	localParams[60]:setPosition(63.0, -38.0);
	self.__children['mainNodeUnder_img#Button_6#exp_txt'] = localParams[60];
	localParams[60].__children = self.__children;
	localParams[60].__Name = 'mainNodeUnder_img#Button_6#exp_txt';
	localParams[53]:addChild(localParams[60]);

	localParams[61] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[61]:setAnchorPoint(0.50, 0.50);
	localParams[61]:setContentSize({width = 103.0, height = 103.0});
	localParams[61]:setPosition(59.0, 52.36);
	self.__children['mainNodeUnder_img#Button_6#lock_sprite'] = localParams[61];
	localParams[61].__children = self.__children;
	localParams[61].__Name = 'mainNodeUnder_img#Button_6#lock_sprite';
	localParams[53]:addChild(localParams[61]);

	localParams[62] = ImageView:create('uires/public/sheet_font/fontImg0063.png', 1);
	localParams[62]:setAnchorPoint(0.50, 0.50);
	localParams[62]:setContentSize({width = 69.0, height = 26.0});
	localParams[62]:setPosition(59.0, 15.47);
	self.__children['mainNodeUnder_img#Button_6#cue_sprite'] = localParams[62];
	localParams[62].__children = self.__children;
	localParams[62].__Name = 'mainNodeUnder_img#Button_6#cue_sprite';
	localParams[53]:addChild(localParams[62]);

end
function SkillLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/hero/hero001.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
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


function SkillLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SkillLayer:_onSkill(sender)
    if self._clickDelegate and self._clickDelegate.onSkill then
        return self._clickDelegate:onSkill(sender);
    end
    if self.onSkill then
        return self:onSkill(sender);
    end
end


return SkillLayer;