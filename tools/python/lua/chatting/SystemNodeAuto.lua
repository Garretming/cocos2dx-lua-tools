-- 
-- Author: generation auto
-- Brief：SystemNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local SystemNode = class('SystemNode', gamecore.ui.BaseWidget);

function SystemNode:create(...) 
    local instance = SystemNode.new(...);
    return instance;
end

function SystemNode:ctor(...) 
    if SystemNode.super and SystemNode.super.ctor then
        SystemNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function SystemNode:initView()
    self.__LAYER_NAME = 'chatting.SystemNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0085.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 13.000000,width = 42.000000, height = 14.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 560.0, height = 50.0});
	localParams[1]:setPosition(5.0, 5.0);
	self.__children['systemWarnbg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'systemWarnbg';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0231.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 64.0, height = 32.0});
	localParams[2]:setPosition(50.0, 25.0);
	self.__children['systemWarnbg#systemWarnImg'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'systemWarnbg#systemWarnImg';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = Text:create();
	localParams[3]:setFontSize(20);
	localParams[3]:setString([[占卜]]);
	localParams[3]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[3]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 43.0, height = 22.0});
	localParams[3]:setPosition(32.66, 16.64);
	self.__children['systemWarnbg#systemWarnImg#systemWarnTitle'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'systemWarnbg#systemWarnImg#systemWarnTitle';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = RichText:create();
	localParams[4]:setDefaultFontSize(20);
	localParams[4]:setString([[不移打是   大大是大所大所大所撒大所大]]);
	localParams[4]:setDefaultFontName('uires/public/ttf/jzy.ttf');
	localParams[4]:setTextAreaSize({width = 0, height = 25});
	localParams[4]:setDefaultOutline({r = 0, g = 0, b = 0, a = 255}, 1.00);
	localParams[4]:setAnchorPoint(0.00, 1.00);
	localParams[4]:setContentSize({width = 0.0, height = 25.0});
	localParams[4]:setPosition(100.0, 37.5);
	self.__children['systemWarnbg#systemWarn'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'systemWarnbg#systemWarn';
	localParams[1]:addChild(localParams[4]);

end
function SystemNode:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function SystemNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return SystemNode;