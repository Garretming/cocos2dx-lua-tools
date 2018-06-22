#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    string += "\t%s = TextAtlas:create();\n" % node

    string += "\t%s:setProperty([[%s]], '%s', %d, %d, '%s');\n" % (node, array['LabelText'], array['LabelAtlasFileImage_CNB']['Path'], array['CharWidth'], array['CharHeight'], array['StartChar'])

    return string