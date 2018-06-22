#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
import json
import shutil
import common
import sys
import re

baseDir = os.path.abspath(os.path.join(os.getcwd(), '../uires'))


fileList, dirList = common.parseDir('%s_original' % baseDir, '.png')



def package(inputPath, outPath, items, textureFormat, start): 

	TexturePacker = os.environ['TEXTURE_PACKER']
	# shutil.rmtree(outPath)
	if len(items) > 0:
		cmd  = "%s --smart-update " % TexturePacker
		cmd += "--texture-format png "
		# cmd += "--multipack "
		cmd += "--data %s/sheet.plist "  % outPath
		cmd += "--sheet %s/sheet.png " % outPath
		cmd += "--maxrects-heuristics best "
		cmd += "--enable-rotation "
		cmd += "--scale 1 "
		cmd += "--border-padding 2 "
		cmd += "--shape-padding 2 "
		cmd += "--max-size 2048 "
		cmd += "--opt %s " % textureFormat
		cmd += "--size-constraints NPOT "
		cmd += "--dither-fs-alpha "
		cmd += "--trim-mode Trim "

		if sys.platform == 'win32':
			cmd += "%s " % inputPath
		else:
			cmd += "%s/*.png " % inputPath
		os.system(cmd)

		with open("%s/sheet.plist "  % outPath) as fp:
			content = fp.read()
			match = re.findall('<key>(.+?\\.png)<\\/key>', content)
			if match:
				for item in match:
					content = content.replace(item, 'uires/%s/%s' %(start, item))
		
		with open('%s/sheet.plist' % outPath, 'w') as fp:
			fp.write(content)
			
			

md5ValuesOld = {}
md5ValuesNew = {}

md5FileName = '%s_original/pngMd5File.txt' % baseDir
if os.path.isfile(md5FileName):
	fp = open(md5FileName)
	md5ValuesOld = json.load(fp)
	fp.close()

for value in dirList:
	key = value[len(baseDir)+len('_original')+1:]
	key = key.replace('\\', '/')
	md5ValuesNew[key] = {}

	if os.path.split(value)[1].lower().find('sheet') >= 0:
		items = os.listdir(value)



		change = False
		for item in items:
			if item[0] == '.':
				items.remove(item)
			else:
				if md5ValuesOld.get(key) == None:
					change = True
				
				md5ValuesNew[key][item] = common.getMd5File(os.path.join(value, item))
				if not change:
					if md5ValuesOld.get(key) != None and md5ValuesOld[key].get(item) != None and md5ValuesOld[key][item] != md5ValuesNew[key][item]:
						change = True

		md5ValuesNew[key]['__count'] = len(items)
		if not change and len(items) != md5ValuesOld[key]['__count']:
			change = True
		
		if change:
			print u'>>>>>>>>>>生成sheet图片 filename=%s' % value
			package(value, '%s/%s' % (baseDir, key), items, 'RGBA8888', key)

	else:
		items = os.listdir(value)
		outPath = os.path.join(baseDir, key)
		if not os.path.isdir(outPath):
			os.makedirs(outPath)
		for item in items:
			src = os.path.join(value, item)
			if item[0] != '.' and os.path.isfile(src):
				md5ValuesNew[key][item] = common.getMd5File(src)
				if md5ValuesOld.get(key) == None or md5ValuesOld[key].get(item) == None or md5ValuesOld[key][item] != md5ValuesNew[key][item]:
					print u'>>>>>>>>>>拷贝图片 filename=%s' % os.path.abspath(src)				
					shutil.copyfile(src, os.path.join(outPath, item))

    


fp = open(md5FileName, 'w')
content = json.dumps(md5ValuesNew)
fp.write(content)
fp.close()


for key, value in md5ValuesOld.items():
	items = md5ValuesOld[key]
	for item in items:
		if md5ValuesNew.get(key) == None or md5ValuesNew[key].get(item) == None:
			if os.path.split(key)[1].lower().find('sheet') < 0:
				dest =  '%s/%s/%s' % (baseDir, key, item)
				print u'>>>>>>>>>>删除图片 filename=%s' % os.path.abspath(dest)	
				os.remove(dest)
			