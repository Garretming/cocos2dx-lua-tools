#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os

delDir = os.path.join(os.getcwd(), 'cocosstudio');
files = os.listdir(delDir)
for value in files:
    if value.endswith('.pyc'):
        os.remove(os.path.join(delDir, value))


