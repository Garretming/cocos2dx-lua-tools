#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
import json
import globalvar as gl
gl._init()


def getFileName(filename):
    filename = os.path.split(filename)[1]
    return os.path.splitext(filename)[0]


def getFileContentWithJson(filename):
    fp = open(filename)
    data = fp.read()
    fp.close()

    return json.loads(data)


# CURRENT_DIR = __DIR__;
# function my_echo(string)
# {
# 	if (php_uname('s') == 'Darwin') {
# 		echo string;
# 	}
# 	else
# 	{
# 		echo iconv('utf-8', 'gb2312', string);
# 	}
# }

# function convertString(string)
# {
# 	if (php_uname('s') == 'Darwin') {
# 		return string;
# 	}
# 	else
# 	{
# 		return iconv('utf-8', 'gb2312', string);
# 	}
# }

# function _rmdir(dir, isfile = false)
# {
# 	dir = _convert2CurrentSysPath(dir);

# 	if (file_exists(dir)) {
# 		if (PHP_OS == 'Darwin') {
# 			system("rm -rf \"dir\"");
# 		}
# 		else
# 		{
# 			if (isfile) {
# 				system("DEL /F/A/Q dir");
# 			}
# 			else
# 			{
# 				system("RD /S/Q dir");
# 			}
# 		}
# 	}
# }

# function _mkdir(dir)
# {
# 	dir = _convert2CurrentSysPath(dir);

# 	mkdir(dir, 0777, true);
# }

# function _convert2CurrentSysPath(path)
# {
# 	return str_replace('/', DIRECTORY_SEPARATOR, path);
# }

# function _copy(src,dst, isFiles = true)
# {
# 	src = _convert2CurrentSysPath(src);
# 	dst = _convert2CurrentSysPath(dst);

# 	if (PHP_OS == 'Darwin') {
# 		system("cp -rf src dst");
# 	}
# 	else
# 	{
# 		if (isFiles)
# 		{
# 			system("echo F|xcopy /E /F /Y src dst");
# 		}
# 	}
# }


def parseDir(dir, postfix=None, prefix=None):
    dir = os.path.abspath(dir)
    fileList = []

    for root, subDir, files in os.walk(dir):
        for filename in files:
            if postfix:
                if filename.endswith(postfix):
                    fileList.append(os.path.join(root, filename))
            elif prefix:
                if filename.startswith(prefix):
                    fileList.append(os.path.join(root, filename))
            else:
                fileList.append(os.path.join(root, filename))

    return fileList




# 获取用到的资源列表
def getUsedResources(data):
    if data != None and len(data) > 0:
        retList = []
        for value in data:
            retList.append(value.replace('../', ''))
        return retList
    return []


# 获取size
def getContentSize(array):
    ret = [0, 0]
    if (isinstance(array, dict)):
        if (array.get('Size') != None):
            if (array['Size'].get('X') != None):
                ret[0] = array['Size']['X']

            if (array['Size'].get('Y') != None):
                ret[1] = array['Size']['Y']

    return ret


def parseCoordinate(array):
    HorizontalEdge = 1
    VerticalEdge = 3
    
    if (array.get('VerticalEdge') != None
            and array['VerticalEdge'] == 'TopEdge'):
        VerticalEdge = 1
    elif (array.get('VerticalEdge') != None
          and array['VerticalEdge'] == 'BothEdge'):
        VerticalEdge = 2
    elif (array.get('VerticalEdge') != None
          and array['VerticalEdge'] == 'BottomEdge'):
        VerticalEdge = 3

    if (array.get('HorizontalEdge') != None
            and array['HorizontalEdge'] == 'LeftEdge'):
        HorizontalEdge = 1
    elif (array.get('HorizontalEdge') != None
          and array['HorizontalEdge'] == 'BothEdge'):
        HorizontalEdge = 2
    elif (array.get('HorizontalEdge') != None
          and array['HorizontalEdge'] == 'RightEdge'):
        HorizontalEdge = 3

    #中间
    if (VerticalEdge == 2 and HorizontalEdge == 2):
        ret = 0
    #上面
    elif (VerticalEdge == 1 and HorizontalEdge == 2):
        ret = 1
    #左上
    elif (VerticalEdge == 1 and HorizontalEdge == 1):
        ret = 2
    #左边
    elif (VerticalEdge == 2 and HorizontalEdge == 1):
        ret = 3
    #左下
    elif (VerticalEdge == 3 and HorizontalEdge == 1):
        ret = 4
    #下面
    if (HorizontalEdge == 2 and VerticalEdge == 3):
        ret = 5
    #右下
    elif (HorizontalEdge == 3 and VerticalEdge == 3):
        ret = 6
    #右边
    elif (HorizontalEdge == 3 and VerticalEdge == 2):
        ret = 7
    #右上
    elif (HorizontalEdge == 3 and VerticalEdge == 1):
        ret = 8

    return ret


# function getFrameIndex(array)
# {
# 	if (array.get('FrameIndex') != None) {
# 		return array['FrameIndex'];
# 	}
# 	return 0;
# }

# function getTween(array)
# {
# 	if (array.get('Tween') != None) {
# 		return 'false';
# 	}
# 	return 'true';
# }

# function getTweenType(array)
# {
# 	if (array.get('EasingData') != None)
# 	{
# 		if (array.get('Type', array['EasingData'])) {
# 			return array['EasingData']['Type'];
# 		}
# 	}

# 	return pow(2,31);
# }

# function getEasingParams(array)
# {
# 	ret = "{";
# 	if (array.get('EasingData') != None) {
# 		if (array.get('Points', array['EasingData'])) {

# 			foreach (array['EasingData']['Points'] as key => value) {
# 				ret .= "{value['X']}, {value['Y']}, ";
# 			}
# 			if (strlen(ret) > 0) {
# 				ret = substr(ret, 0, -2);
# 			}
# 		}
# 	}
# 	ret .= "}";
# 	return ret;
# }


def parseAnimation(array, parent):

    # {
    # 	GLOBALS['varList']['ActionTimeline'] = 'ccs.';
    # 	GLOBALS['varList']['Timeline'] = 'ccs.';

    # 	varLocalFrame = 'varLocalFrame';
    # 	varPositionTimeline = 'varPositionTimeline';
    # 	varScaleTimeline = 'varScaleTimeline';
    # 	varRotationSkewTimeline = 'varRotationSkewTimeline';
    # 	varVisibleForFrameTimeline = 'VisibleForFrameTimeline';
    # 	varFrameEventTimeline  = 'varEventFrameTimeline';
    # 	varBlendFuncTimeline = 'varBlendFuncTimeline';
    # 	varAnchorPointTimeline = 'varAnchorPointTimeline';
    # 	varFileDataTimeline = 'varFileDataTimeline';
    # 	varAlphaTimeline = 'varAlphaTimeline';

    # 	Timelines = parent . "['timelines']";
    uiString = ''

    if array.get('Animation') != None and array['Animation'].get(
            'Timelines') != None and len(array['Animation']['Timelines']) > 0:
        uiString += '''
    local actionTimeLine = ccs.ActionTimeline:create();
    cc.Director:getInstance():getActionManager():addAction(actionTimeLine, self, false);
    actionTimeLine:setFlags(1);
    actionTimeLine:setDuration(%d);
    actionTimeLine:setTimeSpeed(%d);
''' % (array['Animation']['Duration'], array['Animation']['Speed'])

    classList = {
        # 'Position' : ['PositionFrame', 'setX', 'setY', 'type':'XY'],
        # 'Scale' : ['ScaleTimeline', 'setScaleX', 'setScaleY', 'type':'XY'],
        # 'RotationSkew':['RotationSkewFrame', 'setSkewX', 'setSkewY', 'type':'XY'],
        # 'VisibleForFrame':['VisibleFrame', 'setVisible', 'type':'bvalue'],
        # 'FrameEvent':['EventFrame', 'setEvent', 'type':'svalue'],
        # 'BlendFunc':['EventFrame', 'setBlendFunc', 'type':'srcdst'],
        # 'AnchorPoint':['AnchorPointFrame', 'setAnchorPoint', 'type':'XY1'],
    }
    for value in array['Animation']['Timelines']:
        uiString += "\t---------create %s action \n" % (value.get('Property'))
        uiString += "\tlocal timeline = ccs.Timeline:create();\n"

        for frame in value['Frames']:
            uiString += "\tlocal frameAction = ccs.%s:create();\n" % classList.get(
                value['Property'])[1]
            uiString += "\tframeAction:setFrameIndex(%d);\n" % (frame.get(
                'FrameIndex', 0))
            uiString += "\tframeAction:setTween(%s);\n" % (
                frame.get('Tween', 0) == 0 and 'false' or 'true')
            if frame.get('EasingData') != None:
                uiString += "\tframeAction:setTweenType(%d);\n" % frame['EasingData'].get(
                    "Type", 0)
                if frame['EasingData'].get('Points') != None:
                    uiString += "\tframeAction:setEasingParams({"
                    for value1 in frame['EasingData']['Points']:
                        uiString += "%.2f,%.2f," % (value1['X'], value1['Y'])
                    uiString = uiString[:-1]
                    uiString += '});\n'

        # if value.get('Property') == 'Position':
        #     if (array.get('X', frame)) {
# 		uiString .= "\tvarLocalFrame:setX({frame['X']});\n";
# 	}
# 	if (array.get('Y', frame)) {
# 		uiString .= "\tvarLocalFrame:setY({frame['Y']});\n";
# 	}

    return uiString


# STR;
# 		GLOBALS['varList']['Timeline'] = 'ccs.';
# 		foreach (data['Animation']['Timelines'] as key => value) {
# 			if (value['Property'] == 'Position') {
# 				GLOBALS['varList']['PositionFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create ccs.PositionTimeline\n";
# 				uiString .= "\tvarPositionTimeline = ccs.Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = PositionFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					EasingParams = getEasingParams(frame);
# 					if (EasingParams != '') {
# 						uiString .= "\tvarLocalFrame:setEasingParams(EasingParams);\n";
# 					}

# 					// parsePosition(varLocalFrame, parent, value, )
# 					if (array.get('X', frame)) {
# 						uiString .= "\tvarLocalFrame:setX({frame['X']});\n";
# 					}
# 					if (array.get('Y', frame)) {
# 						uiString .= "\tvarLocalFrame:setY({frame['Y']});\n";
# 					}
# 					uiString .= "\tvarPositionTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varPositionTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varPositionTimeline);
# 	varPositionTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}

# 			}
# 			elif (value['Property'] == 'Scale') {
# 			    GLOBALS['varList']['ScaleFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create ScaleTimeline\n";
# 				uiString .= "\tvarScaleTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = ScaleFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					EasingParams = getEasingParams(frame);
# 					if (EasingParams != '') {
# 						uiString .= "\tvarLocalFrame:setEasingParams(EasingParams);\n";
# 					}
# 					if (array.get('X', frame)) {
# 						uiString .= "\tvarLocalFrame:setScaleX({frame['X']});\n";
# 					}
# 					if (array.get('Y', frame)) {
# 						uiString .= "\tvarLocalFrame:setScaleY({frame['Y']});\n";
# 					}
# 					uiString .= "\tvarScaleTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varScaleTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varScaleTimeline);
# 	varScaleTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}
# 			elif (value['Property'] == 'RotationSkew') {
# 			    GLOBALS['varList']['RotationSkewFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create RotationSkewTimeline\n";
# 				uiString .= "\tvarRotationSkewTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = RotationSkewFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					EasingParams = getEasingParams(frame);
# 					if (EasingParams != '') {
# 						uiString .= "\tvarLocalFrame:setEasingParams(EasingParams);\n";
# 					}
# 					if (array.get('X', frame)) {
# 						uiString .= "\tvarLocalFrame:setSkewX({frame['X']});\n";
# 					}
# 					if (array.get('Y', frame)) {
# 						uiString .= "\tvarLocalFrame:setSkewY({frame['Y']});\n";
# 					}
# 					uiString .= "\tvarRotationSkewTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varRotationSkewTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varRotationSkewTimeline);
# 	varRotationSkewTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}

# 			elif (value['Property'] == 'VisibleForFrame') {
# 			    GLOBALS['varList']['VisibleFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create VisibleForFrameTimeline\n";
# 				uiString .= "\tvarVisibleForFrameTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = VisibleFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}
# 					if (frame['Value']) {
# 						uiString .= "\tvarLocalFrame:setVisible(true);\n";
# 					}
# 					else
# 					{
# 						uiString .= "\tvarLocalFrame:setVisible(false);\n";
# 					}

# 					uiString .= "\tvarVisibleForFrameTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varVisibleForFrameTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varVisibleForFrameTimeline);
# 	varVisibleForFrameTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}

# 			elif (value['Property'] == 'FrameEvent') {
# 			    GLOBALS['varList']['EventFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create EventFrameTimeline\n";
# 				uiString .= "\tvarFrameEventTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = EventFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					uiString .= "\tvarLocalFrame:setEvent('{frame['Value']}');\n";

# 					uiString .= "\tvarFrameEventTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varFrameEventTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varFrameEventTimeline);
# 	varFrameEventTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}

# 			elif (value['Property'] == 'BlendFunc') {
# 			    GLOBALS['varList']['BlendFuncFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create BlendFuncTimeline\n";
# 				uiString .= "\tvarBlendFuncTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = BlendFuncFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					uiString .= "\tvarLocalFrame:setBlendFunc({src = {frame['Src']}, dst = {frame['Dst']}});\n";

# 					uiString .= "\tvarBlendFuncTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varBlendFuncTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varBlendFuncTimeline);
# 	varBlendFuncTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}

# 		    elif (value['Property'] == 'AnchorPoint') {
# 			    GLOBALS['varList']['AnchorPointFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create AnchorPointTimeline\n";
# 				uiString .= "\tvarAnchorPointTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = AnchorPointFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					EasingParams = getEasingParams(frame);
# 					if (EasingParams != '') {
# 						uiString .= "\tvarLocalFrame:setEasingParams(EasingParams);\n";
# 					}
# 					X = 0;
# 					Y = 0;

# 					if (array.get('X', frame)) {
# 						X = frame['X'];
# 					}
# 					if (array.get('Y', frame)) {
# 						Y = frame['Y'];
# 					}
# 					uiString .= "\tvarLocalFrame:setAnchorPoint({x = X, y = Y});\n";

# 					uiString .= "\tvarAnchorPointTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varAnchorPointTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varAnchorPointTimeline);
# 	varAnchorPointTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}
# 		    elif (value['Property'] == 'FileData') {
# 			    GLOBALS['varList']['TextureFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create FileDataTimeline\n";
# 				uiString .= "\tvarFileDataTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = TextureFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					EasingParams = getEasingParams(frame);
# 					if (EasingParams != '') {
# 						uiString .= "\tvarLocalFrame:setEasingParams(EasingParams);\n";
# 					}

# 					if (array.get('TextureFile', frame)) {
# 						// if (frame['TextureFile']['Plist'] != '') {
# 						// 	uiString .= "\tesourceUtils:getInstance():addSpriteFramesWithFile('{frame['TextureFile']['Plist']}');\n";
# 						// }

# 						uiString .= "\tvarLocalFrame:setTextureName('{frame['TextureFile']['Path']}');\n";
# 					}

# 					uiString .= "\tvarFileDataTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varFileDataTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varFileDataTimeline);
# 	varFileDataTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}

# 			elif (value['Property'] == 'Alpha') {
# 			    GLOBALS['varList']['AlphaFrame'] = 'ccs.';
# 				uiString .= "\t-->>>>>>>>>>Create AlphaTimeline\n";
# 				uiString .= "\tvarAlphaTimeline = Timeline:create();\n";
# 				foreach (value['Frames'] as frame) {
# 					uiString .= "\tvarLocalFrame = AlphaFrame:create();\n";

# 					FrameIndex = getFrameIndex(frame);
# 					uiString .= "\tvarLocalFrame:setFrameIndex(FrameIndex);\n";

# 					Tween = getTween(frame);
# 					uiString .= "\tvarLocalFrame:setTween(Tween);\n";

# 					TweenType = getTweenType(frame);
# 					if (TweenType != pow(2,31)) {
# 						uiString .= "\tvarLocalFrame:setTweenType(TweenType);\n";
# 					}

# 					uiString .= "\tvarLocalFrame:setAlpha({frame['Value']});\n";

# 					uiString .= "\tvarAlphaTimeline:addFrame(varLocalFrame);\n\n";
# 				}

# 				uiString .= "\tTimelines:addTimeline(varAlphaTimeline);\n";
# 				ActionTag = value['ActionTag'];
# 				if (GLOBALS['ActionTag'][ActionTag]) {
# 					uiString .= <<<STR
# 	if not {GLOBALS['ActionTag'][ActionTag]}.__timelines then
# 		{GLOBALS['ActionTag'][ActionTag]}.__timelines = {};
# 	end
# 	table.insert({GLOBALS['ActionTag'][ActionTag]}.__timelines, varAlphaTimeline);
# 	varAlphaTimeline:setNode({GLOBALS['ActionTag'][ActionTag]});

# STR;
# 				}
# 			}

# 		}

# 		if (count(data['AnimationList']) > 0) {
# 			foreach (data['AnimationList'] as key => value) {
# 				uiString .= "\tlocal var_{value['Name']} = {name = '{value['Name']}', startIndex = {value['StartIndex']}, endIndex = {value['EndIndex']}};\n";
# 				uiString .= "\tTimelines:addAnimationInfo(var_{value['Name']});\n";
# 			}
# 		}
# 	}
# }

# function parseColor( node, array, &string, type)
# {
#     if (array.get('CColor') != None)
#     {
#         ret = [255,255,255];
#         if ( array.get('R', array['CColor']) )
#         {
#             ret[0] = array['CColor']['R'];
#         }

#         if ( array.get('G', array['CColor']) )
#         {
#             ret[1] = array['CColor']['G'];
#         }
#         if ( array.get('B', array['CColor']) )
#         {
#             ret[2] = array['CColor']['B'];
#         }

#         if (ret[0] != 255 or ret[1] != 255 or ret[2] != 255)
#         {
#             if (type == 1) {
#                 string .= "\tnode:setColor({r = ret[0], g = ret[1], b = ret[2]});\n";
#             }
#             if (type == 2) {
#                 string .= "\tnode:setTextColor({r = ret[0], g = ret[1], b = ret[2]});\n";
#             }
#             if (type == 3) {
#                 string .= "\tnode:setDefaultTextColor({r = ret[0], g = ret[1], b = ret[2]});\n";
#             }
#         }
#     }
# }

# function parseZOrder(node, array, &string)
# {
# 	if (array.get('UserData') != None)
# 	{
# 		list = split(",", array['UserData']);
# 		foreach (list as key => value) {
# 			tmp = split("=", value);
# 			if (tmp[0] == 'z') {
# 				string .= "\tnode:setLocalZOrder({tmp[1]});\n";
# 			}
# 		}

# 	}
# }


def parsePosition(position, anchorPoint, size, parent, node, array):
    X = round(position[0], 2)
    Y = round(position[1], 2)

    ret = parseCoordinate(array)

    str = "WinSize"
    if (parent and parent[0] != 'self'):
        str = "%s:getContentSize()" % (parent[0])

    size = getContentSize(array)
    LeftMargin = 0
    RightMargin = 0
    TopMargin = 0
    BottomMargin = 0
    if (array.get('LeftMargin') != None):
        LeftMargin = array['LeftMargin']
    if (array.get('RightMargin') != None):
        RightMargin = array['RightMargin']
    if (array.get('TopMargin') != None):
        TopMargin = array['TopMargin']
    if (array.get('BottomMargin') != None):
        BottomMargin = array['BottomMargin']

    midX = 0
    midY = 0

    LeftMargin1 = LeftMargin
    RightMargin1 = RightMargin
    TopMargin1 = TopMargin
    BottomMargin1 = BottomMargin

    LeftMargin += anchorPoint[0] * size[0]
    RightMargin += (1 - anchorPoint[0]) * size[0]
    TopMargin += (1 - anchorPoint[1]) * size[1]
    BottomMargin += anchorPoint[1] * size[1]

    if (LeftMargin1 > RightMargin1):
        midX = (LeftMargin - RightMargin) / 2
    else:
        midX = -(RightMargin - LeftMargin) / 2

    if (BottomMargin1 > TopMargin1):
        midY = (BottomMargin - TopMargin) / 2
    else:
        midY = -(TopMargin - BottomMargin) / 2

    # 0中间
    if (ret == 0):
        X = "%s.width/2 + (%.2f * ccx.scaleX)" % (str, midX)
        Y = "%s.height/2 + (%.2f * ccx.scaleY)" % (str, midY)
    # 1上面
    elif (1 == ret):
        X = "%s.width/2 + (%.2f * ccx.scaleX)" % (str, midX)
        Y = "%s.height - %.2f" % (str, TopMargin)
    # 2左上
    elif (2 == ret):
        Y = "%s.height - %.2f" % (str, TopMargin)
    #左边
    elif (3 == ret):
        Y = "%s.height/2 + (%.2f * ccx.scaleY)" % (str, midY)
    #左下
    elif (4 == ret):
        pass
        # code...
    #下面
    elif (5 == ret):
        X = "%s.width/2 + (%.2f * ccx.scaleX)" % (str, midX)
    #右下
    elif (6 == ret):
        X = "%s.width - %.2f" % (str, RightMargin)
    #右边
    elif (7 == ret):
        X = "%s.width - %.2f" % (str, RightMargin)
        Y = "%s.height/2 + (%.2f * ccx.scaleY)" % (str, midY)
    #右上
    elif (8 == ret):
        X = "%s.width - %.2f" % (str, RightMargin)
        Y = "%s.height - %.2f" % (str, TopMargin)
    # if (type == 1):
    #     string .= "\tnode:setPosition(X, Y);\n" % node
    # }
    # elif (type == 2):
    # 	string .= "\tnode:setX(X);\n" % node
    # 	string .= "\tnode:setY(Y);\n" % node

    return [X, Y]
