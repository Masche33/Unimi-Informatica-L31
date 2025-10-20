# Functions

Currying = tecnica f con più parametri -> catena di f con un solo parametro. $f(x,y)=y/x \to f(2) = y/2 \o f(3) = 3/2$.

Una fun float->float->float può essere chiamata parzialmente, così facendo lego solo i primi n parametri della funzione. PARTIAL EVALUATION.

Le variabili valutate diventano costanti. La valutazione parziale ha come effetto collaterale rendere più efficente il codice.

Fino ad ora il binding era posizionale, i parametri vengono passati in ordine, ma se diamo un nome ai parametri li possiamo passare nell'ordine per che pare. 
let compose ~f ~g = f ( g x).

let comp' = compose ~g (fun x -> x + 1) <-- in comp' g è bindata da quella unica fun.

## MAP, FILTER, REDUCE

- MAP:    Applica una f a tutti gli elementi della list 'a list -> 'b list (claro il risultato è posizionale)
- FILTER: Serve a scremare una lista secondo un criterio. Prende un predicato ('a -> bool) -> 'a list -> 'a list.
- REDUCE: Riduce la lista ad una solo valore.(chiamata anche fold). Accumula applicando una fun a ogni elem della lista.

### Reduce

val reduce : 'a -> ('a -> 'b -> 'a) -> 'b list -> 'a

differenza predicato/funz 

predicato= codominio fun = bool


Predicato: Esiste e Perogni

Esiste: accumulo su false con || se ne esiste almeno uno vero allora posso dire il false diverrà vero e ne rimarrà.

Forall: Accumulo su true con && se ne esiste uno false allora true&&false->false e da quel momento in poi rimane false.

Reduce/folding: Folding fa capire che si può piegare in una direzione e l'operazione non è commutativa accumulare da destra o da sinistra darà valori diversi. La concat di caratteri non è commutativa, leftfold = rev rightfold. La concat di caratteri non è commutativa, leftfold = rev rightfold.

List.assoc 'a list -> 'b list -> ('a * 'b)

let arg x = fun y rest -> rest (op x y);;
let stop x = x;;
let f g = g init;;

f (arg 1) stop;;

Ora ci caccio un funtore, spoiler ne metto un'altro

Varadica?!?
