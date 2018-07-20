@echo off
for /f "skip=1 tokens=1,2* delims==" %%a in (config.ini) do (
 if %%a==Server (
 set Server=%%b
 ) else if %%a==Pwd (
 set Pwd=%%b
 ) else if %%a==User (
 set User=%%b
  ) else if %%a==FolderPath (
 set FolderPath=%%b
  ) else if %%a==BackupFolderPath (
 set BackupFolderPath=%%b
  ) else if %%a==DBName (
 set DBName=%%b
 ) else if %%a==UploadWeb (
 set UploadWeb=%%b
 ) else if %%a==UploadPat (
 set UploadPat=%%b
 ) else if %%a==DBBackupFile (
 set DBBackupFile=%%b
 )
)