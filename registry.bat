@echo off
if not defined %1 (
    echo "registry:   unable to save variable" && exit 0
)
if %1
