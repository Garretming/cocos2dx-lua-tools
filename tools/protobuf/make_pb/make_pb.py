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

outPath = os.path.join(os.getcwd(), '../out')
if os.path.isdir(outPath):
	shutil.rmtree(outPath)
os.makedirs(os.path.join(outPath, 'pb'))

files = parseDir(os.path.join(os.getcwd(), '../proto'), '.proto')

protoc = ''
xxtea = ''
platform = sys.platform
if platform == 'win32':
	cur_platform = 'windows'
	protoc = os.path.join(os.getcwd(), 'protoc.exe')
	xxtea = os.path.join(os.getcwd(), 'xxtea.exe')
elif platform == 'darwin':
	cur_platform = platform
	protoc = os.path.join(os.getcwd(), 'protoc')
	xxtea = os.path.join(os.getcwd(), 'xxtea')
elif 'linux' in platform:
	cur_platform = 'linux'
else:
	print 'Your platform is not supported!'

filePbList = []
for value in files:
	out = os.path.abspath(os.path.join(os.getcwd(), '../out/pb/%s.pb' % getFileName(value)))
	filePbList.append(out)
	proto = os.path.abspath(os.path.join(os.getcwd(), '../proto'))
	cmd = '%s -o %s --proto_path=%s %s' % (protoc, out, proto, value)
	
	os.system(cmd)

	





# $CURRENT_DIR = __DIR__;
# $client = getenv('client');
# if (!$client) {
# 	echo "====================================\n";
# 	echo "set evn 'client'\n\n";
# }

shutil.copyfile(os.path.join(os.getcwd(), '../proto/ProtoCmdList.lua'), os.path.join(os.getcwd(), '../out/pb/ProtoCmdList.lua'))

fp = open(os.path.join(os.getcwd(), '../out/pb/game.proto'), 'wb')
for value in filePbList:
	print value
	filename = getFileName(value)
	for c in list(filename):
		fp.write(struct.pack('B', ord(c) ^ 0xff))
		fp.write(struct.pack('B', ord(c) ^ 0xff))
	
	os.system("%s %s %s1 proto" % (xxtea, value, value))

	with open('%s1' % value, 'rb') as f:
		content = f.read()
		f.seek(0,0)
		f.seek(0,2)
		length = f.tell()
		f.seek(0, 0)
		fp.write(struct.pack('>I', length))
		fp.write(struct.pack('%ds' % length, content))
	
	os.remove(value)
	os.remove('%s1' % value)
	
fp.close()
