@echo off
:start
echo ========================================  
echo # Items:                               #  
echo # 0- �������ݿ�                        #  
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
call ���ݿⱸ��.bat
cls
goto start
:4
exit
goto start
:c
cls
goto start
echo ��������˳���
pause >nul