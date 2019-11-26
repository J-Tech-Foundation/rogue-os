@echo off
rem we are reconfiguring how this bad boy works, will be a day...
rem -----

if NOT defined %RPATH% (
    SET /A RPATH=%PATH%
)
rem this will be removed soon, does not even work 
if NOT exist %RPATH%\registry.bat (
    echo "%RPATH\registry.bat not found, unable to set registrars... error in %RPATH%\boot-err" 
    echo "%RPATH%\registry.bat not found, unable to set variables" > %RPATH%\boot-err && exit 0
)
rem this will be handled by jt nexus
if NOT exist %RPATH%\boot.ini (
    echo "unable to setup boot... error in %RPATH%\boot-err"
    echo "%RPATH%\boot.ini not found, unable to write boot record" > %RPATH%\boot-err && exit 0
)
rem we need designs and code for the os, submit your code andboot design for rgboot.exe
if NOT exist %RPATH%\rgboot.exe (
    echo "unable to setup boot... error in %RPATH%\boot-err"
    echo "%RPATH%\rgboot.exe not found, unable to set master boot record" > %ROATH%\boot-err && exit 0
)
rem command prompt 
if NOT defined %executor% (
    set /A executor="%RPATH%\terminal.exe"
)
rem check if the terminal actually exists
if NOT exist %executor% (
    echo "unable to install rogue command prompt... error in %RPATH%\boot-err"
    echo "%RPATH%\terminal.exe not found, unable to use rogue terminal for next download steps" > %RPATH%\boot-err && exit 0
)


