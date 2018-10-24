:: Creato da Alessio Torricelli
:: Mail: Alessio92845@gmail.com

@echo off

set /p FILE="Inserisci il nome del file da compilare o eseguire: "
	
set FILE=%FILE:.go=%
set FILE=%FILE:.exe=%
	
if exist %FILE%.go (
	go build %FILE%.go
	echo.
	echo Compilazione Completata
	pause
	cls
		
	if exist %FILE%.exe (
		call %FILE%.exe
	) else (
		exit
	)

	goto fine
) else (
	if exist %FILE%.exe (
		cls
		call %FILE%.exe
		
		goto fine
	) else (
		exit
	)
)

:fine
echo.
echo Programma Terminato
pause