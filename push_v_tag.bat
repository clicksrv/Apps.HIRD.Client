@echo off

title Deploying Version as APK Release on GitHub

for /F "tokens=1,* delims=version: " %%A in ('find "version: " ^< "pubspec.yaml"') do set v=%%A

echo [ Releasing v%v% ]

set commit_msg=Pushing Release v%v%

git pull
git add .
git commit -m "%commit_msg%"
git tag v%v%
git push origin
git push origin --tags

echo:
echo:

pause