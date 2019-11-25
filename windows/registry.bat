@echo off
if not defined %1 (
    exit 1
)
set /A %1 && exit 0
