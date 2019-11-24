@echo off

SET /A ROGUE_PATH=%PATH%
SET /A BOOT=C:\bootmgr.bat


if %1=="/no-reboot" (
    SET /A BOOT=""
)
if %1=="/developer-mode" (
    @echo on
)
ELSE if %1=="/dm" (
    @echo on
)