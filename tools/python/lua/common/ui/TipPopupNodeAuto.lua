-- 
-- Author: generation auto
-- Brief：TipPopupNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local TipPopupNode = class('TipPopupNode', gamecore.ui.BaseWidget);

function TipPopupNode:create(...) 
    local instance = TipPopupNode.new(...);
    return instance;
end

function TipPopupNode:ctor(...) 
    if TipPopupNode.super and TipPopupNode.super.ctor then
        TipPopupNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function TipPopupNode:initView()
    self.__LAYER_NAME = 'common.ui.TipPopupNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 290.0, height = 200.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['tip'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'tip';
	self:addChild(localParams[1]);

	localParams[2] = Node:create();
	localParams[2]:setAnchorPoint(0.00, 0.00);
	localParams[2]:setContentSize({width = 0.0, height = 0.0});
	localParams[2]:setPosition(0.0, 200.0);
	self.__children['tip#Node_1'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'tip#Node_1';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_common/other0049.png', 1);
	localParams[3]:setAnchorPoint(0.00, 1.00);
	localParams[3]:setScaleX(0.80);
	localParams[3]:setScaleY(0.80);
	localParams[3]:setContentSize({width = 98.0, height = 98.0});
	localParams[3]:setPosition(20.0, -20.0);
	self.__children['tip#Node_1#image'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'tip#Node_1#image';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = RichText:create();
	localParams[4]:setDefaultFontSize(17);
	localParams[4]:setString([[]]);
	localParams[4]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[4]:setTextAreaSize({width = 260, height = 0});
	localParams[4]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[4]:setAnchorPoint(0.50, 1.00);
	localParams[4]:setTextColor({r = 240, g = 200, b = 60});
	localParams[4]:setContentSize({width = 260.0, height = 0.0});
	localParams[4]:setPosition(145.0, -110.0);
	self.__children['tip#Node_1#desc'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'tip#Node_1#desc';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(22);
	localParams[5]:setString([[汉谟拉比法典]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[5]:setAnchorPoint(0.00, 1.00);
	localParams[5]:setTextColor({r = 255, g = 240, b = 155});
	localParams[5]:setContentSize({width = 137.0, height = 26.0});
	localParams[5]:setPosition(110.0, -25.0);
	self.__children['tip#Node_1#name'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'tip#Node_1#name';
	localParams[2]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[拥有:]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setContentSize({width = 52.0, height = 24.0});
	localParams[6]:setPosition(110.0, -79.0);
	self.__children['tip#Node_1#Text_12'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'tip#Node_1#Text_12';
	localParams[2]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(22);
	localParams[7]:setString([[99999]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setTextColor({r = 255, g = 140, b = 0});
	localParams[7]:setContentSize({width = 69.0, height = 26.0});
	localParams[7]:setPosition(165.55, -82.0);
	self.__children['tip#Node_1#number'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'tip#Node_1#number';
	localParams[2]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_common/bgFrame0068.png', 1);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:onClick(handler(self, self._m_page_btn));
	localParams[8]:setContentSize({width = 290.0, height = 260.0});
	localParams[8]:setPosition(0.0, 0.0);
	self.__children['tip1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'tip1';
	self:addChild(localParams[8]);

	localParams[9] = Node:create();
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setContentSize({width = 0.0, height = 0.0});
	localParams[9]:setPosition(0.0, 260.0);
	self.__children['tip1#Node_1'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'tip1#Node_1';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(24);
	localParams[10]:setString([[重甲奇兵]]);
	localParams[10]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[10]:setAnchorPoint(0.50, 1.00);
	localParams[10]:setTextColor({r = 255, g = 240, b = 155});
	localParams[10]:setContentSize({width = 100.0, height = 26.0});
	localParams[10]:setPosition(145.0, -20.0);
	self.__children['tip1#Node_1#name'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'tip1#Node_1#name';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[定位：]]);
	localParams[11]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[11]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[11]:setAnchorPoint(0.00, 0.50);
	localParams[11]:setContentSize({width = 52.0, height = 27.0});
	localParams[11]:setPosition(20.0, -75.0);
	self.__children['tip1#Node_1#property_txt1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'tip1#Node_1#property_txt1';
	localParams[9]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(20);
	localParams[12]:setString([[消耗怒气:]]);
	localParams[12]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[12]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[12]:setAnchorPoint(0.00, 0.50);
	localParams[12]:setContentSize({width = 89.0, height = 27.0});
	localParams[12]:setPosition(146.0, -75.0);
	self.__children['tip1#Node_1#property_txt2'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'tip1#Node_1#property_txt2';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(20);
	localParams[13]:setString([[1]]);
	localParams[13]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[13]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[13]:setAnchorPoint(0.00, 0.50);
	localParams[13]:setTextColor({r = 80, g = 255, b = 0});
	localParams[13]:setContentSize({width = 11.0, height = 27.0});
	localParams[13]:setPosition(235.0, -76.0);
	self.__children['tip1#Node_1#property2'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'tip1#Node_1#property2';
	localParams[9]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[稀有]]);
	localParams[14]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[14]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setTextColor({r = 80, g = 255, b = 0});
	localParams[14]:setContentSize({width = 45.0, height = 27.0});
	localParams[14]:setPosition(76.0, -75.0);
	self.__children['tip1#Node_1#property1'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'tip1#Node_1#property1';
	localParams[9]:addChild(localParams[14]);

	localParams[15] = RichText:create();
	localParams[15]:setDefaultFontSize(20);
	localParams[15]:setString([[]]);
	localParams[15]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[15]:setTextAreaSize({width = 260, height = 0});
	localParams[15]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[15]:setAnchorPoint(0.00, 1.00);
	localParams[15]:setContentSize({width = 260.0, height = 0.0});
	localParams[15]:setPosition(15.0, -100.0);
	self.__children['tip1#Node_1#desc'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'tip1#Node_1#desc';
	localParams[9]:addChild(localParams[15]);

end
function TipPopupNode:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function TipPopupNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return TipPopupNode;