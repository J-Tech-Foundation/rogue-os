if NOT defined %1 (
    echo "%PATH%\boot.bat>> unable to get setup config (JSON-STRING)" && exit 0
)
ELSE (
call boot-part-a.bat %1
)