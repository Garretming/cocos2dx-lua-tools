#!/usr/bin/python
# -*- coding: UTF-8 -*-
import os
replaceString = []




replaceString.append(['#include "Crypto.h"','#include "gamecore/crypto/Crypto.h"'])
replaceString.append(['#include "scripting/lua-bindings/auto/lua_gamecore_auto.hpp"','#include "lua_gamecore_auto.hpp"'])
replaceString.append(['#include "ResourcesMgr.h"','#include "gamecore/ui/ResourcesMgr.h"'])
replaceString.append(['#include "ConfigurationEx.h"','#include "gamecore/ui/ConfigurationEx.h"'])
replaceString.append(['#include "XClient.h"','#include "gamecore/net/XClient.h"'])
replaceString.append(['#include "MessageBox.h"','#include "gamecore/ui/MessageBox.h"'])
replaceString.append(['#include "WindowSystem.h"','#include "gamecore/ui/WindowSystem.h"'])


string1 = '''
        std::string& ret = gamecore::crypto::Crypto::encryptXXTEA(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        return 1;
'''
string2 = '''
        std::string& ret = gamecore::crypto::Crypto::encryptXXTEA(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        lua_pushinteger(tolua_S, arg2);
        return 2;
'''
replaceString.append([string1,string2])


string1 = '''
        std::string& ret = gamecore::crypto::Crypto::decryptXXTEA(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        return 1;
'''
string2 = '''
        std::string& ret = gamecore::crypto::Crypto::decryptXXTEA(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        lua_pushinteger(tolua_S, arg2);
        return 2;
'''
replaceString.append([string1,string2])


string1 = '''
        std::string& ret = gamecore::crypto::Crypto::decodeBase64(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        return 1;
'''
string2 = '''
        std::string& ret = gamecore::crypto::Crypto::decodeBase64(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        lua_pushinteger(tolua_S, arg2);
        return 2;
'''
replaceString.append([string1,string2])



string1 = '''
        std::string& ret = gamecore::crypto::Crypto::encodeBase64(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        return 1;
'''
string2 = '''
        std::string& ret = gamecore::crypto::Crypto::encodeBase64(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        lua_pushinteger(tolua_S, arg2);
        return 2;
'''
replaceString.append([string1,string2])


string1 = '''
        std::string ret = cobj->getProtoData(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        return 1;
'''
string2 = '''
        std::string ret = cobj->getProtoData(arg0, arg1, arg2);
        lua_pushlstring(tolua_S,ret.c_str(),ret.length());
        lua_pushinteger(tolua_S, arg2);
        return 2;
'''
replaceString.append([string1,string2])



replaceString.append(['ok &= luaval_to_int32(tolua_S, 2,(int *)&arg0, "ccx.XClient:registerResponseHandler");','arg0 = toluafix_ref_function(tolua_S,2,0);'])
replaceString.append(['ok &= luaval_to_uint32(tolua_S, 2,&arg0, "ccx.XClient:http_send");','arg0 = toluafix_ref_function(tolua_S,2,0);'])
replaceString.append(['ok &= luaval_to_uint32(tolua_S, 2,&arg0, "ccx.ResourcesMgr:addImageAsyncProgress");','arg0 = toluafix_ref_function(tolua_S,2,0);'])
replaceString.append(['ok &= luaval_to_uint32(tolua_S, 2,&arg0, "ccx.ResourcesMgr:addImageSync");','arg0 = toluafix_ref_function(tolua_S,2,0);'])
replaceString.append(['ok &= luaval_to_uint32(tolua_S, 2,&arg0, "ccx.ResourcesMgr:addImageAsync");','arg0 = toluafix_ref_function(tolua_S,2,0);'])

        
        
            

        


COCOS_X_ROOT = os.environ['COCOS_X_ROOT']


filePath = "%s/tests/lua-empty-test/project/Classes/gamecore/tolua/lua_gamecore_auto.cpp"  % COCOS_X_ROOT
with open(filePath, 'r') as fp:
    content = fp.read()

for value in replaceString:
    content = content.replace(value[0], value[1])


with open(filePath, 'w') as fp:
    fp.write(content)

