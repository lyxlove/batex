call config.bat
pause
if %UploadWeb%==1 (
 echo "������վ"
)
if %UploadPat%==1 (
 echo "����ƽ̨"
) else if %UploadPat%==0 (
 echo "������ƽ̨"
)
echo %cd%
pause