#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''

    string += "\t%s = EditBox:create({width = 0, height = 0}, Scale9Sprite:create());\n" % node

    if array.get('FontSize'):
        string += "\t%s:setFontSize(%d);\n" % (node, array['FontSize'])
        string += "\t%s:setPlaceholderFontSize(%d);\n" % (node, array['FontSize'])
        

    if array.get('LabelText'):
        string += "\t%s:setText([[%s]]);\n" % (node, array['LabelText'])

    if array.get('PlaceHolderText'):
        string += "\t%s:setPlaceHolder([[%s]]);\n" % (node, array['PlaceHolderText'])

    if array.get('MaxLengthEnable'):
        string += "\t%s:setMaxLengthEnabled(true);\n" % (node)
    else:
        string += "\t%s:setMaxLengthEnabled(false);\n" % (node)

    if array.get('MaxLengthText'):
        string += "\t%s:setMaxLength(%d);\n" % (node, array['MaxLengthText'])

    if array.get('PasswordEnable'):
        string += "\t%s:setPasswordEnabled(true);\n" % (node)
    else:
        string += "\t%s:setPasswordEnabled(false);\n" % (node)

    if array.get('PasswordStyleText'):
        string += "\t%s:setPasswordStyleText(%d);\n" % (node, array['PasswordStyleText'])
                  

    # if (array.get('FontResource') != None and array['FontResource']['Path'] != ""):
    #     if (isRichText):
    #         string += "\t%s:setDefaultFontName('%s');\n" % (node, array['FontResource']['Path'])
    #     else:
    #         string += "\t%s:setFontName('%s');\n" % (node, array['FontResource']['Path'])

    # if (array.get('IsCustomSize') != None and array['IsCustomSize']):
    #     string += "\t%s:setTextAreaSize({width = %d, height = %d});\n" %(node, array['Size']['X'], array['Size']['Y'])


    # if (array.get('HorizontalAlignmentType') != None):
    #     if (array['HorizontalAlignmentType'] == 'HT_Center'):
    #         string += "\t%s:setTextHorizontalAlignment(1);\n" % (node)
    #     elif (array['HorizontalAlignmentType'] == 'HT_Right'):
    #         string += "\t%s:setTextHorizontalAlignment(2);\n" % (node)

    # if array.get('VerticalAlignmentType') != None and (not isRichText):
    #     if (array['VerticalAlignmentType'] == 'VT_Center'):
    #         string += "\t%s:setTextVerticalAlignment(1);\n" % (node)
    #     elif (array['VerticalAlignmentType'] == 'VT_Bottom'):
    #         string += "\t%s:setTextVerticalAlignment(2);\n" % (node)

    # if (array.get('OutlineEnabled') != None):
    #     OutlineSize = 1
    #     if (array.get('OutlineSize') != None):
    #         OutlineSize = array['OutlineSize']

    #     OutlineColor = [255,255,255]
    #     if (array.get('OutlineColor')): 
    #         if (array['OutlineColor'].get('R')):
    #             OutlineColor[0] = array['OutlineColor']['R']
    #         if (array['OutlineColor'].get('G')):
    #             OutlineColor[1] = array['OutlineColor']['G']
    #         if (array['OutlineColor'].get('B')):
    #             OutlineColor[2] = array['OutlineColor']['B']
            
    #     if (isRichText):
    #         string += "\t%s:setDefaultOutline({r = %d, g = %d, b = %d, a = 255}, %f);\n" % (node, OutlineColor[0], OutlineColor[1], OutlineColor[2], OutlineSize)
    #     else:
    #         string += "\t%s:enableOutline({r = %d, g = %d, b = %d, a = 255}, %f);\n" % (node, OutlineColor[0], OutlineColor[1], OutlineColor[2], OutlineSize)



    # if (array.get('ShadowEnabled') != None):
    #     ShadowOffsetX = 0
    #     ShadowOffsetY = 0
    #     if (array.get('ShadowOffsetX') != None):
    #         ShadowOffsetX = array['ShadowOffsetX']

    #     if (array.get('ShadowOffsetY') != None):
    #         ShadowOffsetY = array['ShadowOffsetY']

    #     ShadowColor = [255,255,255]
    #     if (array.get('ShadowColor') != None) :
    #         if (array['ShadowColor'].get('R') != None):
    #             ShadowColor[0] = array['ShadowColor']['R']
    #         if (array['ShadowColor'].get('G') != None):
    #             ShadowColor[1] = array['ShadowColor']['G']
    #         if (array['ShadowColor'].get('B') != None):
    #             ShadowColor[2] = array['ShadowColor']['B']
    
    #     if (isRichText):
    #         string += "\t%s:setDefaultShadow({r = %d, g = %d, b = %d, a = 255}, {width = %f, height = %f});\n" % (node, ShadowColor[0], ShadowColor[1], ShadowColor[2], ShadowOffsetX, ShadowOffsetY)
    #     else:
    #         string += "\t%s:enableShadow({r = %d, g = %d, b = %d, a = 255}, {width = %f, height = $%f});\n" % (node, ShadowColor[0], ShadowColor[1], ShadowColor[2], ShadowOffsetX, ShadowOffsetY)
        
    return string




