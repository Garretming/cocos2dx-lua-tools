-- 
-- Author: generation auto
-- Brief：TabMenuLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local TabMenuLayer = class('TabMenuLayer', gamecore.ui.BaseWidget);

function TabMenuLayer:create(...) 
    local instance = TabMenuLayer.new(...);
    return instance;
end

function TabMenuLayer:ctor(...) 
    if TabMenuLayer.super and TabMenuLayer.super.ctor then
        TabMenuLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function TabMenuLayer:initView()
    self.__LAYER_NAME = 'demo.TabMenuLayer';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_btn/btn0008.png', 1);
	localParams[1]:loadTexturePressed('uires/public/sheet_btn/btn0009.png', 1);
	localParams[1]:setTitleFontSize(20);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 102.000000, height = 21.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:onClick(handler(self, self._onTabMenu));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 132.0, height = 43.0});
	localParams[1]:setPosition(200.0, 350.0);
	self.__children['button1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'button1';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_btn/btn0008.png', 1);
	localParams[2]:loadTexturePressed('uires/public/sheet_btn/btn0009.png', 1);
	localParams[2]:setTitleFontSize(20);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 15.000000, y = 11.000000, width = 102.000000, height = 21.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:onClick(handler(self, self._onTabMenu));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 132.0, height = 43.0});
	localParams[2]:setPosition(350.0, 350.0);
	self.__children['button2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'button2';
	self:addChild(localParams[2]);

	localParams[3] = Button:create();
	localParams[3]:loadTextureNormal('uires/public/sheet_btn/btn0008.png', 1);
	localParams[3]:loadTexturePressed('uires/public/sheet_btn/btn0009.png', 1);
	localParams[3]:setTitleFontSize(20);
	localParams[3]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 15.000000, y = 11.000000, width = 102.000000, height = 21.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:onClick(handler(self, self._onTabMenu));
	localParams[3]:setTouchEnabled(true);
	localParams[3]:setContentSize({width = 132.0, height = 43.0});
	localParams[3]:setPosition(500.0, 350.0);
	self.__children['button3'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'button3';
	self:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_btn/btn0008.png', 1);
	localParams[4]:loadTexturePressed('uires/public/sheet_btn/btn0009.png', 1);
	localParams[4]:setTitleFontSize(20);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 15.000000, y = 11.000000, width = 102.000000, height = 21.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._onTabMenu));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 132.0, height = 43.0});
	localParams[4]:setPosition(650.0, 350.0);
	self.__children['button4'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'button4';
	self:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_btn/btn0008.png', 1);
	localParams[5]:loadTexturePressed('uires/public/sheet_btn/btn0009.png', 1);
	localParams[5]:setTitleFontSize(20);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 15.000000, y = 11.000000, width = 102.000000, height = 21.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._onTabMenu));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 132.0, height = 43.0});
	localParams[5]:setPosition(800.0, 350.0);
	self.__children['button5'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'button5';
	self:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_btn/btn0027.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._onClose));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 72.0, height = 72.0});
	localParams[6]:setPosition(WinSize.width - 73.00, WinSize.height - 68.00);
	self.__children['Button_3'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'Button_3';
	self:addChild(localParams[6]);

end
function TabMenuLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet_btn/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function TabMenuLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_btn/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function TabMenuLayer:_onClose(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onClose then
        return self.m_ClickDelegate:onClose(sender);
    end
    if self.onClose then
        return self:onClose(sender);
    end
end


function TabMenuLayer:_onTabMenu(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onTabMenu then
        return self.m_ClickDelegate:onTabMenu(sender);
    end
    if self.onTabMenu then
        return self:onTabMenu(sender);
    end
end


return TabMenuLayer;