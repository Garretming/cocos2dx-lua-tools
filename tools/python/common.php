#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
import shutil
import sys
import pickle
import struct
def parseDir(dir,postfix=None,prefix=None):
    dir = os.path.abspath(dir)
    fileList = []
    
    for root, subDir, files in os.walk(dir):
        for filename in files:
            if postfix:
                if filename.endswith(postfix):
                    fileList.append(os.path.join(root,filename))
            elif prefix:
                if filename.startswith(prefix):
                    fileList.append(os.path.join(root,filename))
            else:
                fileList.append(os.path.join(root,filename))

     
    return fileList


def getFileName(filename):
    filename = os.path.split(filename)[1]
    return os.path.splitext(filename)[0]
    