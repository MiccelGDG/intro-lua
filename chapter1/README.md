## Capitolo 1 - L'Interprete LUA

Una volta installato il vosto interprete LUA potete richiamarlo attraverso il vostro terminale 

```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
>
```
La ">" è il prompt dell'interprete.

Una volta raggiunto questo stato è possibile cominciare dare dei comandi al nostro interprete LUA e lui lo eseguirà correttamente; altrimenti vi sgrida attraverso un messaggio di errore  

```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
> 1 + 1
stdin:1: unexpected symbol near '1'
```
Come detto in precedenza, chi viene da altri linguaggi potrebbe trovarsi "in difficoltà" con LUA in quanto non è possibile scrivere, all'apparenza, una semplice addizione. Questo potrebbe scoraggiare molto da chi viene da linguaggio come Python o Ruby, ma se vi armate di pazienza LUA sarà poco ostico.


## Capitolo 1.1 - Ciao Mondo!

Iniziamo a dare un comando funzionante al nostro interprete lua con la stringa più usata di sempre ovvero: "Ciao Mondo!". 
Per stampare la stringa basta digitare nell'interprete il seguente comando

```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
> print("Ciao Mondo!")
Ciao Mondo!
```

Il comando "print" serve per stampare su schermo qualcosa. Qualcosa non è inesatto perché il nostro comando non stampa solo stringhe, ma anche numeri e altri dati.

```sh
> print(0x10)
16
> print(0xA)
10
> print(0xF)
15
> print(0xFF)
255
> print(0xFFED)
65517
> print(0xFFED*0xEDA)
249095634
> print(0xFFED+0xEDA)
69319
> print(0xFFED/0xEDA)
17.232246186218
> print(0xFFED-0xEDA)
61715
> print(0xFF^0xE)
4.9154414350646e+033
>

```

Provate anche voi!
## Capitolo 1.2 - Inserire qualcosa di nostro

Una volta raggiunta una certa confidenza con il comando "print", con dati che avete definito nell'argomento del suddetto comando, siete pronti nell'introduzione di un comando che vi permette dati da tastiera: io.read()

```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
> print(io.read())
Ciao!
Ciao!
```