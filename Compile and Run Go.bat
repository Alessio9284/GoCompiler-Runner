:: Created by: Alessio Torricelli
:: Mail: Alessio92845@gmail.com

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

