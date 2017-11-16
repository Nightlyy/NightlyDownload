@echo off
title NightlyDownload
echo NightlyDownload
set INPUT=Would you like to download something? (Y/N)
set /P INPUT=Would you like to download something? (Y/N): %=%
If N=="y" goto startDownload
If N=="n" goto exit

:startDownload
echo. Download Started
pause

:exit
EXIT /B

