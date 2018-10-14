# Creato da Alessio Torricelli
# Mail: Alessio92845@gmail.com

read -p "Inserisci il nome del File go: " FILE
	
FILE=${FILE%.*}

if [ -f "${FILE}.go" ]
then
	echo dio bono
	sleep 100000
	go build $FILE.go
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

sleep 100000