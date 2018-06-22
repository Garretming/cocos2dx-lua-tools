-- 
-- Author: generation auto
-- Brief：TaskNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local TaskNode = class('TaskNode', gamecore.ui.BaseWidget);

function TaskNode:create(...) 
    local instance = TaskNode.new(...);
    return instance;
end

function TaskNode:ctor(...) 
    if TaskNode.super and TaskNode.super.ctor then
        TaskNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function TaskNode:initView()
    self.__LAYER_NAME = 'task.TaskNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0122.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 37.000000, y = 37.000000,width = 40.000000, height = 40.000000});
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 870.0, height = 114.0});
	localParams[1]:setPosition(0.0, 0.0);
	self.__children['task_bg'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'task_bg';
	self:addChild(localParams[1]);

	localParams[2] = Button:create();
	localParams[2]:loadTextureNormal('uires/public/sheet_common/btn0005.png', 1);
	localParams[2]:setTitleFontSize(14);
	localParams[2]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 15.000000, y = 11.000000, width = 153.000000, height = 46.000000});
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setScaleX(0.70);
	localParams[2]:setScaleY(0.70);
	localParams[2]:onClick(handler(self, self._getBtn));
	localParams[2]:setTouchEnabled(true);
	localParams[2]:setContentSize({width = 183.0, height = 68.0});
	localParams[2]:setPosition(789.47, 37.41);
	self.__children['task_bg#getBtn'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'task_bg#getBtn';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = ImageView:create('uires/public/sheet_font/fontImg0178.png', 1);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setContentSize({width = 68.0, height = 30.0});
	localParams[3]:setPosition(91.16, 35.19);
	self.__children['task_bg#getBtn#font'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'task_bg#getBtn#font';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Widget:create();
	localParams[4]:setAnchorPoint(0.00, 0.00);
	localParams[4]:setScaleX(0.60);
	localParams[4]:setScaleY(0.60);
	localParams[4]:setContentSize({width = 0.0, height = 0.0});
	localParams[4]:setPosition(83.62, 36.53);
	self.__children['task_bg#getBtn#__SELECTED_SCALE'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'task_bg#getBtn#__SELECTED_SCALE';
	localParams[2]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_bgframe/bgFrame0098.png', 1);
	localParams[5]:ignoreContentAdaptWithSize(false);
	localParams[5]:setScale9Enabled(true);
	localParams[5]:setCapInsets({x = 19.000000, y = 10.000000,width = 22.000000, height = 12.000000});
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setContentSize({width = 310.0, height = 32.0});
	localParams[5]:setPosition(286.22, 83.95);
	self.__children['task_bg#dec_bg'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'task_bg#dec_bg';
	localParams[1]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(22);
	localParams[6]:setString([[]]);
	localParams[6]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[6]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[6]:setAnchorPoint(0.00, 1.00);
	localParams[6]:setContentSize({width = 0.0, height = 0.0});
	localParams[6]:setPosition(14.97, 28.59);
	self.__children['task_bg#dec_bg#desc_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'task_bg#dec_bg#desc_txt';
	localParams[5]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(22);
	localParams[7]:setString([[50]]);
	localParams[7]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[7]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[7]:setAnchorPoint(0.00, 1.00);
	localParams[7]:setContentSize({width = 31.0, height = 26.0});
	localParams[7]:setPosition(795.27, 95.71);
	self.__children['task_bg#all_num'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'task_bg#all_num';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = Text:create();
	localParams[8]:setFontSize(22);
	localParams[8]:setString([[50]]);
	localParams[8]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[8]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[8]:setAnchorPoint(1.00, 0.00);
	localParams[8]:setContentSize({width = 31.0, height = 26.0});
	localParams[8]:setPosition(785.52, 69.13);
	self.__children['task_bg#get_num'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'task_bg#get_num';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = Text:create();
	localParams[9]:setFontSize(20);
	localParams[9]:setString([[/]]);
	localParams[9]:setFontName('uires/public/ttf/jtcs.TTF');
	localParams[9]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 1.00);
	localParams[9]:setAnchorPoint(0.50, 0.50);
	localParams[9]:setContentSize({width = 15.0, height = 22.0});
	localParams[9]:setPosition(791.54, 83.4);
	self.__children['task_bg#symbol'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'task_bg#symbol';
	localParams[1]:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_other/other0183.png', 1);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 79.0, height = 79.0});
	localParams[10]:setPosition(790.36, 57.24);
	self.__children['task_bg#getSign'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'task_bg#getSign';
	localParams[1]:addChild(localParams[10]);

	localParams[11] = ImageView:create('uires/public/sheet_icon/icon0096.png', 1);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setContentSize({width = 82.0, height = 82.0});
	localParams[11]:setPosition(69.1, 56.54);
	self.__children['task_bg#task_img'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'task_bg#task_img';
	localParams[1]:addChild(localParams[11]);

	localParams[12] = Text:create();
	localParams[12]:setFontSize(16);
	localParams[12]:setString([[]]);
	localParams[12]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[12]:setTextAreaSize({width = 276, height = 46});
	localParams[12]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[12]:setAnchorPoint(0.00, 1.00);
	localParams[12]:setContentSize({width = 276.0, height = 46.0});
	localParams[12]:setPosition(148.6, 61.49);
	self.__children['task_bg#desc_lable'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'task_bg#desc_lable';
	localParams[1]:addChild(localParams[12]);

	localParams[13] = Button:create();
	localParams[13]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[13]:setTitleFontSize(14);
	localParams[13]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(0.60);
	localParams[13]:setScaleY(0.60);
	localParams[13]:setTouchEnabled(true);
	localParams[13]:setContentSize({width = 110.0, height = 110.0});
	localParams[13]:setPosition(495.9, 57.0);
	self.__children['task_bg#prize_bg1'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'task_bg#prize_bg1';
	localParams[1]:addChild(localParams[13]);

	localParams[14] = ImageView:create(nil, 0);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 46.0, height = 46.0});
	localParams[14]:setPosition(55.0, 55.0);
	self.__children['task_bg#prize_bg1#image'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'task_bg#prize_bg1#image';
	localParams[13]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(22);
	localParams[15]:setString([[88]]);
	localParams[15]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[15]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[15]:setAnchorPoint(1.00, 0.00);
	localParams[15]:setScaleX(0.90);
	localParams[15]:setScaleY(0.90);
	localParams[15]:setContentSize({width = 31.0, height = 26.0});
	localParams[15]:setPosition(99.83, 4.04);
	self.__children['task_bg#prize_bg1#number'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'task_bg#prize_bg1#number';
	localParams[13]:addChild(localParams[15]);

	localParams[16] = Button:create();
	localParams[16]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[16]:setTitleFontSize(14);
	localParams[16]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setScaleX(0.60);
	localParams[16]:setScaleY(0.60);
	localParams[16]:setTouchEnabled(true);
	localParams[16]:setContentSize({width = 110.0, height = 110.0});
	localParams[16]:setPosition(582.9, 57.0);
	self.__children['task_bg#prize_bg2'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'task_bg#prize_bg2';
	localParams[1]:addChild(localParams[16]);

	localParams[17] = ImageView:create(nil, 0);
	localParams[17]:setAnchorPoint(0.50, 0.50);
	localParams[17]:setContentSize({width = 46.0, height = 46.0});
	localParams[17]:setPosition(55.0, 55.0);
	self.__children['task_bg#prize_bg2#image'] = localParams[17];
	localParams[17].__children = self.__children;
	localParams[17].__Name = 'task_bg#prize_bg2#image';
	localParams[16]:addChild(localParams[17]);

	localParams[18] = Text:create();
	localParams[18]:setFontSize(22);
	localParams[18]:setString([[88]]);
	localParams[18]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[18]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[18]:setAnchorPoint(1.00, 0.00);
	localParams[18]:setScaleX(0.90);
	localParams[18]:setScaleY(0.90);
	localParams[18]:setContentSize({width = 31.0, height = 26.0});
	localParams[18]:setPosition(99.83, 4.04);
	self.__children['task_bg#prize_bg2#number'] = localParams[18];
	localParams[18].__children = self.__children;
	localParams[18].__Name = 'task_bg#prize_bg2#number';
	localParams[16]:addChild(localParams[18]);

	localParams[19] = Button:create();
	localParams[19]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0027.png', 1);
	localParams[19]:setTitleFontSize(14);
	localParams[19]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[19]:setAnchorPoint(0.50, 0.50);
	localParams[19]:setScaleX(0.60);
	localParams[19]:setScaleY(0.60);
	localParams[19]:setTouchEnabled(true);
	localParams[19]:setContentSize({width = 110.0, height = 110.0});
	localParams[19]:setPosition(669.9, 57.0);
	self.__children['task_bg#prize_bg3'] = localParams[19];
	localParams[19].__children = self.__children;
	localParams[19].__Name = 'task_bg#prize_bg3';
	localParams[1]:addChild(localParams[19]);

	localParams[20] = ImageView:create(nil, 0);
	localParams[20]:setAnchorPoint(0.50, 0.50);
	localParams[20]:setContentSize({width = 46.0, height = 46.0});
	localParams[20]:setPosition(55.0, 55.0);
	self.__children['task_bg#prize_bg3#image'] = localParams[20];
	localParams[20].__children = self.__children;
	localParams[20].__Name = 'task_bg#prize_bg3#image';
	localParams[19]:addChild(localParams[20]);

	localParams[21] = Text:create();
	localParams[21]:setFontSize(22);
	localParams[21]:setString([[88]]);
	localParams[21]:setFontName('uires/public/ttf/BRITANIC.TTF');
	localParams[21]:enableOutline({r = 50, g = 25, b = 0, a = 255}, 2.00);
	localParams[21]:setAnchorPoint(1.00, 0.00);
	localParams[21]:setScaleX(0.90);
	localParams[21]:setScaleY(0.90);
	localParams[21]:setContentSize({width = 31.0, height = 26.0});
	localParams[21]:setPosition(99.83, 4.04);
	self.__children['task_bg#prize_bg3#number'] = localParams[21];
	localParams[21].__children = self.__children;
	localParams[21].__Name = 'task_bg#prize_bg3#number';
	localParams[19]:addChild(localParams[21]);

end
function TaskNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'Default/Button_Press.png');
	table.insert(self._textureList, 'Default/Sprite.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_common/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_font/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_icon/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function TaskNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_common/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_font/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_icon/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function TaskNode:_getBtn(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.getBtn then
        return self.m_ClickDelegate:getBtn(sender);
    end
    if self.getBtn then
        return self:getBtn(sender);
    end
end


return TaskNode;