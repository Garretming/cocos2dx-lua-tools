-- 
-- Author: generation auto
-- Brief：MainCityTopNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local MainCityTopNode = class('MainCityTopNode', gamecore.ui.BaseWidget);

function MainCityTopNode:create(...) 
    local instance = MainCityTopNode.new(...);
    return instance;
end

function MainCityTopNode:ctor(...) 
    if MainCityTopNode.super and MainCityTopNode.super.ctor then
        MainCityTopNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function MainCityTopNode:initView()
    self.__LAYER_NAME = 'maincity.MainCityTopNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0141.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 25.000000,width = 150.000000, height = 7.000000});
	localParams[1]:setAnchorPoint(0.00, 1.00);
	localParams[1]:setContentSize({width = 1136.0, height = 57.0});
	localParams[1]:setPosition(0.0, WinSize.height - 0.00);
	self.__children['Image_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Image_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0140.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 190.0, height = 93.0});
	localParams[2]:setPosition(WinSize.width - 95.00, WinSize.height - 46.50);
	self.__children['Image_3'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_3';
	self:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_btn/btn0147.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._onMail));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 58.0, height = 68.0});
	localParams[3]:setPosition(148.0, 44.0);
	self.__children['Image_3#mail'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_3#mail';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Widget:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.90);
	localParams[4]:setScaleY(0.90);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(70.0, -70.0);
	self.__children['Image_3#mail#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_3#mail#__SELECTED_SCALE';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 30.0, height = 30.0});
	localParams[5]:setPosition(46.4, 61.2);
	self.__children['Image_3#mail#redPoint_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_3#mail#redPoint_sprite';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_btn/btn0161.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._onAnnounce));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 58.0, height = 68.0});
	localParams[6]:setPosition(71.0, 44.0);
	self.__children['Image_3#announce'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_3#announce';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = Widget:create();
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setScaleX(0.90);
	localParams[7]:setScaleY(0.90);
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(80.0, -80.0);
	self.__children['Image_3#announce#__SELECTED_SCALE'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_3#announce#__SELECTED_SCALE';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0139.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 316.0, height = 155.0});
	localParams[8]:setPosition(158.0, WinSize.height - 77.50);
	self.__children['left'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'left';
	self:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0083.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 158.0, height = 18.0});
	localParams[9]:setPosition(204.82, 107.79);
	self.__children['left#exp'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'left#exp';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_font/fontImg0066.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 36.0, height = 16.0});
	localParams[10]:setPosition(-22.0, 9.0);
	self.__children['left#exp#uires_maincity_sheet_other0010_7'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'left#exp#uires_maincity_sheet_other0010_7';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = LoadingBar:create('uires/public/sheet_other/other0082.png', 1, 100.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 151.0, height = 14.0});
	localParams[11]:setPosition(76.99, 9.0);
	self.__children['left#exp#loading'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'left#exp#loading';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = TextAtlas:create();
	localParams[12]:setProperty([[123/456]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(0.60);
	localParams[12]:setScaleY(0.60);
	localParams[12]:setContentSize({width = 91.0, height = 19.0});
	localParams[12]:setPosition(79.0, 9.0);
	self.__children['left#exp#value'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'left#exp#value';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(14);
	localParams[13]:setString([[LV:1]]);
	localParams[13]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[13]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[13]:setAnchorPoint(1.00, 0.50);
	localParams[13]:setTextColor({r = 255, g = 150, b = 0});
	localParams[13]:setContentSize({width = 29.0, height = 18.0});
	localParams[13]:setPosition(227.67, 135.0);
	self.__children['left#label_level'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'left#label_level';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(14);
	localParams[14]:setString([[阿啊啊啊啊]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setTextColor({r = 255, g = 240, b = 155});
	localParams[14]:setContentSize({width = 75.0, height = 18.0});
	localParams[14]:setPosition(88.0, 135.0);
	self.__children['left#label_name'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'left#label_name';
	localParams[8]:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_other/other0195.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 15.000000, y = 11.000000, width = 66.000000, height = 74.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.70);
	localParams[15]:setScaleY(0.70);
	localParams[15]:onClick(handler(self, self._onHead));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 96.0, height = 96.0});
	localParams[15]:setPosition(44.0, localParams[8]:getContentSize().height - 44.00);
	self.__children['left#head'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'left#head';
	localParams[8]:addChild(localParams[15]);

	localParams[16] = Widget:create();
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setScaleX(0.65);
	localParams[16]:setScaleY(0.65);
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(10.0, -10.0);
	self.__children['left#head#__SELECTED_SCALE'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'left#head#__SELECTED_SCALE';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 111.0, height = 111.0});
	localParams[17]:setPosition(48.0, 48.0);
	self.__children['left#head#frame'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'left#head#frame';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 162.0, height = 51.0});
	localParams[18]:setPosition(WinSize.width - 301.00, WinSize.height - 27.50);
	self.__children['game_money'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'game_money';
	self:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_common/icon0025.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 44.0, height = 44.0});
	localParams[19]:setPosition(24.79, 24.57);
	self.__children['game_money#coin_sprite'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'game_money#coin_sprite';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = Button:create();
	localParams[20]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[20]:setTitleFontSize(14);
	localParams[20]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 35.0, height = 37.0});
	localParams[20]:setPosition(162.16, 31.02);
	self.__children['game_money#coinAdd_btn'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'game_money#coinAdd_btn';
	localParams[18]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[999999]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[21]:setAnchorPoint(1.00, 0.50);
	localParams[21]:setContentSize({width = 75.0, height = 22.0});
	localParams[21]:setPosition(143.96, 30.61);
	self.__children['game_money#value'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'game_money#value';
	localParams[18]:addChild(localParams[21]);

	localParams[22] = Button:create();
	localParams[22]:setTitleFontSize(14);
	localParams[22]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[22]:setScale9Enabled(true);
	localParams[22]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setContentSize({width = 120.0, height = 30.0});
	localParams[22]:setPosition(62.86, 30.58);
	self.__children['game_money#btn_desc'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'game_money#btn_desc';
	localParams[18]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setScale9Enabled(true);
	localParams[23]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:onClick(handler(self, self._onGameMoney));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 50.0, height = 30.0});
	localParams[23]:setPosition(154.91, 31.02);
	self.__children['game_money#Button'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'game_money#Button';
	localParams[18]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_bgframe/bgFrame0025.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setContentSize({width = 162.0, height = 51.0});
	localParams[24]:setPosition(WinSize.width - 501.00, WinSize.height - 27.50);
	self.__children['rmb_money'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'rmb_money';
	self:addChild(localParams[24]);

	localParams[25] = Text:create();
	localParams[25]:setFontSize(20);
	localParams[25]:setString([[999999]]);
	localParams[25]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[25]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[25]:setAnchorPoint(1.00, 0.50);
	localParams[25]:setContentSize({width = 75.0, height = 22.0});
	localParams[25]:setPosition(141.77, localParams[24]:getContentSize().height - 18.98);
	self.__children['rmb_money#value'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'rmb_money#value';
	localParams[24]:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 44.0, height = 44.0});
	localParams[26]:setPosition(24.41, 25.4);
	self.__children['rmb_money#gem_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'rmb_money#gem_sprite';
	localParams[24]:addChild(localParams[26]);

	localParams[27] = Button:create();
	localParams[27]:loadTextureNormal('uires/public/sheet_btn/btn0074.png', 1);
	localParams[27]:setTitleFontSize(14);
	localParams[27]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setTouchEnabled(true);
	localParams[27]:setContentSize({width = 35.0, height = 37.0});
	localParams[27]:setPosition(160.89, 31.85);
	self.__children['rmb_money#gemAdd_btn'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'rmb_money#gemAdd_btn';
	localParams[24]:addChild(localParams[27]);

	localParams[28] = Button:create();
	localParams[28]:setTitleFontSize(14);
	localParams[28]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[28]:setScale9Enabled(true);
	localParams[28]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:onClick(handler(self, self._onRMBMoney));
	localParams[28]:setTouchEnabled(true);
	localParams[28]:setContentSize({width = 50.0, height = 30.0});
	localParams[28]:setPosition(156.91, 30.02);
	self.__children['rmb_money#Button'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'rmb_money#Button';
	localParams[24]:addChild(localParams[28]);

	localParams[29] = Button:create();
	localParams[29]:setTitleFontSize(14);
	localParams[29]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[29]:setScale9Enabled(true);
	localParams[29]:setCapInsets({x = -15.000000, y = -4.000000, width = 30.000000, height = 8.000000});
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setTouchEnabled(true);
	localParams[29]:setContentSize({width = 120.0, height = 30.0});
	localParams[29]:setPosition(64.86, 29.58);
	self.__children['rmb_money#btn_desc'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'rmb_money#btn_desc';
	localParams[24]:addChild(localParams[29]);

	localParams[30] = ImageView:create('uires/public/sheet_other/other0239.png', 1);
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 33.0, height = 22.0});
	localParams[30]:setPosition(316.5, WinSize.height - 26.00);
	self.__children['wifi'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'wifi';
	self:addChild(localParams[30]);

	localParams[31] = ImageView:create('uires/public/sheet_other/other0240.png', 1);
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:setContentSize({width = 33.0, height = 22.0});
	localParams[31]:setPosition(17.5, 11.0);
	self.__children['wifi#value'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'wifi#value';
	localParams[30]:addChild(localParams[31]);

	localParams[32] = ImageView:create('uires/public/sheet_other/other0244.png', 1);
	localParams[32]:ignoreContentAdaptWithSize(false);
	localParams[32]:setScale9Enabled(true);
	localParams[32]:setCapInsets({x = 8.000000, y = 3.000000,width = 9.000000, height = 6.000000});
	localParams[32]:setAnchorPoint(0.00, 0.50);
	localParams[32]:setContentSize({width = 29.0, height = 16.0});
	localParams[32]:setPosition(350.0, WinSize.height - 26.50);
	self.__children['battery'] = localParams[32];
	localParams[32].__children = self.__children;
	localParams[32].__Name = 'battery';
	self:addChild(localParams[32]);

	localParams[33] = TextAtlas:create();
	localParams[33]:setProperty([[50]], 'uires/public/font_number/fontImg.png', 14, 19, '.');
	localParams[33]:setAnchorPoint(0.50, 0.50);
	localParams[33]:setScaleX(0.70);
	localParams[33]:setScaleY(0.70);
	localParams[33]:setContentSize({width = 28.0, height = 19.0});
	localParams[33]:setPosition(14.5, 8.0);
	self.__children['battery#value'] = localParams[33];
	localParams[33].__children = self.__children;
	localParams[33].__Name = 'battery#value';
	localParams[32]:addChild(localParams[33]);

	localParams[34] = ImageView:create('uires/public/sheet_other/other0243.png', 1);
	localParams[34]:setAnchorPoint(0.00, 0.50);
	localParams[34]:setContentSize({width = 34.0, height = 18.0});
	localParams[34]:setPosition(0.0, 8.0);
	self.__children['battery#bg'] = localParams[34];
	localParams[34].__children = self.__children;
	localParams[34].__Name = 'battery#bg';
	localParams[32]:addChild(localParams[34]);

end
function MainCityTopNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0011.png');
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


function MainCityTopNode:loadPlistResources()
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


function MainCityTopNode:_onMail(sender)
    if self._clickDelegate and self._clickDelegate.onMail then
        return self._clickDelegate:onMail(sender);
    end
    if self.onMail then
        return self:onMail(sender);
    end
end


function MainCityTopNode:_onAnnounce(sender)
    if self._clickDelegate and self._clickDelegate.onAnnounce then
        return self._clickDelegate:onAnnounce(sender);
    end
    if self.onAnnounce then
        return self:onAnnounce(sender);
    end
end


function MainCityTopNode:_onHead(sender)
    if self._clickDelegate and self._clickDelegate.onHead then
        return self._clickDelegate:onHead(sender);
    end
    if self.onHead then
        return self:onHead(sender);
    end
end


function MainCityTopNode:_onRMBMoney(sender)
    if self._clickDelegate and self._clickDelegate.onRMBMoney then
        return self._clickDelegate:onRMBMoney(sender);
    end
    if self.onRMBMoney then
        return self:onRMBMoney(sender);
    end
end


function MainCityTopNode:_onGameMoney(sender)
    if self._clickDelegate and self._clickDelegate.onGameMoney then
        return self._clickDelegate:onGameMoney(sender);
    end
    if self.onGameMoney then
        return self:onGameMoney(sender);
    end
end


return MainCityTopNode;