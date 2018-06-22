#!/usr/bin/python
# -*- coding: UTF-8 -*-
import parseText
import parseLayout
import parseButton
import parseCheckBox
import parseTextBMFont
import parseTextAtlas
import parseProgressTimer
import parseScrollView
import parseListView
import parseSlider
import parseCommon
import parseImageView
import parseInputView
import common
import os
import shutil
import sys
import globalvar as gl

reload(sys)
sys.setdefaultencoding("utf-8")


def parseAllNodes(array, parent):
    if array['ctype'] == 'ProjectNodeObjectData':
        return ''
        
    GUID = gl.get_value('GUID')
    gl.set_value('GUID', GUID + 1)

    nodeName = ""
    if (parent[1] == ''):
        nodeName = array.get('Name')
    else:
        nodeName = '%s#%s' % (parent[1], array.get('Name'))

    parent[1] = nodeName

    node = "localParams[%d]" % GUID
    classname = array['ctype']
    nodeDataString = ''
    if (classname == 'SpriteObjectData'): 
        nodeDataString += parseImageView.parse(node, array, 'sprite')
    elif (classname == 'TextObjectData'):
        nodeDataString += parseText.parse(node, array)
    elif (classname == 'PanelObjectData'):
        nodeDataString += "\t%s = Layout:create();\n" % node
        nodeDataString += parseLayout.parse(node, array)
    elif (classname == 'ImageViewObjectData'):
        nodeDataString += parseImageView.parse(node, array)
    elif (classname == 'SingleNodeObjectData'):
        nodeDataString += "\t%s = Widget:create();\n" % node
    elif (classname == 'ParticleObjectData'):
        nodeDataString += "\t$node = ParticleSystemQuad:create(%s);\n"  % array['FileData']['Path']
    elif (classname == 'LoadingBarObjectData'):
        nodeDataString += parseProgressTimer.parse(node, array)
    elif (classname == 'TextAtlasObjectData'):
        nodeDataString += parseTextAtlas.parse(node, array)
    elif (classname == 'TextBMFontObjectData'):
        nodeDataString += parseTextBMFont.parse(node, array)
    elif (classname == 'TextFieldObjectData'):
        nodeDataString += parseInputView.parse(node, array)
    elif (classname == 'SliderObjectData'):
        nodeDataString += parseSlider.parse(node, array)
    elif (classname == 'ListViewObjectData'):
        nodeDataString += parseListView.parse(node, array)
        nodeDataString += parseLayout.parse(node, array)
    elif (classname == 'ScrollViewObjectData'):
        nodeDataString += parseScrollView.parse(node, array)
        nodeDataString += parseLayout.parse(node, array)
    elif (classname == 'PageViewObjectData'):
        nodeDataString += "\tnode = PageView:create();\n"
        nodeDataString += parseLayout.parse(node, array)
    elif (classname == 'CheckBoxObjectData'):
        nodeDataString += parseCheckBox.parse(node, array)
    elif (classname == 'ButtonObjectData'):
        nodeDataString += parseButton.parse(node, array)
    
    gl.get_value('ActionTag')[array['ActionTag']] = node

    nodeDataString += parseCommon.parse(node, classname, array, parent)
    nodeDataString += "\tself.__children['%s'] = %s;\n" % (nodeName, node)
    nodeDataString += "\t%s.__children = self.__children;\n" % node
    nodeDataString += "\t%s.__Name = '%s';\n" % (node, nodeName)
    if array.get('Name') == '__SELECTED_IMG':
        nodeDataString += '\t%s:setSelectNode(%s);\n' % (parent[0], node)
    nodeDataString += "\t%s:addChild(%s);\n\n" % (parent[0], node)


    if array.get('Children') != None:
        for value in array.get('Children'):
            nodeDataString += parseAllNodes(value, [node, parent[1]])
    
    return nodeDataString



# 获取所有json文件
files = common.parseDir(os.path.join(os.getcwd(), '../json'), 'json')

if os.path.isdir(os.path.join(os.getcwd(), '../lua')):
    shutil.rmtree(os.path.join(os.getcwd(), '../lua'))
    
for filepath in files:
    data = common.getFileContentWithJson(filepath)
    classType = data['Type']



    gl.set_value('callback', {})
    gl.set_value('filepath', filepath)
    gl.set_value('GUID', 1)
    gl.set_value('ActionTag', {})

#     $GLOBALS['require'] = array();
#     $GLOBALS['UsedResources'] = array();
    

#     $data = json_decode(file_get_contents($filepath),true);
    if (classType == 'Scene'):
        classType = 'baselayer'

    if (classType == 'Layer'):
        classType = 'baselayer'
    elif (classType == 'Node'):
        classType = 'basenode'

    SyncNode = False
    Mask = False
    
    CustomClassName = data['Content']['Content']['ObjectData'].get('CustomClassName')
    if CustomClassName != None and CustomClassName.lower().find('mask') >= 0:
        Mask = True
        list1 = data['Content']['Content']['ObjectData']['CustomClassName'].lower().split('_')
        maskOpacity = 150
        for v in list1:
            if len(v) > 4 and v.find('mask') >= 0:
                maskOpacity = int(v[4:])

    classType1 = ''
    if (CustomClassName != None and CustomClassName.lower().find('basenode') >= 0):
        classType1 = 'basenode'
    if CustomClassName != None and CustomClassName.lower().find('syncnode') >= 0:
        SyncNode = True
    
    exportDir = data['Content']['Content']['ObjectData']['UserData']
    if exportDir == None:
        continue
    
    if exportDir[-1:] != '/':
        exportDir += '/'
    
    Children = data['Content']['Content']['ObjectData'].get('Children')

    gl.set_value('designSize', [data['Content']['Content']['ObjectData']['Size']['X'], data['Content']['Content']['ObjectData']['Size']['Y']])

    if not os.path.isdir('lua/%s' % exportDir):
        os.makedirs('lua/%s' % exportDir)        
    

    print u'>>>>>>>>>>开始导出%s.json' % (os.path.splitext(filepath)[0])

    moduleName = exportDir.replace('/', '.')
    gl.set_value('moduleName', '%s%s' % (moduleName, common.getFileName(filepath)))
    gl.set_value('filename', common.getFileName(filepath))



    ObjectDataString = ''

    for value in Children:
        ObjectDataString += parseAllNodes(value, ['self',''])

    # $repeatNode = array();
    # foreach ($GLOBALS['ActionTag'] as $key => $value) {
    #     // if (!array_key_exists($value, $repeatNode)) {
    #     //     $repeatNode[$value] = 'true';
    #     // }
    #     // else
    #     // {
    #     //     // $name = substr($value, 4);
    #     //     die(convertString("存在相同的节点名字:$value,{$filepath}\n"));
    #     //     return;
    #     // }
    # }

    # ObjectDataString += common.parseAnimation(data['Content']['Content'], 'self.__children')

    
    filename = common.getFileName(filepath)
    fp = open("lua/%s%sAuto.lua" % (exportDir, filename), 'w')

    uiString = '''-- 
-- Author: generation auto
-- Brief：%sAuto
-- 
local cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring = cc, ccx, class, pairs, error, ipairs, table, type, print, select, assert, require, string, tostring;
local RichText, Widget, Scale9Sprite, Layout, ScrollView, PageView, ListView, ImageView, Text, TextAtlas, TextBMFont, Button, LoadingBar, CheckBox, EditBox = ccui.RichText, ccui.Widget, cc.Scale9Sprite, ccui.Layout, ccui.ScrollView, ccui.PageView, ccui.ListView, ccui.ImageView, ccui.Text, ccui.TextAtlas, ccui.TextBMFont, ccui.Button, ccui.LoadingBar, ccui.CheckBox, ccui.EditBox;


local WinSize = cc.Director:getInstance():getWinSize();
local %s = class('%s', gamecore.ui.BaseWidget);

function %s:create(...) 
    local instance = %s.new(...);
    return instance;
end

function %s:ctor(...) 
    if %s.super and %s.super.ctor then
        %s.super.ctor(self, ...);
    end

''' % (filename, filename, filename, filename, filename, filename, filename, filename, filename)

    fp.write(uiString)
    uiString = ''
    if (SyncNode):
        uiString += "\tself:loadImageSync();\n"

    if (Mask):
        uiString += "\tself:setBackgroundOpacity(%d);\n" % (maskOpacity)
    
    if classType == 'basenode' or classType1 == 'basenode':
        uiString += "\tself:setTouchEnabled(false);\n"
    elif classType == 'baselayer':
        uiString += "\tself:setTouchEnabled(true);\n"
    
    if classType1 == 'basenode':
        uiString += "\tself:setContentSize(WinSize);\n"
    
    uiString += '''
end

function %s:initView()
    self.__LAYER_NAME = '%s';
    local localParams = {};
''' % (filename, gl.get_value('moduleName'))

    fp.write(uiString)
    fp.write(ObjectDataString)
    fp.write('end')
    fp.write('\n')
    uiString = ''

    if (not SyncNode):
        uiString += "function %s:loadImage()\n" % filename
    else:
        uiString += "function %s:loadImageSync()\n" % filename
    
    for value in common.getUsedResources(data['Content']['Content'].get('UsedResources')):
        list = os.path.splitext(value)
        if list[1] == '.jpg' or list[1] == '.png' or list[1] == '.jpeg':
            name = "'%s'" % value
            uiString += "\ttable.insert(self._textureList, %s);\n" % name

    if (not SyncNode):
        uiString += "\tccx.ResourcesMgr:getInstance():addImageAsync(handler(self, self.onImageLoadCompleted), self._textureList);\nend" 
    else:
        uiString += '''
    if (table.nums(self._textureList) > 0) then
        ccx.ResourcesMgr:getInstance():addImageSync(handler(self, self.onImageLoadCompleted), self._textureList);
    else
        self:onImageLoadCompleted();
    end
end
'''

    uiString += '''

function %s:loadPlistResources()
''' % (filename)

    for value in common.getUsedResources(data['Content']['Content'].get('UsedResources')):
        list = os.path.splitext(value)
        if list[1] == '.plist':
            name = "'%s'" % value
            uiString += "\ttable.insert(self._plistList, %s);\n" % name

    uiString += '''
    if (table.nums(self._plistList) > 0) then
        ccx.ResourcesMgr:getInstance():addSpriteFramesWithFiles(self._plistList)
    end
end

%s
''' % (parseCommon.parseCallback(gl.get_value('callback'), filename))

    uiString += 'return %s;' % filename
    fp.write(uiString)
    fp.close()
    


# // _copy("$CURRENT_DIR/../lua/*", "$CURRENT_DIR/../../scripts");
print u">>>>>>>>>>>>>导出结束<<<<<<<<<<<<<<<\n"


