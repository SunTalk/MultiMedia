@echo off 

git add .
git commit -m "%1"
git push origin master

echo push complete