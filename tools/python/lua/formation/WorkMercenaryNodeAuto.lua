-- 
-- Author: generation auto
-- Brief：WorkMercenaryNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local WorkMercenaryNode = class('WorkMercenaryNode', gamecore.ui.BaseWidget);

function WorkMercenaryNode:create(...) 
    local instance = WorkMercenaryNode.new(...);
    return instance;
end

function WorkMercenaryNode:ctor(...) 
    if WorkMercenaryNode.super and WorkMercenaryNode.super.ctor then
        WorkMercenaryNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function WorkMercenaryNode:initView()
    self.__LAYER_NAME = 'formation.WorkMercenaryNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0094.png', 1);
	localParams[1]:setAnchorPoint(0.50, 0.50);
	localParams[1]:setContentSize({width = 222.0, height = 55.0});
	localParams[1]:setPosition(111.08, 26.62);
	self.__children['w_m_btn2'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'w_m_btn2';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0094.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 222.0, height = 55.0});
	localParams[2]:setPosition(111.08, 26.62);
	self.__children['w_m_btn3'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'w_m_btn3';
	self:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_other/other0076.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setScaleX(0.50);
	localParams[3]:setScaleY(0.50);
	localParams[3]:setContentSize({width = 103.0, height = 103.0});
	localParams[3]:setPosition(191.53, 28.2);
	self.__children['w_m_btn3#lock'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'w_m_btn3#lock';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(20);
	localParams[4]:setString([[10级解锁]]);
	localParams[4]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setTextColor({r = 255, g = 0, b = 0});
	localParams[4]:setContentSize({width = 83.0, height = 20.0});
	localParams[4]:setPosition(108.52, 28.24);
	self.__children['w_m_btn3#role_level_hint'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'w_m_btn3#role_level_hint';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = Button:create();
	localParams[5]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0089.png', 1);
	localParams[5]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0089.png', 1);
	localParams[5]:setTitleFontSize(14);
	localParams[5]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:onClick(handler(self, self._demountMonster));
	localParams[5]:setTouchEnabled(true);
	localParams[5]:setContentSize({width = 222.0, height = 55.0});
	localParams[5]:setPosition(111.0, 26.0);
	self.__children['w_m_btn1'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'w_m_btn1';
	self:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet/dragon001.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setScaleX(0.48);
	localParams[6]:setScaleY(0.48);
	localParams[6]:setContentSize({width = 122.0, height = 122.0});
	localParams[6]:setPosition(28.2, 27.95);
	self.__children['w_m_btn1#head'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'w_m_btn1#head';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setScaleX(0.60);
	localParams[7]:setScaleY(0.60);
	localParams[7]:setContentSize({width = 38.0, height = 42.0});
	localParams[7]:setPosition(10.1, 45.2);
	self.__children['w_m_btn1#m_gas'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'w_m_btn1#m_gas';
	localParams[5]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(24);
	localParams[8]:setString([[9]]);
	localParams[8]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 19.0, height = 28.0});
	localParams[8]:setPosition(18.65, 18.0);
	self.__children['w_m_btn1#m_gas#m_gas_num'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'w_m_btn1#m_gas#m_gas_num';
	localParams[7]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 38.0, height = 38.0});
	localParams[9]:setPosition(194.54, 27.86);
	self.__children['w_m_btn1#profession'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'w_m_btn1#profession';
	localParams[5]:addChild(localParams[9]);

	localParams[10] = Text:create();
	localParams[10]:setFontSize(20);
	localParams[10]:setString([[9]]);
	localParams[10]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[10]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 16.0, height = 24.0});
	localParams[10]:setPosition(113.78, 14.17);
	self.__children['w_m_btn1#m_level'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'w_m_btn1#m_level';
	localParams[5]:addChild(localParams[10]);

	localParams[11] = Text:create();
	localParams[11]:setFontSize(20);
	localParams[11]:setString([[佣兵佣兵]]);
	localParams[11]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 255, g = 240, b = 155});
	localParams[11]:setContentSize({width = 84.0, height = 22.0});
	localParams[11]:setPosition(111.76, 37.56);
	self.__children['w_m_btn1#m_name'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'w_m_btn1#m_name';
	localParams[5]:addChild(localParams[11]);

end
function WorkMercenaryNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function WorkMercenaryNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function WorkMercenaryNode:_demountMonster(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.demountMonster then
        return self.m_ClickDelegate:demountMonster(sender);
    end
    if self.demountMonster then
        return self:demountMonster(sender);
    end
end


return WorkMercenaryNode;