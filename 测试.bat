call config.bat
pause
if %UploadWeb%==1 (
 echo "升级网站"
)
if %UploadPat%==1 (
 echo "升级平台"
) else if %UploadPat%==0 (
 echo "不升级平台"
)
echo %cd%
pause