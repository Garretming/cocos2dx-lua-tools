-- 
-- Author: generation auto
-- Brief：RiskTaskNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local RiskTaskNode = class('RiskTaskNode', gamecore.ui.BaseWidget);

function RiskTaskNode:create(...) 
    local instance = RiskTaskNode.new(...);
    return instance;
end

function RiskTaskNode:ctor(...) 
    if RiskTaskNode.super and RiskTaskNode.super.ctor then
        RiskTaskNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function RiskTaskNode:initView()
    self.__LAYER_NAME = 'risk.RiskTaskNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 16.000000, height = 14.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._onTask));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 500.0, height = 120.0});
	localParams[1]:setPosition(0.0, 2.5);
	self.__children['Button_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Button_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0122.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 37.000000, y = 37.000000,width = 40.000000, height = 40.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 500.0, height = 114.0});
	localParams[2]:setPosition(250.0, 60.0);
	self.__children['Button_1#Image_1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Button_1#Image_1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[3]:setTitleFontSize(14);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setScaleX(0.70);
	localParams[3]:setScaleY(0.70);
	localParams[3]:onClick(handler(self, self._onChallenge));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 183.0, height = 68.0});
	localParams[3]:setPosition(405.0, 60.0);
	self.__children['Button_1#Button_2'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Button_1#Button_2';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Widget:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.65);
	localParams[4]:setScaleY(0.65);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(104.14, 30.52);
	self.__children['Button_1#Button_2#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Button_1#Button_2#__SELECTED_SCALE';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0237.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 70.0, height = 30.0});
	localParams[5]:setPosition(91.5, 34.0);
	self.__children['Button_1#Button_2#uires_public_sheet_font_fontImg0236_3'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Button_1#Button_2#uires_public_sheet_font_fontImg0236_3';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Widget:create();
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(0.0, 0.0);
	self.__children['Button_1#lock'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Button_1#lock';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0067.png', 1);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 29.000000, y = 29.000000,width = 32.000000, height = 32.000000});
	localParams[7]:setAnchorPoint(0.00, 0.00);
	localParams[7]:setContentSize({width = 560.0, height = 115.0});
	localParams[7]:setPosition(0.0, 1.05);
	self.__children['Button_1#lock#Image_4'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Button_1#lock#Image_4';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0107.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setScaleX(0.70);
	localParams[8]:setScaleY(0.70);
	localParams[8]:setContentSize({width = 55.0, height = 68.0});
	localParams[8]:setPosition(404.9, 57.5);
	self.__children['Button_1#lock#Sprite_9'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Button_1#lock#Sprite_9';
	localParams[6]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 215.0, height = 32.0});
	localParams[9]:setPosition(170.0, 80.0);
	self.__children['Button_1#Image_2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Button_1#Image_2';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[]]);
	localParams[10]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setTextColor({r = 240, g = 200, b = 60});
	localParams[10]:setContentSize({width = 103.0, height = 24.0});
	localParams[10]:setPosition(107.5, 16.0);
	self.__children['Button_1#Image_2#title'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Button_1#Image_2#title';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = RichText:create();
	localParams[11]:setDefaultFontSize(20);
	localParams[11]:setString([[]]);
	localParams[11]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[11]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 86.0, height = 27.0});
	localParams[11]:setPosition(107.5, -17.07);
	self.__children['Button_1#Image_2#level'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Button_1#Image_2#level';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0047.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setVisible(false);
	localParams[12]:setContentSize({width = 61.0, height = 43.0});
	localParams[12]:setPosition(28.67, 98.12);
	self.__children['Button_1#new'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Button_1#new';
	localParams[1]:addChild(localParams[12]);

end
function RiskTaskNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Normal.png');
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


function RiskTaskNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function RiskTaskNode:_onChallenge(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onChallenge then
        return self.m_ClickDelegate:onChallenge(sender);
    end
    if self.onChallenge then
        return self:onChallenge(sender);
    end
end


function RiskTaskNode:_onTask(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTask then
        return self.m_ClickDelegate:onTask(sender);
    end
    if self.onTask then
        return self:onTask(sender);
    end
end


return RiskTaskNode;