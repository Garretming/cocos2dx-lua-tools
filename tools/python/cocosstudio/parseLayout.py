#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    if (array.get('ClipAble') != None and array['ClipAble']):
        string += "\t%s:setClippingEnabled(true);\n" % (node)

    if (array.get('Scale9Enable') != None and array['Scale9Enable']):
        string += "\t%s:setBackGroundImageScale9Enabled(true);\n" % (node)
        if (not array.get('Scale9OriginX') != None):
            array['Scale9OriginX'] = 0
        if (not array.get('Scale9OriginY') != None):
            array['Scale9OriginY'] = 0
        if (not array.get('Scale9Width') != None):
            array['Scale9Width'] = 0
        if (not array.get('Scale9Height') != None):
            array['Scale9Height'] = 0

        string += "\t%s:setBackGroundImageCapInsets({x = %f, y = %f,width = %f, height = %f});\n" % (node, array['Scale9OriginX'], array['Scale9OriginY'], array['Scale9Width'], array['Scale9Height'])

    if (array.get('ComboBoxIndex') != None):
        if (array['ComboBoxIndex'] == 1):
            string += "\t%s:setBackGroundColorType(1);\n" % (node)

            if (array.get('SingleColor') != None): 
                SingleColor = [255,255,255]
                    SingleColor[0] = array['SingleColor'].get('R', 255)
                    SingleColor[1] = array['SingleColor'].get('G', 255)
                    SingleColor[2] = array['SingleColor'].get('B', 255)
                
                if (SingleColor[0] != 255 or SingleColor[1] != 255 or SingleColor[2] != 255): 
                    string += "\t%s:setBackGroundColor({r = %d, g = %d, b = %d});\n" % (node, SingleColor[0], SingleColor[1], SingleColor[2])

        elif (array['ComboBoxIndex'] == 2):
            string += "\t%s:setBackGroundColorType(2);\n" % (node)
            if (array.get('FirstColor') != None and array.get('EndColor') != None): 
                FirstColor = [255,255,255]
                FirstColor[0] = array['FirstColor'].get('R', 255)
                FirstColor[1] = array['FirstColor'].get('G', 255)
                FirstColor[2] = array['FirstColor'].get('B', 255)

                EndColor = [255,255,255]
                EndColor[0] = array['EndColor'].get('R', 255)
                EndColor[1] = array['EndColor'].get('G', 255)
                EndColor[2] = array['EndColor'].get('B', 255)
                
                string += "\t%s:setBackGroundColor({r = %d, g = %d, b = %d}, {r = %d, g = %d, b = %d});\n" % (node, FirstColor[0], FirstColor[1], FirstColor[2], EndColor[0], EndColor[1], EndColor[2])

            if (array.get('ColorVector') != None): 
                ColorVector = [0, 0]
                if (array['ColorVector'].get('ScaleX') != None):
                    ColorVector[0] = array['ColorVector']['ScaleX']
                if (array['ColorVector'].get('ScaleY') != None):
                    ColorVector[1] = array['ColorVector']['ScaleY']
                string += "\t%s:setBackGroundColorVector({x = %f, y = %f});\n" % (node, array['ColorVector'][0], array['ColorVector'][1])


    if (array.get('BackColorAlpha') != None):
        string += "\t%s:setBackGroundColorOpacity(%d);\n" % (node, array['BackColorAlpha'])

    if (array.get('FileData') != None):
        type = 1
        if (array['FileData']['Plist'] == ''):
            type = 0
        string += "\t%s:setBackGroundImage('%s', %d);\n" % (node, array['FileData']['Path'], type)

    return string