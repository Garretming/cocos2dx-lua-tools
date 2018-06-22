<?php
include_once 'common.php';
include_once 'parseCommon.php';
include_once 'parseSprite.php';
include_once 'parseText.php';
include_once 'parseImageView.php';
include_once 'parseButton.php';
include_once 'parseCheckBox.php';
include_once 'parseTextBMFont.php';
include_once 'parseTextAtlas.php';
include_once 'parseProgressTimer.php';
include_once 'parseScrollView.php';
include_once 'parseLayout.php';
include_once 'parseListView.php';
include_once 'parseSlider.php';

function parseAllNodes($array, $parent, &$string)
{
    $GUID = $GLOBALS['GUID'] ++ ;

    $nodeName = "";
    if ($parent[1] == '') {
        $nodeName = $array['Name'];
    }
    else
    {
        $nodeName = "{$parent[1]}#{$array['Name']}";
    }
    $parent[1] = $nodeName;
    $node = "local_params[$GUID]";
    $classname = $array['ctype'];
    if ($classname == 'SpriteObjectData') 
    {
        parseSprite($node, $string, $array);
    }
    elseif ($classname == 'TextObjectData')
    {
        parseText($node, $string, $array);
    }
    elseif ($classname == 'PanelObjectData')
    {
        $string .= "\t$node = Layout:create();\n";
        parseLayout($node, $string, $array);
    }
    elseif ($classname == 'ImageViewObjectData')
    {
        parseImageView($node, $string ,$array);
    }
    elseif ($classname == 'SingleNodeObjectData')
    {
        $string .= "\t$node = Node:create();\n";
    }
    elseif ($classname == 'ParticleObjectData') {
        $string .= "\t$node = ParticleSystemQuad:create('{$array['FileData']['Path']}');\n";
    }
    elseif ($classname == 'LoadingBarObjectData') {
        parseProgressTimer($node, $string, $array);
    }
    elseif ($classname == 'TextAtlasObjectData') {
        parseTextAtlas($node, $string, $array);
    }
    elseif ($classname == 'TextBMFontObjectData') {
        parseTextBMFont($node, $string, $array);
    }    
    elseif ($classname == 'TextFieldObjectData') {
        parseTextAtlas($node, $string, $array);
    }    
    elseif ($classname == 'SliderObjectData') {
        parseSlider($node, $string, $array);
    }
    elseif ($classname == 'ListViewObjectData') {
        parseListView($node, $string, $array);
        parseLayout($node, $string, $array);
    }
    elseif ($classname == 'ScrollViewObjectData') {
        parseScrollView($node, $string, $array);
        parseLayout($node, $string, $array);
    }
    elseif ($classname == 'PageViewObjectData') {
        $string .= "\t$node = PageView:create();\n";
        parseLayout($node, $string, $array);
    }
    elseif ($classname == 'CheckBoxObjectData') {
        parseCheckBox($node, $string, $array);
    }
    elseif ($classname == 'ButtonObjectData') {
        parseButton($node, $string, $array);
    }
    $GLOBALS['ActionTag'][$array['ActionTag']] = $node;

    parseCommon($node, $classname, $string, $array, $parent);
    $string .= "\tself.__Children['$nodeName'] = $node;\n";
    $string .= "\t$node.__Children = self.__Children;\n";
    $string .= "\t$node.__Name = '$nodeName';\n";

    $string .= "\t$parent[0]:addChild($node);\n\n";
    if (array_key_exists('Children', $array)) {
        foreach ($array['Children'] as $value) {
            parseAllNodes($value, [$node,$parent[1]], $string);
        }
    }
}




$files = array();

parsedir("$CURRENT_DIR/json",$files);

_rmdir("$CURRENT_DIR/lua");

foreach ($files as $filepath) {
    $pathinfo = pathinfo($filepath);

    if ($pathinfo['extension'] != 'json') {
        continue;
    }   


    $GLOBALS['callback'] = array();
    $GLOBALS['filepath'] = $filepath;
    $GLOBALS['GUID'] = 1;


    $GLOBALS['require'] = array();
    $GLOBALS['UsedResources'] = array();
    $GLOBALS['ActionTag'] = array();

    $data = json_decode(file_get_contents($filepath),true);
    $Type = $data['Type'];
    if ($Type == 'Scene') {
        $Type = 'Layer';
    }

    if ($Type == 'Layer') {
        $GLOBALS['require']['BaseLayer'] = 'common.ui.';
        $Type = 'BaseLayer';
    }
    elseif ($Type == 'Node') {
        $GLOBALS['require']['BaseNode'] = 'common.ui.';
        $Type = 'BaseNode';
    }

    $SyncNode = false;
    $Mask = false;
    if (strpos($data['Content']['Content']['ObjectData']['CustomClassName'], 'Mask') !== false) {
        $list1 = split('_', $data['Content']['Content']['ObjectData']['CustomClassName']);
        $mask_opacity = 150;
        foreach ($list1 as $key1 => $value1) {
            if (strpos($value1, 'Mask') !== false) {
                if (strlen($value1) > 4) {
                    $mask_opacity = intval(substr($value1, 4));
                }
            }
        }
        $Mask = true;
    }
    if (strpos($data['Content']['Content']['ObjectData']['CustomClassName'], 'BaseNode') !== false) {
        $GLOBALS['require']['BaseNode'] = 'common.ui.';
        $Type = 'BaseNode';
    }
    if (strpos($data['Content']['Content']['ObjectData']['CustomClassName'], 'SyncNode') !== false) {
        $SyncNode = true;
    }
    if (strpos($data['Content']['Content']['ObjectData']['CustomClassName'], 'BaseTableViewCell') !== false) {
        $GLOBALS['require']['BaseTableViewCell'] = 'common.ui.';
        $Type = 'BaseTableViewCell';
    }

    $exportDir = $data['Content']['Content']['ObjectData']['UserData'];
    if ($exportDir == null) {
        continue;
    }
    if ($exportDir[strlen($exportDir)-1] != '/') {
        $exportDir .= "/";
    }

    $Children = $data['Content']['Content']['ObjectData']['Children'];

    $GLOBALS['designSize'] = [$data['Content']['Content']['ObjectData']['Size']['X'], $data['Content']['Content']['ObjectData']['Size']['Y']];

    if (!file_exists("lua/$exportDir")) {
        mkdir("lua/$exportDir",0777,true);
    }

    my_echo(">>>>>>>>>>开始导出$exportDir{$pathinfo['filename']}.lua\n");

    $moduleName = str_replace('/', '.', $exportDir);
    $GLOBALS['moduleName'] = $moduleName . $pathinfo['filename'];
    $GLOBALS['filename'] = $pathinfo['filename'];

    getUsedResources($GLOBALS['UsedResources'], $data['Content']['Content']);

    $ObjectDataString = "";

    foreach ($Children as $value) {
        parseAllNodes($value, ['self',''], $ObjectDataString );
    }

    $repeatNode = array();
    foreach ($GLOBALS['ActionTag'] as $key => $value) {
        // if (!array_key_exists($value, $repeatNode)) {
        //     $repeatNode[$value] = 'true';
        // }
        // else
        // {
        //     // $name = substr($value, 4);
        //     die(convertString("存在相同的节点名字:$value,{$filepath}\n"));
        //     return;
        // }
    }
    // parseAnimation($data['Content']['Content'], $ObjectDataString, 'self.children');

    $uiString = <<<STR
local class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = 
      class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox = 
    ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox;
local Sprite, Node, ProgressTimer = cc.Sprite, cc.Node, cc.ProgressTimer;


local WinSize = cc.Director:getInstance():getWinSize();
local {$pathinfo['filename']} = class('{$pathinfo['filename']}',$Type);

function {$pathinfo['filename']}:create(...) 
    local instance = {$pathinfo['filename']}.new(...);
    return instance;
end

function {$pathinfo['filename']}.ctor(self, ...) 
    if {$pathinfo['filename']}.super and {$pathinfo['filename']}.super.ctor then
        {$pathinfo['filename']}.super.ctor(self, ...);
    end

STR;

    if ($SyncNode) {
        $uiString .= "\tself:loadImageSync();\n";
    }

    if ($Mask) {
        $uiString .= "\tself:setBackgroundOpacity($mask_opacity);\n";
    }
    // if ($Type == 'BaseNode') {
    //     $uiString .= "\tself:setContentSize({$GLOBALS['designSize'][0]}, {$GLOBALS['designSize'][1]});\n";
    // }
    $uiString .= "end\n";

    $uiString .= <<<STR

function {$pathinfo['filename']}:initView()
    self.__LAYER_NAME = '{$moduleName}';
    local local_params = {};
{$ObjectDataString}end


STR;
    if (!$SyncNode) {
        $uiString .= "function {$pathinfo['filename']}:loadImage()\n";
    }
    else{
        $uiString .= "function {$pathinfo['filename']}:loadImageSync()\n";
    }
    foreach ($GLOBALS['UsedResources'] as $key => $value) {
        $p = pathinfo($key);
        if ($p['extension'] == 'jpg' || $p['extension'] == 'png' || $p['extension'] == 'ccz' || $p['extension'] == 'pvr') {
            $name = "'$key'";

            if ($p['extension'] != 'jpg') {
                //$name = getImageSuffix($name);
            }

            if (strpos($name, 'Default') === 1) {
                # code...
            }
            else
            {

                if (!($key == 'uires/public/font/sheet.png' || $key == 'uires/public/sheet/sheet.png' || $key == 'uires/public/sheet8/sheet.png' || $key == 'uires/public/other/sheet.png')) {
                   $uiString .= "\ttable.insert(self.m_TextureList, $name);\n";
                }
            }
        }
    }

    if (!$SyncNode) {
        $uiString .= "\ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self.m_TextureList);\nend";
    }
    else{

        $uiString .= <<<STR
    if (table.nums(self.m_TextureList) > 0) then
        ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self.m_TextureList);
    else
        self:onImageLoadCompleted();
    end
end
STR;
    }



    $uiString .= <<<STR


function {$pathinfo['filename']}:loadPlistResources()

STR;

    foreach ($GLOBALS['UsedResources'] as $key => $value) {
        $p = pathinfo($key);
        if ($p['extension'] == 'plist') {
            $uiString .= "\ttable.insert(self.m_PlistList, '$key');\n";
        }
    }
        $uiString .= <<<STR
    if (table.nums(self.all_plists) > 0) then
        ResourcesMgr:getInstance():addSpriteFramesWithFiles(self.m_PlistList)
    end
end
STR;

    $callback = parseCallback($GLOBALS['callback'], "{$pathinfo['filename']}");
    $uiString .= <<<STR

$callback
return {$pathinfo['filename']};



STR;
    file_put_contents("lua/$exportDir{$pathinfo['filename']}Auto.lua", $uiString);

    
}


// _copy("$CURRENT_DIR/../lua/*", "$CURRENT_DIR/../../scripts");
my_echo(">>>>>>>>>>>>>导出结束<<<<<<<<<<<<<<<\n");

?>