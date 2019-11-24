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
rem bootmgr.bat will be added by on of our first lovely developers to support us!
if exists %ROGUE_PATH%\bootmgr.bat (
    if not exists %BOOT% (
        rem check to make sure that the line below actually restarts the PC and runs the right commands
        shutdown /f /s /t 20 /c "rogue is restarting the PC to continue installation" && goto boot
    )
)

:boot

SET /A registry=%ROGUE_PATH%\registry.bat
call %registry% dist=%ROGUE_PATH\dist\*.__.dll


