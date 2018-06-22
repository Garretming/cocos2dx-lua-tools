
chcp 936

setx client %~dp0

rem set NDK_ROOT path
setx NDK_ROOT D:\tool\ndk\android-ndk-r10e
echo "%NDK_ROOT%" 

rem set PYTHON_BIN path
setx PYTHON_BIN  D:\python2.7.13\python.exe
echo "%PYTHON_BIN%" 

rem set COCOS_X_ROOT path
setx COCOS_X_ROOT  C:\Users\ZJF_Client\Downloads\cocos2d-x-3.16
echo "%COCOS_X_ROOT%" 

rem set TEXTURE_PACKER path
setx TEXTURE_PACKER D:\TexturePacker\bin\TexturePacker.exe

pause
