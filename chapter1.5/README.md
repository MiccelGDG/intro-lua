## Capitolo 1.5 - I file sorgenti di LUA

Finora abbiamo dato dei comandi al nostro interprete **LUA** attraverso il terminale; ma se volessimo scrivere una manciata di istruzioni in un file per poi darle in pasta a **LUA** ?

La risposta? 

![](https://github.com/MiccelGDG/intro-lua/blob/master/img/off-course.gif)



Scegliete il vostro editor di testo preferito(anche il Blocco Note di Windows va bene), create un file di testo inserite le seguenti righe di codice:



```lua
local a = 0
print(a)

```

Salvate il file con un nome qualsiasi(es. main) ma con l'**estensione** .lua

Successivamente avviate il vostro **terminale** e digitate 



```sh
$ lua.exe main.lua
0

```

Dove lo "0" è il valore contenuto nella variabile **locale** "a".

Nella cartella **code1** potete cambiare il valore della variabile a piacimento.

Piccolo esercizio: cosa restituisce l'interprete LUA se cancelliamo la prima riga? Restituisce un errore? 
