-- 
-- Author: generation auto
-- Brief：SelectServerLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SelectServerLayer = class('SelectServerLayer', gamecore.ui.BaseWidget);

function SelectServerLayer:create(...) 
    local instance = SelectServerLayer.new(...);
    return instance;
end

function SelectServerLayer:ctor(...) 
    if SelectServerLayer.super and SelectServerLayer.super.ctor then
        SelectServerLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function SelectServerLayer:initView()
    self.__LAYER_NAME = 'login.SelectServerLayer';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_btn/btn0038.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onStart));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 291.0, height = 111.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 115.52);
	self.__children['button1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'button1';
	self:addChild(localParams[1]);

	localParams[2] = Widget:create();
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setScaleX(0.90);
	localParams[2]:setScaleY(0.90);
	localParams[2]:setContentSize({width = 0.0, height = 0.0});
	localParams[2]:setPosition(20.0, -20.0);
	self.__children['button1#__SELECTED_SCALE'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'button1#__SELECTED_SCALE';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/bgFrame0044.png', 0);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 15.000000,width = 456.000000, height = 456.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setVisible(false);
	localParams[3]:setContentSize({width = 900.0, height = 535.0});
	localParams[3]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (2.94 * ccx.scaleY));
	self.__children['Image_2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_2';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0045.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 59.000000, y = 59.000000,width = 62.000000, height = 62.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 790.0, height = 100.0});
	localParams[4]:setPosition(450.0, localParams[3]:getContentSize().height - 140.00);
	self.__children['Image_2#Image_3'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_2#Image_3';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0018.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 96.0, height = 24.0});
	localParams[5]:setPosition(450.0, 468.0);
	self.__children['Image_2#uires_login_sheet_fontImg0018_1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_2#uires_login_sheet_fontImg0018_1';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0045.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 118.0, height = 12.0});
	localParams[6]:setPosition(719.0, 469.0);
	self.__children['Image_2#uires_login_sheet_other0045_2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_2#uires_login_sheet_other0045_2';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0046.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 131.0, height = 22.0});
	localParams[7]:setPosition(595.5, 469.0);
	self.__children['Image_2#uires_login_sheet_other0046_4'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_2#uires_login_sheet_other0046_4';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0045.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setFlippedX(true);
	localParams[8]:setContentSize({width = 118.0, height = 12.0});
	localParams[8]:setPosition(181.0, 469.0);
	self.__children['Image_2#uires_login_sheet_other0045_2_0'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Image_2#uires_login_sheet_other0045_2_0';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0046.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setFlippedX(true);
	localParams[9]:setContentSize({width = 131.0, height = 22.0});
	localParams[9]:setPosition(304.5, 469.0);
	self.__children['Image_2#uires_login_sheet_other0046_4_0'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Image_2#uires_login_sheet_other0046_4_0';
	localParams[3]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_font/fontImg0019.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 120.0, height = 25.0});
	localParams[10]:setPosition(450.0, localParams[3]:getContentSize().height - 217.50);
	self.__children['Image_2#uires_login_sheet_fontImg0019_7'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Image_2#uires_login_sheet_fontImg0019_7';
	localParams[3]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_other/other0045.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 118.0, height = 12.0});
	localParams[11]:setPosition(580.0, 318.0);
	self.__children['Image_2#uires_login_sheet_other0045_2_1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Image_2#uires_login_sheet_other0045_2_1';
	localParams[3]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0045.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setFlippedX(true);
	localParams[12]:setContentSize({width = 118.0, height = 12.0});
	localParams[12]:setPosition(320.0, 318.0);
	self.__children['Image_2#uires_login_sheet_other0045_2_1_0'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Image_2#uires_login_sheet_other0045_2_1_0';
	localParams[3]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0043.png', 1);
	localParams[13]:setAnchorPoint(0.47, 0.52);
	localParams[13]:setScaleX(0.70);
	localParams[13]:setScaleY(0.70);
	localParams[13]:setContentSize({width = 46.0, height = 46.0});
	localParams[13]:setPosition(647.56, 317.92);
	self.__children['Image_2#sprite1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Image_2#sprite1';
	localParams[3]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[火爆]]);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setContentSize({width = 40.0, height = 20.0});
	localParams[14]:setPosition(50.6, 23.0);
	self.__children['Image_2#sprite1#text'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Image_2#sprite1#text';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_other/other0042.png', 1);
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setScaleX(0.70);
	localParams[15]:setScaleY(0.70);
	localParams[15]:setContentSize({width = 46.0, height = 46.0});
	localParams[15]:setPosition(724.0, 317.0);
	self.__children['Image_2#sprite2'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Image_2#sprite2';
	localParams[3]:addChild(localParams[15]);

	localParams[16] = Text:create();
	localParams[16]:setFontSize(20);
	localParams[16]:setString([[正常]]);
	localParams[16]:setAnchorPoint(0.00, 0.50);
	localParams[16]:setContentSize({width = 40.0, height = 20.0});
	localParams[16]:setPosition(50.6, 23.0);
	self.__children['Image_2#sprite2#text'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Image_2#sprite2#text';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0044.png', 1);
	localParams[17]:setAnchorPoint(0.48, 0.58);
	localParams[17]:setScaleX(0.70);
	localParams[17]:setScaleY(0.70);
	localParams[17]:setContentSize({width = 46.0, height = 46.0});
	localParams[17]:setPosition(792.96, 320.58);
	self.__children['Image_2#sprite3'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Image_2#sprite3';
	localParams[3]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[维护]]);
	localParams[18]:setAnchorPoint(0.00, 0.50);
	localParams[18]:setContentSize({width = 40.0, height = 20.0});
	localParams[18]:setPosition(50.6, 23.0);
	self.__children['Image_2#sprite3#text'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Image_2#sprite3#text';
	localParams[17]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_bgframe/bgFrame0045.png', 1);
	localParams[19]:ignoreContentAdaptWithSize(false);
	localParams[19]:setScale9Enabled(true);
	localParams[19]:setCapInsets({x = 59.000000, y = 59.000000,width = 62.000000, height = 62.000000});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setContentSize({width = 790.0, height = 235.0});
	localParams[19]:setPosition(450.0, localParams[3]:getContentSize().height - 365.00);
	self.__children['Image_2#Image_4'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Image_2#Image_4';
	localParams[3]:addChild(localParams[19]);

	node = PageView:create();
	localParams[20]:setBackGroundColorType(1);
	localParams[20]:setBackGroundColor({r = 150, g = 150, b = 100});
	localParams[20]:setBackGroundColorOpacity(167);
	localParams[20]:setAnchorPoint(0.00, 0.00);
	localParams[20]:setVisible(false);
	localParams[20]:setTouchEnabled(true);
	localParams[20]:setContentSize({width = 750.0, height = 195.0});
	localParams[20]:setPosition(20.0, 20.0);
	self.__children['Image_2#Image_4#PageView_1'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'Image_2#Image_4#PageView_1';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create(nil, 0);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 46.0, height = 46.0});
	localParams[21]:setPosition(200.0, -10.0);
	self.__children['Image_2#Image_4#normal_dot'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'Image_2#Image_4#normal_dot';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = ImageView:create(nil, 0);
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:setContentSize({width = 46.0, height = 46.0});
	localParams[22]:setPosition(300.0, -10.0);
	self.__children['Image_2#Image_4#selected_dot'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'Image_2#Image_4#selected_dot';
	localParams[19]:addChild(localParams[22]);

	localParams[23] = Button:create();
	localParams[23]:loadTextureNormal('uires/public/sheet_icon/icon0051.png', 1);
	localParams[23]:setTitleFontSize(14);
	localParams[23]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[23]:setAnchorPoint(0.50, 0.50);
	localParams[23]:onClick(handler(self, self._onAccountCenter));
	localParams[23]:setTouchEnabled(true);
	localParams[23]:setContentSize({width = 78.0, height = 98.0});
	localParams[23]:setPosition(WinSize.width - 59.77, WinSize.height - 84.58);
	self.__children['button2'] = localParams[23];
	localParams[23].__children = self.__children;
	localParams[23].__Name = 'button2';
	self:addChild(localParams[23]);

	localParams[24] = Widget:create();
	localParams[24]:setAnchorPoint(0.00, 0.00);
	localParams[24]:setScaleX(0.90);
	localParams[24]:setScaleY(0.90);
	localParams[24]:setContentSize({width = 0.0, height = 0.0});
	localParams[24]:setPosition(20.0, -20.0);
	self.__children['button2#__SELECTED_SCALE'] = localParams[24];
	localParams[24].__children = self.__children;
	localParams[24].__Name = 'button2#__SELECTED_SCALE';
	localParams[23]:addChild(localParams[24]);

end
function SelectServerLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/bgFrame0044.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function SelectServerLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SelectServerLayer:_onAccountCenter(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAccountCenter then
        return self.m_ClickDelegate:onAccountCenter(sender);
    end
    if self.onAccountCenter then
        return self:onAccountCenter(sender);
    end
end


function SelectServerLayer:_onStart(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onStart then
        return self.m_ClickDelegate:onStart(sender);
    end
    if self.onStart then
        return self:onStart(sender);
    end
end


return SelectServerLayer;