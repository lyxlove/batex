@echo off
:start
echo ========================================  
echo # Items:                               #  
echo # 0- 备份数据库                        #  
echo # 4- Exit                              #  
echo ========================================  
echo # Please make a choice:                #  
echo.
set /p key=
if %key%==0 goto 0
if %key%==4 goto 4
goto c
pause
:0
call 数据库备份.bat
cls
goto start
:4
exit
goto start
:c
cls
goto start
echo 按任意键退出。
pause >nul