@echo off

if [%1]==[] goto CLIP
if [%1]==[download] goto DOWNLOAD
if [%1]==[dl] goto DOWNLOAD
if [%1]==[stash] goto GIT
if [%1]==[git] goto GIT
if [%1]==[script] goto SCRIPT
if [%1]==[scripts] goto SCRIPT
if [%1]==[adb] goto ADB
if [%1]==[dev] goto DEVTOOLS
if [%1]==[devtools] goto DEVTOOLS
if [%1]==[d] goto D
if [%1]==[c] goto C

cd /d %*
goto DONE

:CLIP
for /f %%i in ('Powershell.exe -executionpolicy remotesigned -File  D:\devtools\scripts\getClipboard.ps1') do set DIRNAME=%%i
cd /d %DIRNAME%
goto DONE

:D
cd /d D:\
goto DONE

:C
cd /d C:\
goto DONE

:DOWNLOAD
cd /d D:\DATA\V082172\Downloads
goto DONE

:GIT
cd /d D:\devtools\git
goto DONE

:SCRIPT
cd /d D:\devtools\scripts
goto DONE

:DEVTOOLS
cd /d D:\devtools
goto DONE

:ADB
cd /d C:\adb
goto DONE


:DONE