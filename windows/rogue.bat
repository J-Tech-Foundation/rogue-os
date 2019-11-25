@echo off
rem we are reconfiguring how this bad boy works, will be a day...
rem -----

if NOT defined %RPATH% (
    SET /A RPATH=%PATH%
)
if NOT exist %RPATH%\registry.bat (
    echo "">%RPATH%\registry.bat
    echo "@echo off\nif not defined %1 (\nexit 1\n)\nset /A %1 && exit 0\n"
)
if NOT exist %RPATH%\boot.ini (
    echo "unable to setup boot... error in %RPATH%\boot-err"
    echo "%RPATH%\boot.ini not found, unable to write boot record" > %RPATH%\boot-err && exit 0
)
