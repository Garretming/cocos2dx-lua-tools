#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array, imageType = 'image'):
    string = ''
    filename = "'%s'" % array['FileData']['Path']
    type = 1
    if (array['FileData']['Type'] == 'Default'):
        filename = 'nil'
    if (array['FileData']['Plist'] == ''):
        type = 0

    string += "\t%s = ImageView:create(%s, %d);\n" % (node, filename, type)
    if imageType == 'image':
        string += "\t%s:ignoreContentAdaptWithSize(false);\n" % (node)


    if (array.get('Scale9Enable') != None and array['Scale9Enable']):
        string += "\t%s:setScale9Enabled(true);\n" % node
        if (array.get('Scale9OriginX') == None):
            array['Scale9OriginX'] = 0
        if (array.get('Scale9OriginY') == None):
            array['Scale9OriginY'] = 0
        if (array.get('Scale9Width') == None):
            array['Scale9Width'] = 0
        if (array.get('Scale9Height') == None):
            array['Scale9Height'] = 0

        string += "\t%s:setCapInsets({x = %f, y = %f,width = %f, height = %f});\n" % (node, array['Scale9OriginX'], array['Scale9OriginY'], array['Scale9Width'], array['Scale9Height'])

    return string