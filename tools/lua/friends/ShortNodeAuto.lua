-- 
-- Author: generation auto
-- Brief：ShortNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local ShortNode = class('ShortNode', gamecore.ui.BaseWidget);

function ShortNode:create(...) 
    local instance = ShortNode.new(...);
    return instance;
end

function ShortNode:ctor(...) 
    if ShortNode.super and ShortNode.super.ctor then
        ShortNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function ShortNode:initView()
    self.__LAYER_NAME = 'friends.ShortNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0112.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 40.000000, y = 11.000000, width = 28.000000, height = 74.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._toView));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 260.0, height = 96.0});
	localParams[1]:setPosition(10.0, 3.0);
	self.__children['cell_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'cell_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0037.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 280.0, height = 110.0});
	localParams[2]:setPosition(127.01, 47.0);
	self.__children['cell_btn#__SELECTED_IMG'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'cell_btn#__SELECTED_IMG';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 30.0, height = 30.0});
	localParams[3]:setPosition(247.0, 84.48);
	self.__children['cell_btn#redPoint_sprite'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'cell_btn#redPoint_sprite';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0195.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setScaleX(0.65);
	localParams[4]:setScaleY(0.65);
	localParams[4]:setContentSize({width = 96.0, height = 96.0});
	localParams[4]:setPosition(46.8, 48.0);
	self.__children['cell_btn#icon'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'cell_btn#icon';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_other/other0196.png', 1);
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._toViewRoleInfo1));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 111.0, height = 111.0});
	localParams[5]:setPosition(48.0, 48.0);
	self.__children['cell_btn#icon#iconUnder_btn'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'cell_btn#icon#iconUnder_btn';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(26);
	localParams[6]:setString([[]]);
	localParams[6]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setTextColor({r = 255, g = 140, b = 0});
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(-7.68, 3.84);
	self.__children['cell_btn#icon#level'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'cell_btn#icon#level';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(18);
	localParams[7]:setString([[]]);
	localParams[7]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setTextColor({r = 255, g = 240, b = 155});
	localParams[7]:setContentSize({width = 0.0, height = 0.0});
	localParams[7]:setPosition(88.0, 67.2);
	self.__children['cell_btn#name_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'cell_btn#name_txt';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(16);
	localParams[8]:setString([[]]);
	localParams[8]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setTextColor({r = 240, g = 200, b = 60});
	localParams[8]:setVisible(false);
	localParams[8]:setContentSize({width = 0.0, height = 0.0});
	localParams[8]:setPosition(88.0, 30.0);
	self.__children['cell_btn#desc_txt'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'cell_btn#desc_txt';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Button:create();
	localParams[9]:loadTextureNormal('uires/public/sheet_btn/btn0135.png', 1);
	localParams[9]:setTitleFontSize(14);
	localParams[9]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:onClick(handler(self, self._onAdd));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 62.0, height = 62.0});
	localParams[9]:setPosition(221.39, 48.0);
	self.__children['cell_btn#add_btn'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'cell_btn#add_btn';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = Node:create();
	localParams[10]:setAnchorPoint(0.00, 0.00);
	localParams[10]:setScaleX(0.90);
	localParams[10]:setScaleY(0.90);
	localParams[10]:setContentSize({width = 0.0, height = 0.0});
	localParams[10]:setPosition(20.0, -20.0);
	self.__children['cell_btn#add_btn#__SELECTED_SCALE'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'cell_btn#add_btn#__SELECTED_SCALE';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_btn/btn0142.png', 1);
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setVisible(false);
	localParams[11]:onClick(handler(self, self._onGetMoney));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 62.0, height = 62.0});
	localParams[11]:setPosition(218.4, 48.0);
	self.__children['cell_btn#getMoney_btn'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'cell_btn#getMoney_btn';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = Node:create();
	localParams[12]:setAnchorPoint(0.00, 0.00);
	localParams[12]:setScaleX(0.90);
	localParams[12]:setScaleY(0.90);
	localParams[12]:setContentSize({width = 0.0, height = 0.0});
	localParams[12]:setPosition(20.0, -20.0);
	self.__children['cell_btn#getMoney_btn#__SELECTED_SCALE'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'cell_btn#getMoney_btn#__SELECTED_SCALE';
	localParams[11]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_btn/btn0141.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setVisible(false);
	localParams[13]:onClick(handler(self, self._onGiveMoney));
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 62.0, height = 62.0});
	localParams[13]:setPosition(218.4, 48.0);
	self.__children['cell_btn#giveMoney_btn'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'cell_btn#giveMoney_btn';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = Node:create();
	localParams[14]:setAnchorPoint(0.00, 0.00);
	localParams[14]:setScaleX(0.90);
	localParams[14]:setScaleY(0.90);
	localParams[14]:setContentSize({width = 0.0, height = 0.0});
	localParams[14]:setPosition(20.0, -20.0);
	self.__children['cell_btn#giveMoney_btn#__SELECTED_SCALE'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'cell_btn#giveMoney_btn#__SELECTED_SCALE';
	localParams[13]:addChild(localParams[14]);

end
function ShortNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function ShortNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ShortNode:_onGetMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGetMoney then
        return self.m_ClickDelegate:onGetMoney(sender);
    end
    if self.onGetMoney then
        return self:onGetMoney(sender);
    end
end


function ShortNode:_toView(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toView then
        return self.m_ClickDelegate:toView(sender);
    end
    if self.toView then
        return self:toView(sender);
    end
end


function ShortNode:_onAdd(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onAdd then
        return self.m_ClickDelegate:onAdd(sender);
    end
    if self.onAdd then
        return self:onAdd(sender);
    end
end


function ShortNode:_toViewRoleInfo1(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toViewRoleInfo1 then
        return self.m_ClickDelegate:toViewRoleInfo1(sender);
    end
    if self.toViewRoleInfo1 then
        return self:toViewRoleInfo1(sender);
    end
end


function ShortNode:_onGiveMoney(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGiveMoney then
        return self.m_ClickDelegate:onGiveMoney(sender);
    end
    if self.onGiveMoney then
        return self:onGiveMoney(sender);
    end
end


return ShortNode;