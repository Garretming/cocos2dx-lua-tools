-- 
-- Author: generation auto
-- Brief：DetailsLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local DetailsLayer = class('DetailsLayer', gamecore.ui.BaseWidget);

function DetailsLayer:create(...) 
    local instance = DetailsLayer.new(...);
    return instance;
end

function DetailsLayer:ctor(...) 
    if DetailsLayer.super and DetailsLayer.super.ctor then
        DetailsLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);

end

function DetailsLayer:initView()
    self.__LAYER_NAME = 'formation.DetailsLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0009.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/hero/hero001.png', 0);
	localParams[2]:setAnchorPoint(1.00, 0.00);
	localParams[2]:setContentSize({width = 528.0, height = 604.0});
	localParams[2]:setPosition(WinSize.width - 0.00, 0.0);
	self.__children['role_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'role_img';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0071.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 431.0, height = 92.0});
	localParams[3]:setPosition(WinSize.width/2 + (-3.48 * ccx.scaleX), WinSize.height - 130.85);
	self.__children['img1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'img1';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0082.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 141.0, height = 38.0});
	localParams[4]:setPosition(215.5, 44.0);
	self.__children['img1#img2'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'img1#img2';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_btn/btn0078.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(0.90);
	localParams[5]:setScaleY(0.90);
	localParams[5]:setContentSize({width = 210.0, height = 210.0});
	localParams[5]:setPosition(WinSize.width/2 + (-304.03 * ccx.scaleX), 354.01);
	self.__children['profession_img'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'profession_img';
	self:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[我是战士我是战士我是战士
]]);
	localParams[6]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[6]:setTextAreaSize({width = 300, height = 140});
	localParams[6]:setTextHorizontalAlignment(1);
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 300.0, height = 140.0});
	localParams[6]:setPosition(WinSize.width/2 + (-301.06 * ccx.scaleX), 100.24);
	self.__children['Text_2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Text_2';
	self:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_font/fontImg0075.png', 1);
	localParams[7]:setAnchorPoint(1.00, 1.00);
	localParams[7]:setContentSize({width = 84.0, height = 44.0});
	localParams[7]:setPosition(WinSize.width/2 + (-264.40 * ccx.scaleX), 238.55);
	self.__children['name'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'name';
	self:addChild(localParams[7]);

	localParams[8] = Button:create();
	localParams[8]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[8]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[8]:setTitleFontSize(14);
	localParams[8]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.90);
	localParams[8]:setScaleY(0.90);
	localParams[8]:onClick(handler(self, self._sure_btn));
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 183.0, height = 68.0});
	localParams[8]:setPosition(WinSize.width - 141.50, 74.0);
	self.__children['sure_btn'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'sure_btn';
	self:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_font/fontImg0085.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 70.0, height = 30.0});
	localParams[9]:setPosition(92.93, 34.54);
	self.__children['sure_btn#font'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'sure_btn#font';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Widget:create();
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setScaleX(0.80);
	localParams[10]:setScaleY(0.80);
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(83.62, 36.53);
	self.__children['sure_btn#__SELECTED_SCALE'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'sure_btn#__SELECTED_SCALE';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_bgframe/bgFrame0051.png', 1);
	localParams[11]:ignoreContentAdaptWithSize(false);
	localParams[11]:setScale9Enabled(true);
	localParams[11]:setCapInsets({x = 100.000000, y = 10.000000,width = 140.000000, height = 13.000000});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 800.0, height = 93.0});
	localParams[11]:setPosition(WinSize.width - 400.00, WinSize.height - 46.50);
	self.__children['bg2'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg2';
	self:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_bgframe/bgFrame0063.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 537.0, height = 164.0});
	localParams[12]:setPosition(268.5, WinSize.height - 82.00);
	self.__children['bg1'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg1';
	self:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_font/fontImg0092.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 126.0, height = 57.0});
	localParams[13]:setPosition(235.0, WinSize.height - 30.00);
	self.__children['bg4'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg4';
	self:addChild(localParams[13]);

	localParams[14] = Button:create();
	localParams[14]:loadTextureNormal('uires/public/sheet_btn/btn0073.png', 1);
	localParams[14]:loadTexturePressed('uires/public/sheet_btn/btn0073.png', 1);
	localParams[14]:setTitleFontSize(14);
	localParams[14]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[14]:setScale9Enabled(true);
	localParams[14]:setCapInsets({x = 15.000000, y = 11.000000, width = 86.000000, height = 55.000000});
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:onClick(handler(self, self._back_btn));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 116.0, height = 77.0});
	localParams[14]:setPosition(68.17, WinSize.height - 44.38);
	self.__children['back_btn'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'back_btn';
	self:addChild(localParams[14]);

	localParams[15] = Button:create();
	localParams[15]:loadTextureNormal('uires/public/sheet_btn/btn0061.png', 1);
	localParams[15]:loadTexturePressed('uires/public/sheet_btn/btn0061.png', 1);
	localParams[15]:setTitleFontSize(14);
	localParams[15]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 15.000000, y = 11.000000, width = 28.000000, height = 46.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:onClick(handler(self, self._help_btn));
	localParams[15]:setTouchEnabled(true);
	localParams[15]:setContentSize({width = 58.0, height = 68.0});
	localParams[15]:setPosition(WinSize.width - 37.02, WinSize.height - 49.83);
	self.__children['help_btn'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'help_btn';
	self:addChild(localParams[15]);

	localParams[16] = Widget:create();
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setScaleX(1.20);
	localParams[16]:setScaleY(1.20);
	localParams[16]:setContentSize({width = 0.0, height = 0.0});
	localParams[16]:setPosition(52.93, -11.77);
	self.__children['help_btn#__SELECTED_SCALE'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'help_btn#__SELECTED_SCALE';
	localParams[15]:addChild(localParams[16]);

end
function DetailsLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0009.png');
	table.insert(self._textureList, 'uires/public/hero/hero001.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function DetailsLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function DetailsLayer:_help_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.help_btn then
        return self.m_ClickDelegate:help_btn(sender);
    end
    if self.help_btn then
        return self:help_btn(sender);
    end
end


function DetailsLayer:_back_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.back_btn then
        return self.m_ClickDelegate:back_btn(sender);
    end
    if self.back_btn then
        return self:back_btn(sender);
    end
end


function DetailsLayer:_sure_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.sure_btn then
        return self.m_ClickDelegate:sure_btn(sender);
    end
    if self.sure_btn then
        return self:sure_btn(sender);
    end
end


return DetailsLayer;