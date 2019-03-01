## Capitolo 3 - Istruzioni di LUA

Finora abbiamo abbiamo parlato di comandi da dare a LUA per compiere determinate azioni. Adesso trattiamo una serie di **istruzioni convenzionali e non convenzionali** che prendono spuntono da linguaggi come C e Pascal.

### Assegnazioni

LUA supporta diversi tipi di assegnazioni; la più utilizzata è l'**assegnazione singola**:

```lua
local a = 0 --> Alla variabile "a" viene assegnata il 
            --> valore 0
```

Inoltre LUA permette l'**assegnazione multipla**, dove una lista di valori viene assegnata ad una lista di variabili e viene applicata utilizzando la seguente notazione:

```lua
a, b = 1 , 4
            
```

NB: notare l'assenza della parole chiave **local**

Con l'assegnazione multipla è possibile eseguire dei semplici swap tra variabili:
```lua
x, y = y,x
a[i], a[j] = a[j], a[i] --> a è una tabella 
                        --> con i e j come
                        --> valori positivi
                        --> che partono da 1          
```

### Blocchi e Variabili Locali e Globali

La parola chiave **local** è stata utilizzata per definire le **variabili locali** mentre le variabili prive di tale parola chiave vengono chiamate **variabili globali** 

```lua
local a = 0 --> Variabile Locale
 b = 0      --> Variabile Globale
            
```
La distinzione dei tipi di variabili serve per definire lo **scope** della variabile stessa, ossia il suo "raggio d'azione" all'interno di un **blocco**. 

Il **blocco** è una porzione di codice di un programma, il corpo di una funzione o il file .lua in cui viene definito il codice


```lua
local a = 0 --> Variabile Locale
 b = 0      --> Variabile Globale
            
```

```lua
 x = 10
local i = 1        -- local to the chunk
    
while i<=x do
    local x = i*2    -- local to the while body
    print(x)         --> 2, 4, 6, 8, ...
    i = i + 1
end
            
```
Per verificare il codice qui sopra dovete eseguire il file *main.lua* presente nella cartella **code1**

Se volessimo avviare il codice attraverso l'interprete LUA avremo il seguente risultato:


```bash
Lua 5.1.5  Copyright (C) 1994-2012 Lua.org, PUC-Rio
> x = 10
> local i = 1        -- local to the chunk
>
> while i<=x do
>>     local x = i*2    -- local to the while body
>>     print(x)         --> 2, 4, 6, 8, ...
>>     i = i + 1
>> end
stdin:1: attempt to compare nil with number
stack traceback:
        stdin:1: in main chunk
        [C]: ?
            
```

### Strutture di controllo

Le **strutture di controllo** non sono altro che **blocchi** di codice che vengono eseguiti affinché vengono rispettate delle condizioni.

Ogni struttura ci controllo viene delimitato da un'istruzione LUA e dalla parola chiave **end**

#### if then else

```lua
if expression then
-- codice --
end            
```
Il codice qui sopra viene eseguita solo se expression, un'**espressione** per l'appunto, restituisce **true**


```lua
if expression then
-- codice true --
else
-- codice false --
end            
```

In questo caso abbiamo la parola chiave **else** che esegue un blocco di codice qualora expression ci restituisce **false**

Vedere la cartella il file contenuto in **code2** per verificare

##### while do

```lua
while expression do
    -- codice --
end        
```

**while do** è un **ciclo**; cioè un blocco dove il codice viene eseguito fino a quando expression è **true**