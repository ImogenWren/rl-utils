@echo off

set "counter=10"

:loop
if %counter% lss 1 (
    goto end
) else (
    echo %counter%
    set /a "counter-=1"
    ping -n 2 127.0.0.1 >nul
    goto loop
)

:end
echo Blastoff!
