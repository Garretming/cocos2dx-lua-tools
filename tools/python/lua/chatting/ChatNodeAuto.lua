-- 
-- Author: generation auto
-- Brief：ChatNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ChatNode = class('ChatNode', gamecore.ui.BaseWidget);

function ChatNode:create(...) 
    local instance = ChatNode.new(...);
    return instance;
end

function ChatNode:ctor(...) 
    if ChatNode.super and ChatNode.super.ctor then
        ChatNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function ChatNode:initView()
    self.__LAYER_NAME = 'chatting.ChatNode';
    local localParams = {};
	localParams[1] = Layout:create();
	localParams[1]:setBackGroundImageScale9Enabled(true);
	localParams[1]:setBackGroundImageCapInsets({x = -59.000000, y = -9.000000,width = 118.000000, height = 18.000000});
	localParams[1]:setBackGroundColorOpacity(224);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 500.0, height = 100.0});
	localParams[1]:setPosition(55.0, 0.0);
	self.__children['Panel_2'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Panel_2';
	self:addChild(localParams[1]);

	localParams[2] = Text:create();
	localParams[2]:setFontSize(20);
	localParams[2]:setString([[12:00:00]]);
	localParams[2]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[2]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[2]:setAnchorPoint(0.50, 1.00);
	localParams[2]:setTextColor({r = 240, g = 200, b = 60});
	localParams[2]:setContentSize({width = 84.0, height = 24.0});
	localParams[2]:setPosition(250.0, 130.0);
	self.__children['Panel_2#time_txt'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Panel_2#time_txt';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setScaleX(0.75);
	localParams[3]:setScaleY(0.75);
	localParams[3]:setContentSize({width = 96.0, height = 96.0});
	localParams[3]:setPosition(450.0, 46.0);
	self.__children['Panel_2#icon'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Panel_2#icon';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 111.0, height = 111.0});
	localParams[4]:setPosition(48.0, 48.0);
	self.__children['Panel_2#icon#iconUnder'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Panel_2#icon#iconUnder';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(26);
	localParams[5]:setString([[LV:25]]);
	localParams[5]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setTextColor({r = 255, g = 140, b = 0});
	localParams[5]:setContentSize({width = 69.0, height = 30.0});
	localParams[5]:setPosition(-7.68, 3.84);
	self.__children['Panel_2#icon#level'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Panel_2#icon#level';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[大鸟]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[6]:setAnchorPoint(1.00, 0.50);
	localParams[6]:setTextColor({r = 255, g = 140, b = 0});
	localParams[6]:setContentSize({width = 44.0, height = 24.0});
	localParams[6]:setPosition(390.0, 80.0);
	self.__children['Panel_2#name'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Panel_2#name';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0136.png', 1);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 14.000000, y = 14.000000,width = 17.000000, height = 17.000000});
	localParams[7]:setAnchorPoint(1.00, 1.00);
	localParams[7]:setContentSize({width = 45.0, height = 45.0});
	localParams[7]:setPosition(377.67, 64.0);
	self.__children['Panel_2#under'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Panel_2#under';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_bgframe/bgFrame0135.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 14.0, height = 12.0});
	localParams[8]:setPosition(383.3, 49.12);
	self.__children['Panel_2#Sprite_25'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Panel_2#Sprite_25';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[]]);
	localParams[9]:setAnchorPoint(1.00, 1.00);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(368.91, 52.39);
	self.__children['Panel_2#Text'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Panel_2#Text';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Layout:create();
	localParams[10]:setBackGroundImageScale9Enabled(true);
	localParams[10]:setBackGroundImageCapInsets({x = -59.000000, y = -9.000000,width = 118.000000, height = 18.000000});
	localParams[10]:setBackGroundColorOpacity(247);
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 500.0, height = 100.0});
	localParams[10]:setPosition(10.0, 0.0);
	self.__children['Panel_1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Panel_1';
	self:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[12:00:00]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[11]:setAnchorPoint(0.50, 1.00);
	localParams[11]:setTextColor({r = 240, g = 200, b = 60});
	localParams[11]:setContentSize({width = 84.0, height = 24.0});
	localParams[11]:setPosition(250.0, 130.0);
	self.__children['Panel_1#time_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Panel_1#time_txt';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_other/other0195.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setScale9Enabled(true);
	localParams[12]:setCapInsets({x = 15.000000, y = 11.000000, width = 66.000000, height = 74.000000});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(0.75);
	localParams[12]:setScaleY(0.75);
	localParams[12]:onClick(handler(self, self._toInfo));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 96.0, height = 96.0});
	localParams[12]:setPosition(50.89, 45.6);
	self.__children['Panel_1#icon'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Panel_1#icon';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0196.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 111.0, height = 111.0});
	localParams[13]:setPosition(48.0, 48.0);
	self.__children['Panel_1#icon#iconUnder'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Panel_1#icon#iconUnder';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(26);
	localParams[14]:setString([[LV:25]]);
	localParams[14]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[14]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setTextColor({r = 255, g = 140, b = 0});
	localParams[14]:setContentSize({width = 69.0, height = 30.0});
	localParams[14]:setPosition(-5.68, 3.84);
	self.__children['Panel_1#icon#level'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Panel_1#icon#level';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(20);
	localParams[15]:setString([[大鸟]]);
	localParams[15]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[15]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[15]:setAnchorPoint(0.00, 1.00);
	localParams[15]:setContentSize({width = 44.0, height = 24.0});
	localParams[15]:setPosition(118.0, 92.0);
	self.__children['Panel_1#name'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Panel_1#name';
	localParams[10]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_bgframe/bgFrame0136.png', 1);
	localParams[16]:ignoreContentAdaptWithSize(false);
	localParams[16]:setScale9Enabled(true);
	localParams[16]:setCapInsets({x = 14.000000, y = 14.000000,width = 17.000000, height = 17.000000});
	localParams[16]:setAnchorPoint(0.00, 1.00);
	localParams[16]:setContentSize({width = 45.0, height = 45.0});
	localParams[16]:setPosition(115.14, 64.0);
	self.__children['Panel_1#under'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Panel_1#under';
	localParams[10]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_bgframe/bgFrame0135.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setFlippedX(true);
	localParams[17]:setFlippedY(true);
	localParams[17]:setContentSize({width = 14.0, height = 12.0});
	localParams[17]:setPosition(109.5, 49.12);
	self.__children['Panel_1#Sprite_25'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Panel_1#Sprite_25';
	localParams[10]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(20);
	localParams[18]:setString([[]]);
	localParams[18]:setAnchorPoint(0.00, 1.00);
	localParams[18]:setContentSize({width = 0.0, height = 0.0});
	localParams[18]:setPosition(125.0, 52.39);
	self.__children['Panel_1#Text'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'Panel_1#Text';
	localParams[10]:addChild(localParams[18]);

	localParams[19] = ImageView:create('uires/public/sheet_other/other0228.png', 1);
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.70);
	localParams[19]:setScaleY(0.70);
	localParams[19]:setContentSize({width = 32.0, height = 32.0});
	localParams[19]:setPosition(104.27, 79.13);
	self.__children['Panel_1#friend_img'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'Panel_1#friend_img';
	localParams[10]:addChild(localParams[19]);

end
function ChatNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function ChatNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ChatNode:_toInfo(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toInfo then
        return self.m_ClickDelegate:toInfo(sender);
    end
    if self.toInfo then
        return self:toInfo(sender);
    end
end


return ChatNode;