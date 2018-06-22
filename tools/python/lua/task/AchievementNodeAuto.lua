-- 
-- Author: generation auto
-- Brief：AchievementNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local AchievementNode = class('AchievementNode', gamecore.ui.BaseWidget);

function AchievementNode:create(...) 
    local instance = AchievementNode.new(...);
    return instance;
end

function AchievementNode:ctor(...) 
    if AchievementNode.super and AchievementNode.super.ctor then
        AchievementNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function AchievementNode:initView()
    self.__LAYER_NAME = 'task.AchievementNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0122.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 37.000000, y = 37.000000,width = 40.000000, height = 40.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 870.0, height = 145.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['achievement_bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'achievement_bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0124.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 404.0, height = 139.0});
	localParams[2]:setPosition(206.73, 74.99);
	self.__children['achievement_bg#bg1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'achievement_bg#bg1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0125.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 36.000000, y = 36.000000,width = 50.000000, height = 50.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 122.0, height = 122.0});
	localParams[3]:setPosition(767.12, 74.94);
	self.__children['achievement_bg#prize_bg1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'achievement_bg#prize_bg1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0189.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 118.0, height = 118.0});
	localParams[4]:setPosition(61.41, 60.59);
	self.__children['achievement_bg#prize_bg1#image2'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'achievement_bg#prize_bg1#image2';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(16);
	localParams[5]:setString([[尚未获得]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 69.0, height = 20.0});
	localParams[5]:setPosition(61.94, 2.36);
	self.__children['achievement_bg#prize_bg1#txt1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'achievement_bg#prize_bg1#txt1';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_icon/icon0101.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 45.000000, height = 69.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 75.0, height = 91.0});
	localParams[6]:setPosition(61.77, 57.21);
	self.__children['achievement_bg#prize_bg1#image1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'achievement_bg#prize_bg1#image1';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(16);
	localParams[7]:setString([[2017.5.6]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 240, g = 200, b = 60});
	localParams[7]:setContentSize({width = 74.0, height = 20.0});
	localParams[7]:setPosition(64.29, 1.53);
	self.__children['achievement_bg#prize_bg1#txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'achievement_bg#prize_bg1#txt';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 450.0, height = 32.0});
	localParams[8]:setPosition(452.45, 70.37);
	self.__children['achievement_bg#dec_bg'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'achievement_bg#dec_bg';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(22);
	localParams[9]:setString([[天梯进入王者段位]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 181.0, height = 29.0});
	localParams[9]:setPosition(220.23, 15.09);
	self.__children['achievement_bg#dec_bg#dec_txt1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'achievement_bg#dec_bg#dec_txt1';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = LoadingBar:create(''uires/public/sheet_other/other0188.png'', 1, 100.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 450.0, height = 32.0});
	localParams[10]:setPosition(453.3, 31.52);
	self.__children['achievement_bg#loading1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'achievement_bg#loading1';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = LoadingBar:create(''uires/public/sheet_other/other0187.png'', 1, 100.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 448.0, height = 30.0});
	localParams[11]:setPosition(225.0, 16.0);
	self.__children['achievement_bg#loading1#loading2'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'achievement_bg#loading1#loading2';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(22);
	localParams[12]:setString([[50]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[12]:setAnchorPoint(0.00, 1.00);
	localParams[12]:setContentSize({width = 31.0, height = 26.0});
	localParams[12]:setPosition(232.11, 27.86);
	self.__children['achievement_bg#loading1#all_num'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'achievement_bg#loading1#all_num';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(22);
	localParams[13]:setString([[50]]);
	localParams[13]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[13]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[13]:setAnchorPoint(1.00, 0.00);
	localParams[13]:setContentSize({width = 31.0, height = 26.0});
	localParams[13]:setPosition(221.04, 1.28);
	self.__children['achievement_bg#loading1#get_num'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'achievement_bg#loading1#get_num';
	localParams[10]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[/]]);
	localParams[14]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(1.28);
	localParams[14]:setContentSize({width = 15.0, height = 22.0});
	localParams[14]:setPosition(227.29, 16.55);
	self.__children['achievement_bg#loading1#Text_14'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'achievement_bg#loading1#Text_14';
	localParams[10]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0190.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 79.0, height = 79.0});
	localParams[15]:setPosition(664.6, 49.56);
	self.__children['achievement_bg#getSign'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'achievement_bg#getSign';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0003.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(0.90);
	localParams[16]:setScaleY(0.90);
	localParams[16]:setContentSize({width = 204.0, height = 29.0});
	localParams[16]:setPosition(285.0, 110.0);
	self.__children['achievement_bg#title_bg'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'achievement_bg#title_bg';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0005.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setScaleX(0.90);
	localParams[17]:setScaleY(0.90);
	localParams[17]:setContentSize({width = 204.0, height = 29.0});
	localParams[17]:setPosition(620.0, 110.0);
	self.__children['achievement_bg#title_bg_0'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'achievement_bg#title_bg_0';
	localParams[1]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(30);
	localParams[18]:setString([[尚未获得]]);
	localParams[18]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 125.0, height = 34.0});
	localParams[18]:setPosition(454.57, 110.35);
	self.__children['achievement_bg#title'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'achievement_bg#title';
	localParams[1]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_bgframe/bgFrame0123.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.80);
	localParams[19]:setScaleY(0.80);
	localParams[19]:setContentSize({width = 69.0, height = 73.0});
	localParams[19]:setPosition(43.47, 36.66);
	self.__children['achievement_bg#medal_bg1'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'achievement_bg#medal_bg1';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_icon/icon0097.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 67.0, height = 71.0});
	localParams[20]:setPosition(34.87, 36.66);
	self.__children['achievement_bg#medal_bg1#medal1'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'achievement_bg#medal_bg1#medal1';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_bgframe/bgFrame0123.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 69.0, height = 73.0});
	localParams[21]:setPosition(102.77, 83.78);
	self.__children['achievement_bg#medal_bg3'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'achievement_bg#medal_bg3';
	localParams[1]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_other/other0186.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 87.0, height = 45.0});
	localParams[22]:setPosition(36.43, 73.79);
	self.__children['achievement_bg#medal_bg3#medal3'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'achievement_bg#medal_bg3#medal3';
	localParams[21]:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_icon/icon0097.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 67.0, height = 71.0});
	localParams[23]:setPosition(41.91, -18.11);
	self.__children['achievement_bg#medal_bg3#medal3#medal'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'achievement_bg#medal_bg3#medal3#medal';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/public/sheet_bgframe/bgFrame0123.png', 1);
	localParams[24]:setAnchorPoint(0.50, 0.50);
	localParams[24]:setScaleX(0.80);
	localParams[24]:setScaleY(0.80);
	localParams[24]:setContentSize({width = 69.0, height = 73.0});
	localParams[24]:setPosition(158.93, 36.01);
	self.__children['achievement_bg#medal_bg2'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'achievement_bg#medal_bg2';
	localParams[1]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/public/sheet_icon/icon0097.png', 1);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setContentSize({width = 67.0, height = 71.0});
	localParams[25]:setPosition(34.87, 36.66);
	self.__children['achievement_bg#medal_bg2#medal2'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'achievement_bg#medal_bg2#medal2';
	localParams[24]:addChild(localParams[25]);

end
function AchievementNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function AchievementNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return AchievementNode;