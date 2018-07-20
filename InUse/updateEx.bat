@echo off

::设置新文件路径
set NewWebFilePath=%cd%\IYASAKAWeb
set NewPatFilePath=%cd%\NetPlatfrom


set FilePath=d:\iyasaka_web

::设置备份文件夹路径
set BackupFilePath=D:\iyasaka_web\Backup\Programm
set BackupFolderName=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
::把时间串的空格替换为0
set BackupFolderName=%BackupFolderName: =0%
set WholeBackupName=%BackupFilePath%\%BackupFolderName%

::创建备份文件夹
md %WholeBackupName%

::备份文件
xcopy %FilePath%\IYASAKAWeb %WholeBackupName%\IYASAKAWeb\ /e/y
xcopy %FilePath%\NetPlatfrom %WholeBackupName%\NetPlatfrom\ /e/y


echo "备份完成"
echo %NewWebFilePath%

if exist %NewWebFilePath% (

    xcopy %NewWebFilePath% %FilePath%\IYASAKAWeb\ /e/y
    echo "网站更新完成"
) else (
    echo "目录不存在"
)

pause



