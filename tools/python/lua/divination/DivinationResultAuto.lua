-- 
-- Author: generation auto
-- Brief：DivinationResultAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local DivinationResult = class('DivinationResult', gamecore.ui.BaseWidget);

function DivinationResult:create(...) 
    local instance = DivinationResult.new(...);
    return instance;
end

function DivinationResult:ctor(...) 
    if DivinationResult.super and DivinationResult.super.ctor then
        DivinationResult.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function DivinationResult:initView()
    self.__LAYER_NAME = 'divination.DivinationResult';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0024.png', 0);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 374.000000, y = 253.000000,width = 388.000000, height = 262.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_font/fontImg0093.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setVisible(false);
	localParams[2]:setContentSize({width = 181.0, height = 50.0});
	localParams[2]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height - 105.00);
	self.__children['title'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'title';
	self:addChild(localParams[2]);

	localParams[3] = Widget:create();
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setContentSize({width = 0.0, height = 0.0});
	localParams[3]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Node_5'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Node_5';
	self:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.01);
	localParams[4]:setScaleY(0.01);
	localParams[4]:onClick(handler(self, self._prize_good_btn));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 120.0, height = 120.0});
	localParams[4]:setPosition(0.0, 60.0);
	self.__children['Node_5#prize_good'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Node_5#prize_good';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = -15.000000, y = -11.000000, width = 30.000000, height = 22.000000});
	localParams[5]:setAnchorPoint(0.50, 0.00);
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 200.0, height = 200.0});
	localParams[5]:setPosition(0.0, 500.0);
	self.__children['Node_5#prize_monster'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Node_5#prize_monster';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_font/fontImg0191.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setVisible(false);
	localParams[6]:setContentSize({width = 110.0, height = 26.0});
	localParams[6]:setPosition(-40.0, -165.0);
	self.__children['Node_5#get_img'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Node_5#get_img';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[500]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[7]:setAnchorPoint(0.00, 1.00);
	localParams[7]:setContentSize({width = 41.0, height = 24.0});
	localParams[7]:setPosition(123.09, 24.96);
	self.__children['Node_5#get_img#get_num'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Node_5#get_img#get_num';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0102.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.01);
	localParams[8]:setScaleY(0.01);
	localParams[8]:setContentSize({width = 273.0, height = 42.0});
	localParams[8]:setPosition(0.0, -110.0);
	self.__children['Node_5#name_bg'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Node_5#name_bg';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0098.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 60.0, height = 29.0});
	localParams[9]:setPosition(38.0, 21.0);
	self.__children['Node_5#name_bg#other1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Node_5#name_bg#other1';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0099.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 60.0, height = 29.0});
	localParams[10]:setPosition(235.0, 21.0);
	self.__children['Node_5#name_bg#other2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Node_5#name_bg#other2';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 255, g = 240, b = 155});
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(137.23, 21.41);
	self.__children['Node_5#name_bg#name'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Node_5#name_bg#name';
	localParams[8]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_common/btn0033.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setVisible(false);
	localParams[12]:onClick(handler(self, self._again_btn));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 183.0, height = 68.0});
	localParams[12]:setPosition(WinSize.width/2 + (120.52 * ccx.scaleX), 84.0);
	self.__children['again'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'again';
	self:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_font/fontImg0190.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 101.0, height = 28.0});
	localParams[13]:setPosition(91.5, 34.0);
	self.__children['again#font'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'again#font';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = ImageView:create('uires/public/sheet_icon/icon0103.png', 1);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(0.80);
	localParams[14]:setScaleY(0.80);
	localParams[14]:setContentSize({width = 44.0, height = 44.0});
	localParams[14]:setPosition(73.2, -25.0);
	self.__children['again#crystal'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'again#crystal';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(20);
	localParams[15]:setString([[1]]);
	localParams[15]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[15]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 14.0, height = 24.0});
	localParams[15]:setPosition(113.42, -25.0);
	self.__children['again#price_txt'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'again#price_txt';
	localParams[12]:addChild(localParams[15]);

	localParams[16] = Widget:create();
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setScaleX(0.90);
	localParams[16]:setScaleY(0.90);
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(40.16, -32.75);
	self.__children['again#__SELECTED_SCALE'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'again#__SELECTED_SCALE';
	localParams[12]:addChild(localParams[16]);

	localParams[17] = Button:create();
	localParams[17]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[17]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[17]:setTitleFontSize(14);
	localParams[17]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[17]:setScale9Enabled(true);
	localParams[17]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setVisible(false);
	localParams[17]:onClick(handler(self, self._sure_btn));
	localParams[17]:setTouchEnabled(true);
	localParams[17]:setContentSize({width = 183.0, height = 68.0});
	localParams[17]:setPosition(WinSize.width/2 + (-120.52 * ccx.scaleX), 84.0);
	self.__children['sure_btn'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'sure_btn';
	self:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_font/fontImg0085.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 70.0, height = 30.0});
	localParams[18]:setPosition(91.5, 34.0);
	self.__children['sure_btn#font'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'sure_btn#font';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = Widget:create();
	localParams[19]:setAnchorPoint(0.00, 0.00);
	localParams[19]:setScaleX(0.90);
	localParams[19]:setScaleY(0.90);
	localParams[19]:setContentSize({width = 0.0, height = 0.0});
	localParams[19]:setPosition(62.93, -21.77);
	self.__children['sure_btn#__SELECTED_SCALE'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'sure_btn#__SELECTED_SCALE';
	localParams[17]:addChild(localParams[19]);

end
function DivinationResult:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0024.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function DivinationResult:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function DivinationResult:_again_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.again_btn then
        return self.m_ClickDelegate:again_btn(sender);
    end
    if self.again_btn then
        return self:again_btn(sender);
    end
end


function DivinationResult:_prize_good_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.prize_good_btn then
        return self.m_ClickDelegate:prize_good_btn(sender);
    end
    if self.prize_good_btn then
        return self:prize_good_btn(sender);
    end
end


function DivinationResult:_sure_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.sure_btn then
        return self.m_ClickDelegate:sure_btn(sender);
    end
    if self.sure_btn then
        return self:sure_btn(sender);
    end
end


return DivinationResult;