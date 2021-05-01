@echo off
echo Downloading paper 1.16.5 latest build from paper api. (step 1/2)
powershell Invoke-WebRequest https://papermc.io/api/v1/paper/1.16.5/latest/download -OutFile ./paper-latest.jar
echo Downloading vanilla jar from BMCLAPI. (step 2/2)
if not exist cache mkdir cache
powershell Invoke-WebRequest https://bmclapi2.bangbang93.com/version/1.16.5/server -OutFile ./cache/mojang_1.16.5.jar
echo Done.
if not "%1"=="nopause" pause
