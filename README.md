# GoCompiler-Runner

## Compilatore per Go
- il programma inizialmente richiede il nome del file
- se è esplicitato il .exe o il .sh (ad esempio prova.exe o prova.sh) fa partire l'eseguibile senza compilare il file go
- se non è esplicitato cerca prima il file .go (ad esempio prova.go) e se lo trova lo compila poi lo esegue se no cerca l'eseguibile e lo esegue
- se non trova nessun file .go .exe o .sh si chiude istantaneamente senza riferire messaggi inutili
