#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
import json
import shutil
import common
import sys
import re


updateType = None
if len(sys.argv) > 1:
    updateType = sys.argv[1]



inputPath = os.path.abspath(os.path.join(os.getcwd(), '../ResourcesPackage'))
outPath = os.path.abspath(os.path.join(os.getcwd(), '../update/out'))
fileList,pathList = common.parseDir(inputPath)


versionPath = os.path.join(os.getcwd(), '../update/out/version.html')
md5FileName = os.path.join(os.getcwd(),'../update/md5File.txt')
updateMd5FileName = os.path.join(os.getcwd(), '../update/out/updateFile.txt')

version = 1
md5ValuesNew = {}
md5ValuesOld = {}
updateMd5Values = {}
update = False
if os.path.isfile(versionPath):
    fp = open(versionPath)
    version = int(fp.read())  
    fp.close()



#生成第一个版本
if updateType != None and updateType.lower() == 'new':
    shutil.rmtree(os.path.join(os.getcwd(), '../update/out'))
    os.makedirs(os.path.join(os.getcwd(), '../update/out'))
    for filename in fileList:
        key = filename[len(inputPath)+1:]
        md5ValuesNew[key] = common.getMd5File(filename)
else:
    if os.path.isfile(md5FileName):
        fp = open(md5FileName)
        md5ValuesOld = json.load(fp)
        fp.close()
    
    if os.path.isfile(updateMd5FileName):
        fp = open(updateMd5FileName)
        updateMd5Values = json.load(fp)
        fp.close()
    
    for filename in fileList:
        key = filename[len(inputPath)+1:]
        md5ValuesNew[key] = common.getMd5File(filename)
        if md5ValuesOld.get(key) == None or md5ValuesNew[key] != md5ValuesOld[key]:
            print key
            updateMd5Values[key] = [md5ValuesNew[key], os.path.getsize(filename)]
            path = os.path.split(key)[0]
            if not os.path.isdir(os.path.join(outPath, path)):
                os.makedirs(os.path.join(outPath, path))
            update = True
            shutil.copy(filename, os.path.join(outPath, key))



if update:
    version = version + 1
fp = open(versionPath, 'w')
fp.write(str(version))
fp.close()


fp = open(md5FileName, 'w')
content = json.dumps(md5ValuesNew)
fp.write(content)
fp.close()

fp = open(updateMd5FileName, 'w')
content = json.dumps(updateMd5Values)
fp.write(content)
fp.close()

if update:
    print u'>>>>>>>>更新成功 %s' % str(version)

