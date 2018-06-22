-- 
-- Author: generation auto
-- Brief：GmLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local GmLayer = class('GmLayer', gamecore.ui.BaseWidget);

function GmLayer:create(...) 
    local instance = GmLayer.new(...);
    return instance;
end

function GmLayer:ctor(...) 
    if GmLayer.super and GmLayer.super.ctor then
        GmLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function GmLayer:initView()
    self.__LAYER_NAME = 'maincity.GmLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0017.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1024.0, height = 640.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 320.0);
	self.__children['Image_4'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Image_4';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:onClick(handler(self, self._onClose));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 72.0, height = 72.0});
	localParams[2]:setPosition(localParams[1]:getContentSize().width - 36.18, localParams[1]:getContentSize().height - 34.86);
	self.__children['Image_4#Button_3'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Image_4#Button_3';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ListView:create();
	localParams[3]:setDirection(1);
	localParams[3]:setGravity(0);
	localParams[3]:setBackGroundColorType(1);
	localParams[3]:setBackGroundColor({r = 150, g = 150, b = 255});
	localParams[3]:setBackGroundColorOpacity(102);
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setEventCallback(handler(self, self._onTableView));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 1024.0, height = 400.0});
	localParams[3]:setPosition(localParams[1]:getContentSize().width/2 + (-512.00 * ccx.scaleX), 144.18);
	self.__children['Image_4#ListView_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Image_4#ListView_1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_bgframe/bgFrame0036.png', 1);
	localParams[4]:ignoreContentAdaptWithSize(false);
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 25.000000, y = 8.000000,width = 28.000000, height = 10.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 800.0, height = 60.0});
	localParams[4]:setPosition(415.09, 590.0);
	self.__children['Image_4#Image_1'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Image_4#Image_1';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());
	localParams[5]:setFontSize(24);
	localParams[5]:setPlaceholderFontSize(24);
	localParams[5]:setPlaceHolder([[Text Field]]);
	localParams[5]:setMaxLength(10);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:registerScriptEditBoxHandler(handler(self, self._onGM));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 780.0, height = 40.0});
	localParams[5]:setPosition(403.2, 30.0);
	self.__children['Image_4#Image_1#inputview'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'Image_4#Image_1#inputview';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[6]:loadTexturePressed('uires/public/sheet_common/btn0033.png', 1);
	localParams[6]:setTitleFontSize(36);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setScaleX(0.60);
	localParams[6]:setScaleY(0.60);
	localParams[6]:onClick(handler(self, self._onSure));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 183.0, height = 68.0});
	localParams[6]:setPosition(localParams[1]:getContentSize().width - 140.81, 589.09);
	self.__children['Image_4#Button_1'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Image_4#Button_1';
	localParams[1]:addChild(localParams[6]);

end
function GmLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function GmLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

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
function GmLayer:_onTableView(eventName, listView, row, column, index, cell)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTableView then
        return self.m_ClickDelegate:onTableView(eventName, listView, row, column, index, cell);
    end
    if self.onTableView then
        return self:onTableView(eventName, listView, row, column, index, cell);
    end
end


function GmLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


--eventName:(began, ended, changed)
function GmLayer:_onGM(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.onGM then
        return self.m_ClickDelegate:onGM(eventName, editBox);
    end
    if self.onGM then
        return self:onGM(eventName, editBox);
    end
end


function GmLayer:_onSure(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSure then
        return self.m_ClickDelegate:onSure(sender);
    end
    if self.onSure then
        return self:onSure(sender);
    end
end


return GmLayer;