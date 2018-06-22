#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    string += "\t%s = Button:create();\n" % (node)

    if array.get('NormalFileData') == None:
        array['NormalFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    
    filename = "'%s'" % array['NormalFileData']['Path']
    type = 1
    if (array['NormalFileData']['Type'] == 'Default'):
        filename = ''
    if (array['NormalFileData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadTextureNormal(%s, %d);\n" % (node, filename, type)

    if array.get('PressedFileData') == None:
        array['PressedFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    filename = "'%s'" % array['PressedFileData']['Path']
    type = 1
    if (array['PressedFileData']['Type'] == 'Default'):
        filename = ''
    if (array['PressedFileData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadTexturePressed(%s, %d);\n" % (node, filename, type)

    if array.get('DisabledFileData') == None:
        array['DisabledFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    filename = "'%s'" % array['DisabledFileData']['Path']
    type = 1
    if (array['DisabledFileData']['Type'] == 'Default'):
        filename = ''
    if (array['DisabledFileData']['Plist'] == ''):
        type = 0
    
    if (filename != ''):
        string += "\t%s:loadTextureDisabled(%s, %d);\n" % (node, filename, type)

    if (array.get('FontSize') != None):
        string += "\t%s:setTitleFontSize(%d);\n" % (node, array['FontSize'])

    if (array.get('TextColor') != None):
        color = [255, 255, 255]
        color[0] = array['TextColor'].get('R', 255)
        color[1] = array['TextColor'].get('G', 255)
        color[2] = array['TextColor'].get('B', 255)

        string += "\t%s:setTitleColor({r = %d, g = %d, b = %d});\n" % (node, color[0], color[1], color[2])
    

    if (array.get('Scale9Enable') != None and array['Scale9Enable']):
        string += "\t%s:setScale9Enabled(true);\n" % (node)
        string += "\t%s:setCapInsets({x = %f, y = %f, width = %f, height = %f});\n" % (node, array['Scale9OriginX'], array['Scale9OriginY'], array['Scale9Width'], array['Scale9Height']) 
    
    return string