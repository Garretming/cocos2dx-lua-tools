<?php


// __COMMON
// __NORMAL
// __SELECTED
// __DISABLED

$CURRENT_DIR = __DIR__;
function my_echo($string)
{
	if (php_uname('s') == 'Darwin') {
		echo $string;
	}
	else
	{
		echo iconv('utf-8', 'gb2312', $string);
	}
}

function convertString($string)
{
	if (php_uname('s') == 'Darwin') {
		return $string;
	}
	else
	{
		return iconv('utf-8', 'gb2312', $string);
	}
}


$CURRENT_DIR = __DIR__;
$PHP = "";
if (PHP_OS == 'Darwin') {
	$PHP = 'php';
}
else
{

}


function _rmdir($dir, $isfile = false)
{
	$dir = _convert2CurrentSysPath($dir);

	if (file_exists($dir)) {
		if (PHP_OS == 'Darwin') {
			system("rm -rf \"$dir\"");
		}
		else
		{
			if ($isfile) {
				system("DEL /F/A/Q $dir");
			}
			else
			{
				system("RD /S/Q $dir");
			}
		}
	}
}

function _mkdir($dir)
{
	$dir = _convert2CurrentSysPath($dir);

	mkdir($dir, 0777, true);
}

function _convert2CurrentSysPath($path)
{
	return str_replace('/', DIRECTORY_SEPARATOR, $path);
}


function _copy($src,$dst, $isFiles = true)
{
	$src = _convert2CurrentSysPath($src);
	$dst = _convert2CurrentSysPath($dst);

	if (PHP_OS == 'Darwin') {
		system("cp -rf $src $dst");
	}
	else
	{
		if ($isFiles)
		{
			system("echo F|xcopy /E /F /Y $src $dst");
		}
	}
}



function parsedir($baseDir, &$files, &$path=null)
{
    $items = scandir($baseDir);
    if (!$items) {
        return;
    }
    $path[] = $baseDir;
    foreach ($items as $value) {
        if ($value[0] != ".") {
            if (is_dir($baseDir."/".$value)) {
                parsedir($baseDir."/".$value,$files,$path);
            }
            else
            {
                $files[] = $baseDir."/".$value;
            }
        }

    }
}

function getUsedResources(&$UsedResources, $array)
{
	$list = $array['UsedResources'];
	if ($list) {
		foreach ($list as $key => $value) {
			$tmp = str_replace('../', '', $value);
			$UsedResources[$tmp] = true;
		}
	}
}

function getContentSize($array)
{
    $ret = [0,0];
    if (is_array($array)) {
	    if (array_key_exists('Size',$array)) {
	        if ( array_key_exists('X', $array['Size']) )
	        {
	            $ret[0] = $array['Size']['X'];
	        }
	        if ( array_key_exists('Y', $array['Size']) )
	        {
	            $ret[1] = $array['Size']['Y'];
	        }

	    }
    }
    return $ret;
}

function parseCoordinate($array)
{
    $HorizontalEdge = 0;
    $VerticalEdge = 0;

    if (array_key_exists('VerticalEdge',$array) && $array['VerticalEdge'] == 'TopEdge') 
    {
        $VerticalEdge = 1;
    }
    elseif (array_key_exists('VerticalEdge',$array) && $array['VerticalEdge'] == 'BothEdge') 
    {
        $VerticalEdge = 2;
    }
    elseif (array_key_exists('VerticalEdge',$array) && $array['VerticalEdge'] == 'BottomEdge') 
    {
        $VerticalEdge = 3;
    }

    if (array_key_exists('HorizontalEdge',$array) && $array['HorizontalEdge'] == 'LeftEdge') 
    {
        $HorizontalEdge = 1;
    }
    elseif (array_key_exists('HorizontalEdge',$array) && $array['HorizontalEdge'] == 'BothEdge') 
    {
        $HorizontalEdge = 2;
    }
    elseif (array_key_exists('HorizontalEdge',$array) && $array['HorizontalEdge'] == 'RightEdge') 
    {
        $HorizontalEdge = 3;
    }

    if ($VerticalEdge == 2 && $HorizontalEdge == 2) {
    	$ret = 0;
    }
    elseif ($VerticalEdge ==1 && $HorizontalEdge == 2 ) {
    	$ret = 1;
    }
    elseif ($VerticalEdge == 1 && ($HorizontalEdge == 1 || $HorizontalEdge == 0)) {
    	$ret = 2;
    }
    elseif ($VerticalEdge == 2 && ($HorizontalEdge == 0 || $HorizontalEdge == 1)) {
    	$ret = 3;
    }
    elseif (($VerticalEdge == 0 && $HorizontalEdge == 0 ) || ($VerticalEdge == 3 && $HorizontalEdge == 1 ) || ($VerticalEdge == 0 && $HorizontalEdge == 1 ) || ($VerticalEdge == 3 && $HorizontalEdge == 0 ) ) {
    	$ret = 4;
    }
    if ($HorizontalEdge == 2 && ($VerticalEdge == 3  || $VerticalEdge == 0)) {
        $ret = 5;
    }
    elseif ($HorizontalEdge == 3 && ($VerticalEdge == 0 || $VerticalEdge == 3)) {
        $ret = 6;
    }
    elseif ($HorizontalEdge == 3 && $VerticalEdge == 2) {
        $ret = 7;
    }
    elseif ($HorizontalEdge == 3 && $VerticalEdge == 1) {
        $ret = 8;
    }

    return $ret;
}    



function getFrameIndex($array)
{
	if (array_key_exists('FrameIndex', $array)) {
		return $array['FrameIndex'];
	}
	return 0;
}

function getTween($array)
{
	if (array_key_exists('Tween', $array)) {
		return 'false';
	}
	return 'true';
}

function getTweenType($array)
{
	if (array_key_exists('EasingData', $array)) 
	{
		if (array_key_exists('Type', $array['EasingData'])) {
			return $array['EasingData']['Type'];
		}
	}

	return pow(2,31);
}

function getEasingParams($array)
{
	$ret = "{";
	if (array_key_exists('EasingData', $array)) {
		if (array_key_exists('Points', $array['EasingData'])) {
			
			foreach ($array['EasingData']['Points'] as $key => $value) {
				$ret .= "{$value['X']}, {$value['Y']}, ";
			}
			if (strlen($ret) > 0) {
				$ret = substr($ret, 0, -2);
			}
		}
	}
	$ret .= "}";
	return $ret;
}



function parseAnimation($data, &$uiString, $parent)
{
	$GLOBALS['varList']['ActionTimeline'] = 'ccs.';
	$GLOBALS['varList']['Timeline'] = 'ccs.';

	$varLocalFrame = 'varLocalFrame';
	$varPositionTimeline = 'varPositionTimeline';
	$varScaleTimeline = 'varScaleTimeline';
	$varRotationSkewTimeline = 'varRotationSkewTimeline';
	$varVisibleForFrameTimeline = 'VisibleForFrameTimeline';
	$varFrameEventTimeline  = 'varEventFrameTimeline';
	$varBlendFuncTimeline = 'varBlendFuncTimeline';
	$varAnchorPointTimeline = 'varAnchorPointTimeline';
	$varFileDataTimeline = 'varFileDataTimeline';
	$varAlphaTimeline = 'varAlphaTimeline';

	$Timelines = $parent . "['timelines']";
	if (count($data['Animation']['Timelines']) > 0) {
		$uiString .= <<<STR
	$Timelines = ccs.ActionTimeline:create();
	$Timelines:retain();
	table.insert(ugod.all_object_list, $Timelines);
	$Timelines:setFlags(1);
	Director:getInstance():getActionManager():addAction($Timelines, self, false);

	$Timelines:setDuration({$data['Animation']['Duration']});
	$Timelines:setTimeSpeed({$data['Animation']['Speed']});

	local $varLocalFrame = nil;
	local $varPositionTimeline = nil;
	local $varScaleTimeline = nil;
	local $varRotationSkewTimeline = nil;
	local $varVisibleForFrameTimeline = nil;
	local $varFrameEventTimeline = nil;
	local varBlendFuncTimeline = nil;
	local varAnchorPointTimeline = nil;
	local varFileDataTimeline = nil;
	local varAlphaTimeline = nil;


STR;
		$GLOBALS['varList']['Timeline'] = 'ccs.';
		foreach ($data['Animation']['Timelines'] as $key => $value) {
			if ($value['Property'] == 'Position') {
				$GLOBALS['varList']['PositionFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create PositionTimeline\n";
				$uiString .= "\t$varPositionTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = PositionFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$EasingParams = getEasingParams($frame);
					if ($EasingParams != '') {
						$uiString .= "\t$varLocalFrame:setEasingParams($EasingParams);\n";
					}

					// parsePosition($varLocalFrame, $parent, $value, )
					if (array_key_exists('X', $frame)) {
						$uiString .= "\t$varLocalFrame:setX({$frame['X']});\n";
					}
					if (array_key_exists('Y', $frame)) {
						$uiString .= "\t$varLocalFrame:setY({$frame['Y']});\n";
					}
					$uiString .= "\t$varPositionTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varPositionTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varPositionTimeline);
	$varPositionTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
				

			}
			elseif ($value['Property'] == 'Scale') {
			    $GLOBALS['varList']['ScaleFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create ScaleTimeline\n";
				$uiString .= "\t$varScaleTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = ScaleFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$EasingParams = getEasingParams($frame);
					if ($EasingParams != '') {
						$uiString .= "\t$varLocalFrame:setEasingParams($EasingParams);\n";
					}
					if (array_key_exists('X', $frame)) {
						$uiString .= "\t$varLocalFrame:setScaleX({$frame['X']});\n";
					}
					if (array_key_exists('Y', $frame)) {
						$uiString .= "\t$varLocalFrame:setScaleY({$frame['Y']});\n";
					}
					$uiString .= "\t$varScaleTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varScaleTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varScaleTimeline);
	$varScaleTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}
			elseif ($value['Property'] == 'RotationSkew') {
			    $GLOBALS['varList']['RotationSkewFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create RotationSkewTimeline\n";
				$uiString .= "\t$varRotationSkewTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = RotationSkewFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$EasingParams = getEasingParams($frame);
					if ($EasingParams != '') {
						$uiString .= "\t$varLocalFrame:setEasingParams($EasingParams);\n";
					}
					if (array_key_exists('X', $frame)) {
						$uiString .= "\t$varLocalFrame:setSkewX({$frame['X']});\n";
					}
					if (array_key_exists('Y', $frame)) {
						$uiString .= "\t$varLocalFrame:setSkewY({$frame['Y']});\n";
					}
					$uiString .= "\t$varRotationSkewTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varRotationSkewTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varRotationSkewTimeline);
	$varRotationSkewTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}

			elseif ($value['Property'] == 'VisibleForFrame') {
			    $GLOBALS['varList']['VisibleFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create VisibleForFrameTimeline\n";
				$uiString .= "\t$varVisibleForFrameTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = VisibleFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}
					if ($frame['Value']) {
						$uiString .= "\t$varLocalFrame:setVisible(true);\n";
					}
					else
					{
						$uiString .= "\t$varLocalFrame:setVisible(false);\n";
					}

					$uiString .= "\t$varVisibleForFrameTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varVisibleForFrameTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varVisibleForFrameTimeline);
	$varVisibleForFrameTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}

			elseif ($value['Property'] == 'FrameEvent') {
			    $GLOBALS['varList']['EventFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create EventFrameTimeline\n";
				$uiString .= "\t$varFrameEventTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = EventFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$uiString .= "\t$varLocalFrame:setEvent('{$frame['Value']}');\n";

					$uiString .= "\t$varFrameEventTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varFrameEventTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varFrameEventTimeline);
	$varFrameEventTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}

			elseif ($value['Property'] == 'BlendFunc') {
			    $GLOBALS['varList']['BlendFuncFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create BlendFuncTimeline\n";
				$uiString .= "\t$varBlendFuncTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = BlendFuncFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$uiString .= "\t$varLocalFrame:setBlendFunc({src = {$frame['Src']}, dst = {$frame['Dst']}});\n";

					$uiString .= "\t$varBlendFuncTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varBlendFuncTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varBlendFuncTimeline);
	$varBlendFuncTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}

		    elseif ($value['Property'] == 'AnchorPoint') {
			    $GLOBALS['varList']['AnchorPointFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create AnchorPointTimeline\n";
				$uiString .= "\t$varAnchorPointTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = AnchorPointFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$EasingParams = getEasingParams($frame);
					if ($EasingParams != '') {
						$uiString .= "\t$varLocalFrame:setEasingParams($EasingParams);\n";
					}
					$X = 0;
					$Y = 0;

					if (array_key_exists('X', $frame)) {
						$X = $frame['X'];
					}
					if (array_key_exists('Y', $frame)) {
						$Y = $frame['Y'];
					}
					$uiString .= "\t$varLocalFrame:setAnchorPoint({x = $X, y = $Y});\n";
					
					$uiString .= "\t$varAnchorPointTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varAnchorPointTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varAnchorPointTimeline);
	$varAnchorPointTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}
		    elseif ($value['Property'] == 'FileData') {
			    $GLOBALS['varList']['TextureFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create FileDataTimeline\n";
				$uiString .= "\t$varFileDataTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = TextureFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$EasingParams = getEasingParams($frame);
					if ($EasingParams != '') {
						$uiString .= "\t$varLocalFrame:setEasingParams($EasingParams);\n";
					}

					if (array_key_exists('TextureFile', $frame)) {
						// if ($frame['TextureFile']['Plist'] != '') {
						// 	$uiString .= "\tesourceUtils:getInstance():addSpriteFramesWithFile('{$frame['TextureFile']['Plist']}');\n";
						// }

						$uiString .= "\t$varLocalFrame:setTextureName('{$frame['TextureFile']['Path']}');\n";
					}
					
					$uiString .= "\t$varFileDataTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varFileDataTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varFileDataTimeline);
	$varFileDataTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}

			elseif ($value['Property'] == 'Alpha') {
			    $GLOBALS['varList']['AlphaFrame'] = 'ccs.';
				$uiString .= "\t-->>>>>>>>>>Create AlphaTimeline\n";
				$uiString .= "\t$varAlphaTimeline = Timeline:create();\n";
				foreach ($value['Frames'] as $frame) {
					$uiString .= "\t$varLocalFrame = AlphaFrame:create();\n";

					$FrameIndex = getFrameIndex($frame);
					$uiString .= "\t$varLocalFrame:setFrameIndex($FrameIndex);\n";

					$Tween = getTween($frame);
					$uiString .= "\t$varLocalFrame:setTween($Tween);\n";

					$TweenType = getTweenType($frame);
					if ($TweenType != pow(2,31)) {
						$uiString .= "\t$varLocalFrame:setTweenType($TweenType);\n";
					}

					$uiString .= "\t$varLocalFrame:setAlpha({$frame['Value']});\n";

					$uiString .= "\t$varAlphaTimeline:addFrame($varLocalFrame);\n\n";
				}

				$uiString .= "\t$Timelines:addTimeline($varAlphaTimeline);\n";
				$ActionTag = $value['ActionTag'];
				if ($GLOBALS['ActionTag'][$ActionTag]) {
					$uiString .= <<<STR
	if not {$GLOBALS['ActionTag'][$ActionTag]}.__timelines then
		{$GLOBALS['ActionTag'][$ActionTag]}.__timelines = {};
	end
	table.insert({$GLOBALS['ActionTag'][$ActionTag]}.__timelines, $varAlphaTimeline);
	$varAlphaTimeline:setNode({$GLOBALS['ActionTag'][$ActionTag]});

STR;
				}
			}

		}

		if (count($data['AnimationList']) > 0) {
			foreach ($data['AnimationList'] as $key => $value) {
				$uiString .= "\tlocal var_{$value['Name']} = {name = '{$value['Name']}', startIndex = {$value['StartIndex']}, endIndex = {$value['EndIndex']}};\n";
				$uiString .= "\t$Timelines:addAnimationInfo(var_{$value['Name']});\n";
			}
		}
	}
}



function parseColor( $node, $array, &$string, $type)
{
    if (array_key_exists('CColor', $array)) 
    {
        $ret = [255,255,255];
        if ( array_key_exists('R', $array['CColor']) )
        {
            $ret[0] = $array['CColor']['R'];
        }

        if ( array_key_exists('G', $array['CColor']) )
        {
            $ret[1] = $array['CColor']['G'];
        }
        if ( array_key_exists('B', $array['CColor']) )
        {
            $ret[2] = $array['CColor']['B'];
        }

        if ($ret[0] != 255 || $ret[1] != 255 || $ret[2] != 255) 
        {
            if ($type == 1) {
                $string .= "\t$node:setColor({r = $ret[0], g = $ret[1], b = $ret[2]});\n";
            }
            if ($type == 2) {
                $string .= "\t$node:setTextColor({r = $ret[0], g = $ret[1], b = $ret[2]});\n";
            }
            if ($type == 3) {
                $string .= "\t$node:setDefaultTextColor({r = $ret[0], g = $ret[1], b = $ret[2]});\n";
            }
        }
    }
}

function parseZOrder($node, $array, &$string)
{
	if (array_key_exists('UserData', $array)) 
	{
		$list = split(",", $array['UserData']);
		foreach ($list as $key => $value) {
			$tmp = split("=", $value);
			if ($tmp[0] == 'z') {
				$string .= "\t$node:setLocalZOrder({$tmp[1]});\n";
			}
		}
	    
	}
}


function parsePosition($position, $anchorPoint, $size, $type, $parent, $node, &$string, $array)
{
    $X = $position[0];
    $Y = $position[1];

    $ret = parseCoordinate($array);

    $str = "WinSize";
    if ($parent && $parent[0] != 'self') 
    {
        $str = "{$parent[0]}:getContentSize()";
    }

    $size = getContentSize($array);
    $LeftMargin = 0;
    $RightMargin = 0;
    $TopMargin = 0;
    $BottomMargin = 0;
    if (array_key_exists('LeftMargin', $array)) {
        $LeftMargin = $array['LeftMargin'];
    }
    if (array_key_exists('RightMargin', $array)) {
        $RightMargin = $array['RightMargin'];
    }
    if (array_key_exists('TopMargin', $array)) {
        $TopMargin = $array['TopMargin'];
    }
    if (array_key_exists('BottomMargin', $array)) {
        $BottomMargin = $array['BottomMargin'];
    }

    $designSize = $GLOBALS['designSize'];

    $midX = 0;
    $midY = 0;

    $LeftMargin1 = $LeftMargin;
    $RightMargin1 = $RightMargin;
    $TopMargin1 = $TopMargin;
    $BottomMargin1 = $BottomMargin;

    $LeftMargin += $anchorPoint[0] * $size[0];
    $RightMargin += (1 - $anchorPoint[0]) * $size[0];
    $TopMargin += (1 - $anchorPoint[1]) * $size[1];
    $BottomMargin += $anchorPoint[1] * $size[1];

    if ($LeftMargin1 > $RightMargin1) {
        $midX = ($LeftMargin - $RightMargin)/2;
    }
    else {
        $midX = -($RightMargin - $LeftMargin)/2;
    }

    if ($BottomMargin1 > $TopMargin1) {
    	$midY = ($BottomMargin - $TopMargin)/2;
    }
    else {
        $midY = -($TopMargin - $BottomMargin)/2;
    }


    if ($ret == 0) 
    {
        $X = "$str.width/2 + ($midX * ugod.scaleX)";
        $Y = "$str.height/2 + ($midY * ugod.scaleY)";
    }
    elseif (1 == $ret) {
        $X = "$str.width/2 + ($midX * ugod.scaleX)";
        $Y = "$str.height - $TopMargin";
    }
    elseif (2 == $ret) {
        $Y = "$str.height - $TopMargin";
    }
    elseif (3 == $ret) {
        $Y = "$str.height/2 + ($midY * ugod.scaleY)";
    }
    elseif (4 == $ret) {
        # code...
    }
    elseif (5 == $ret) {
        $X = "$str.width/2 + ($midX * ugod.scaleX)";
    }
    elseif (6 == $ret) {
        $X = "$str.width - $RightMargin";
    }
    elseif (7 == $ret) {
        $X = "$str.width - $RightMargin";
        $Y = "$str.height/2 + ($midY * ugod.scaleY)";
    }
    elseif (8 == $ret) {
        $X = "$str.width - $RightMargin";
        $Y = "$str.height - $TopMargin";
    }

    if ($type == 1) {
        $string .= "\t$node:setPosition($X, $Y);\n";
    }
    elseif ($type == 2) {
    	$string .= "\t$node:setX($X);\n";
    	$string .= "\t$node:setY($Y);\n";    	
    }
    return[$X,$Y];

}   


?>