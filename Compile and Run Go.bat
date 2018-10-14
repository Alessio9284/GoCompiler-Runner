@echo off

set /p FILE="Inserisci il nome del File go: "
	
set FILE=%FILE:.go=%
	
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