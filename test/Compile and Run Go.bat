@echo off

set /p FILE="Inserisci il nome del File go: "
	
if exist %FILE%.go (
	go build %FILE%.go
	echo.
	pause
	cls
		
	if exist %FILE%.exe (
		call %FILE%.exe
	) else (
		exit
	)

	echo.
	echo Programma Terminato
	pause
)

if exist %FILE% (
	go build %FILE%
	echo.
	pause
	cls
	
	FILE=${FILE%%.*o}
	
	echo %FILE%
	
	pause
	
	if exist %FILE%.exe (
		call %FILE%.exe
	) else (
		exit
	)

	echo.
	echo Programma Terminato
	pause
)