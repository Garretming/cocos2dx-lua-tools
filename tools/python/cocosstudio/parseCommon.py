#!/usr/bin/python
# -*- coding: UTF-8 -*-
import common
import globalvar as gl
def parse(node, classname, array, parent):
    string = ''
    AnchorPoint = [0,0]
    if (array.get('AnchorPoint') != None) :
        if (array['AnchorPoint'].get('ScaleX') != None):
            AnchorPoint[0] = array['AnchorPoint']['ScaleX']
        if (array['AnchorPoint'].get('ScaleY') != None):
            AnchorPoint[1] = array['AnchorPoint']['ScaleY']
        string += "\t%s:setAnchorPoint(%.2f, %.2f);\n" % (node, AnchorPoint[0], AnchorPoint[1])

    

    if (array.get('Scale') != None): 
        Scale = [1.0,1.0]
        if ( array['Scale'].get('ScaleX') != None ):
            Scale[0] = array['Scale']['ScaleX']

        if ( array['Scale'].get('ScaleY') != None ):
            Scale[1] = array['Scale']['ScaleY']
        if (Scale[0] != 1):
            string += "\t%s:setScaleX(%.2f);\n" % (node, Scale[0])
        if (Scale[1] != 1):
            string += "\t%s:setScaleY(%.2f);\n" % (node, Scale[1])
    

    if (array.get('BlendFunc') != None) :
        BlendFunc = [1,771]
        if (array['BlendFunc'].get('Src') != None):
            BlendFunc[0] = array['BlendFunc']['Src']
        
        if ( array['BlendFunc'].get('Dst') != None):
            BlendFunc[1] = array['BlendFunc']['Dst']
        
        if (BlendFunc[0] != 1 or BlendFunc[1] != 771):
            string += "\t%s:setBlendFunc({src = %d, dst = %d});\n" % (node, BlendFunc[0], BlendFunc[1])


    if (array.get('CColor') != None): 
        CColor = [255,255,255]
        CColor[0] = array['CColor'].get('R', 255)
        CColor[1] = array['CColor'].get('G', 255)
        CColor[2] = array['CColor'].get('B', 255)

        if (CColor[0] != 255 or CColor[1] != 255 or CColor[2] != 255): 
            if (classname == 'TextObjectData'):
                string += "\t%s:setTextColor({r = %d, g = %d, b = %d});\n" % (node, CColor[0], CColor[1], CColor[2])
            else:
                string += "\t%s:setColor({r = %d, g = %d, b = %d});\n" % (node, CColor[0], CColor[1], CColor[2])



    if (array.get('Alpha') != None): 
        string += "\t%s:setOpacity(%d);\n" % (node, array['Alpha'])

    if (array.get('VisibleForFrame') != None):
        if (array['VisibleForFrame']):
            string += "\t%s:setVisible(true);\n" % node
        else:
            string += "\t%s:setVisible(false);\n" % node

    # 点击回调
    if (array.get('CallBackType') != None):
        if array.get('CallBackName', '') != '':
            gl.get_value('callback')[array['CallBackName']] = classname
            if classname == 'TextFieldObjectData':
                string += "\t%s:registerScriptEditBoxHandler(handler(self, self._%s));\n" % (node, array['CallBackName'])
            elif classname == 'ListViewObjectData':
                string += "\t%s:setEventCallback(handler(self, self._%s));\n" % (node, array['CallBackName'])
            else:
                string += "\t%s:onClick(handler(self, self._%s));\n" % (node, array['CallBackName'])

    if (array.get('TouchEnable') != None):
        if (array['TouchEnable']):
            string += "\t%s:setTouchEnabled(true);\n" % node
        else:
            string += "\t%s:setTouchEnabled(false);\n" % node
    elif (classname == 'ScrollViewObjectData' or classname == 'PanelObjectData' or classname == 'ListViewObjectData' or classname == 'PageViewObjectData'):
        string += "\t%s:setTouchEnabled(false);\n" % node
    

    if (array.get('FlipX') != None and array['FlipX']):
        string += "\t%s:setFlippedX(true);\n" % (node)

    if (array.get('FlipY') != None and array['FlipY']):
        string += "\t%s:setFlippedY(true);\n" % node

    if (array.get('RotationSkewX') != None): 
        string += "\t%s:setRotationSkewX(%.2f);\n" % (node, array['RotationSkewX'])

    if (array.get('RotationSkewY') != None): 
        string += "\t%s:setRotationSkewY(%.2f);\n" % (node, array['RotationSkewY'])


    Size = [0,0]
    if (array.get('Size') != None):
        if (array['Size'].get('X') != None):
            Size[0] = array['Size']['X']

        if (array['Size'].get('Y') != None ):
            Size[1] = array['Size']['Y']

        if (array.get('UserData') != None and array['UserData'] != ""):
            UserData = array['UserData'].lower()

            if (UserData.find('winwidth') >= 0 and Size[0] != 0):
                d_width = gl.get_value('designSize')[0] - Size[0]
                Size[0] = "WinSize.width - %.2f" % (d_width)
        

            if (UserData.find('winheight') >= 0 and Size[1] != 0):
                d_height = gl.get_value('designSize')[1] - Size[1]
                Size[1] = "WinSize.height - %.2f" % (d_height)

        string += "\t%s:setContentSize({width = %s, height = %s});\n" % (node, Size[0], Size[1])

    Position = [0,0]
    if (array.get('Position') != None):
        if ( array['Position'].get('X') != None ):
            Position[0] = array['Position']['X']
        
        if ( array['Position'].get('Y') != None ):
            Position[1] = array['Position']['Y']
        
        Position = common.parsePosition(Position, AnchorPoint, Size, parent, node, array)
        string += "\t%s:setPosition(%s, %s);\n" % (node, Position[0], Position[1])


    return string



def parseCallback(callback,classname):
    string = ''
    for key, value in callback.items():
        if value == 'ButtonObjectData':
            string += '''
function %s:_%s(sender)
    if self.m_ClickDelegate and self.m_ClickDelegate.%s then
        return self.m_ClickDelegate:%s(sender);
    end
    if self.%s then
        return self:%s(sender);
    end
end

''' % (classname, key, key, key, key, key)
        elif value == 'TextFieldObjectData':
            string += '''
--eventName:(began, ended, changed)
function %s:_%s(eventName, editBox)
    if self.m_ClickDelegate and self.m_ClickDelegate.%s then
        return self.m_ClickDelegate:%s(eventName, editBox);
    end
    if self.%s then
        return self:%s(eventName, editBox);
    end
end

''' % (classname, key, key, key, key, key)
        elif value == 'ListViewObjectData':
            string += '''
--@callback:('count', listView)                              --总共cell数量
--@callback:('size', listView, row)                          --每个cell的尺寸
--@callback:('delay', listView, row, column, index)          --每个cell上item延时创建的时间
--@callback:('add', listView, row, column, index, cell)      --添加每个item
--@callback:('start', listView, row, nil, nil, cell)         --开始点击cell
--@callback:('end', listView, row, nil, nil, cell)           --结束点击cell
function %s:_%s(eventName, listView, row, column, index, cell)
    if self.m_ClickDelegate and self.m_ClickDelegate.%s then
        return self.m_ClickDelegate:%s(eventName, listView, row, column, index, cell);
    end
    if self.%s then
        return self:%s(eventName, listView, row, column, index, cell);
    end
end

''' % (classname, key, key, key, key, key)
    
    return string
