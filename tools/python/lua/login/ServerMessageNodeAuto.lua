-- 
-- Author: generation auto
-- Brief：ServerMessageNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ServerMessageNode = class('ServerMessageNode', gamecore.ui.BaseWidget);

function ServerMessageNode:create(...) 
    local instance = ServerMessageNode.new(...);
    return instance;
end

function ServerMessageNode:ctor(...) 
    if ServerMessageNode.super and ServerMessageNode.super.ctor then
        ServerMessageNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function ServerMessageNode:initView()
    self.__LAYER_NAME = 'login.ServerMessageNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0046.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 132.000000, height = 32.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._onSelect));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 330.0, height = 54.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['Button_1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'Button_1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0043.png', 1);
	localParams[2]:setAnchorPoint(0.00, 0.50);
	localParams[2]:setContentSize({width = 46.0, height = 46.0});
	localParams[2]:setPosition(15.0, 27.0);
	self.__children['Button_1#status'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'Button_1#status';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(20);
	localParams[3]:setString([[]]);
	localParams[3]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 0.0, height = 0.0});
	localParams[3]:setPosition(165.0, 27.0);
	self.__children['Button_1#name'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'Button_1#name';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0047.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setVisible(false);
	localParams[4]:setContentSize({width = 61.0, height = 43.0});
	localParams[4]:setPosition(270.0, 32.0);
	self.__children['Button_1#new'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'Button_1#new';
	localParams[1]:addChild(localParams[4]);

end
function ServerMessageNode:loadImageSync()
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


function ServerMessageNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ServerMessageNode:_onSelect(sender)
    if self._clickDelegate and self._clickDelegate.onSelect then
        return self._clickDelegate:onSelect(sender);
    end
    if self.onSelect then
        return self:onSelect(sender);
    end
end


return ServerMessageNode;