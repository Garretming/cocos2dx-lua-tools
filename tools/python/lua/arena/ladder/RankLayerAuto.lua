-- 
-- Author: generation auto
-- Brief：RankLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local RankLayer = class('RankLayer', gamecore.ui.BaseWidget);

function RankLayer:create(...) 
    local instance = RankLayer.new(...);
    return instance;
end

function RankLayer:ctor(...) 
    if RankLayer.super and RankLayer.super.ctor then
        RankLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function RankLayer:initView()
    self.__LAYER_NAME = 'arena.ladder.RankLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 640.0, height = WinSize.height - 0.00});
	localParams[1]:setPosition(-327.68, WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['Bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 600.0, height = WinSize.height - 40.00});
	localParams[2]:setPosition(320.0, localParams[1]:getContentSize().height/2 + (-0.00 * ccx.scaleY));
	self.__children['Bg_img#under_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Bg_img#under_img';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 580.0, height = 110.0});
	localParams[3]:setPosition(320.0, localParams[1]:getContentSize().height - 86.40);
	self.__children['Bg_img#under_img1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Bg_img#under_img1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[我的排名]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 240, g = 200, b = 60});
	localParams[4]:setContentSize({width = 83.0, height = 22.0});
	localParams[4]:setPosition(69.6, 69.3);
	self.__children['Bg_img#under_img1#myRankFont_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Bg_img#under_img1#myRankFont_txt';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = TextAtlas:create();
	localParams[5]:setProperty([[0]], 'uires/public/font_number/fontImg013.png', 34, 40, '.');
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 34.0, height = 40.0});
	localParams[5]:setPosition(72.44, 32.82);
	self.__children['Bg_img#under_img1#rank_atlasLabel'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Bg_img#under_img1#rank_atlasLabel';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(22);
	localParams[6]:setString([[大鸟大鸟大鸟]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setTextColor({r = 255, g = 140, b = 0});
	localParams[6]:setContentSize({width = 136.0, height = 26.0});
	localParams[6]:setPosition(174.0, 69.3);
	self.__children['Bg_img#under_img1#name_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Bg_img#under_img1#name_txt';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(22);
	localParams[7]:setString([[LV.25]]);
	localParams[7]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[7]:setAnchorPoint(1.00, 0.50);
	localParams[7]:setTextColor({r = 255, g = 140, b = 0});
	localParams[7]:setContentSize({width = 59.0, height = 26.0});
	localParams[7]:setPosition(394.63, 69.3);
	self.__children['Bg_img#under_img1#level_txt'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Bg_img#under_img1#level_txt';
	localParams[3]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(22);
	localParams[8]:setString([[胜率：]]);
	localParams[8]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[8]:setAnchorPoint(1.00, 0.50);
	localParams[8]:setScaleX(1.01);
	localParams[8]:setTextColor({r = 255, g = 140, b = 0});
	localParams[8]:setContentSize({width = 57.0, height = 29.0});
	localParams[8]:setPosition(478.0, 69.3);
	self.__children['Bg_img#under_img1#win_text1'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Bg_img#under_img1#win_text1';
	localParams[3]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(22);
	localParams[9]:setString([[55.00%]]);
	localParams[9]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[9]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[9]:setAnchorPoint(0.00, 0.50);
	localParams[9]:setScaleX(1.01);
	localParams[9]:setTextColor({r = 255, g = 140, b = 0});
	localParams[9]:setContentSize({width = 75.0, height = 29.0});
	localParams[9]:setPosition(478.0, 69.3);
	self.__children['Bg_img#under_img1#win_text'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'Bg_img#under_img1#win_text';
	localParams[3]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 330.0, height = 32.0});
	localParams[10]:setPosition(359.6, 30.8);
	self.__children['Bg_img#under_img1#under_1'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'Bg_img#under_img1#under_1';
	localParams[3]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[最强王者]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 240, g = 200, b = 60});
	localParams[11]:setContentSize({width = 84.0, height = 22.0});
	localParams[11]:setPosition(72.6, 16.0);
	self.__children['Bg_img#under_img1#under_1#strongest_txt'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Bg_img#under_img1#under_1#strongest_txt';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_other/other0142.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setScaleX(0.80);
	localParams[12]:setScaleY(0.80);
	localParams[12]:setContentSize({width = 39.0, height = 36.0});
	localParams[12]:setPosition(231.0, 16.0);
	self.__children['Bg_img#under_img1#under_1#star_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'Bg_img#under_img1#under_1#star_sprite';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = Text:create();
	localParams[13]:setFontSize(20);
	localParams[13]:setString([[x6]]);
	localParams[13]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[13]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setTextColor({r = 255, g = 240, b = 155});
	localParams[13]:setContentSize({width = 25.0, height = 22.0});
	localParams[13]:setPosition(264.0, 16.0);
	self.__children['Bg_img#under_img1#under_1#count_txt'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'Bg_img#under_img1#under_1#count_txt';
	localParams[10]:addChild(localParams[13]);

	localParams[14] = ImageView:create(nil, 0);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setScaleX(0.75);
	localParams[14]:setScaleY(0.75);
	localParams[14]:setContentSize({width = 46.0, height = 46.0});
	localParams[14]:setPosition(191.4, 30.8);
	self.__children['Bg_img#under_img1#strongestTimes_sprite'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'Bg_img#under_img1#strongestTimes_sprite';
	localParams[3]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[15]:setAnchorPoint(0.50, 1.00);
	localParams[15]:setContentSize({width = 580.0, height = WinSize.height - 180.00});
	localParams[15]:setPosition(320.0, localParams[1]:getContentSize().height - 147.60);
	self.__children['Bg_img#under_img2'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'Bg_img#under_img2';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = ListView:create();
	localParams[16]:setDirection(1);
	localParams[16]:setGravity(0);
	localParams[16]:setBackGroundColorType(1);
	localParams[16]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[16]:setBackGroundColorOpacity(0);
	localParams[16]:setAnchorPoint(0.00, 0.00);
	localParams[16]:setEventCallback(handler(self, self._onListView));
	localParams[16]:setTouchEnabled(true);
	localParams[16]:setContentSize({width = 580.0, height = WinSize.height - 200.00});
	localParams[16]:setPosition(0.0, 10.0);
	self.__children['Bg_img#under_img2#ListView_1'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'Bg_img#under_img2#ListView_1';
	localParams[15]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_font/fontImg0158.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 208.0, height = 51.0});
	localParams[17]:setPosition(320.0, localParams[1]:getContentSize().height - 25.60);
	self.__children['Bg_img#title_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'Bg_img#title_sprite';
	localParams[1]:addChild(localParams[17]);

end
function RankLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/font_number/fontImg013.png');
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


function RankLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function RankLayer:_onListView(eventName, listView, row, column, index, cell)
    if self.m_ClickDelegate and self.m_ClickDelegate.onListView then
        return self.m_ClickDelegate:onListView(eventName, listView, row, column, index, cell);
    end
    if self.onListView then
        return self:onListView(eventName, listView, row, column, index, cell);
    end
end


return RankLayer;