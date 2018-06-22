#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    string += "\t%s = CheckBox:create();\n" % (node)

    if array.get('NormalBackFileData') == None:
        array['NormalBackFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    filename = "'%s'" % array['NormalBackFileData']['Path']
    type = 1
    if (array['NormalBackFileData']['Type'] == 'Default'):
        filename = ''
    if (array['NormalBackFileData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadTextureBackGround(%s, %d);\n" % (node, filename, type)

    if array.get('PressedBackFileData') == None:
        array['PressedBackFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    filename = "'%s'" % array['PressedBackFileData']['Path']
    type = 1
    if (array['PressedBackFileData']['Type'] == 'Default'):
        filename = '""'
    if (array['PressedBackFileData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:backGroundSelectedTexturePath(%s, %d);\n" % (node, filename, type)

    if array.get('DisableBackFileData') == None:
        array['DisableBackFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    filename = "'%s'" % (array['DisableBackFileData']['Path'])
    type = 1
    if (array['DisableBackFileData']['Type'] == 'Default'):
        filename = ''
    if (array['DisableBackFileData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadTextureBackGroundDisabled(%s, %d);\n" % (node, filename, type)

    if array.get('NodeNormalFileData') == None:
        array['NodeNormalFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    filename = "'%s'" % array['NodeNormalFileData']['Path']
    type = 1
    if (array['NodeNormalFileData'].get('Type') == 'Default'):
        filename = ''
    if (array['NodeNormalFileData'].get('Plist') == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadTextureFrontCross(%s, %d);\n" % (node, filename, type)

    if array.get('NodeDisableFileData') == None:
        array['NodeDisableFileData'] = {'Path':'', 'Type':'Default', 'Plist':""}
    filename = "'%s'" % array['NodeDisableFileData'].get('Path')
    type = 1
    if (array['NodeDisableFileData'].get('Type') == 'Default'):
        filename = ''

    if (array['NodeDisableFileData'].get('Plist') == ''):
        type = 0
    
    if (filename != ''):
        string += "\t%s:loadTextureFrontCrossDisabled(%s, %d);\n" % (node, filename, type)

    return string