#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    filename = "'%s'" % array['FileData']['Path']
    if (array['FileData']['Type'] == 'Default'):
        filename = ''
    if (array['FileData']['Plist'] == ''):
        string += "\t%s = Sprite:create(%s);\n" % (node, filename)
    else:
        string += "\t%s = Sprite:createWithSpriteFrameName(%s);\n" % (node, filename)
    
    return string



