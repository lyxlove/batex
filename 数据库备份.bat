call config.bat
set BackupName=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
echo.
echo ��ʼ�������ݿ�%DBName%.......
osql -S %Server% -U %User% -P %Pwd% -d %DBName% -Q "BACKUP DATABASE %DBName% to disk='D:/%BackupName%.bak'"
echo ������ɣ�
pause