-- 
-- Author: generation auto
-- Brief：AchievePrizeNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local AchievePrizeNode = class('AchievePrizeNode', gamecore.ui.BaseWidget);

function AchievePrizeNode:create(...) 
    local instance = AchievePrizeNode.new(...);
    return instance;
end

function AchievePrizeNode:ctor(...) 
    if AchievePrizeNode.super and AchievePrizeNode.super.ctor then
        AchievePrizeNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function AchievePrizeNode:initView()
    self.__LAYER_NAME = 'task.AchievePrizeNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0112.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 37.000000, y = 37.000000,width = 34.000000, height = 22.000000);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 640.0, height = 100.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['achievePrize_bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'achievePrize_bg';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[2]:loadTexturePressed('uires/public/sheet_common/btn0005.png', 1);
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setScaleX(0.60);
	localParams[2]:setScaleY(0.70);
	localParams[2]:onClick(handler(self, self._prizeGetBtn));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 183.0, height = 68.0});
	localParams[2]:setPosition(551.05, 47.31);
	self.__children['achievePrize_bg#getBtn'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'achievePrize_bg#getBtn';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0136.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 66.0, height = 28.0});
	localParams[3]:setPosition(96.16, 35.19);
	self.__children['achievePrize_bg#getBtn#font'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'achievePrize_bg#getBtn#font';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Node:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.50);
	localParams[4]:setScaleY(0.50);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(83.62, 36.53);
	self.__children['achievePrize_bg#getBtn#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'achievePrize_bg#getBtn#__SELECTED_SCALE';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0183.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 79.0, height = 79.0});
	localParams[5]:setPosition(552.55, 50.37);
	self.__children['achievePrize_bg#getSign'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'achievePrize_bg#getSign';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setScaleX(0.60);
	localParams[6]:setScaleY(0.60);
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 110.0, height = 110.0});
	localParams[6]:setPosition(190.85, 50.0);
	self.__children['achievePrize_bg#prize_bg1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'achievePrize_bg#prize_bg1';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create(, 0);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 46.0, height = 46.0});
	localParams[7]:setPosition(55.0, 55.0);
	self.__children['achievePrize_bg#prize_bg1#image'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'achievePrize_bg#prize_bg1#image';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(22);
	localParams[8]:setString([[88]]);
	localParams[8]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[8]:setAnchorPoint(1.00, 0.00);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:setContentSize({width = 31.0, height = 26.0});
	localParams[8]:setPosition(99.83, 4.04);
	self.__children['achievePrize_bg#prize_bg1#number'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'achievePrize_bg#prize_bg1#number';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setScaleX(0.60);
	localParams[9]:setScaleY(0.60);
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 110.0, height = 110.0});
	localParams[9]:setPosition(275.2, 50.0);
	self.__children['achievePrize_bg#prize_bg2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'achievePrize_bg#prize_bg2';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = ImageView:create(, 0);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 46.0, height = 46.0});
	localParams[10]:setPosition(55.0, 55.0);
	self.__children['achievePrize_bg#prize_bg2#image'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'achievePrize_bg#prize_bg2#image';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(22);
	localParams[11]:setString([[88]]);
	localParams[11]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[11]:setAnchorPoint(1.00, 0.00);
	localParams[11]:setScaleX(0.90);
	localParams[11]:setScaleY(0.90);
	localParams[11]:setContentSize({width = 31.0, height = 26.0});
	localParams[11]:setPosition(99.83, 4.04);
	self.__children['achievePrize_bg#prize_bg2#number'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'achievePrize_bg#prize_bg2#number';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(0.60);
	localParams[12]:setScaleY(0.60);
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 110.0, height = 110.0});
	localParams[12]:setPosition(359.55, 50.0);
	self.__children['achievePrize_bg#prize_bg3'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'achievePrize_bg#prize_bg3';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = ImageView:create(, 0);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 46.0, height = 46.0});
	localParams[13]:setPosition(55.0, 55.0);
	self.__children['achievePrize_bg#prize_bg3#image'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'achievePrize_bg#prize_bg3#image';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(22);
	localParams[14]:setString([[88]]);
	localParams[14]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[14]:setAnchorPoint(1.00, 0.00);
	localParams[14]:setScaleX(0.90);
	localParams[14]:setScaleY(0.90);
	localParams[14]:setContentSize({width = 31.0, height = 26.0});
	localParams[14]:setPosition(99.83, 4.04);
	self.__children['achievePrize_bg#prize_bg3#number'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'achievePrize_bg#prize_bg3#number';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.60);
	localParams[15]:setScaleY(0.60);
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 110.0, height = 110.0});
	localParams[15]:setPosition(443.97, 50.0);
	self.__children['achievePrize_bg#prize_bg4'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'achievePrize_bg#prize_bg4';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ImageView:create(, 0);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 46.0, height = 46.0});
	localParams[16]:setPosition(55.0, 55.0);
	self.__children['achievePrize_bg#prize_bg4#image'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'achievePrize_bg#prize_bg4#image';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = Text:create();
	localParams[17]:setFontSize(22);
	localParams[17]:setString([[88]]);
	localParams[17]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[17]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[17]:setAnchorPoint(1.00, 0.00);
	localParams[17]:setScaleX(0.90);
	localParams[17]:setScaleY(0.90);
	localParams[17]:setContentSize({width = 31.0, height = 26.0});
	localParams[17]:setPosition(99.83, 4.04);
	self.__children['achievePrize_bg#prize_bg4#number'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'achievePrize_bg#prize_bg4#number';
	localParams[15]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_bgframe/bgFrame0123.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setScaleX(0.80);
	localParams[18]:setScaleY(0.80);
	localParams[18]:setContentSize({width = 69.0, height = 73.0});
	localParams[18]:setPosition(56.2, 51.4);
	self.__children['medal_bg'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'medal_bg';
	self:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_icon/icon0097.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 67.0, height = 71.0});
	localParams[19]:setPosition(34.87, 36.66);
	self.__children['medal_bg#medal'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'medal_bg#medal';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = TextAtlas:create();
	localParams[20]:setProperty([[10]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 68.0, height = 40.0});
	localParams[20]:setPosition(108.3, 35.75);
	self.__children['medal_bg#medal_num'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'medal_bg#medal_num';
	localParams[18]:addChild(localParams[20]);

end
function AchievePrizeNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg013.png');
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


function AchievePrizeNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function AchievePrizeNode:_prizeGetBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.prizeGetBtn then
        return self.m_ClickDelegate:prizeGetBtn(sender);
    end
    if self.prizeGetBtn then
        return self:prizeGetBtn(sender);
    end
end


return AchievePrizeNode;