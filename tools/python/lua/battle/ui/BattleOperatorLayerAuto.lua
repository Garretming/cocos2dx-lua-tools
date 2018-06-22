-- 
-- Author: generation auto
-- Brief：BattleOperatorLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local BattleOperatorLayer = class('BattleOperatorLayer', gamecore.ui.BaseWidget);

function BattleOperatorLayer:create(...) 
    local instance = BattleOperatorLayer.new(...);
    return instance;
end

function BattleOperatorLayer:ctor(...) 
    if BattleOperatorLayer.super and BattleOperatorLayer.super.ctor then
        BattleOperatorLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function BattleOperatorLayer:initView()
    self.__LAYER_NAME = 'battle.ui.BattleOperatorLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/battle/sheet/bgFrame0001.png', 1);
	localParams[1]:setAnchorPoint(1.00, 1.00);
	localParams[1]:setFlippedX(true);
	localParams[1]:setContentSize({width = 397.0, height = 32.0});
	localParams[1]:setPosition(WinSize.width/2 + (-14.95 * ccx.scaleX), WinSize.height - 5.00);
	self.__children['teamA'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'teamA';
	self:addChild(localParams[1]);

	localParams[2] = LoadingBar:create('uires/battle/sheet/btn0088.png', 1, 100.00);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 244.0, height = 11.0});
	localParams[2]:setPosition(163.0, 17.5);
	self.__children['teamA#hp'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'teamA#hp';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/battle/sheet/icon0055.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setScaleY(1.08);
	localParams[3]:setContentSize({width = 34.0, height = 39.0});
	localParams[3]:setPosition(325.0, 12.5);
	self.__children['teamA#Sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'teamA#Sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = TextAtlas:create();
	localParams[4]:setProperty([[]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.70);
	localParams[4]:setScaleY(0.70);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(14.0, 19.5);
	self.__children['teamA#Sprite#card_text'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'teamA#Sprite#card_text';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/battle/sheet/bgFrame0001.png', 1);
	localParams[5]:setAnchorPoint(0.00, 1.00);
	localParams[5]:setContentSize({width = 397.0, height = 32.0});
	localParams[5]:setPosition(WinSize.width/2 + (14.95 * ccx.scaleX), WinSize.height - 5.00);
	self.__children['teamB'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'teamB';
	self:addChild(localParams[5]);

	localParams[6] = LoadingBar:create('uires/battle/sheet/btn0087.png', 1, 100.00);
	localParams[6]:setDirection(1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 244.0, height = 11.0});
	localParams[6]:setPosition(234.0, 17.5);
	self.__children['teamB#hp'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'teamB#hp';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/battle/sheet/icon0054.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 34.0, height = 39.0});
	localParams[7]:setPosition(72.0, 12.5);
	self.__children['teamB#Sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'teamB#Sprite';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = TextAtlas:create();
	localParams[8]:setProperty([[]], 'uires/public/font_number/fontImg0011.png', 13, 19, '.');
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.70);
	localParams[8]:setScaleY(0.70);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(20.0, 19.5);
	self.__children['teamB#Sprite#card_text'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'teamB#Sprite#card_text';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/battle/sheet/btn0001.png', 1);
	localParams[9]:loadTexturePressed('uires/battle/sheet/btn0002.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 15.000000, y = 11.000000, width = 52.000000, height = 60.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._onPause));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 82.0, height = 82.0});
	localParams[9]:setPosition(51.0, WinSize.height - 51.00);
	self.__children['pause'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'pause';
	self:addChild(localParams[9]);

	localParams[10] = CheckBox:create();
	localParams[10]:loadTextureBackGround('uires/battle/sheet/btn0003.png', 1);
	localParams[10]:backGroundSelectedTexturePath('uires/battle/sheet/btn0004.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:onClick(handler(self, self._onAutomatic));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 72.0, height = 72.0});
	localParams[10]:setPosition(WinSize.width - 46.00, WinSize.height - 46.00);
	self.__children['automatic'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'automatic';
	self:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/battle/sheet/bgFrame0010.png', 1);
	localParams[11]:ignoreContentAdaptWithSize(false);
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = 20.000000, y = 33.000000,width = 80.000000, height = 93.000000});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 1136.0, height = 155.0});
	localParams[11]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 72.42);
	self.__children['Image_1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Image_1';
	self:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 118.0, height = 119.0});
	localParams[12]:setPosition(WinSize.width - 174.00, 89.5);
	self.__children['skill1'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'skill1';
	self:addChild(localParams[12]);

	localParams[13] = ImageView:create(nil, 0);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 46.0, height = 46.0});
	localParams[13]:setPosition(59.0, 59.5);
	self.__children['skill1#image'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'skill1#image';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 38.0, height = 42.0});
	localParams[14]:setPosition(59.0, 20.0);
	self.__children['skill1#anger'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'skill1#anger';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = TextAtlas:create();
	localParams[15]:setProperty([[0]], 'uires/public/font_number/fontImg0022.png', 18, 21, '.');
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.80);
	localParams[15]:setScaleY(0.80);
	localParams[15]:setContentSize({width = 18.0, height = 21.0});
	localParams[15]:setPosition(19.0, 19.0);
	self.__children['skill1#anger#value'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'skill1#anger#value';
	localParams[14]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(26);
	localParams[16]:setString([[0]]);
	localParams[16]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[16]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setTextColor({r = 59, g = 225, b = 220});
	localParams[16]:setContentSize({width = 20.0, height = 30.0});
	localParams[16]:setPosition(59.0, 59.5);
	self.__children['skill1#cd_text'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'skill1#cd_text';
	localParams[12]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 118.0, height = 119.0});
	localParams[17]:setPosition(WinSize.width - 64.00, 89.5);
	self.__children['skill2'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'skill2';
	self:addChild(localParams[17]);

	localParams[18] = ImageView:create(nil, 0);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 46.0, height = 46.0});
	localParams[18]:setPosition(59.0, 59.5);
	self.__children['skill2#image'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'skill2#image';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 38.0, height = 42.0});
	localParams[19]:setPosition(59.0, 20.0);
	self.__children['skill2#anger'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'skill2#anger';
	localParams[17]:addChild(localParams[19]);

	localParams[20] = TextAtlas:create();
	localParams[20]:setProperty([[0]], 'uires/public/font_number/fontImg0022.png', 18, 21, '.');
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setScaleX(0.80);
	localParams[20]:setScaleY(0.80);
	localParams[20]:setContentSize({width = 18.0, height = 21.0});
	localParams[20]:setPosition(19.0, 19.0);
	self.__children['skill2#anger#value'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'skill2#anger#value';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(26);
	localParams[21]:setString([[0]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setTextColor({r = 59, g = 225, b = 220});
	localParams[21]:setContentSize({width = 20.0, height = 30.0});
	localParams[21]:setPosition(59.0, 59.5);
	self.__children['skill2#cd_text'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'skill2#cd_text';
	localParams[17]:addChild(localParams[21]);

	localParams[22] = ImageView:create('uires/battle/sheet/other0055.png', 1);
	localParams[22]:setAnchorPoint(0.00, 0.00);
	localParams[22]:setContentSize({width = 979.0, height = 25.0});
	localParams[22]:setPosition(40.0, 0.0);
	self.__children['anger'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'anger';
	self:addChild(localParams[22]);

	localParams[23] = LoadingBar:create('uires/battle/sheet/other0056.png', 1, 0.00);
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:setContentSize({width = 909.0, height = 12.0});
	localParams[23]:setPosition(487.54, 12.5);
	self.__children['anger#loading'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'anger#loading';
	localParams[22]:addChild(localParams[23]);

	localParams[24] = ImageView:create('uires/battle/sheet/fontImg0043.png', 1);
	localParams[24]:setAnchorPoint(0.43, 0.54);
	localParams[24]:setContentSize({width = 44.0, height = 12.0});
	localParams[24]:setPosition(41.0, 13.5);
	self.__children['anger#uires_battle_sheet_fontImg0043_15'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'anger#uires_battle_sheet_fontImg0043_15';
	localParams[22]:addChild(localParams[24]);

	localParams[25] = ImageView:create('uires/battle/sheet/bgFrame0075.png', 1);
	localParams[25]:setAnchorPoint(0.00, 0.00);
	localParams[25]:setContentSize({width = 78.0, height = 55.0});
	localParams[25]:setPosition(0.0, 0.0);
	self.__children['current_anger'] = localParams[25];
	localParams[25].__children = self.__children;
	localParams[25].__Name = 'current_anger';
	self:addChild(localParams[25]);

	localParams[26] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[26]:setAnchorPoint(0.50, 0.50);
	localParams[26]:setContentSize({width = 38.0, height = 42.0});
	localParams[26]:setPosition(28.0, 29.0);
	self.__children['current_anger#current_anger'] = localParams[26];
	localParams[26].__children = self.__children;
	localParams[26].__Name = 'current_anger#current_anger';
	localParams[25]:addChild(localParams[26]);

	localParams[27] = TextAtlas:create();
	localParams[27]:setProperty([[0]], 'uires/public/font_number/fontImg0022.png', 18, 21, '.');
	localParams[27]:setAnchorPoint(0.50, 0.50);
	localParams[27]:setScaleX(0.80);
	localParams[27]:setScaleY(0.80);
	localParams[27]:setContentSize({width = 18.0, height = 21.0});
	localParams[27]:setPosition(28.0, 28.0);
	self.__children['current_anger#value'] = localParams[27];
	localParams[27].__children = self.__children;
	localParams[27].__Name = 'current_anger#value';
	localParams[25]:addChild(localParams[27]);

	localParams[28] = ImageView:create('uires/battle/sheet/bgFrame0082.png', 1);
	localParams[28]:setAnchorPoint(0.50, 0.50);
	localParams[28]:setContentSize({width = 112.0, height = 49.0});
	localParams[28]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 25.50);
	self.__children['uires_public_sheet_bgFrame0082_1'] = localParams[28];
	localParams[28].__children = self.__children;
	localParams[28].__Name = 'uires_public_sheet_bgFrame0082_1';
	self:addChild(localParams[28]);

	localParams[29] = ImageView:create('uires/battle/sheet/fontImg0042.png', 1);
	localParams[29]:setAnchorPoint(0.50, 0.50);
	localParams[29]:setContentSize({width = 72.0, height = 16.0});
	localParams[29]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 17.00);
	self.__children['uires_battle_sheet_fontImg0042_11'] = localParams[29];
	localParams[29].__children = self.__children;
	localParams[29].__Name = 'uires_battle_sheet_fontImg0042_11';
	self:addChild(localParams[29]);

	localParams[30] = TextAtlas:create();
	localParams[30]:setProperty([[]], 'uires/public/font_number/fontImg0008.png', 14, 18, '.');
	localParams[30]:setAnchorPoint(0.50, 0.50);
	localParams[30]:setContentSize({width = 0.0, height = 0.0});
	localParams[30]:setPosition(WinSize.width/2 + (-0.10 * ccx.scaleX), WinSize.height - 30.00);
	self.__children['name'] = localParams[30];
	localParams[30].__children = self.__children;
	localParams[30].__Name = 'name';
	self:addChild(localParams[30]);

	localParams[31] = Button:create();
	localParams[31]:loadTextureNormal('uires/battle/sheet/btn0047.png', 1);
	localParams[31]:loadTexturePressed('uires/battle/sheet/btn0047.png', 1);
	localParams[31]:setTitleFontSize(14);
	localParams[31]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[31]:setScale9Enabled(true);
	localParams[31]:setCapInsets({x = 8.000000, y = 6.000000, width = 10.000000, height = 7.000000});
	localParams[31]:setAnchorPoint(0.50, 0.50);
	localParams[31]:onClick(handler(self, self._onPrintLeaks));
	localParams[31]:setTouchEnabled(true);
	localParams[31]:setContentSize({width = 50.0, height = 50.0});
	localParams[31]:setPosition(55.79, 487.49);
	self.__children['Button_1'] = localParams[31];
	localParams[31].__children = self.__children;
	localParams[31].__Name = 'Button_1';
	self:addChild(localParams[31]);

end
function BattleOperatorLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/CheckBox_Disable.png');
	table.insert(self._textureList, 'Default/CheckBoxNode_Disable.png');
	table.insert(self._textureList, 'Default/CheckBoxNode_Normal.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/battle/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0008.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0011.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg0022.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function BattleOperatorLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/battle/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function BattleOperatorLayer:_onPrintLeaks(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPrintLeaks then
        return self.m_ClickDelegate:onPrintLeaks(sender);
    end
    if self.onPrintLeaks then
        return self:onPrintLeaks(sender);
    end
end


function BattleOperatorLayer:_onPause(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPause then
        return self.m_ClickDelegate:onPause(sender);
    end
    if self.onPause then
        return self:onPause(sender);
    end
end


return BattleOperatorLayer;