<?php
include_once 'Button.php';


function parseAllNodes($array, $parent, &$string)
{
    $GUID = $GLOBALS['GUID'] ++ ;
    if ($array['ctype'] == 'SpriteObjectData') 
    {
        if ($array['UserData'] && !$array['first']) {
            $list = split(',', $array['UserData']);
            $list1 = array();
            foreach ($list as $key => $value) {
                $list1[] = split('=', $value);
            }

            foreach ($list1 as $key => $value) 
            {
                if ($value[0] == 'class') 
                {
                    $array['ctype'] = $value[1];   
                }
                else
                {
                    $array[$value[0]] = $value[1];
                }
            }
            $array['first'] = true;
            parseAllNodes($array, $parent, $string);
            return;
        }

        $GLOBALS['varList']['Sprite'] = 'cc.';


        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $name = "'{$array['FileData']['Path']}'";
        if ($array['FileData']['Type'] == 'Default') {
            $name = '';
        }
        if ($array['FileData']['Plist'] == '')
        {
            // //$name = getImageSuffix($name);
            $string .= "Sprite:create($name);\n";
        }
        else
        {
            $string .= "Sprite:createWithSpriteFrameName($name);\n";
        }

        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string );
        parseBlendFunc($node, $array, $string);
        parseColor($node, $array, $string, 1);
        parseOpacity($node, $array, $string);
        parseVisible($node, $array, $string);
        parseFlipX($node, $array, $string);
        parseFlipY($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'MapNode') 
    {
        $GLOBALS['varList']['MapNode'] = 'ugod.';

        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = MapNode:create({$array['type']});\n";


        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        parseAddChild($array, $node, $parent, $string);
    }
    elseif ($array['ctype'] == 'TextObjectData') {
        $GLOBALS['varList']['Label'] = 'cc.';

        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $IsCustomSize = array_key_exists('IsCustomSize', $array);
        $size = getContentSize($array);
        if (!$IsCustomSize) {
            $size = [0,0];
        }

        $HorizontalAlignmentType = getHorizontalAlignmentType($array);
        $VerticalAlignmentType = getVerticalAlignmentType($array);
        $Text = getText($array, "");
        $list = getTTFName($array);

        $height = $size[1];
        $width = $size[0];
        $UserData = $array['UserData'];
        $isRichText = false;
        if ($UserData && $UserData != "") {
            $list1 = explode(",", $UserData);

            foreach ($list1 as $key => $value) {
                if ($value == "WinHeight" && $height != 0) {
                    $d_height = $GLOBALS['designSize'][1] - $size[1];
                    $height = "WinSize.height - $d_height";
                }
                elseif ($value == "WinWidth" && $width != 0) {
                    $d_width = $GLOBALS['designSize'][0] - $size[0];
                    $width = "WinSize.width - $d_width";

                }
                elseif ($value == 'RichText') {
                    $isRichText = true;
                }
            }
        }



        if ($isRichText) {
            $GLOBALS['varList']['RichText'] = 'ugod.';
            $string .= "RichText:create();\n";
            $string .= "\t$node:setText($Text);\n";
            $string .= "\t$node:setDimensionsSize({width = $width, height = $height});\n";
            $string .= "\t$node:setDefaultHorizontalAlignment($HorizontalAlignmentType);\n";
            $string .= "\t$node:setDefaultVerticalAlignment($VerticalAlignmentType);\n";
            $string .= "\t$node:setDefaultFontSize({$array['FontSize']});\n";
            $string .= "\t$node:setDefaultFontName($list[1]);\n";
            parseOutline($node, $array, $string, 'enableDefaultOutline');
            parseColor($node, $array, $string, 3);
            $anchorPoint = parseAnchorPoint($node, $array, $string, [0, 0]);

        }
        else
        {
            if ($list[0] == 'false') {
            $string .= "Label:createWithSystemFont($Text, $list[1], {$array['FontSize']}, {width = $width, height = $height}, $HorizontalAlignmentType, $VerticalAlignmentType);\n";
            }
            else
            {
                $string .= "Label:createWithTTF($Text, $list[1], {$array['FontSize']}, {width = $width, height = $height}, $HorizontalAlignmentType, $VerticalAlignmentType);\n";
            }

            parseColor($node, $array, $string, 2);
            parseOutline($node, $array, $string);
            parseShadow($node, $array, $string);
            if (array_key_exists('UserData', $array)) {
                $UserData = $array['UserData'];
                if ($UserData == 'stroke') {
                    $string .= "\t$node:enableOutline({r = 0, g = 0, b = 0, a = 255}, 1);\n";
                }
            }
            if ($size[0] > 0) {
                $string .= "\t$node:setLineBreakWithoutSpace(true);\n";
            }

            $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);

        }
        
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        $string .= "\tself.children['$nodeName'] = $node;\n";
        setGlobalsActionTag($array, $node);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseVisible($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);



        parseAddChild($array, $node, $parent, $string);
    }
    elseif ($array['ctype'] == 'PanelObjectData') {
        $GLOBALS['varList']['LayerColor'] = 'cc.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";


        $color = [255,255,255, 0];
        if (array_key_exists('R', $array['SingleColor']) )
        {
            $color[0] = $array['SingleColor']['R'];
        }

        if ( array_key_exists('G', $array['SingleColor']) )
        {
            $color[1] = $array['SingleColor']['G'];
        }
        if ( array_key_exists('B', $array['SingleColor']) )
        {
            $color[2] = $array['SingleColor']['B'];
        }

        if (array_key_exists('ComboBoxIndex', $array) && array_key_exists('BackColorAlpha', $array))
        {
            $color[3] = $array['BackColorAlpha'];
        }

        $string .= "LayerColor:create({r = {$color[0]}, g = {$color[1]}, b = {$color[2]}, a = {$color[3]}});\n";
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        if (strpos($array['Name'], '__FULL_LAYER') === false) 
        {
            $size = getContentSize($array);

            $width = $size[0];
            $height = $size[1];
            $UserData = $array['UserData'];
            if ($UserData && $UserData != "") {
                $list1 = explode(",", $UserData);

                foreach ($list1 as $key => $value) {
                    if ($value == "WinHeight" && $height != 0) {
                        $d_height = $GLOBALS['designSize'][1] - $size[1];
                        $height = "WinSize.height - $d_height";
                    }
                    elseif ($value == "WinWidth" && $width != 0) {
                        $d_width = $GLOBALS['designSize'][0] - $size[0];
                        $width = "WinSize.width - $d_width";

                    }
                }
            }

            $string .= "\t$node:setContentSize($width, $height);\n";
        }
        else
        {
            $string .= "\t$node:setContentSize(WinSize);\n";
        }
        setGlobalsActionTag($array, $node);
        parsePosition($node, $parent, $array, [0,0], $string);
        parseScale($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);  

        parseAddChild($array, $node, $parent, $string);
    }
    elseif ($array['ctype'] == 'ImageViewObjectData') {
        if ($array['UserData'] && !$array['first']) {
            $list = split(',', $array['UserData']);
            $list1 = array();
            foreach ($list as $key => $value) {
                $list1[] = split('=', $value);
            }

            foreach ($list1 as $key => $value) 
            {
                if ($value[0] == 'class') 
                {
                    $array['ctype'] = $value[1];   
                }
                else
                {
                    $array[$value[0]] = $value[1];
                }
            }
            $array['first'] = true;
            parseAllNodes($array, $parent, $string);
            return;
        }

        $GLOBALS['varList']['Scale9Sprite'] = 'cc.';
        // $GLOBALS['varList']['DecorateBox'] = 'ugod.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $name = "'{$array['FileData']['Path']}'";
        if ($array['FileData']['Type'] == 'Default') {
            $name = nil;
        }

        $size = getContentSize($array);


        // if (array_key_exists('Scale9Enable', $array)) 
        {
            $rect = ['x' => 0, 'y' => 0, 'width' => 0, 'height' => 0];
            if (array_key_exists('Scale9OriginX', $array)) {
                $rect['x'] = $array['Scale9OriginX'];
            }
            if (array_key_exists('Scale9OriginY', $array)) {
                $rect['y'] = $array['Scale9OriginY'];
            }
            if (array_key_exists('Scale9Width', $array)) {
                $rect['width'] = $array['Scale9Width'];
            }
            if (array_key_exists('Scale9Height', $array)) {
                $rect['height'] = $array['Scale9Height'];
            }

            $rect_string = "{x = {$rect['x']}, y = {$rect['y']}, width = {$rect['width']}, height = {$rect['height']}}";

            if ($array['FileData']['Plist'] == '')
            {
                //$name = getImageSuffix($name);
                $string .= "Scale9Sprite:create($rect_string, $name);\n";
            }
            else
            {
                $string .= "Scale9Sprite:createWithSpriteFrameName($name, $rect_string);\n";
            }
        }
        // else
        // {
        //     $plist = 'true';
        //     if ($array['FileData']['Plist'] == '')
        //     {
        //         //$name = getImageSuffix($name);
        //         $string .= "DecorateBox:create($name, false,  $size[0], $size[1]);\n";
        //     }
        //     else
        //     {
        //         $string .= "DecorateBox:create($name, true,  $size[0], $size[1]);\n";   
        //     }
        // }

        $UserData = $array['UserData'];

        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";

        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseColor($node, $array, $string, 1);
        parseVisible($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);

        $height = $size[1];
        $width = $size[0];
        if ($UserData && $UserData != "") {
            $list = explode(",", $UserData);

            foreach ($list as $key => $value) {
                if ($value == "WinHeight") {
                    $d_height = $GLOBALS['designSize'][1] - $size[1];
                    $height = "WinSize.height - $d_height";
                }
                elseif ($value == "WinWidth") {
                    $d_width = $GLOBALS['designSize'][0] - $size[0];
                    $width = "WinSize.width - $d_width";

                }
            }
        }

        $string .= "\t$node:setPreferredSize({width = $width, height = $height});\n";
        
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'SingleNodeObjectData') {
        if ($array['Name'] != '__SELECTED_SCALE') {
            $GLOBALS['varList']['Node'] = 'cc.';
            $nodeName = getLocalName($array,$parent[1]);
            $parent[1] = $nodeName;
            $node = "local_params[$GUID]";
            $string .= "\t$node = ";

            $string .= "Node:create();\n";
            $string .= "\tself.children['$nodeName'] = $node;\n";
            $string .= "\t$node.__children = self.children;\n";
            $string .= "\t$node.__name = '$nodeName';\n";
            setGlobalsActionTag($array, $node);
            parsePosition($node, $parent, $array, [0,0], $string);
            parseScale($node, $array, $string);
            parseZOrder($node, $array, $string);
            parseVisible($node, $array, $string);
            parseRotation($node, $array, $string);  
        }
        parseAddChild($array, $node, $parent, $string);
    }


    elseif ($array['ctype'] == 'ParticleObjectData') {
        $GLOBALS['varList']['ParticleSystemQuad'] = 'cc.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $string .= "ParticleSystemQuad:create('{$array['FileData']['Path']}');\n";
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";

        setGlobalsActionTag($array, $node);
        parsePosition($node, $parent, $array, [0,0], $string);
        parseScale($node, $array, $string);
        parseBlendFunc($node, $array, $string);
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'LoadingBarObjectData') {
        $GLOBALS['varList']['ProgressTimer'] = 'cc.';
        $GLOBALS['varList']['Sprite'] = 'cc.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $name = "'{$array['ImageFileData']['Path']}'";
        if ($array['ImageFileData']['Plist'] == '')
        {
            //$name = getImageSuffix($name);
            $string .= "ProgressTimer:create(Sprite:create($name));\n";
        }
        else
        {
            $string .= "ProgressTimer:create(Sprite:createWithSpriteFrameName($name));\n";
        }
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";

        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);

        if (array_key_exists('UserData', $array)) {
            $UserData = $array['UserData'];

            if ($UserData == 'left->right') {
                $string .= "\t$node:setType(1);\n";
                $string .= "\t$node:setMidpoint({x=0, y=0});\n";
                $string .= "\t$node:setBarChangeRate({x=1, y=0});\n";
            }
            elseif ($UserData == 'right->left') {
                $string .= "\t$node:setType(1);\n";
                $string .= "\t$node:setMidpoint({x=1, y=0});\n";
                $string .= "\t$node:setBarChangeRate({x=1, y=0});\n";
            }
            elseif ($UserData == 'bottom->top') {
                $string .= "\t$node:setType(1);\n";
                $string .= "\t$node:setMidpoint({x=0, y=0});\n";
                $string .= "\t$node:setBarChangeRate({x=0, y=1});\n";
            }
            elseif ($UserData == 'top->bottom') {
                $string .= "\t$node:setType(1);\n";
                $string .= "\t$node:setMidpoint({x=0, y=1});\n";
                $string .= "\t$node:setBarChangeRate({x=0, y=1});\n";
            }
            elseif ($UserData == 'radial->CW') {
                $string .= "\t$node:setType(0);\n";
                $string .= "\t$node:setMidpoint({x=0.5, y=0.5});\n";
                $string .= "\t$node:setReverseDirection(false);\n";
            }
            elseif ($UserData == 'radial->CCW') {
                $string .= "\t$node:setType(0);\n";
                $string .= "\t$node:setMidpoint({x=0.5, y=0.5});\n";
                $string .= "\t$node:setReverseDirection(true);\n";
            }
        }
        else
        {
            if (array_key_exists('ProgressType', $array)) {
                $string .= "\t$node:setType(1);\n";
                $string .= "\t$node:setMidpoint({x=1, y=0});\n";
                $string .= "\t$node:setBarChangeRate({x=1, y=0});\n";
            }
            else
            {
                $string .= "\t$node:setType(1);\n";
                $string .= "\t$node:setMidpoint({x=0, y=0});\n";
                $string .= "\t$node:setBarChangeRate({x=1, y=0});\n";
            }
        }

        $ProgressInfo = 80;
        if (array_key_exists('ProgressInfo', $array)) {
            $ProgressInfo = $array['ProgressInfo'];
        }
        $string .= "\t$node:setPercentage($ProgressInfo);\n";
        parseColor($node, $array, $string, 1);
        parseScale($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseBlendFunc($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'TextAtlasObjectData') {
        $GLOBALS['varList']['Label'] = 'cc.';

        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $Text = "[[{$array['LabelText']}]]";

        $StartChar = ord($array['StartChar']);
        $name = "'{$array['LabelAtlasFileImage_CNB']['Path']}'";
        //$name = getImageSuffix($name);
        $string .= "Label:createWithCharMap($name, {$array['CharWidth']}, {$array['CharHeight']}, $StartChar);\n";
        $string .= "\t$node:setString($Text);\n";
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale( $node, $array, $string );
        parseColor($node, $array, $string, 1);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'TextBMFontObjectData') {
        if (!array_key_exists('LabelBMFontFile_CNB', $array)) {
            die(">>>>>>>>请设置BMFONT文件,$parent[3].lua,{$array['Name']}\n");
            return;
        }
        $GLOBALS['varList']['Label'] = 'cc.';

        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $Text = getText($array, $parent[3]);

        $string .= "Label:createWithBMFont('{$array['LabelBMFontFile_CNB']['Path']}', $Text);\n";

        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale( $node, $array, $string );
        parseColor($node, $array, $string, 1);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'TextFieldObjectData') {
        $GLOBALS['require']['InputView'] = 'common.ui.';

        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $size = getContentSize($array);

        $fontName = getTTFName($array);
        $textColor = getColor3String($array['CColor']);

        $anchorPoint = [0,0];
        if (array_key_exists('AnchorPoint', $array)) 
        {
            
            if ( array_key_exists('ScaleX', $array['AnchorPoint']) )
            {
                $anchorPoint[0] = $array['AnchorPoint']['ScaleX'];
            }

            if ( array_key_exists('ScaleY', $array['AnchorPoint']) )
            {
                $anchorPoint[1] = $array['AnchorPoint']['ScaleY'];
            }
        }


        $string .= "InputView:create({width = $size[0], height = $size[1], fontSize = {$array['FontSize']}, text = [[{$array['LabelText']}]], placeHolderText = [[{$array['PlaceHolderText']}]], fontName = $fontName[1], ttf = $fontName[0], textColor = $textColor, anchor_point = {x = {$anchorPoint[0]}, y = {$anchorPoint[1]}}});\n";

        if ($array['PasswordEnable']) {
            $string .= "\t$node:setInputFlag(0);\n";
            if ($array['PasswordStyleText']) {
                $string .= "\t$node:setPasswordStyleText('{$array['PasswordStyleText']}');\n";
            }
        }

        if ($array['MaxLengthEnable']) {
            $string .= "\t$node:setMaxLength({$array['MaxLengthText']});\n";
        }
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        if (array_key_exists('CallBackType', $array))
        {
            if ($array['CallBackType'] == 'Click') {
                $GLOBALS['callback']["{$array['CallBackName']}"] = 'InputView';
                $string .= "\t$node:setCallback({target = self, func = self._{$array['CallBackName']}});\n";
            }
        }
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'SliderObjectData') {
        $GLOBALS['varList']['Slider'] = 'ugod.';

        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $Plist1 = isPlist($array['BackGroundData']);
        $Plist2 = isPlist($array['ProgressBarData']);
        $Plist3 = isPlist($array['BallNormalData']);
        $Plist4 = isPlist($array['BallPressedData']);
        $Plist5 = isPlist($array['BallDisabledData']);

        $size = getContentSize($array);
        $string .= "Slider:create({width = {$size[0]}, height = {$size[1]}}, '{$array['BackGroundData']['Path']}', $Plist1, '{$array['ProgressBarData']['Path']}', $Plist2, '{$array['BallNormalData']['Path']}', $Plist3, '{$array['BallPressedData']['Path']}', $Plist4, '{$array['BallDisabledData']['Path']}', $Plist5);\n";
        
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        // $string .= "\t$node:setPercent({$array['PercentInfo']});\n";
        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'ListViewObjectData') {
        $GLOBALS['varList']['TableView'] = 'ugod.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $size = getContentSize($array);
        $width = $size[0];
        $height = $size[1];
        $UserData = $array['UserData'];
        if ($UserData && $UserData != "") {
            $list1 = explode(",", $UserData);

            foreach ($list1 as $key => $value) {
                if ($value == "WinHeight" && $height != 0) {
                    $d_height = $GLOBALS['designSize'][1] - $size[1];
                    $height = "WinSize.height - $d_height";
                }
                elseif ($value == "WinWidth" && $width != 0) {
                    $d_width = $GLOBALS['designSize'][0] - $size[0];
                    $width = "WinSize.width - $d_width";

                }
            }
        }

        if (!array_key_exists("CallBackName", $array))
        {
            die(convertString("tableview 必须设置callback,{$GLOBALS['filepath']}\n"));
            return;
        }
        $CallBackName = $array['CallBackName'];


        $string .= "TableView:create(function(event_name, tableview, param1, param2, param3)
        if self.$CallBackName then 
            return self:$CallBackName(event_name, tableview, param1, param2, param3);
        end
        -- eventName == 'tableCellSizeForIndex' -- parma1在这边是cell idx 
        -- eventName == 'tableCellTouched' -- -- parma1在这边是cell, param2在这边是touch pointX,param3在这边是touch pointY
        -- eventName == 'tableCellAtIndex' -- parma1在这边是cell idx 
    end,{width = $width, height = $height});\n";
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        if (array_key_exists('DirectionType', $array)) {
            $string .= "\t$node:setDirection(1);\n";
        }
        else {
            $string .= "\t$node:setDirection(0);\n";
        }

        $anchorPoint = parseAnchorPoint($node, $array, $string, [0, 0]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseAddChild($array, $node, $parent, $string);

    }
    elseif ($array['ctype'] == 'ScrollViewObjectData') {
        $GLOBALS['varList']['ScrollView'] = 'ugod.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $CallBackName = "";
        if (array_key_exists("CallBackName", $array))
        {
            $CallBackName = $array['CallBackName'];
        }

        $size = getContentSize($array);
        $width = $size[0];
        $height = $size[1];
        $UserData = $array['UserData'];
        if ($UserData && $UserData != "") {
            $list1 = explode(",", $UserData);

            foreach ($list1 as $key => $value) {
                if ($value == "WinHeight" && $height != 0) {
                    $d_height = $GLOBALS['designSize'][1] - $size[1];
                    $height = "WinSize.height - $d_height";
                }
                elseif ($value == "WinWidth" && $width != 0) {
                    $d_width = $GLOBALS['designSize'][0] - $size[0];
                    $width = "WinSize.width - $d_width";

                }
            }
        }
        if ($CallBackName != "") {
            $string .= "ScrollView:create(function(eventName, tableView)
        if self.$CallBackName then 
            return self:$CallBackName(eventName, tableView);
        end
    end,{width = $width, height = $height});\n";
        }
        else
        {
            $string .= "ScrollView:create({width = $width, height = $height});\n";
        }

        
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0, 0]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseZOrder($node, $array, $string);

        if ($array['ScrollDirectionType'] == 'Horizontal') {
            $string .= "\t$node:setDirection(0);\n";
        }
        elseif ($array['ScrollDirectionType'] == 'Vertical') {
            $string .= "\t$node:setDirection(1);\n";
        }
        $string .= "\t$node:setContentSize({width = {$array['InnerNodeSize']['Width']}, height = {$array['InnerNodeSize']['Height']}});\n";
        $string .= "\t$node:jumpToStartDisplay();\n";
        parseAddChild($array, $node, $parent, $string);

    }

    elseif ($array['ctype'] == 'PageViewObjectData') {
        $GLOBALS['varList']['PageView'] = 'ugod.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $CallBackName = "";
        if (array_key_exists("CallBackName", $array))
        {
            $CallBackName = $array['CallBackName'];
        }

        $size = getContentSize($array);

        $width = $size[0];
        $height = $size[1];
        $UserData = $array['UserData'];
        if ($UserData && $UserData != "") {
            $list1 = explode(",", $UserData);

            foreach ($list1 as $key => $value) {
                if ($value == "WinHeight" && $height != 0) {
                    $d_height = $GLOBALS['designSize'][1] - $size[1];
                    $height = "WinSize.height - $d_height";
                }
                elseif ($value == "WinWidth" && $width != 0) {
                    $d_width = $GLOBALS['designSize'][0] - $size[0];
                    $width = "WinSize.width - $d_width";

                }
            }
        }

                if ($CallBackName != "") {
            $string .= "PageView:create(function(pageView, currentPage, totalPage)
        if self.$CallBackName then 
            return self:$CallBackName(pageView, currentPage, totalPage);
        end
    end,{width = $width, height = $height});\n";
        }
        else
        {
            $string .= "PageView:create({width = $width, height = $height});\n";
        }

        
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0, 0]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseZOrder($node, $array, $string);

        // if ($array['ScrollDirectionType'] == 'Horizontal') {
        //     $string .= "\t$node:setDirection(0);\n";
        // }
        // elseif ($array['ScrollDirectionType'] == 'Vertical') {
        //     $string .= "\t$node:setDirection(1);\n";
        //     $string .= "\t$node:setContentOffset($node:minContainerOffset());\n";
        // }
        parseAddChild($array, $node, $parent, $string);

    }


    elseif ($array['ctype'] == 'CheckBoxObjectData') 
    {

        $GLOBALS['require']['CheckBox'] = 'common.ui.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";


        $list = parseCheckBox($array);

        $string .= <<<STR
CheckBox:create($list[0],
            $list[1],
            $list[2],
            $list[3]);

STR;

        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0,0]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        if (array_key_exists('CallBackType', $array))
        {
            if ($array['CallBackType'] == 'Click') {
                $GLOBALS['callback']["{$array['CallBackName']}"] = 'checkbox';
                $string .= "\t$node:setCallback({target = self, func = self._{$array['CallBackName']}});\n";
            }
        }

        parseAddChild($array, $node, $parent, $string);
    }
// CheckBoxObjectData
    elseif ($array['ctype'] == 'ButtonObjectData') 
    {
        $GLOBALS['require']['Button'] = 'common.ui.';
        $nodeName = getLocalName($array,$parent[1]);
        $parent[1] = $nodeName;
        $node = "local_params[$GUID]";
        $string .= "\t$node = ";

        $Text = getText($array, "", 'ButtonText');

        $list = parseButton($array, $Text);

        $string .= <<<STR
Button:create($list[0],
            $list[1],
            $list[2],
            $list[3]);

STR;
        
        $string .= "\tself.children['$nodeName'] = $node;\n";
        $string .= "\t$node.__children = self.children;\n";
        $string .= "\t$node.__name = '$nodeName';\n";
        setGlobalsActionTag($array, $node);
        $anchorPoint = parseAnchorPoint($node, $array, $string, [0.5,0.5]);
        parsePosition($node, $parent, $array, $anchorPoint, $string);
        parseScale($node, $array, $string, true);
        parseVisible($node, $array, $string);
        parseOpacity($node, $array, $string);
        parseZOrder($node, $array, $string);
        parseRotation($node, $array, $string);
        if (array_key_exists('CallBackType', $array))
        {
            if ($array['CallBackType'] == 'Click') {
                $GLOBALS['callback']["{$array['CallBackName']}"] = 'button';
                $string .= "\t$node:setCallback({target = self, func = self._{$array['CallBackName']}});\n";
            }
        }
            //         "CallBackType": "Click",
            // "CallBackName": "onCallback",

        parseAddChild($array, $node, $parent, $string);
    }

    elseif ($array['ctype'] == 'ProjectNodeObjectData') {
        $filepath = 'json/' . $array['FileData']['Path'];
        $data = json_decode(file_get_contents($filepath),true);
        $pathinfo = pathinfo($filepath);
        $exportDir = $data['Content']['Content']['ObjectData']['UserData'];
        $moduleName = str_replace('/', '.', $exportDir) . ".{$pathinfo['filename']}Auto";

        if ($data['Type'] != 'Skeleton') {
            $GLOBALS['varList']['Node'] = 'cc.';
            $nodeName = getLocalName($array,$parent[1]);
            $parent[1] = $nodeName;
            $node = "local_params[$GUID]";
            $string .= "\t$node = require('$moduleName'):create();\n";
            $string .= "\tself.children['$nodeName'] = $node;\n";
            $string .= "\t$node.__name = '$nodeName';\n";
            setGlobalsActionTag($array, $node);
            parsePosition($node, $parent, $array, [0,0], $string);
            parseScale($node, $array, $string);
            $string .= "\t$parent[0]:addChild($node);\n\n";

            // getUsedResources($GLOBALS['UsedResources'], $data['Content']['Content']);
            // if (array_key_exists('Children', $data['Content']['Content']['ObjectData'])) {
            //     $Children = $data['Content']['Content']['ObjectData']['Children'];

            //     foreach ($Children as $value) {
            //         parseAllNodes($value, [$node, $node], $string );
            //     }
            // }
        }
        else
        {
            getUsedResources($GLOBALS['UsedResources'], $data['Content']['Content']);
            $GLOBALS['varList']['CSLoader'] = 'cc.';
            $node = getLocalName($array, $parent[2])[0];
            $string .= "\t" . getLocalName($array, $parent[2])[1];
            $p = pathinfo($array['FileData']['Path']);
            $string .= "CSLoader:createNode('{$p['dirname']}/{$p['filename']}.csb');\n";
            setNodeSearch($array, $string, $parent[1], $node);
            setGlobalsActionTag($array, $node);
            $string .= "\t$node.m_actionTimeline = CSLoader:createTimeline('{$p['dirname']}/{$p['filename']}.csb');\n";
            parsePosition($node, $parent, $array, [0,0], $string);
            parseScale($node, $array, $string);
            $string .= "\t$parent[0]:addChild($node);\n\n";
        }

    }
}




$files = array();

parsedir("$CURRENT_DIR/../json",$files);

_rmdir("$CURRENT_DIR/../lua");

foreach ($files as $filepath) {
    $pathinfo = pathinfo($filepath);

    if ($pathinfo['extension'] != 'json') {
        continue;
    }   

    $GLOBALS['varList'] = array();
    $GLOBALS['varList']['Layer'] = 'cc.';
    $GLOBALS['varList']['Node'] = 'cc.';
    $GLOBALS['varList']['LayoutComponent'] = 'ccui.';
    $GLOBALS['varList']['ResourceUtils'] = 'ugod.';
    $GLOBALS['varList']['Director'] = 'cc.';
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

    $GLOBALS['designSize'] = getContentSize($data['Content']['Content']['ObjectData']);

    if (!file_exists("lua/$exportDir")) {
        mkdir("lua/$exportDir",0777,true);
    }

    my_echo(">>>>>>>>>>开始导出$exportDir{$pathinfo['filename']}.lua\n");

    $moduleName = str_replace('/', '.', $exportDir);
    $GLOBALS['moduleName'] = $moduleName;
    $GLOBALS['filename'] = $pathinfo['filename'];

    getUsedResources($GLOBALS['UsedResources'], $data['Content']['Content']);
    $GLOBALS['localizedPrefix'] = "$moduleName{$pathinfo['filename']}";
    $ObjectDataString = "";

    foreach ($Children as $value) {
        parseAllNodes($value, ['self',''], $ObjectDataString );
    }

    $repeatNode = array();
    foreach ($GLOBALS['ActionTag'] as $key => $value) {
        if (!array_key_exists($value, $repeatNode)) {
            $repeatNode[$value] = 'true';
        }
        else
        {
            // $name = substr($value, 4);
            die(convertString("存在相同的节点名字:$name,{$filepath}\n"));
            return;
        }
    }
    parseAnimation($data['Content']['Content'], $ObjectDataString, 'self.children');

    $tmp = "";
    foreach ($GLOBALS['varList'] as $key => $value) {
        $tmp .= "local $key = $value$key;\n";
    }

    foreach ($GLOBALS['require'] as $key => $value) {
        $tmp .= "local $key = require('$value$key');\n";
    }

    $uiString = <<<STR
local class,cc,ccui,ccs,ugod,pairs,error,ipairs,table,type,print,select,assert,require,string,tostring = 
      class,cc,ccui,ccs,ugod,pairs,error,ipairs,table,type,print,select,assert,require,string,tostring;
$tmp
local WinSize = Director:getInstance():getWinSize();

module('$moduleName{$pathinfo['filename']}Auto');
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
        $uiString .= "\tself:setBackground($mask_opacity);\n";
    }
    // if ($Type == 'BaseNode') {
    //     $uiString .= "\tself:setContentSize({$GLOBALS['designSize'][0]}, {$GLOBALS['designSize'][1]});\n";
    // }
    $uiString .= "end\n";

    $uiString .= <<<STR

function {$pathinfo['filename']}:initView()
    self.__layer_name = '{$pathinfo['filename']}';
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
                   $uiString .= "\tugod.addResource('$key');\n";
                   $uiString .= "\ttable.insert(self.all_textures, $name);\n";
                }
            }
        }
    }

    if (!$SyncNode) {
        $uiString .= "\tResourceUtils:getInstance():addImageAsync(function()self.onImageLoadCompleted(self)end, self.all_textures);\nend";
    }
    else{

        $uiString .= <<<STR
    if (table.nums(self.all_textures) > 0) then
        ResourceUtils:getInstance():addImageSync(function()self.onImageLoadCompleted(self)end, self.all_textures);
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
            if (!($key == 'uires/public/font/sheet.plist' || $key == 'uires/public/sheet/sheet.plist' || $key == 'uires/public/sheet8/sheet.plist' || $key == 'uires/public/other/sheet.plist')) {

                $uiString .= "\tugod.addResource('$key');\n";
                $uiString .= "\ttable.insert(self.all_plists, '$key');\n";
            }
        }
    }
        $uiString .= <<<STR
    if (table.nums(self.all_plists) > 0) then
        ResourceUtils:getInstance():addSpriteFramesWithFiles(self.all_plists)
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


_copy("$CURRENT_DIR/../lua/*", "$CURRENT_DIR/../../scripts");
my_echo(">>>>>>>>>>>>>导出结束<<<<<<<<<<<<<<<\n");

?>