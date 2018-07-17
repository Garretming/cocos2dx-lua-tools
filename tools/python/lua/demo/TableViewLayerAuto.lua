-- 
-- Author: generation auto
-- Brief：TableViewLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local TableViewLayer = class('TableViewLayer', gamecore.ui.BaseWidget);

function TableViewLayer:create(...) 
    local instance = TableViewLayer.new(...);
    return instance;
end

function TableViewLayer:ctor(...) 
    if TableViewLayer.super and TableViewLayer.super.ctor then
        TableViewLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);
end

function TableViewLayer:initView()
    self.__LAYER_NAME = 'demo.TableViewLayer';
    local localParams = {};
	localParams[1] = ListView:create();
	localParams[1]:setDirection(1);
	localParams[1]:setGravity(0);
	localParams[1]:setBackGroundColorType(1);
	localParams[1]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[1]:setBackGroundColorOpacity(102);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setEventCallback(handler(self, self._onTableView));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 200.0, height = 400.0});
	localParams[1]:setPosition(200.0, 100.0);
	self.__children['ListView_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'ListView_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_btn/btn0044.png', 1);
	localParams[2]:setAnchorPoint(1.00, 0.50);
	localParams[2]:setRotationSkewX(90.00);
	localParams[2]:setRotationSkewY(90.00);
	localParams[2]:setContentSize({width = 54.0, height = 59.0});
	localParams[2]:setPosition(300.0, 500.0);
	self.__children['arrow_up'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'arrow_up';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_btn/btn0045.png', 1);
	localParams[3]:setAnchorPoint(0.00, 0.50);
	localParams[3]:setRotationSkewX(90.00);
	localParams[3]:setRotationSkewY(90.00);
	localParams[3]:setContentSize({width = 54.0, height = 59.0});
	localParams[3]:setPosition(300.0, 100.0);
	self.__children['arrow_down'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'arrow_down';
	self:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/scrollBarBg.png', 0);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 0.000000, y = 6.000000,width = 3.000000, height = 8.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setOpacity(0);
	localParams[4]:setContentSize({width = 3.0, height = 380.0});
	localParams[4]:setPosition(205.0, 300.0);
	self.__children['Image_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_1';
	self:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/scrollBar.png', 0);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 1.000000, y = 6.000000,width = 3.000000, height = 8.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 5.0, height = 20.0});
	localParams[5]:setPosition(1.5, 190.0);
	self.__children['Image_1#Image_2'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_1#Image_2';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = ListView:create();
	localParams[6]:setDirection(0);
	localParams[6]:setGravity(3);
	localParams[6]:setBackGroundColorType(1);
	localParams[6]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[6]:setBackGroundColorOpacity(102);
	localParams[6]:setAnchorPoint(0.00, 0.00);
	localParams[6]:setEventCallback(handler(self, self._onTableView));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 400.0, height = 200.0});
	localParams[6]:setPosition(500.0, 100.0);
	self.__children['ListView_2'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'ListView_2';
	self:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/scrollBarBg.png', 0);
	localParams[7]:ignoreContentAdaptWithSize(false);
	localParams[7]:setScale9Enabled(true);
	localParams[7]:setCapInsets({x = 1.000000, y = 0.000000,width = 1.000000, height = 20.000000});
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setOpacity(0);
	localParams[7]:setRotationSkewX(90.00);
	localParams[7]:setRotationSkewY(90.00);
	localParams[7]:setContentSize({width = 3.0, height = 380.0});
	localParams[7]:setPosition(700.0, 295.0);
	self.__children['Image_3'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'Image_3';
	self:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/scrollBar.png', 0);
	localParams[8]:ignoreContentAdaptWithSize(false);
	localParams[8]:setScale9Enabled(true);
	localParams[8]:setCapInsets({x = 1.000000, y = 1.000000,width = 3.000000, height = 18.000000});
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setFlippedY(true);
	localParams[8]:setContentSize({width = 5.0, height = 20.0});
	localParams[8]:setPosition(1.5, 190.0);
	self.__children['Image_3#Image_4'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'Image_3#Image_4';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_btn/btn0044.png', 1);
	localParams[9]:setAnchorPoint(1.00, 0.50);
	localParams[9]:setContentSize({width = 54.0, height = 59.0});
	localParams[9]:setPosition(500.0, 200.0);
	self.__children['arrow_left'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'arrow_left';
	self:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_btn/btn0045.png', 1);
	localParams[10]:setAnchorPoint(0.00, 0.50);
	localParams[10]:setContentSize({width = 54.0, height = 59.0});
	localParams[10]:setPosition(900.0, 200.0);
	self.__children['arrow_right'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'arrow_right';
	self:addChild(localParams[10]);

	localParams[11] = Button:create();
	localParams[11]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[11]:setTitleFontSize(14);
	localParams[11]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:onClick(handler(self, self._onClose));
	localParams[11]:setTouchEnabled(true);
	localParams[11]:setContentSize({width = 72.0, height = 72.0});
	localParams[11]:setPosition(WinSize.width - 73.00, WinSize.height - 68.00);
	self.__children['Button_3'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'Button_3';
	self:addChild(localParams[11]);

end
function TableViewLayer:loadImage()
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function TableViewLayer:loadPlistResources()

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
function TableViewLayer:_onTableView(eventName, listView, row, column, index, cell)
    if self._clickDelegate and self._clickDelegate.onTableView then
        return self._clickDelegate:onTableView(eventName, listView, row, column, index, cell);
    end
    if self.onTableView then
        return self:onTableView(eventName, listView, row, column, index, cell);
    end
end


function TableViewLayer:_onClose(sender)
    if self._clickDelegate and self._clickDelegate.onClose then
        return self._clickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


return TableViewLayer;