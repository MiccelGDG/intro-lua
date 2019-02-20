## Capitolo 1.6 - Una breve anteprima sulle Tabelle di LUA

Le **tabelle** sono lo strumento ideale per la gestione dei dati in LUA

Nella stesura del Capitolo 1 avevo volontariamente escluso la parte dedicate alle **Tabelle** per via della loro complessità intrinseca.

Tuttavia, visto che sempre più avanti troveremo esempi che coinvolgono l'utilizzo di **tabelle** ho preferito aggiornare il **Capitolo 1** per dare una definizione per novizi di **tabelle**.

Per chi viene da altri linguaggi di programmazione, specie per quelli **orientati agli oggetti** possono trattare le **tabelle** come se fossero degli **array associativi**: strutture dati simili agli array con la possibilità di indicizzarli con altri tipi di dati ad esclusione di **nil**

La notazione per definire una **tabella** è la seguente:

```lua
local a = {}
print(a)

```

Se provate ad eseguire il codice che ho scritto sopra uscirà una cosa simile:

```bash

table: 028D90A8

```

Cosa significa?

Lo scopriremo solo seguendo i prossimi capitoli della mia guida(ma per chi viene da linguaggio OOP sa gi di cosa sto parlando)

Quello che vi serve sapere è che, trattando le **tabelle** di LUA come se fossere semplici array, l'indicizzazione parte sempre dall'indice 1

```lua
local a = {3,2,5,6}
print(a[0]) --> nil
```
Questo non ci vieta di inserire un indice all'interno del nostro array e dargli un valore


```lua
local a = {3,2,5,6}
a[0] = 1
print(a[0]) --> 1
```
Questo ci da un'idea sulla vera natura delle **tabelle** e prendendo in *oggetto* questo tipo di esempio possiamo affermare che queste strutture sono strumenti **dinamici** e che la loro dimensione non è **fissa**

```lua
local a = {3,2,5,6}
print(table.getn(a)) --> 4
a[0] = 1
print(table.getn(a)) --> 5
```