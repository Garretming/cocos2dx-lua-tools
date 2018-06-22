-- 
-- Author: generation auto
-- Brief：GuideTextLayerAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local GuideTextLayer = class('GuideTextLayer', gamecore.ui.BaseWidget);

function GuideTextLayer:create(...) 
    local instance = GuideTextLayer.new(...);
    return instance;
end

function GuideTextLayer:ctor(...) 
    if GuideTextLayer.super and GuideTextLayer.super.ctor then
        GuideTextLayer.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);
	self:setContentSize(WinSize);

end

function GuideTextLayer:initView()
    self.__LAYER_NAME = 'common.ui.GuideTextLayer';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_common/bgFrame0146.png', 1);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 549.0, height = 265.0});
	localParams[1]:setPosition(WinSize.width - 274.50, WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['right'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'right';
	self:addChild(localParams[1]);

	localParams[2] = RichText:create();
	localParams[2]:setDefaultFontSize(20);
	localParams[2]:setString([[Text LabelText LabelText LabelText L]]);
	localParams[2]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[2]:setTextAreaSize({width = 250, height = 80});
	localParams[2]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[2]:setAnchorPoint(0.00, 0.50);
	localParams[2]:setContentSize({width = 250.0, height = 80.0});
	localParams[2]:setPosition(20.0, 66.5);
	self.__children['right#text'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'right#text';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_common/bgFrame0146.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 549.0, height = 265.0});
	localParams[3]:setPosition(WinSize.width - 274.50, 132.5);
	self.__children['right_bottom'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'right_bottom';
	self:addChild(localParams[3]);

	localParams[4] = RichText:create();
	localParams[4]:setDefaultFontSize(20);
	localParams[4]:setString([[Text LabelText LabelText LabelText L]]);
	localParams[4]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:setTextAreaSize({width = 250, height = 80});
	localParams[4]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[4]:setAnchorPoint(0.00, 0.50);
	localParams[4]:setContentSize({width = 250.0, height = 80.0});
	localParams[4]:setPosition(20.0, 66.5);
	self.__children['right_bottom#text'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'right_bottom#text';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_common/bgFrame0146.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setFlippedX(true);
	localParams[5]:setContentSize({width = 549.0, height = 265.0});
	localParams[5]:setPosition(274.5, WinSize.height/2 + (-0.00 * ccx.scaleY));
	self.__children['left'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'left';
	self:addChild(localParams[5]);

	localParams[6] = RichText:create();
	localParams[6]:setDefaultFontSize(20);
	localParams[6]:setString([[Text LabelText LabelText LabelText L]]);
	localParams[6]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:setTextAreaSize({width = 250, height = 80});
	localParams[6]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[6]:setAnchorPoint(0.00, 0.50);
	localParams[6]:setContentSize({width = 250.0, height = 80.0});
	localParams[6]:setPosition(272.0, 66.5);
	self.__children['left#text'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'left#text';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_common/bgFrame0146.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setFlippedX(true);
	localParams[7]:setContentSize({width = 549.0, height = 265.0});
	localParams[7]:setPosition(274.5, 132.5);
	self.__children['left_bottom'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'left_bottom';
	self:addChild(localParams[7]);

	localParams[8] = RichText:create();
	localParams[8]:setDefaultFontSize(20);
	localParams[8]:setString([[Text LabelText LabelText LabelText L]]);
	localParams[8]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[8]:setTextAreaSize({width = 250, height = 80});
	localParams[8]:setDefaultOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[8]:setAnchorPoint(0.00, 0.50);
	localParams[8]:setContentSize({width = 250.0, height = 80.0});
	localParams[8]:setPosition(272.0, 66.5);
	self.__children['left_bottom#text'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'left_bottom#text';
	localParams[7]:addChild(localParams[8]);

end
function GuideTextLayer:loadImageSync()
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function GuideTextLayer:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


return GuideTextLayer;