@echo off
cd /d %~dp0

echo Building site...
hugo

echo Adding files...
git add .

echo Committing...
git commit -m "update %date% %time%"

echo Pulling...
git pull --rebase origin main
IF ERRORLEVEL 1 (
  echo [ERROR] pull failed. fix conflicts then run again.
  pause
  exit /b 1
)

echo Pushing to GitHub...
git push origin main
echo Done!
pause
