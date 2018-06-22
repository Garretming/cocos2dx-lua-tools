#!/usr/bin/python
# -*- coding: UTF-8 -*-
import shutil
import os

list = os.listdir(os.getcwd())
for value in list:
    if value.endswith('.pyc'):
        os.remove(value)


