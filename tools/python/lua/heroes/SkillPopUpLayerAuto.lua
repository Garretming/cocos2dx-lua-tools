-- 
-- Author: generation auto
-- Brief：SkillPopUpLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SkillPopUpLayer = class('SkillPopUpLayer', gamecore.ui.BaseWidget);

function SkillPopUpLayer:create(...) 
    local instance = SkillPopUpLayer.new(...);
    return instance;
end

function SkillPopUpLayer:ctor(...) 
    if SkillPopUpLayer.super and SkillPopUpLayer.super.ctor then
        SkillPopUpLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function SkillPopUpLayer:initView()
    self.__LAYER_NAME = 'heroes.SkillPopUpLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0016.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 73.000000, y = 73.000000,width = 76.000000, height = 76.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setScaleX(0.30);
	localParams[1]:setScaleY(0.30);
	localParams[1]:setContentSize({width = 430.0, height = 560.0});
	localParams[1]:setPosition(512.0, 320.0);
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 370.0, height = 360.0});
	localParams[2]:setPosition(215.0, 350.0);
	self.__children['bg_img#bg_img1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#bg_img1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 350.0, height = 340.0});
	localParams[3]:setPosition(215.0, 350.0);
	self.__children['bg_img#bg_img2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#bg_img2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0014.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 320.0, height = 170.0});
	localParams[4]:setPosition(215.0, 280.0);
	self.__children['bg_img#bg_img3'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#bg_img3';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_btn/btn0063.png', 1);
	localParams[5]:loadTexturePressed('uires/public/sheet_btn/btn0063.png', 1);
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 15.000000, y = 11.000000, width = 42.000000, height = 50.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._onClose));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 72.0, height = 72.0});
	localParams[5]:setPosition(408.5, 537.6);
	self.__children['bg_img#close_btn'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#close_btn';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Widget:create();
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setScaleX(0.90);
	localParams[6]:setScaleY(0.90);
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(104.14, 30.52);
	self.__children['bg_img#close_btn#__SELECTED_SCALE'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#close_btn#__SELECTED_SCALE';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0065.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 116.0, height = 119.0});
	localParams[7]:setPosition(126.02, 439.83);
	self.__children['bg_img#underBg_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#underBg_sprite';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 118.0, height = 119.0});
	localParams[8]:setPosition(126.76, 439.6);
	self.__children['bg_img#under_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#under_sprite';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create(nil, 0);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 46.0, height = 46.0});
	localParams[9]:setPosition(59.0, 59.5);
	self.__children['bg_img#under_sprite#skillItem_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#under_sprite#skillItem_sprite';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = RichText:create();
	localParams[10]:setDefaultFontSize(24);
	localParams[10]:setString([[能量倾泻]]);
	localParams[10]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setTextColor({r = 255, g = 240, b = 155});
	localParams[10]:setContentSize({width = 100.0, height = 26.0});
	localParams[10]:setPosition(130.01, 82.0);
	self.__children['bg_img#under_sprite#skillName_txt'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#under_sprite#skillName_txt';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[消耗怒气：]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 96.0, height = 22.0});
	localParams[11]:setPosition(176.86, 46.41);
	self.__children['bg_img#under_sprite#anger_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#under_sprite#anger_txt';
	localParams[8]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[80]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setTextColor({r = 0, g = 235, b = 255});
	localParams[12]:setContentSize({width = 28.0, height = 22.0});
	localParams[12]:setPosition(239.27, 46.41);
	self.__children['bg_img#under_sprite#angerValue_txt'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#under_sprite#angerValue_txt';
	localParams[8]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 103.0, height = 103.0});
	localParams[13]:setPosition(59.0, 52.36);
	self.__children['bg_img#under_sprite#lock_sprite'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#under_sprite#lock_sprite';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_font/fontImg0063.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 69.0, height = 26.0});
	localParams[14]:setPosition(59.0, 4.76);
	self.__children['bg_img#under_sprite#cue_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#under_sprite#cue_sprite';
	localParams[8]:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[15]:loadTexturePressed('uires/public/sheet_common/btn0005.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:onClick(handler(self, self._onUnlock));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 230.0, height = 68.0});
	localParams[15]:setPosition(279.5, 89.6);
	self.__children['bg_img#unlock_btn'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#unlock_btn';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = Widget:create();
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setScaleX(0.90);
	localParams[16]:setScaleY(0.90);
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(-1048.47, -516.79);
	self.__children['bg_img#unlock_btn#__SELECTED_SCALE'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#unlock_btn#__SELECTED_SCALE';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_btn/btn0031.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 90.0, height = 29.0});
	localParams[17]:setPosition(87.0, 34.0);
	self.__children['bg_img#unlock_btn#under_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#unlock_btn#under_sprite';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 44.0, height = 44.0});
	localParams[18]:setPosition(46.0, 34.0);
	self.__children['bg_img#unlock_btn#coin_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#unlock_btn#coin_sprite';
	localParams[15]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_font/fontImg0047.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 72.0, height = 30.0});
	localParams[19]:setPosition(173.39, 34.0);
	self.__children['bg_img#unlock_btn#forgingFont_sprite'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#unlock_btn#forgingFont_sprite';
	localParams[15]:addChild(localParams[19]);

	localParams[20] = Text:create();
	localParams[20]:setFontSize(20);
	localParams[20]:setString([[35000]]);
	localParams[20]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[20]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 53.0, height = 22.0});
	localParams[20]:setPosition(96.0, 34.0);
	self.__children['bg_img#unlock_btn#price_txt'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#unlock_btn#price_txt';
	localParams[15]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 110.0, height = 110.0});
	localParams[21]:setPosition(92.11, 92.91);
	self.__children['bg_img#expendUnder_sprite'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#expendUnder_sprite';
	localParams[1]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0305.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 100.0, height = 100.0});
	localParams[22]:setPosition(55.0, 55.0);
	self.__children['bg_img#expendUnder_sprite#bg'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#expendUnder_sprite#bg';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create(nil, 0);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 46.0, height = 46.0});
	localParams[23]:setPosition(50.0, 50.0);
	self.__children['bg_img#expendUnder_sprite#bg#image'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'bg_img#expendUnder_sprite#bg#image';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_font/fontImg0064.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 69.0, height = 26.0});
	localParams[24]:setPosition(55.0, 104.5);
	self.__children['bg_img#expendUnder_sprite#expendFont_sprite'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'bg_img#expendUnder_sprite#expendFont_sprite';
	localParams[21]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_bgframe/bgFrame0050.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 86.0, height = 28.0});
	localParams[25]:setPosition(55.0, 6.6);
	self.__children['bg_img#expendUnder_sprite#acountUnder_sprite3'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'bg_img#expendUnder_sprite#acountUnder_sprite3';
	localParams[21]:addChild(localParams[25]);

	localParams[26] = RichText:create();
	localParams[26]:setDefaultFontSize(20);
	localParams[26]:setString([[12/10]]);
	localParams[26]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[26]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 48.0, height = 25.0});
	localParams[26]:setPosition(43.0, 14.0);
	self.__children['bg_img#expendUnder_sprite#acountUnder_sprite3#acount_txt'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'bg_img#expendUnder_sprite#acountUnder_sprite3#acount_txt';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = Button:create();
	localParams[27]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[27]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[27]:setTitleFontSize(14);
	localParams[27]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[27]:setScale9Enabled(true);
	localParams[27]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:onClick(handler(self, self._onUpgrade));
	localParams[27]:setTouchEnabled(true);
	localParams[27]:setContentSize({width = 230.0, height = 68.0});
	localParams[27]:setPosition(279.5, 89.6);
	self.__children['bg_img#upgrade_btn'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'bg_img#upgrade_btn';
	localParams[1]:addChild(localParams[27]);

	localParams[28] = Widget:create();
	localParams[28]:setAnchorPoint(0.00, 0.00);
	localParams[28]:setScaleX(0.90);
	localParams[28]:setScaleY(0.90);
	localParams[28]:setContentSize({width = 0.0, height = 0.0});
	localParams[28]:setPosition(-1081.8, -483.45);
	self.__children['bg_img#upgrade_btn#__SELECTED_SCALE'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'bg_img#upgrade_btn#__SELECTED_SCALE';
	localParams[27]:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/public/sheet_btn/btn0031.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 90.0, height = 29.0});
	localParams[29]:setPosition(87.0, 34.0);
	self.__children['bg_img#upgrade_btn#under_sprite'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'bg_img#upgrade_btn#under_sprite';
	localParams[27]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 44.0, height = 44.0});
	localParams[30]:setPosition(46.0, 34.0);
	self.__children['bg_img#upgrade_btn#coin_sprite'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'bg_img#upgrade_btn#coin_sprite';
	localParams[27]:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_font/fontImg0058.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 70.0, height = 30.0});
	localParams[31]:setPosition(173.39, 34.0);
	self.__children['bg_img#upgrade_btn#upgradeFont_sprite'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'bg_img#upgrade_btn#upgradeFont_sprite';
	localParams[27]:addChild(localParams[31]);

	localParams[32] = Text:create();
	localParams[32]:setFontSize(20);
	localParams[32]:setString([[35000]]);
	localParams[32]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[32]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[32]:setAnchorPoint(0.50, 0.50);
	localParams[32]:setContentSize({width = 59.0, height = 25.0});
	localParams[32]:setPosition(96.0, 34.0);
	self.__children['bg_img#upgrade_btn#price_txt'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'bg_img#upgrade_btn#price_txt';
	localParams[27]:addChild(localParams[32]);

	localParams[33] = ImageView:create('uires/public/sheet_font/fontImg0060.png', 1);
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setContentSize({width = 118.0, height = 44.0});
	localParams[33]:setPosition(215.0, 95.2);
	self.__children['bg_img#fullLevel_sprite'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'bg_img#fullLevel_sprite';
	localParams[1]:addChild(localParams[33]);

	localParams[34] = RichText:create();
	localParams[34]:setDefaultFontSize(18);
	localParams[34]:setString([[辛德瑞拉释放洪流一般的能量，驱使所有暗黑法球来轰向目标英雄。]]);
	localParams[34]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[34]:setTextAreaSize({width = 290, height = 140});
	localParams[34]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[34]:setAnchorPoint(0.50, 0.50);
	localParams[34]:setContentSize({width = 290.0, height = 140.0});
	localParams[34]:setPosition(215.0, 280.0);
	self.__children['bg_img#desc_txt'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'bg_img#desc_txt';
	localParams[1]:addChild(localParams[34]);

end
function SkillPopUpLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Sprite.png');
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


function SkillPopUpLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SkillPopUpLayer:_onUpgrade(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onUpgrade then
        return self.m_ClickDelegate:onUpgrade(sender);
    end
    if self.onUpgrade then
        return self:onUpgrade(sender);
    end
end


function SkillPopUpLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


function SkillPopUpLayer:_onUnlock(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onUnlock then
        return self.m_ClickDelegate:onUnlock(sender);
    end
    if self.onUnlock then
        return self:onUnlock(sender);
    end
end


return SkillPopUpLayer;