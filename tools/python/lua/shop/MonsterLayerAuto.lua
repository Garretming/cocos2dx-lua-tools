-- 
-- Author: generation auto
-- Brief：MonsterLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local MonsterLayer = class('MonsterLayer', gamecore.ui.BaseWidget);

function MonsterLayer:create(...) 
    local instance = MonsterLayer.new(...);
    return instance;
end

function MonsterLayer:ctor(...) 
    if MonsterLayer.super and MonsterLayer.super.ctor then
        MonsterLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function MonsterLayer:initView()
    self.__LAYER_NAME = 'shop.MonsterLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0042.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 824.0, height = 477.0});
	localParams[1]:setPosition(WinSize.width/2 + (35.00 * ccx.scaleX), WinSize.height - 373.50);
	self.__children['Sprite'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Sprite';
	self:addChild(localParams[1]);

	localParams[2] = RichText:create();
	localParams[2]:setDefaultFontSize(24);
	localParams[2]:setString([[]]);
	localParams[2]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setTextColor({r = 0, g = 0, b = 0});
	localParams[2]:setContentSize({width = 120.0, height = 24.0});
	localParams[2]:setPosition(183.0, 35.0);
	self.__children['Sprite#TextLeft'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Sprite#TextLeft';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 11.000000, width = 16.000000, height = 14.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._onClickLeft));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 280.0, height = 300.0});
	localParams[3]:setPosition(180.0, 285.0);
	self.__children['Sprite#ButtonLeft'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Sprite#ButtonLeft';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Widget:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.95);
	localParams[4]:setScaleY(0.95);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(72.93, -9.77);
	self.__children['Sprite#ButtonLeft#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Sprite#ButtonLeft#__SELECTED_SCALE';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(30);
	localParams[5]:setString([[点击查看]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 240, g = 200, b = 60});
	localParams[5]:setContentSize({width = 124.0, height = 34.0});
	localParams[5]:setPosition(140.0, 27.0);
	self.__children['Sprite#ButtonLeft#Text_20'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Sprite#ButtonLeft#Text_20';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[6]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._onBuyLeft));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 183.0, height = 68.0});
	localParams[6]:setPosition(181.5, 90.0);
	self.__children['Sprite#Button1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Sprite#Button1';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.80);
	localParams[7]:setContentSize({width = 84.0, height = 28.0});
	localParams[7]:setPosition(58.0, 34.0);
	self.__children['Sprite#Button1#uires_public_sheet_bgframe_bgFrame0062_1'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Sprite#Button1#uires_public_sheet_bgframe_bgFrame0062_1';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[9]]);
	localParams[8]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 15.0, height = 22.0});
	localParams[8]:setPosition(70.5, 34.0);
	self.__children['Sprite#Button1#text'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Sprite#Button1#text';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setScaleX(0.80);
	localParams[9]:setScaleY(0.80);
	localParams[9]:setContentSize({width = 44.0, height = 44.0});
	localParams[9]:setPosition(36.0, 34.0);
	self.__children['Sprite#Button1#soul_img3'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Sprite#Button1#soul_img3';
	localParams[6]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_font/fontImg0169.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 72.0, height = 30.0});
	localParams[10]:setPosition(130.54, 34.0);
	self.__children['Sprite#Button1#soul_img4'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Sprite#Button1#soul_img4';
	localParams[6]:addChild(localParams[10]);

	localParams[11] = Widget:create();
	localParams[11]:setAnchorPoint(0.00, 0.00);
	localParams[11]:setScaleX(0.90);
	localParams[11]:setScaleY(0.90);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(62.93, 0.23);
	self.__children['Sprite#Button1#__SELECTED_SCALE'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Sprite#Button1#__SELECTED_SCALE';
	localParams[6]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._onBuyRight));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 183.0, height = 68.0});
	localParams[12]:setPosition(localParams[1]:getContentSize().width - 181.50, 90.0);
	self.__children['Sprite#Button2'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Sprite#Button2';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_bgframe/bgFrame0062.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(0.80);
	localParams[13]:setContentSize({width = 84.0, height = 28.0});
	localParams[13]:setPosition(58.0, 34.0);
	self.__children['Sprite#Button2#uires_public_sheet_bgframe_bgFrame0062_1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Sprite#Button2#uires_public_sheet_bgframe_bgFrame0062_1';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[9]]);
	localParams[14]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[14]:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 15.0, height = 22.0});
	localParams[14]:setPosition(70.5, 34.0);
	self.__children['Sprite#Button2#text'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Sprite#Button2#text';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_icon/icon0028.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.80);
	localParams[15]:setScaleY(0.80);
	localParams[15]:setContentSize({width = 44.0, height = 44.0});
	localParams[15]:setPosition(36.0, 34.0);
	self.__children['Sprite#Button2#soul_img3'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Sprite#Button2#soul_img3';
	localParams[12]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_font/fontImg0169.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 72.0, height = 30.0});
	localParams[16]:setPosition(130.54, 34.0);
	self.__children['Sprite#Button2#soul_img4'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Sprite#Button2#soul_img4';
	localParams[12]:addChild(localParams[16]);

	localParams[17] = Widget:create();
	localParams[17]:setAnchorPoint(0.00, 0.00);
	localParams[17]:setScaleX(0.90);
	localParams[17]:setScaleY(0.90);
	localParams[17]:setContentSize({width = 0.0, height = 0.0});
	localParams[17]:setPosition(62.93, 0.23);
	self.__children['Sprite#Button2#__SELECTED_SCALE'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Sprite#Button2#__SELECTED_SCALE';
	localParams[12]:addChild(localParams[17]);

	localParams[18] = Button:create();
	localParams[18]:setTitleFontSize(14);
	localParams[18]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[18]:setScale9Enabled(true);
	localParams[18]:setCapInsets({x = 15.000000, y = 11.000000, width = 16.000000, height = 14.000000});
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:onClick(handler(self, self._onClickRight));
	localParams[18]:setTouchEnabled(true);
	localParams[18]:setContentSize({width = 280.0, height = 300.0});
	localParams[18]:setPosition(644.0, 285.0);
	self.__children['Sprite#ButtonRight'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Sprite#ButtonRight';
	localParams[1]:addChild(localParams[18]);

	localParams[19] = Text:create();
	localParams[19]:setFontSize(30);
	localParams[19]:setString([[点击查看]]);
	localParams[19]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[19]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setTextColor({r = 240, g = 200, b = 60});
	localParams[19]:setContentSize({width = 124.0, height = 34.0});
	localParams[19]:setPosition(140.0, 27.0);
	self.__children['Sprite#ButtonRight#Text_20'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Sprite#ButtonRight#Text_20';
	localParams[18]:addChild(localParams[19]);

	localParams[20] = Widget:create();
	localParams[20]:setAnchorPoint(0.00, 0.00);
	localParams[20]:setScaleX(0.95);
	localParams[20]:setScaleY(0.95);
	localParams[20]:setContentSize({width = 0.0, height = 0.0});
	localParams[20]:setPosition(82.93, -19.77);
	self.__children['Sprite#ButtonRight#__SELECTED_SCALE'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'Sprite#ButtonRight#__SELECTED_SCALE';
	localParams[18]:addChild(localParams[20]);

	localParams[21] = RichText:create();
	localParams[21]:setDefaultFontSize(24);
	localParams[21]:setString([[]]);
	localParams[21]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setTextColor({r = 0, g = 0, b = 0});
	localParams[21]:setContentSize({width = 120.0, height = 24.0});
	localParams[21]:setPosition(643.0, 35.0);
	self.__children['Sprite#TextRight'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Sprite#TextRight';
	localParams[1]:addChild(localParams[21]);

end
function MonsterLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Normal.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0042.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function MonsterLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MonsterLayer:_onBuyRight(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onBuyRight then
        return self.m_ClickDelegate:onBuyRight(sender);
    end
    if self.onBuyRight then
        return self:onBuyRight(sender);
    end
end


function MonsterLayer:_onClickRight(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClickRight then
        return self.m_ClickDelegate:onClickRight(sender);
    end
    if self.onClickRight then
        return self:onClickRight(sender);
    end
end


function MonsterLayer:_onBuyLeft(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onBuyLeft then
        return self.m_ClickDelegate:onBuyLeft(sender);
    end
    if self.onBuyLeft then
        return self:onBuyLeft(sender);
    end
end


function MonsterLayer:_onClickLeft(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClickLeft then
        return self.m_ClickDelegate:onClickLeft(sender);
    end
    if self.onClickLeft then
        return self:onClickLeft(sender);
    end
end


return MonsterLayer;