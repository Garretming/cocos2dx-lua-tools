-- 
-- Author: generation auto
-- Brief：MatchLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local MatchLayer = class('MatchLayer', gamecore.ui.BaseWidget);

function MatchLayer:create(...) 
    local instance = MatchLayer.new(...);
    return instance;
end

function MatchLayer:ctor(...) 
    if MatchLayer.super and MatchLayer.super.ctor then
        MatchLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(true);
end

function MatchLayer:initView()
    self.__LAYER_NAME = 'arena.MatchLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/bg_img/bgImg0016.png', 0);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 1136.0, height = 768.0});
	localParams[1]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['bg_sprite'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'bg_sprite';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_common/btn0033.png', 1);
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:onClick(handler(self, self._onCancelMatch));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 183.0, height = 68.0});
	localParams[2]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), 84.0);
	self.__children['cancelMatch_btn'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'cancelMatch_btn';
	self:addChild(localParams[2]);

	localParams[3] = Widget:create();
	localParams[3]:setAnchorPoint(0.00, 0.00);
	localParams[3]:setScaleX(0.90);
	localParams[3]:setScaleY(0.90);
	localParams[3]:setContentSize({width = 0.0, height = 0.0});
	localParams[3]:setPosition(318.52, 23.04);
	self.__children['cancelMatch_btn#__SELECTED_SCALE'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'cancelMatch_btn#__SELECTED_SCALE';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_font/fontImg0138.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 109.0, height = 30.0});
	localParams[4]:setPosition(91.5, 34.0);
	self.__children['cancelMatch_btn#font_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'cancelMatch_btn#font_sprite';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(30);
	localParams[5]:setString([[00:00]]);
	localParams[5]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 86.0, height = 34.0});
	localParams[5]:setPosition(WinSize.width/2 + (-0.00 * ccx.scaleX), WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['time_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'time_txt';
	self:addChild(localParams[5]);

end
function MatchLayer:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/bg_img/bgImg0016.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function MatchLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MatchLayer:_onCancelMatch(sender)
    if self._clickDelegate and self._clickDelegate.onCancelMatch then
        return self._clickDelegate:onCancelMatch(sender);
    end
    if self.onCancelMatch then
        return self:onCancelMatch(sender);
    end
end


return MatchLayer;