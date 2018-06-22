-- 
-- Author: generation auto
-- Brief：ReportItemNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local ReportItemNode = class('ReportItemNode', gamecore.ui.BaseWidget);

function ReportItemNode:create(...) 
    local instance = ReportItemNode.new(...);
    return instance;
end

function ReportItemNode:ctor(...) 
    if ReportItemNode.super and ReportItemNode.super.ctor then
        ReportItemNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function ReportItemNode:initView()
    self.__LAYER_NAME = 'email.ReportItemNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0058.png', 1);
	localParams[1]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0059.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 15.000000, y = 11.000000, width = 90.000000, height = 68.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:onClick(handler(self, self._toViewReportInfo));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 260.0, height = 90.0});
	localParams[1]:setPosition(5.0, 5.0);
	self.__children['reportItem_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'reportItem_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_icon/icon0093.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 70.0, height = 60.0});
	localParams[2]:setPosition(45.5, 45.0);
	self.__children['reportItem_btn#icon_sprite'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'reportItem_btn#icon_sprite';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[3]:ignoreContentAdaptWithSize(false);
	localParams[3]:setScale9Enabled(true);
	localParams[3]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 155.0, height = 32.0});
	localParams[3]:setPosition(169.0, 58.5);
	self.__children['reportItem_btn#under_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'reportItem_btn#under_1';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = ImageView:create('uires/public/sheet_other/other0175.png', 1);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 50.0, height = 30.0});
	localParams[4]:setPosition(13.95, 16.0);
	self.__children['reportItem_btn#under_1#cue_sprite'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'reportItem_btn#under_1#cue_sprite';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(18);
	localParams[5]:setString([[防守：暴风城]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[5]:setAnchorPoint(0.00, 0.50);
	localParams[5]:setTextColor({r = 255, g = 240, b = 155});
	localParams[5]:setContentSize({width = 113.0, height = 22.0});
	localParams[5]:setPosition(38.75, 16.0);
	self.__children['reportItem_btn#under_1#title_txt'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'reportItem_btn#under_1#title_txt';
	localParams[3]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(18);
	localParams[6]:setString([[2017-4-30 24:00:00]]);
	localParams[6]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[6]:setAnchorPoint(1.00, 0.50);
	localParams[6]:setContentSize({width = 167.0, height = 24.0});
	localParams[6]:setPosition(252.2, 25.2);
	self.__children['reportItem_btn#timeLimit_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'reportItem_btn#timeLimit_txt';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 30.0, height = 30.0});
	localParams[7]:setPosition(249.6, 79.2);
	self.__children['reportItem_btn#redPoint_sprite'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'reportItem_btn#redPoint_sprite';
	localParams[1]:addChild(localParams[7]);

end
function ReportItemNode:loadImageSync()
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


function ReportItemNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function ReportItemNode:_toViewReportInfo(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.toViewReportInfo then
        return self.m_ClickDelegate:toViewReportInfo(sender);
    end
    if self.toViewReportInfo then
        return self:toViewReportInfo(sender);
    end
end


return ReportItemNode;