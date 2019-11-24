@echo on

rem mkdir distilled



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
)
