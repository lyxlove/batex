@echo off

::�������ļ�·��
set NewWebFilePath=%cd%\IYASAKAWeb
set NewPatFilePath=%cd%\NetPlatfrom


set FilePath=d:\iyasaka_web

::���ñ����ļ���·��
set BackupFilePath=D:\iyasaka_web\Backup\Programm
set BackupFolderName=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
::��ʱ�䴮�Ŀո��滻Ϊ0
set BackupFolderName=%BackupFolderName: =0%
set WholeBackupName=%BackupFilePath%\%BackupFolderName%

::���������ļ���
md %WholeBackupName%

::�����ļ�
xcopy %FilePath%\IYASAKAWeb %WholeBackupName%\IYASAKAWeb\ /e/y
xcopy %FilePath%\NetPlatfrom %WholeBackupName%\NetPlatfrom\ /e/y


echo "�������"
echo %NewWebFilePath%

if exist %NewWebFilePath% (

    xcopy %NewWebFilePath% %FilePath%\IYASAKAWeb\ /e/y
    echo "��վ�������"
) else (
    echo "Ŀ¼������"
)

pause



