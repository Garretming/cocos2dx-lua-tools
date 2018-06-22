#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
import json
import shutil
import common
import sys
import re
import hashlib
inputPath = os.path.abspath(os.path.join(os.getcwd(), '../scripts'))
outPath = os.path.abspath(os.path.join(os.getcwd(), '../scriptsPackage'))

if not os.path.isdir(outPath):
	os.makedirs(outPath)


fileList, pathList = common.parseDir(inputPath, '.lua')


luajit = ''
xxtea = ''
if sys.platform == 'win32':
	luajit = os.path.join(os.getcwd(), '../lua/luajit-win32.exe')
	xxtea = os.path.join(os.getcwd(), '../cpp/xxtea.exe')
else:
	luajit = os.path.join(os.getcwd(), '../lua/luajit-mac')
	xxtea = os.path.join(os.getcwd(), '../cpp/xxtea')


os.chdir(os.path.join(os.getcwd(), '../lua'))

md5Values = {}
md5ValuesNew = {}
md5FileName = os.path.join(os.getcwd(), 'md5File.txt')
if os.path.isfile(md5FileName):
	fp = open(md5FileName)
	md5Values = json.load(fp)
	fp.close()

for value in fileList:
	md5 = common.getMd5File(value)
	key = os.path.join(value[len(inputPath)+1:])
	md5ValuesNew[key] = md5
	if md5 != md5Values.get(key):
		print u'>>>>>>>>>>>>>>加密脚本 filename = %s' % key

		# 生成jit
		luajitOutPath = os.path.join(outPath, 'luajit/%s' % os.path.split(key)[0])
		if not os.path.isdir(luajitOutPath):
			os.makedirs(luajitOutPath)

		os.system("%s -b %s %s/luajit/%sjit" % (luajit, value, outPath, key))

		# script加密
		xxteaScriptsOutPath = os.path.join(outPath, 'scripts')
		if not os.path.isdir(xxteaScriptsOutPath):
			os.makedirs(xxteaScriptsOutPath)
		
		os.system("%s %s %s/scripts/%s.luac lua" % (xxtea, value, outPath, common.getMd5(key.replace('\\', '/'))))

		# scriptjit 加密
		xxteaScriptsJitOutPath = os.path.join(outPath, 'scriptsjit')
		if not os.path.isdir(xxteaScriptsJitOutPath):
			os.makedirs(xxteaScriptsJitOutPath)
		
		os.system("%s %s/luajit/%sjit %s/scriptsjit/%s.luac lua" % (xxtea, outPath, key, outPath, common.getMd5(key.replace('\\', '/'))))

fp = open(md5FileName, 'w')
content = json.dumps(md5ValuesNew)
fp.write(content)
fp.close()



#删除多余的文件
fileList1, pathList1 = common.parseDir(os.path.join(outPath, 'scripts'), '.luac')
for value in fileList1:
	filename = common.getFileName(value)
	find = False
	for value1 in fileList:
		key = os.path.join(value1[len(inputPath)+1:])
		filename1 = common.getMd5(key.replace('\\', '/'))

		if filename == filename1:
			find = True
			break
	if not find:
		path = '%s/scripts/%s.luac' % (outPath, filename)
		os.remove(path)
		print u'>>>>删除脚本filename=%s' % os.path.abspath(path)[len(outPath)+1:]
		path = '%s/scriptsjit/%s.luac' % (outPath, filename)
		os.remove(path)
		print u'>>>>删除脚本filename=%s' % os.path.abspath(path)[len(outPath)+1:]

	


	