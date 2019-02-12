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

Se vedete una ripetizione nelle ultime due righe è normale. Il primo "Ciao" è l'input della tastiera ricavato dal comando io.read(), mentre il secondo è il print del valore restituito dal comando io.read() (indovinate il valore)


## Capitolo 1.3 - Tipi e Valori

LUA, come per Javascript, è un linguaggio dinamico. Non ci sono definizioni di tipo; ogni valore di LUA ha un suo tipo.

Il comando "type()" ci restituisce il tipo di dato passato

```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
 >print(type("Il GDG è bello!"))  --> stringa
 >print(type(10.4*3))         --> number
 >print(type(print))          --> function
 >print(type(type))           --> function
 >print(type(true))           --> boolean
 >print(type(nil))            --> nil
 >print(type(type(X)))        --> stringa!
```
L'ultima notazione restituisce una stringa, perché il comando "type()" restituisce il tipo del valore passato come stringa.

Da notare che pure i comandi "print" e "type" restituiscono "function" come tipo di dato

## Capitolo 1.4 Le variabili

Come detto, LUA non prevede la tipizzazione dei dati e questo di riflette sulla definizione delle variabili dove non richiede la definizione dei tipi

Se una variabile non contiene alcun dato, viene restituito il valore nullo nil


```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
 >print(b) --> nil
 >b = 10
 >print(b) --> 10
```

Le variabile b viene definita come "globale".
LUA permette di lavorare col Garbage Collector, in quanto ci permette di eliminare la variabile globale "b" con la seguente notazione

```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
 >b = nil
 >print(b) --> nil
```

Esitono anche variabili di tipo "locale" che a differenza di quelle locali, vengono eliminate dopo dell'esecuzione del programma(e non solo, ma ne riparleremo).

Vengono definite nella seguente notazione:


```sh
$ lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
 >local b = 0
```
