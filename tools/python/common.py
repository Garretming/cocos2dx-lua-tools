#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
import shutil
import sys
import hashlib
import io
def parseDir(dir,postfix=None,prefix=None):
	dir = os.path.abspath(dir)
	fileList = []
	dirList = set()
	for root, subDir, files in os.walk(dir):
		for filename in files:
			
			if postfix:
				if filename.endswith(postfix):
					dirList.add(root)
					fileList.append(os.path.join(root,filename))
			elif prefix:
				if filename.startswith(prefix):
					fileList.append(os.path.join(root,filename))
					dirList.add(root)

			else:
				fileList.append(os.path.join(root,filename))
				dirList.add(root)

	
	return fileList,dirList


def getFileName(filename):
	filename = os.path.split(filename)[1]
	return os.path.splitext(filename)[0]
    

def getMd5File(filename):
	m = hashlib.md5()
	fp = open(filename,'rb')
	bytes = fp.read(1024)
	while(bytes != b''):
		m.update(bytes)
		bytes = fp.read(1024)
	fp.close()

	return m.hexdigest()

def getMd5(str):
	m = hashlib.md5()
	m.update(str)
	return m.hexdigest()