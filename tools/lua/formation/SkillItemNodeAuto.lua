-- 
-- Author: generation auto
-- Brief：SkillItemNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local SkillItemNode = class('SkillItemNode', gamecore.ui.BaseWidget);

function SkillItemNode:create(...) 
    local instance = SkillItemNode.new(...);
    return instance;
end

function SkillItemNode:ctor(...) 
    if SkillItemNode.super and SkillItemNode.super.ctor then
        SkillItemNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function SkillItemNode:initView()
    self.__LAYER_NAME = 'formation.SkillItemNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[1]:loadTexturePressed('uires/public/sheet_common/bgFrame0003.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setScaleX(1.10);
	localParams[1]:setScaleY(1.10);
	localParams[1]:onClick(handler(self, self._onSkillWork));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 118.0, height = 119.0});
	localParams[1]:setPosition(-2.14, 19.29);
	self.__children['s_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 's_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0079.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 126.0, height = 129.0});
	localParams[2]:setPosition(58.45, 59.73);
	self.__children['s_btn#light'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 's_btn#light';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet/skill0001.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 80.0, height = 80.0});
	localParams[3]:setPosition(59.0, 59.0);
	self.__children['s_btn#s_img'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 's_btn#s_img';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[LV:25]]);
	localParams[4]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[4]:enableOutline({r = 255, g = 255, b = 255, a = 255}, 1.000000);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 255, g = 140, b = 0});
	localParams[4]:setContentSize({width = 54.0, height = 22.0});
	localParams[4]:setPosition(62.0, 17.0);
	self.__children['s_btn#s_level'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 's_btn#s_level';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = Text:create();
	localParams[5]:setFontSize(20);
	localParams[5]:setString([[灵魂出窍]]);
	localParams[5]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[5]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setTextColor({r = 255, g = 240, b = 155});
	localParams[5]:setContentSize({width = 84.0, height = 22.0});
	localParams[5]:setPosition(58.0, -6.0);
	self.__children['s_btn#s_name'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 's_btn#s_name';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 38.0, height = 42.0});
	localParams[6]:setPosition(22.39, 87.0);
	self.__children['s_btn#s_gas'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 's_btn#s_gas';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[2]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setContentSize({width = 15.0, height = 22.0});
	localParams[7]:setPosition(18.65, 19.0);
	self.__children['s_btn#s_gas#s_gas_num'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 's_btn#s_gas#s_gas_num';
	localParams[6]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0041.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 46.0, height = 33.0});
	localParams[8]:setPosition(60.54, 60.01);
	self.__children['s_btn#is_open'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 's_btn#is_open';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 103.0, height = 103.0});
	localParams[9]:setPosition(61.23, 88.17);
	self.__children['lock'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'lock';
	self:addChild(localParams[9]);

end
function SkillItemNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function SkillItemNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function SkillItemNode:_onSkillWork(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onSkillWork then
        return self.m_ClickDelegate:onSkillWork(sender);
    end
    if self.onSkillWork then
        return self:onSkillWork(sender);
    end
end


return SkillItemNode;