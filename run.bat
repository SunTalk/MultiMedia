@echo off

set PROCESSING="C:\processing3.4\processing-java.exe"

rem del /s output/

%PROCESSING% --sketch="%cd%\%1\" --force --run