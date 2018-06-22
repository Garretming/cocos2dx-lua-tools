-- 
-- Author: generation auto
-- Brief：ChattingLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ChattingLayer = class('ChattingLayer', gamecore.ui.BaseWidget);

function ChattingLayer:create(...) 
    local instance = ChattingLayer.new(...);
    return instance;
end

function ChattingLayer:ctor(...) 
    if ChattingLayer.super and ChattingLayer.super.ctor then
        ChattingLayer.super.ctor(self, ...);
    end

	self:setBackgroundOpacity(150);
	self:setTouchEnabled(true);

end

function ChattingLayer:initView()
    self.__LAYER_NAME = 'chatting.ChattingLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 39.000000,width = 168.000000, height = 168.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 640.0, height = WinSize.height - 0.00});
	localParams[1]:setPosition(-640.56, WinSize.height/2 + (-320.00 * ccx.scaleY));
	self.__children['bg_img'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_img';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 600.0, height = WinSize.height - 130.00});
	localParams[2]:setPosition(320.0, localParams[1]:getContentSize().height/2 + (26.75 * ccx.scaleY));
	self.__children['bg_img#friendBg_img'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg_img#friendBg_img';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 570.0, height = WinSize.height - 164.00});
	localParams[3]:setPosition(320.0, localParams[1]:getContentSize().height/2 + (25.98 * ccx.scaleY));
	self.__children['bg_img#under_img1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg_img#under_img1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Layout:create();
	localParams[4]:setBackGroundColorType(1);
	localParams[4]:setBackGroundColor({r = 150, g = 200, b = 255});
	localParams[4]:setBackGroundColorOpacity(0);
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 570.0, height = 476.0});
	localParams[4]:setPosition(0.0, 0.0);
	self.__children['bg_img#under_img1#Panel_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg_img#under_img1#Panel_1';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ListView:create();
	localParams[5]:setDirection(1);
	localParams[5]:setGravity(0);
	localParams[5]:setBackGroundColorType(1);
	localParams[5]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[5]:setBackGroundColorOpacity(0);
	localParams[5]:setAnchorPoint(0.00, 0.00);
	localParams[5]:setEventCallback(handler(self, self._onListViewSystem));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 570.0, height = WinSize.height - 180.00});
	localParams[5]:setPosition(0.0, localParams[4]:getContentSize().height - 466.48);
	self.__children['bg_img#under_img1#Panel_1#listView'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg_img#under_img1#Panel_1#listView';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(26);
	localParams[6]:setString([[该频道内无法发言]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setTextColor({r = 240, g = 200, b = 60});
	localParams[6]:setContentSize({width = 211.0, height = 26.0});
	localParams[6]:setPosition(285.0, -56.6);
	self.__children['bg_img#under_img1#warnText'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg_img#under_img1#warnText';
	localParams[3]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_bgframe/bgFrame0013.png', 1);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 29.000000, y = 29.000000,width = 62.000000, height = 62.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 570.0, height = WinSize.height - 164.00});
	localParams[7]:setPosition(320.0, localParams[1]:getContentSize().height/2 + (25.98 * ccx.scaleY));
	self.__children['bg_img#under_img2'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg_img#under_img2';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Layout:create();
	localParams[8]:setBackGroundColorType(1);
	localParams[8]:setBackGroundColor({r = 150, g = 200, b = 255});
	localParams[8]:setBackGroundColorOpacity(0);
	localParams[8]:setAnchorPoint(0.00, 0.00);
	localParams[8]:setTouchEnabled(true);
	localParams[8]:setContentSize({width = 570.0, height = 476.0});
	localParams[8]:setPosition(0.0, 0.0);
	self.__children['bg_img#under_img2#Panel_2'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'bg_img#under_img2#Panel_2';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ListView:create();
	localParams[9]:setDirection(1);
	localParams[9]:setGravity(0);
	localParams[9]:setBackGroundColorType(1);
	localParams[9]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[9]:setBackGroundColorOpacity(0);
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setEventCallback(handler(self, self._onListViewWorld));
	localParams[9]:setTouchEnabled(true);
	localParams[9]:setContentSize({width = 570.0, height = WinSize.height - 180.00});
	localParams[9]:setPosition(-0.0, localParams[8]:getContentSize().height - 466.48);
	self.__children['bg_img#under_img2#Panel_2#listView'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'bg_img#under_img2#Panel_2#listView';
	localParams[8]:addChild(localParams[9]);

	localParams[10] = Button:create();
	localParams[10]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[10]:setTitleFontSize(14);
	localParams[10]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setScaleX(0.90);
	localParams[10]:setScaleY(0.90);
	localParams[10]:onClick(handler(self, self._onSend));
	localParams[10]:setTouchEnabled(true);
	localParams[10]:setContentSize({width = 183.0, height = 68.0});
	localParams[10]:setPosition(498.01, -60.16);
	self.__children['bg_img#under_img2#Panel_2#send_btn'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'bg_img#under_img2#Panel_2#send_btn';
	localParams[8]:addChild(localParams[10]);

	localParams[11] = Widget:create();
	localParams[11]:setAnchorPoint(0.00, 0.00);
	localParams[11]:setScaleX(0.80);
	localParams[11]:setScaleY(0.80);
	localParams[11]:setContentSize({width = 0.0, height = 0.0});
	localParams[11]:setPosition(318.52, 23.04);
	self.__children['bg_img#under_img2#Panel_2#send_btn#__SELECTED_SCALE'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'bg_img#under_img2#Panel_2#send_btn#__SELECTED_SCALE';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = ImageView:create('uires/public/sheet_font/fontImg0193.png', 1);
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:setContentSize({width = 70.0, height = 30.0});
	localParams[12]:setPosition(91.5, 34.0);
	self.__children['bg_img#under_img2#Panel_2#send_btn#font_sprite'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'bg_img#under_img2#Panel_2#send_btn#font_sprite';
	localParams[10]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_bgframe/bgFrame0047.png', 1);
	localParams[13]:ignoreContentAdaptWithSize(false);
	localParams[13]:setScale9Enabled(true);
	localParams[13]:setCapInsets({x = 49.000000, y = 16.000000,width = 52.000000, height = 18.000000});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setContentSize({width = 400.0, height = 50.0});
	localParams[13]:setPosition(199.67, -61.4);
	self.__children['bg_img#under_img2#Panel_2#textUnder'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'bg_img#under_img2#Panel_2#textUnder';
	localParams[8]:addChild(localParams[13]);

	localParams[14] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[14]:setFontSize(20);
	localParams[14]:setPlaceholderFontSize(20);
	localParams[14]:setPlaceHolder([[点击输入文字]]);
	localParams[14]:setMaxLength(40);
	localParams[14]:setAnchorPoint(0.00, 0.50);
	localParams[14]:setColor({r = 191, g = 191, b = 191});
	localParams[14]:registerScriptEditBoxHandler(handler(self, self._onCommentText));
	localParams[14]:setTouchEnabled(true);
	localParams[14]:setContentSize({width = 330.0, height = 25.0});
	localParams[14]:setPosition(36.36, 25.0);
	self.__children['bg_img#under_img2#Panel_2#textUnder#TextField_1'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'bg_img#under_img2#Panel_2#textUnder#TextField_1';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = ImageView:create('uires/public/sheet_common/bgFrame0011.png', 1);
	localParams[15]:ignoreContentAdaptWithSize(false);
	localParams[15]:setScale9Enabled(true);
	localParams[15]:setCapInsets({x = 39.000000, y = 39.000000,width = 42.000000, height = 42.000000});
	localParams[15]:setAnchorPoint(0.50, 0.50);
	localParams[15]:setContentSize({width = 124.0, height = WinSize.height - 0.00});
	localParams[15]:setPosition(-61.63, localParams[1]:getContentSize().height/2 + (-0.90 * ccx.scaleY));
	self.__children['bg_img#chatTypeBg'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'bg_img#chatTypeBg';
	localParams[1]:addChild(localParams[15]);

	localParams[16] = Button:create();
	localParams[16]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[16]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[16]:setTitleFontSize(14);
	localParams[16]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:onClick(handler(self, self._onTabMenu));
	localParams[16]:setTouchEnabled(true);
	localParams[16]:setContentSize({width = 116.0, height = 69.0});
	localParams[16]:setPosition(-64.45, localParams[1]:getContentSize().height - 208.63);
	self.__children['bg_img#all_btn'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'bg_img#all_btn';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setVisible(false);
	localParams[17]:setContentSize({width = 30.0, height = 30.0});
	localParams[17]:setPosition(11.6, 60.72);
	self.__children['bg_img#all_btn#redPoint_sprite'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'bg_img#all_btn#redPoint_sprite';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = ImageView:create('uires/public/sheet_font/fontImg0208.png', 1);
	localParams[18]:setAnchorPoint(0.50, 0.50);
	localParams[18]:setContentSize({width = 59.0, height = 26.0});
	localParams[18]:setPosition(54.67, 34.5);
	self.__children['bg_img#all_btn#font_sprite'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'bg_img#all_btn#font_sprite';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:loadTextureNormal('uires/public/sheet_btn/btn0119.png', 1);
	localParams[19]:loadTexturePressed('uires/public/sheet_btn/btn0120.png', 1);
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:onClick(handler(self, self._onTabMenu));
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 116.0, height = 69.0});
	localParams[19]:setPosition(-64.45, localParams[1]:getContentSize().height - 125.43);
	self.__children['bg_img#system_btn'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'bg_img#system_btn';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setVisible(false);
	localParams[20]:setContentSize({width = 30.0, height = 30.0});
	localParams[20]:setPosition(11.6, 60.72);
	self.__children['bg_img#system_btn#redPoint_sprite'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'bg_img#system_btn#redPoint_sprite';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = ImageView:create('uires/public/sheet_font/fontImg0207.png', 1);
	localParams[21]:setAnchorPoint(0.50, 0.50);
	localParams[21]:setContentSize({width = 59.0, height = 26.0});
	localParams[21]:setPosition(54.67, 34.5);
	self.__children['bg_img#system_btn#font_sprite'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'bg_img#system_btn#font_sprite';
	localParams[19]:addChild(localParams[21]);

	localParams[22] = Button:create();
	localParams[22]:loadTextureNormal('uires/public/sheet_btn/btn0113.png', 1);
	localParams[22]:loadTexturePressed('uires/public/sheet_btn/btn0113.png', 1);
	localParams[22]:setTitleFontSize(14);
	localParams[22]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[22]:setAnchorPoint(0.50, 0.50);
	localParams[22]:onClick(handler(self, self._closeBtn));
	localParams[22]:setTouchEnabled(true);
	localParams[22]:setFlippedY(true);
	localParams[22]:setRotationSkewX(180.00);
	localParams[22]:setRotationSkewY(180.00);
	localParams[22]:setContentSize({width = 57.0, height = WinSize.height - 402.00});
	localParams[22]:setPosition(610.43, localParams[1]:getContentSize().height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_img#close_btn'] = localParams[22];
	localParams[22].__children = self.__children;
	localParams[22].__Name = 'bg_img#close_btn';
	localParams[1]:addChild(localParams[22]);

end
function ChattingLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function ChattingLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
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
function ChattingLayer:_onListViewSystem(eventName, listView, row, column, index, cell)
    if self._clickDelegate and self._clickDelegate.onListViewSystem then
        return self._clickDelegate:onListViewSystem(eventName, listView, row, column, index, cell);
    end
    if self.onListViewSystem then
        return self:onListViewSystem(eventName, listView, row, column, index, cell);
    end
end


function ChattingLayer:_closeBtn(sender)
    if self._clickDelegate and self._clickDelegate.closeBtn then
        return self._clickDelegate:closeBtn(sender);
    end
    if self.closeBtn then
        return self:closeBtn(sender);
    end
end


--eventName:(began, ended, changed)
function ChattingLayer:_onCommentText(eventName, editBox)
    if self._clickDelegate and self._clickDelegate.onCommentText then
        return self._clickDelegate:onCommentText(eventName, editBox);
    end
    if self.onCommentText then
        return self:onCommentText(eventName, editBox);
    end
end


function ChattingLayer:_onSend(sender)
    if self._clickDelegate and self._clickDelegate.onSend then
        return self._clickDelegate:onSend(sender);
    end
    if self.onSend then
        return self:onSend(sender);
    end
end


function ChattingLayer:_onTabMenu(sender)
    if self._clickDelegate and self._clickDelegate.onTabMenu then
        return self._clickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function ChattingLayer:_onListViewWorld(eventName, listView, row, column, index, cell)
    if self._clickDelegate and self._clickDelegate.onListViewWorld then
        return self._clickDelegate:onListViewWorld(eventName, listView, row, column, index, cell);
    end
    if self.onListViewWorld then
        return self:onListViewWorld(eventName, listView, row, column, index, cell);
    end
end


return ChattingLayer;