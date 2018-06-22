-- 
-- Author: generation auto
-- Brief：EmailItemNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local EmailItemNode = class('EmailItemNode', gamecore.ui.BaseWidget);

function EmailItemNode:create(...) 
    local instance = EmailItemNode.new(...);
    return instance;
end

function EmailItemNode:ctor(...) 
    if EmailItemNode.super and EmailItemNode.super.ctor then
        EmailItemNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function EmailItemNode:initView()
    self.__LAYER_NAME = 'email.EmailItemNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0058.png', 1);
	localParams[1]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0059.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 90.000000, height = 68.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._toViewEmailInfo));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 260.0, height = 90.0});
	localParams[1]:setPosition(5.0, 5.0);
	self.__children['emailItem_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'emailItem_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_icon/icon0093.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 70.0, height = 60.0});
	localParams[2]:setPosition(45.5, 45.0);
	self.__children['emailItem_btn#icon_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'emailItem_btn#icon_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 155.0, height = 32.0});
	localParams[3]:setPosition(169.0, 58.5);
	self.__children['emailItem_btn#under_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'emailItem_btn#under_1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(18);
	localParams[4]:setString([[系统补偿]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setTextColor({r = 255, g = 240, b = 155});
	localParams[4]:setContentSize({width = 77.0, height = 22.0});
	localParams[4]:setPosition(15.5, 16.0);
	self.__children['emailItem_btn#under_1#title_txt'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'emailItem_btn#under_1#title_txt';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(18);
	localParams[5]:setString([[2017-4-30]]);
	localParams[5]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 2.000000);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setContentSize({width = 92.0, height = 24.0});
	localParams[5]:setPosition(109.2, 25.2);
	self.__children['emailItem_btn#time_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'emailItem_btn#time_txt';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 30.0, height = 30.0});
	localParams[6]:setPosition(249.6, 79.2);
	self.__children['emailItem_btn#redPoint_sprite'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'emailItem_btn#redPoint_sprite';
	localParams[1]:addChild(localParams[6]);

end
function EmailItemNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function EmailItemNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function EmailItemNode:_toViewEmailInfo(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toViewEmailInfo then
        return self.m_ClickDelegate:toViewEmailInfo(sender);
    end
    if self.toViewEmailInfo then
        return self:toViewEmailInfo(sender);
    end
end


return EmailItemNode;