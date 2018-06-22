#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    string += "\t%s = ScrollView:create();\n" % node

    if (array.get('IsBounceEnabled') != None and array['IsBounceEnabled']):
        string += "\t%s:setBounceEnabled(true);\n" % node
    
    if (array.get('InnerNodeSize') != None):
        string += "\t%s:setInnerContainerSize({width = %.2f, height = %.2f});\n" % (node, array['InnerNodeSize']['Width'], array['InnerNodeSize']['Height'])

    if (array['ScrollDirectionType'] == 'Horizontal'):
        string += "\t%s:setDirection(0);\n" % node
    elif (array['ScrollDirectionType'] == 'Vertical'):
        string += "\t%s:setDirection(1);\n" % node
    
    return string