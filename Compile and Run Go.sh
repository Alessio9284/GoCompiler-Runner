# Creato da Alessio Torricelli
# Mail: Alessio92845@gmail.com

clear

read -p "Inserisci il nome del File go: " FILE
	
FILE=${FILE%.*}

if [ -f "${FILE}.go" ]; then
	go build $FILE.go
	echo
	echo Compilazione Completata
	read -n1 -r -p "Premere un tasto per continuare . . . " key
	clear
	
	if [ -f $FILE ]; then
		./$FILE
	else
		exit
	fi
elif [ -f $FILE ]; then
	clear
	./$FILE
else
	exit
fi

echo
echo Programma Terminato
read -n1 -r -p "Premere un tasto per continuare . . . " key