## Capitolo 2 - Le Espressioni in LUA

Secondo **Wikipedia**:	

> In un linguaggio di programmazione un'**espressione** è un costrutto che combina uno o più elementi o variabili attraverso gli **operatori** e **funzioni**

Il costrutto è una **entità sintattica** che viene **valutata**. 

Se la valutazione termina essa restituisce un **valore**, altrimenti il valore restituito è **indefinito**

Le espressioni possono coinvolgere: **numeri, costanti, stringhe, variabili** e **operazioni unarie e binarie** e infine **chiamate di funzioni**

### Operatori Aritmetici

**LUA** supporta le canoniche operazioni aritmetiche finora conosciute:

- **Addizione** +
- **Sottrazione** -
- **Moltiplicazione** *
- **Divisione** /

Inoltre supporta l'operatore unario '-' **negazione** e la **potenza** '^'

Dare un'occhiata al file *main.lua* di **code1** ed eseguirlo come indicato nel **Capitolo 1.5** 



### Operatori Relazionali

LUA supporta gli operatori relazioni che ci restituiscono 2 valori: **true** o **false**

- **Minore o  Minore Uguale ** < o <=
- **Maggiore o  Maggiore Uguale**   > o >=
- **Uguaglianza** ==
- **Diverso** ~=

Dare un'occhiata al file *main.lua* di *code2* ed eseguirlo come indicato nel **Capitolo 1.5** 

La cosa interessante è che questi operatori possano fare dei confronti con le stringhe.

### Operatori Logici

Come per gli **operatori relazionali**, gli operatori logici ci restituiscono i valori **booleani** **true** e **false**.

Gli operatori logici presenti in **LUA** sono gli operatori binari
**and**, **or** e l'operatore unario **not**.

##### Tabella della verità - AND
---
| x  |  y | x and y  |
|:-:|:-:|:-:|---|
| 0  | 0  | 0  |   
|  0 | 1  |  0 |   
|  1 |  0 |  0 |
|  1 |  1 |  1 |   


##### Tabella della verità - OR
---
| x  |  y | x or y  |
|:-:|:-:|:-:|---|
| 0  | 0  | 0  |   
|  0 | 1  |  1 |   
|  1 |  0 |  1 |
|  1 |  1 |  1 |   

##### Tabella della verità - NOT
---

| x  |  not x | 
|:-:|:-:|
| 0  | 1  |   
| 1  | 0  |

Come conseguenza delle tabelle qui sopra possiamo affermare che:

> L'operatore **and** restituisce il primo argomento se quest'ultimo è falso; altrimenti restituisce il secondo argomento(quello più a destra)

> L'operatore **or** restituisce il primo argomento se quest'ultimo è vero; altrimenti restituisce il  secondo argomento(quello più a destra)

NB: Valuta **false** e **nil** come falso e qualsiasi altra cosa come true

Vedere il codice presente in code

### Concatenazione

La **concatenazione** è una espressione che ci permette di restiturci una **stringa concatenata**

Se volessimo concatenare le nostre stringhe:

```lua
a = "GDG"
b = "Catania"
```

Dobbiamo utilizzare l'**operatore concatenatore ".."** :

```lua
a = "GDG"
b = "Catania"
print(a.." "..b) --> "GDG Catania"
```

Vedere gli altri esempi su code4

### Le precedenze

Qui riporto le precedenze degli operatori di LUA:

```
^
not  - (unary)
*   /
 +   -
..
<   >   <=  >=  ~=  ==
and
or
```

Tutti gli operatori binari sono associativi **verso sinistra** (vengono eseguiti prima gli operatori a sinistra), tranne per la **potenza** ^ e la **concatenazione** .. che lo sono  **verso destra**

```
a+i < b/2+1          <-->(a+i) < ((b/2)+1)
5+x^2*8              <-->5+((x^2)*8)
a < y and y <= z     <-->(a < y) and (y <= z)
-x^2                 <-->-(x^2)
x^y^z                <--> x^(y^z)