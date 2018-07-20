@echo off

:: 设置网站路径
set filePath=d:\IYASAKA_Web\IYASAKAWeb

:: 设置备份文件路径
set backupFilePath=D:\iyasaka_web\Backup\Programm
:: 获取最新的文件夹
for /f "delims=" %%i in ('dir /b /ad /od "%backupFilePath%"') do (
    set "folder=%%i"
)
set reFilePath=%backupFilePath%\%folder%\IYASAKAWeb

:: 开始还原
xcopy %reFilePath% %filePath% /e/y
pause

