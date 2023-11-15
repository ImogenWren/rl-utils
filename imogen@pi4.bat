@echo off
title imogen@pi4_ssh
:start
echo Attempting Connection with imogen@pi4.local
ssh imogen@pi4.local
echo Closing Connection or Reattempting...
pause
echo Attempting Connection with  imogen@192.168.1.117
ssh imogen@192.168.1.117
echo Closing Connection... Trying again in 6
set counter=5
:loop
if %counter% lss 0 (
	goto start
) else (
	echo %counter%
	set /a "counter-=1"
	timeout /nobreak /t 1 >nul
	goto loop
)
:end



