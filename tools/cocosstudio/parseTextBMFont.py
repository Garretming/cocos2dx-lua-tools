#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    string += "\t%s = TextBMFont:create();\n" % node

    if (array.get('LabelText') != None):
        string += "\t%s:setString([[%s]]);\n" % (node, array['LabelText'])

    if (array['LabelBMFontFile_CNB']['Path'] != ""):
        string += "\t%s:setFntFile('%s');\n" % (node, array['LabelBMFontFile_CNB']['Path'])

    return ''