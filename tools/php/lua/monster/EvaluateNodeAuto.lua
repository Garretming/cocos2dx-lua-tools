-- 
-- Author: generation auto
-- Brief：EvaluateNodeAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
    cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local EvaluateNode = class('EvaluateNode', gamecore.ui.BaseWidget);

function EvaluateNode:create(...) 
    local instance = EvaluateNode.new(...);
    return instance;
end

function EvaluateNode:ctor(...) 
    if EvaluateNode.super and EvaluateNode.super.ctor then
        EvaluateNode.super.ctor(self, ...);
    end

	self:loadImageSync();
	self:setTouchEnabled(false);

end

function EvaluateNode:initView()
    self.__LAYER_NAME = 'monster.EvaluateNode';
    local localParams = {};
	localParams[1] = ImageView:create('uires/public/sheet_bgframe/bgFrame0085.png', 1);
	localParams[1]:ignoreContentAdaptWithSize(false);
	localParams[1]:setScale9Enabled(true);
	localParams[1]:setCapInsets({x = 39.000000, y = 13.000000,width = 42.000000, height = 14.000000);
	localParams[1]:setAnchorPoint(0.00, 0.00);
	localParams[1]:setContentSize({width = 830.0, height = 40.0});
	localParams[1]:setPosition(10.0, 3.0);
	self.__children['under_img1'] = localParams[1];
	localParams[1].__children = self.__children;
	localParams[1].__Name = 'under_img1';
	self:addChild(localParams[1]);

	localParams[2] = ImageView:create('uires/public/sheet_bgframe/bgFrame0083.png', 1);
	localParams[2]:ignoreContentAdaptWithSize(false);
	localParams[2]:setScale9Enabled(true);
	localParams[2]:setCapInsets({x = 31.000000, y = 10.000000,width = 34.000000, height = 12.000000);
	localParams[2]:setAnchorPoint(0.50, 0.50);
	localParams[2]:setContentSize({width = 266.0, height = 32.0});
	localParams[2]:setPosition(172.85, 20.0);
	self.__children['under_img1#Image_2'] = localParams[2];
	localParams[2].__children = self.__children;
	localParams[2].__Name = 'under_img1#Image_2';
	localParams[1]:addChild(localParams[2]);

	localParams[3] = RichText:create();
	localParams[3]:setDefaultFontSize(20);
	localParams[3]:setString([[西米高]]);
	localParams[3]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[3]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[3]:setAnchorPoint(0.50, 0.50);
	localParams[3]:setTextColor({r = 255, g = 240, b = 155});
	localParams[3]:setContentSize({width = 64.0, height = 22.0});
	localParams[3]:setPosition(133.0, 16.0);
	self.__children['under_img1#Image_2#Text_1'] = localParams[3];
	localParams[3].__children = self.__children;
	localParams[3].__Name = 'under_img1#Image_2#Text_1';
	localParams[2]:addChild(localParams[3]);

	localParams[4] = Button:create();
	localParams[4]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0084.png', 1);
	localParams[4]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0084.png', 1);
	localParams[4]:setTitleFontSize(14);
	localParams[4]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[4]:setAnchorPoint(0.50, 0.50);
	localParams[4]:onClick(handler(self, self._onPraise));
	localParams[4]:setTouchEnabled(true);
	localParams[4]:setContentSize({width = 81.0, height = 32.0});
	localParams[4]:setPosition(786.01, 20.0);
	self.__children['under_img1#praise_btn'] = localParams[4];
	localParams[4].__children = self.__children;
	localParams[4].__Name = 'under_img1#praise_btn';
	localParams[1]:addChild(localParams[4]);

	localParams[5] = ImageView:create('uires/public/sheet_other/other0117.png', 1);
	localParams[5]:setAnchorPoint(0.50, 0.50);
	localParams[5]:setScaleX(3.00);
	localParams[5]:setScaleY(3.00);
	localParams[5]:setContentSize({width = 24.0, height = 23.0});
	localParams[5]:setPosition(20.0, 16.0);
	self.__children['under_img1#praise_btn#pollex_sprite'] = localParams[5];
	localParams[5].__children = self.__children;
	localParams[5].__Name = 'under_img1#praise_btn#pollex_sprite';
	localParams[4]:addChild(localParams[5]);

	localParams[6] = Text:create();
	localParams[6]:setFontSize(20);
	localParams[6]:setString([[6]]);
	localParams[6]:setAnchorPoint(0.50, 0.50);
	localParams[6]:setContentSize({width = 10.0, height = 20.0});
	localParams[6]:setPosition(54.0, 16.0);
	self.__children['under_img1#praise_btn#num_txt'] = localParams[6];
	localParams[6].__children = self.__children;
	localParams[6].__Name = 'under_img1#praise_btn#num_txt';
	localParams[4]:addChild(localParams[6]);

	localParams[7] = Text:create();
	localParams[7]:setFontSize(20);
	localParams[7]:setString([[Text LabelText LabelText ]]);
	localParams[7]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[7]:setTextAreaSize({width = 420, height = 25});
	localParams[7]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[7]:setAnchorPoint(0.00, 0.50);
	localParams[7]:setContentSize({width = 420.0, height = 25.0});
	localParams[7]:setPosition(319.21, 20.0);
	self.__children['under_img1#Text_3'] = localParams[7];
	localParams[7].__children = self.__children;
	localParams[7].__Name = 'under_img1#Text_3';
	localParams[1]:addChild(localParams[7]);

	localParams[8] = ImageView:create('uires/public/sheet_other/other0119.png', 1);
	localParams[8]:setAnchorPoint(0.50, 0.50);
	localParams[8]:setContentSize({width = 60.0, height = 40.0});
	localParams[8]:setPosition(24.73, 23.23);
	self.__children['under_img1#cue_sprite'] = localParams[8];
	localParams[8].__children = self.__children;
	localParams[8].__Name = 'under_img1#cue_sprite';
	localParams[1]:addChild(localParams[8]);

	localParams[9] = ImageView:create('uires/public/sheet_bgframe/bgFrame0085.png', 1);
	localParams[9]:ignoreContentAdaptWithSize(false);
	localParams[9]:setScale9Enabled(true);
	localParams[9]:setCapInsets({x = 39.000000, y = 13.000000,width = 42.000000, height = 14.000000);
	localParams[9]:setAnchorPoint(0.00, 0.00);
	localParams[9]:setContentSize({width = 830.0, height = 70.0});
	localParams[9]:setPosition(10.0, 3.0);
	self.__children['under_img2'] = localParams[9];
	localParams[9].__children = self.__children;
	localParams[9].__Name = 'under_img2';
	self:addChild(localParams[9]);

	localParams[10] = ImageView:create('uires/public/sheet_bgframe/bgFrame0083.png', 1);
	localParams[10]:ignoreContentAdaptWithSize(false);
	localParams[10]:setScale9Enabled(true);
	localParams[10]:setCapInsets({x = 31.000000, y = 10.000000,width = 34.000000, height = 12.000000);
	localParams[10]:setAnchorPoint(0.50, 0.50);
	localParams[10]:setContentSize({width = 266.0, height = 32.0});
	localParams[10]:setPosition(172.85, 35.0);
	self.__children['under_img2#Image_2'] = localParams[10];
	localParams[10].__children = self.__children;
	localParams[10].__Name = 'under_img2#Image_2';
	localParams[9]:addChild(localParams[10]);

	localParams[11] = RichText:create();
	localParams[11]:setDefaultFontSize(20);
	localParams[11]:setString([[西米高]]);
	localParams[11]:setDefaultFontName('uires/public/ttf/jtcs.TTF');
	localParams[11]:setDefaultOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[11]:setAnchorPoint(0.50, 0.50);
	localParams[11]:setTextColor({r = 255, g = 240, b = 155});
	localParams[11]:setContentSize({width = 64.0, height = 22.0});
	localParams[11]:setPosition(133.0, 16.0);
	self.__children['under_img2#Image_2#Text_1'] = localParams[11];
	localParams[11].__children = self.__children;
	localParams[11].__Name = 'under_img2#Image_2#Text_1';
	localParams[10]:addChild(localParams[11]);

	localParams[12] = Button:create();
	localParams[12]:loadTextureNormal('uires/public/sheet_bgframe/bgFrame0084.png', 1);
	localParams[12]:loadTexturePressed('uires/public/sheet_bgframe/bgFrame0084.png', 1);
	localParams[12]:setTitleFontSize(14);
	localParams[12]:setTitleColor({r = 65, g = 65, b = 70});
	localParams[12]:setAnchorPoint(0.50, 0.50);
	localParams[12]:onClick(handler(self, self._onPraise));
	localParams[12]:setTouchEnabled(true);
	localParams[12]:setContentSize({width = 81.0, height = 32.0});
	localParams[12]:setPosition(786.01, 35.0);
	self.__children['under_img2#praise_btn'] = localParams[12];
	localParams[12].__children = self.__children;
	localParams[12].__Name = 'under_img2#praise_btn';
	localParams[9]:addChild(localParams[12]);

	localParams[13] = ImageView:create('uires/public/sheet_other/other0117.png', 1);
	localParams[13]:setAnchorPoint(0.50, 0.50);
	localParams[13]:setScaleX(3.00);
	localParams[13]:setScaleY(3.00);
	localParams[13]:setContentSize({width = 24.0, height = 23.0});
	localParams[13]:setPosition(20.0, 16.0);
	self.__children['under_img2#praise_btn#pollex_sprite'] = localParams[13];
	localParams[13].__children = self.__children;
	localParams[13].__Name = 'under_img2#praise_btn#pollex_sprite';
	localParams[12]:addChild(localParams[13]);

	localParams[14] = Text:create();
	localParams[14]:setFontSize(20);
	localParams[14]:setString([[6]]);
	localParams[14]:setAnchorPoint(0.50, 0.50);
	localParams[14]:setContentSize({width = 10.0, height = 20.0});
	localParams[14]:setPosition(54.0, 16.0);
	self.__children['under_img2#praise_btn#num_txt'] = localParams[14];
	localParams[14].__children = self.__children;
	localParams[14].__Name = 'under_img2#praise_btn#num_txt';
	localParams[12]:addChild(localParams[14]);

	localParams[15] = Text:create();
	localParams[15]:setFontSize(20);
	localParams[15]:setString([[Text LabelText LabelText ]]);
	localParams[15]:setFontName('uires/public/ttf/jzy.ttf');
	localParams[15]:setTextAreaSize({width = 420, height = 0});
	localParams[15]:enableOutline({r = 50, g = 25, b = 255, a = 255}, 1.000000);
	localParams[15]:setAnchorPoint(0.00, 0.50);
	localParams[15]:setContentSize({width = 420.0, height = 0.0});
	localParams[15]:setPosition(319.21, 35.0);
	self.__children['under_img2#Text_3'] = localParams[15];
	localParams[15].__children = self.__children;
	localParams[15].__Name = 'under_img2#Text_3';
	localParams[9]:addChild(localParams[15]);

	localParams[16] = ImageView:create('uires/public/sheet_other/other0119.png', 1);
	localParams[16]:setAnchorPoint(0.50, 0.50);
	localParams[16]:setContentSize({width = 60.0, height = 40.0});
	localParams[16]:setPosition(24.73, 53.23);
	self.__children['under_img2#cue_sprite'] = localParams[16];
	localParams[16].__children = self.__children;
	localParams[16].__Name = 'under_img2#cue_sprite';
	localParams[9]:addChild(localParams[16]);

end
function EvaluateNode:loadImageSync()
	table.insert(self._textureList, 'Default/Button_Disable.png');
	table.insert(self._textureList, 'uires/public/sheet_bgframe/sheet.png');
	table.insert(self._textureList, 'uires/public/sheet_other/sheet.png');

    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end


function EvaluateNode:loadPlistResources()
	table.insert(self._plistList, 'uires/public/sheet_bgframe/sheet.plist');
	table.insert(self._plistList, 'uires/public/sheet_other/sheet.plist');

    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end


function EvaluateNode:_onPraise(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.onPraise then
        return self.m_ClickDelegate:onPraise(sender);
    end
    if self.onPraise then
        return self:onPraise(sender);
    end
end


return EvaluateNode;