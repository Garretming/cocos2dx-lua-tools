-- 
-- Author: generation auto
-- Brief：FightResultLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local FightResultLayer = class('FightResultLayer', gamecore.ui.BaseWidget);

function FightResultLayer:create(...) 
    local instance = FightResultLayer.new(...);
    return instance;
end

function FightResultLayer:ctor(...) 
    if FightResultLayer.super and FightResultLayer.super.ctor then
        FightResultLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(200);
	self:setTouchEnabled(true);

end

function FightResultLayer:initView()
    self.__LAYER_NAME = 'arena.ladder.FightResultLayer';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onClose));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 183.0, height = 68.0});
	localParams[1]:setPosition(WinSize.width - 143.36, 64.0);
	self.__children['close_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'close_btn';
	self:addChild(localParams[1]);

	localParams[2] = Node:create();
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setScaleX(0.90);
	localParams[2]:setScaleY(0.90);
	localParams[2]:setContentSize({width = 0.0, height = 0.0});
	localParams[2]:setPosition(318.52, 23.04);
	self.__children['close_btn#__SELECTED_SCALE'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'close_btn#__SELECTED_SCALE';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_common/fontImg0038.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 71.0, height = 30.0});
	localParams[3]:setPosition(91.5, 34.0);
	self.__children['close_btn#font_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'close_btn#font_sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._onReplay));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 183.0, height = 68.0});
	localParams[4]:setPosition(143.36, 64.0);
	self.__children['replay_btn'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'replay_btn';
	self:addChild(localParams[4]);

	localParams[5] = Node:create();
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setScaleX(0.90);
	localParams[5]:setScaleY(0.90);
	localParams[5]:setContentSize({width = 0.0, height = 0.0});
	localParams[5]:setPosition(318.52, 23.04);
	self.__children['replay_btn#__SELECTED_SCALE'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'replay_btn#__SELECTED_SCALE';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_common/fontImg0036.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 71.0, height = 30.0});
	localParams[6]:setPosition(91.5, 34.0);
	self.__children['replay_btn#font_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'replay_btn#font_sprite';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0080.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 369.0, height = 307.0});
	localParams[7]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 230.40);
	self.__children['light_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'light_sprite';
	self:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0129.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 543.0, height = 233.0});
	localParams[8]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 224.00);
	self.__children['win_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'win_sprite';
	self:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0133.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 229.0, height = 68.0});
	localParams[9]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 243.20);
	self.__children['winFont_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'winFont_sprite';
	self:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 110.0, height = 110.0});
	localParams[10]:setPosition(245.76, 192.0);
	self.__children['prize_1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'prize_1';
	self:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 98.0, height = 98.0});
	localParams[11]:setPosition(55.0, 54.0);
	self.__children['prize_1#icon_sprite'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'prize_1#icon_sprite';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[25]]);
	localParams[12]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[12]:setAnchorPoint(1.00, 0.50);
	localParams[12]:setContentSize({width = 27.0, height = 22.0});
	localParams[12]:setPosition(93.5, 23.1);
	self.__children['prize_1#count_txt'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'prize_1#count_txt';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 110.0, height = 110.0});
	localParams[13]:setPosition(378.88, 192.0);
	self.__children['prize_2'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'prize_2';
	self:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 98.0, height = 98.0});
	localParams[14]:setPosition(55.0, 54.0);
	self.__children['prize_2#icon_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'prize_2#icon_sprite';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(20);
	localParams[15]:setString([[25]]);
	localParams[15]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[15]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[15]:setAnchorPoint(1.00, 0.50);
	localParams[15]:setContentSize({width = 27.0, height = 22.0});
	localParams[15]:setPosition(93.5, 23.1);
	self.__children['prize_2#count_txt'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'prize_2#count_txt';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 110.0, height = 110.0});
	localParams[16]:setPosition(512.0, 192.0);
	self.__children['prize_3'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'prize_3';
	self:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 98.0, height = 98.0});
	localParams[17]:setPosition(55.0, 54.0);
	self.__children['prize_3#icon_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'prize_3#icon_sprite';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[25]]);
	localParams[18]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[18]:setAnchorPoint(1.00, 0.50);
	localParams[18]:setContentSize({width = 27.0, height = 22.0});
	localParams[18]:setPosition(93.5, 23.1);
	self.__children['prize_3#count_txt'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'prize_3#count_txt';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 110.0, height = 110.0});
	localParams[19]:setPosition(645.12, 192.0);
	self.__children['prize_4'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'prize_4';
	self:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 98.0, height = 98.0});
	localParams[20]:setPosition(55.0, 54.0);
	self.__children['prize_4#icon_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'prize_4#icon_sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(20);
	localParams[21]:setString([[25]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[21]:setAnchorPoint(1.00, 0.50);
	localParams[21]:setContentSize({width = 27.0, height = 22.0});
	localParams[21]:setPosition(93.5, 23.1);
	self.__children['prize_4#count_txt'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'prize_4#count_txt';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 110.0, height = 110.0});
	localParams[22]:setPosition(778.24, 192.0);
	self.__children['prize_5'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'prize_5';
	self:addChild(localParams[22]);

	localParams[23] = ImageView:create('uires/public/sheet_other/other0061.png', 1);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 98.0, height = 98.0});
	localParams[23]:setPosition(55.0, 54.0);
	self.__children['prize_5#icon_sprite'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'prize_5#icon_sprite';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = Text:create();
	localParams[24]:setFontSize(20);
	localParams[24]:setString([[25]]);
	localParams[24]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[24]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[24]:setAnchorPoint(1.00, 0.50);
	localParams[24]:setContentSize({width = 27.0, height = 22.0});
	localParams[24]:setPosition(93.5, 23.1);
	self.__children['prize_5#count_txt'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'prize_5#count_txt';
	localParams[22]:addChild(localParams[24]);

	localParams[25] = Text:create();
	localParams[25]:setFontSize(24);
	localParams[25]:setString([[70]]);
	localParams[25]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[25]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[25]:setAnchorPoint(0.50, 0.50);
	localParams[25]:setTextColor({r = 0, g = 235, b = 255});
	localParams[25]:setContentSize({width = 33.0, height = 26.0});
	localParams[25]:setPosition(542.72, 275.2);
	self.__children['score_txt'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'score_txt';
	self:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_font/fontImg0152.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 71.0, height = 26.0});
	localParams[26]:setPosition(481.28, 275.2);
	self.__children['font_sprite'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'font_sprite';
	self:addChild(localParams[26]);

	localParams[27] = Text:create();
	localParams[27]:setFontSize(24);
	localParams[27]:setString([[+6]]);
	localParams[27]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[27]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setTextColor({r = 80, g = 255, b = 0});
	localParams[27]:setContentSize({width = 30.0, height = 26.0});
	localParams[27]:setPosition(583.68, 275.2);
	self.__children['change_txt'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'change_txt';
	self:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/public/sheet_other/other0148.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 22.0, height = 34.0});
	localParams[28]:setPosition(614.4, 275.2);
	self.__children['arrow_sprite'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'arrow_sprite';
	self:addChild(localParams[28]);

end
function FightResultLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
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


function FightResultLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function FightResultLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


function FightResultLayer:_onReplay(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onReplay then
        return self.m_ClickDelegate:onReplay(sender);
    end
    if self.onReplay then
        return self:onReplay(sender);
    end
end


return FightResultLayer;