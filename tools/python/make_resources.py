#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
import json
import shutil
import common
import sys
import re
import hashlib
import subprocess


inputPath = os.path.abspath(os.path.join(os.getcwd(), '../Resources'))
outPath = os.path.abspath(os.path.join(os.getcwd(), '../ResourcesPackage'))
outPath1 = '%s1' % outPath

if os.path.isdir(outPath):
	shutil.move(outPath, outPath1)

os.makedirs(outPath)

md5ValuesOld = {}
md5ValuesNew = {}
md5FileName = '%s/makeResourcesMd5File.txt' % os.path.join(os.getcwd())
if os.path.isfile(md5FileName):
	fp = open(md5FileName)
	md5ValuesOld = json.load(fp)
	fp.close()

xxtea = ''
if sys.platform == 'win32':
	xxtea = os.path.join(os.getcwd(), '../cpp/xxtea.exe')
else:
	xxtea = os.path.join(os.getcwd(), '../cpp/xxtea')

fileList,pathList = common.parseDir(inputPath)

for filename in fileList:
	if os.path.splitext(filename)[1] == '.lua':
		continue
	elif os.path.splitext(filename)[1] == '.png' or os.path.splitext(filename)[1] == '.jpg' or os.path.splitext(filename)[1] == '.jpeg':

		key = filename[len(inputPath) + 1:]
		path = os.path.split(key)[0]
		if not os.path.isdir(os.path.join(outPath, path)):
			os.makedirs(os.path.join(outPath, path))


		print u'>>>>拷贝文件 filename=Resources%s%s' % (os.sep, key)

		md5ValuesNew[key] = common.getMd5File(filename)
		if md5ValuesOld.get(key) == None or md5ValuesNew[key] != md5ValuesOld[key]:
			os.system("%s %s %s image" % (xxtea, filename, os.path.join(outPath, key)))
		else:
			shutil.copy(os.path.join(outPath1, key), os.path.join(outPath, key))
	elif os.path.splitext(filename)[1] == '.plist':
		key = filename[len(inputPath) + 1:]
		path = os.path.split(key)[0]
		if not os.path.isdir(os.path.join(outPath, path)):
			os.makedirs(os.path.join(outPath, path))

		print u'>>>>拷贝文件 filename=Resources%s%s' % (os.sep, key)
		shutil.copy(filename, os.path.join(outPath, key))


shutil.copytree(os.path.join(os.getcwd(), '../scriptsPackage/scripts'), os.path.join(outPath, 'scripts'))
shutil.copytree(os.path.join(os.getcwd(), '../scriptsPackage/scriptsjit'), os.path.join(outPath, 'scriptsjit'))


fp = open(md5FileName, 'w')
content = json.dumps(md5ValuesNew)
fp.write(content)
fp.close()



if os.path.isdir(outPath1):
	shutil.rmtree(outPath1)

