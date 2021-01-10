@echo off
wmic process where name="Discord.exe" CALL setpriority 128
set "WMIC_CMD=wmic process where name^="Discord.exe" get /format:list ^| findstr Priority"
for /f "tokens=1* delims==" %%A in ('%WMIC_CMD%') do set PRIORITY=%%B
set startpriority=128
:start
wmic process where name="Discord.exe" CALL setpriority 128
set "WMIC_CMD=wmic process where name^="Discord.exe" get /format:list ^| findstr Priority"
for /f "tokens=1* delims==" %%A in ('%WMIC_CMD%') do set PRIORITY=%%B
set startpriority=128
timeout 5
goto start
pause