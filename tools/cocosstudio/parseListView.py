#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    string += "\t%s = ListView:create();\n" % node

    if (array.get('IsBounceEnabled') != None and array['IsBounceEnabled']):
        string += "\t%s:setBounceEnabled(true);\n" % node

    if (array.get('DirectionType') != None):
        string += "\t%s:setDirection(1);\n" % node

        if (array.get('HorizontalType') == None):
            string += "\t%s:setGravity(0);\n" % node
        elif (array['HorizontalType'] == 'Align_Right'):
            string += "\t%s:setGravity(1);\n" % node
        elif (array['HorizontalType'] == 'Align_HorizontalCenter'):
            string += "\t%s:setGravity(2);\n" % node
    else:
        string += "\t%s:setDirection(0);\n" % node

        if (array.get('VerticalType') == None):
            string += "\t%s:setGravity(3);\n" % node
        elif (array['VerticalType'] == 'Align_Bottom'):
            string += "\t%s:setGravity(4);\n" % node
        elif (array['VerticalType'] == 'Align_VerticalCenter'):
            string += "\t%s:setGravity(5);\n" % node
    if (array.get('ItemMargin') != None):
        string += "\t%s:setItemsMargin(%.2f);\n" % (node, array['ItemMargin'])

    return string