-- 
-- Author: generation auto
-- Brief：MonsterNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local MonsterNode = class('MonsterNode', gamecore.ui.BaseWidget);

function MonsterNode:create(...) 
    local instance = MonsterNode.new(...);
    return instance;
end

function MonsterNode:ctor(...) 
    if MonsterNode.super and MonsterNode.super.ctor then
        MonsterNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function MonsterNode:initView()
    self.__LAYER_NAME = 'monster.MonsterNode';
    local localParams = {};
	localParams[1] = Button:create();
	localParams[1]:loadTextureNormal('uires/public/sheet/dragon001.png', 1);
	localParams[1]:setTitleFontSize(14);
	localParams[1]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setScaleX(0.80);
	localParams[1]:setScaleY(0.80);
	localParams[1]:onClick(handler(self, self._toViewDetails));
	localParams[1]:setTouchEnabled(true);
	localParams[1]:setContentSize({width = 122.0, height = 122.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['m_btn'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'm_btn';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_other/other0106.png', 1);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 132.0, height = 132.0});
	localParams[2]:setPosition(61.0, 61.87);
	self.__children['m_btn#__SELECTED_IMG'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'm_btn#__SELECTED_IMG';
	localParams[1]:setSelectNode(localParams[2]);
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_common/btn0043.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 38.0, height = 42.0});
	localParams[3]:setPosition(19.39, 106.0);
	self.__children['m_btn#m_gas'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'm_btn#m_gas';
	localParams[1]:addChild(localParams[3]);

	localParams[4] = Text:create();
	localParams[4]:setFontSize(24);
	localParams[4]:setString([[9]]);
	localParams[4]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[4]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:setContentSize({width = 19.0, height = 28.0});
	localParams[4]:setPosition(17.65, 19.0);
	self.__children['m_btn#m_gas#m_gas_num'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'm_btn#m_gas#m_gas_num';
	localParams[3]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_icon/icon0056.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 38.0, height = 38.0});
	localParams[5]:setPosition(19.09, 18.52);
	self.__children['m_btn#profession'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'm_btn#profession';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = ImageView:create('uires/public/sheet_other/other0089.png', 1);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 43.0, height = 41.0});
	localParams[6]:setPosition(83.39, 27.51);
	self.__children['m_btn#star'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'm_btn#star';
	localParams[1]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[9]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[7]:setAnchorPoint(0.50, 0.50);
	localParams[7]:setTextColor({r = 240, g = 200, b = 60});
	localParams[7]:setContentSize({width = 16.0, height = 24.0});
	localParams[7]:setPosition(104.9, 15.0);
	self.__children['m_btn#m_level'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'm_btn#m_level';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(20);
	localParams[8]:setString([[99999]]);
	localParams[8]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[8]:setAnchorPoint(1.00, 0.50);
	localParams[8]:setVisible(false);
	localParams[8]:setContentSize({width = 64.0, height = 24.0});
	localParams[8]:setPosition(117.79, 110.66);
	self.__children['m_btn#m_num'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'm_btn#m_num';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_other/other0088.png', 1);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 30.0, height = 30.0});
	localParams[9]:setPosition(109.8, 109.8);
	self.__children['m_btn#redPoint_sprite'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'm_btn#redPoint_sprite';
	localParams[1]:addChild(localParams[9]);

end
function MonsterNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'uires/public/sheet/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function MonsterNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function MonsterNode:_toViewDetails(sender)
    if self._clickDelegate and self._clickDelegate.toViewDetails then
        return self._clickDelegate:toViewDetails(sender);
    end
    if self.toViewDetails then
        return self:toViewDetails(sender);
    end
end


return MonsterNode;