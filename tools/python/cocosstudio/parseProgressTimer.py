#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    name = "'%s'" % array['ImageFileData']['Path']
    
    if (array.get('UserData') != None):
        if (array['ImageFileData']['Plist'] == ''):
            string += "\t%s = ProgressTimer:create(Sprite:create('%s'));\n" % (node, name)
        else:
            string += "\t%s = ProgressTimer:create(Sprite:createWithSpriteFrameName('%s'));\n" % (node, name)

        UserData = array['UserData']
        if (UserData.find('left->right') >= 0):
            string += "\t%s:setType(1);\n" % node
            string += "\t%s:setMidpoint({x=0, y=0});\n" % node
            string += "\t%s:setBarChangeRate({x=1, y=0});\n" % node
        elif (UserData.find('right->left') >= 0):
            string += "\t%s:setType(1);\n" % node
            string += "\t%s:setMidpoint({x=1, y=0});\n" % node
            string += "\t%s:setBarChangeRate({x=1, y=0});\n" % node
        elif (UserData.find('bottom->top') >= 0):
            string += "\t%s:setType(1);\n" % node
            string += "\t%s:setMidpoint({x=0, y=0});\n" % node
            string += "\t%s:setBarChangeRate({x=0, y=1});\n" % node
        elif (UserData.find('top->bottom') >= 0):
            string += "\t%s:setType(1);\n" % node
            string += "\t%s:setMidpoint({x=0, y=1});\n" % node
            string += "\t%s:setBarChangeRate({x=0, y=1});\n" % node
        elif (UserData.find('radial->CW') >= 0):
            string += "\t%s:setType(0);\n" % node
            string += "\t%s:setMidpoint({x=0.5, y=0.5});\n" % node
            string += "\t%s:setReverseDirection(false);\n" % node
        elif (UserData.find('radial->CCW') >= 0):
            string += "\t%s:setType(0);\n" % node
            string += "\t%s:setMidpoint({x=0.5, y=0.5});\n" % node
            string += "\t%s:setReverseDirection(true);\n" % node

        ProgressInfo = 80
        if (array.get('ProgressInfo') != None):
            ProgressInfo = array['ProgressInfo']
        string += "\t%s:setPercentage(%.2f);\n" % (node, ProgressInfo)
    else:
        ProgressInfo = 80
        if (array.get('ProgressInfo') != None):
            ProgressInfo = array['ProgressInfo']
        type = 0
        if (array['ImageFileData']['Plist'] != ''):
            type = 1


        string += "\t%s = LoadingBar:create(%s, %d, %.2f);\n" % (node, name, type, ProgressInfo)

        if (array.get('ProgressType') != None):
            string += "\t%s:setDirection(1);\n" % node

    return string