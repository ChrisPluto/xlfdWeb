@echo off
cd /d %~dp0

git add .
git commit -m "daily update %date% %time%"
git push

echo Done!
pause
