chcp 936

SET CURPATH=%~dp0

rem if exist %CURPATH%\cocos2d-x rmdir %CURPATH%\cocos2d-x
rem mklink /J  %CURPATH%\cocos2d-x  %CURPATH%\..\..\libs\cocos2d-x-3.12

if exist %CURPATH%\Resources\scripts rmdir %CURPATH%\Resources\scripts
mklink /J  %CURPATH%\Resources\scripts  %CURPATH%\scripts

if exist %CURPATH%\Resources\uires rmdir %CURPATH%\Resources\uires
mklink /J  %CURPATH%\Resources\uires  %CURPATH%\uires


rem if exist %CURPATH%\project\proj.win32\Debug.win32\Resources rmdir %CURPATH%\project\proj.win32\Debug.win32\Resources
rem mklink /J  %CURPATH%\project\proj.win32\Debug.win32\Resources  %CURPATH%\Resources
pause