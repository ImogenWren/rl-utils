@echo off

set "counter=10"

:loop
if %counter% lss 1 (
    goto end
) else (
    echo %counter%
    set /a "counter-=1"
    timeout /nobreak /t 1 >nul
    goto loop
)

:end
echo Blastoff!
