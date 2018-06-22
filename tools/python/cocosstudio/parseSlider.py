#!/usr/bin/python
# -*- coding: UTF-8 -*-
def parse(node, array):
    string = ''
    string += "\t%s = Slider:create();\n" % node

    filename = "'%s'" % array['BackGroundData']['Path']
    type = 1
    if (array['BackGroundData']['Type'] == 'Default'):
        filename = ''
    if (array['BackGroundData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadBarTexture(%s, %d);\n" % (node, filename, type)


    filename = "'%s'" % array['ProgressBarData']['Path']
    type = 1
    if (array['ProgressBarData']['Type'] == 'Default'):
        filename = ''
    if (array['ProgressBarData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadProgressBarTexture(%s, %d);\n" % (node, filename, type)



    filename = "'%s'" % {array['BallNormalData']['Path']}
    type = 1
    if (array['BallNormalData']['Type'] == 'Default'):
        filename = ''
    if (array['BallNormalData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadSlidBallTextureNormal(%s, %d);\n" % (node, filename, type)


    filename = "'%s'" % {array['BallPressedData']['Path']}
    type = 1
    if (array['BallPressedData']['Type'] == 'Default'):
        filename = ''
    if (array['BallPressedData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadSlidBallTexturePressed(%s, %d);\n" % (node, filename, type)


    filename = "'%s'" % {array['BallDisabledData']['Path']}
    type = 1
    if (array['BallDisabledData']['Type'] == 'Default'):
        filename = ''
    if (array['BallDisabledData']['Plist'] == ''):
        type = 0
    if (filename != ''):
        string += "\t%s:loadSlidBallTextureDisabled(%s, %d);\n"% (node, filename, type)
    
    return string