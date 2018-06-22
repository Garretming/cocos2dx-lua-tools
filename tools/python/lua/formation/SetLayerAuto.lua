-- 
-- Author: generation auto
-- Brief：SetLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local SetLayer = class('SetLayer', gamecore.ui.BaseWidget);

function SetLayer:create(...) 
    local instance = SetLayer.new(...);
    return instance;
end

function SetLayer:ctor(...) 
    if SetLayer.super and SetLayer.super.ctor then
        SetLayer.super.ctor(self, ...);
    end

	self:setTouchEnabled(true);

end

function SetLayer:initView()
    self.__LAYER_NAME = 'formation.SetLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0066.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 81.000000, y = 81.000000,width = 84.000000, height = 84.000000});
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 320.0, height = 350.0});
	localParams[1]:setPosition(WinSize.width/2 + (-17.61 * ccx.scaleX), WinSize.height/2 + (10.11 * ccx.scaleY));
	self.__children['bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[2]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:onClick(handler(self, self._amend_btn));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 183.0, height = 68.0});
	localParams[2]:setPosition(158.07, 260.1);
	self.__children['bg#amend_btn'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'bg#amend_btn';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0084.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 108.0, height = 30.0});
	localParams[3]:setPosition(90.01, 35.0);
	self.__children['bg#amend_btn#font'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'bg#amend_btn#font';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_common/btn0032.png', 1);
	localParams[4]:loadTexturePressed('uires/public/sheet_common/btn0032.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setScale9Enabled(true);
	localParams[4]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._change_btn));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 183.0, height = 68.0});
	localParams[4]:setPosition(157.27, 176.51);
	self.__children['bg#change_btn'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'bg#change_btn';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_font/fontImg0083.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 110.0, height = 30.0});
	localParams[5]:setPosition(localParams[4]:getContentSize().width - 92.12, 33.41);
	self.__children['bg#change_btn#font'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'bg#change_btn#font';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Button:create();
	localParams[6]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[6]:loadTexturePressed('uires/public/sheet_common/btn0033.png', 1);
	localParams[6]:setTitleFontSize(14);
	localParams[6]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[6]:setScale9Enabled(true);
	localParams[6]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:onClick(handler(self, self._delete_btn));
	localParams[6]:setTouchEnabled(true);
	localParams[6]:setContentSize({width = 183.0, height = 68.0});
	localParams[6]:setPosition(158.21, 93.51);
	self.__children['bg#delete_btn'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'bg#delete_btn';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_font/fontImg0087.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 110.0, height = 30.0});
	localParams[7]:setPosition(90.75, 34.52);
	self.__children['bg#delete_btn#font'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'bg#delete_btn#font';
	localParams[6]:addChild(localParams[7]);

end
function SetLayer:loadImage()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	ccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);
end

function SetLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SetLayer:_amend_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.amend_btn then
        return self.m_ClickDelegate:amend_btn(sender);
    end
    if self.amend_btn then
        return self:amend_btn(sender);
    end
end


function SetLayer:_delete_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.delete_btn then
        return self.m_ClickDelegate:delete_btn(sender);
    end
    if self.delete_btn then
        return self:delete_btn(sender);
    end
end


function SetLayer:_change_btn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.change_btn then
        return self.m_ClickDelegate:change_btn(sender);
    end
    if self.change_btn then
        return self:change_btn(sender);
    end
end


return SetLayer;