module Matrix = 
  struct
  (* Definisco il tipo matrix che è un alias per una lista di liste di int 
     list (list int). *)
  type matrix = int list list;;
  
  (* Inizializza una lista di liste di int tutte a zero *)
  let zeroes n m = (* n = colonne, m = righe, inferito dal'uso, n esterno crea la lista delle liste, colonne
                      quella interna crea la colonna singola.*)
    (*List.init : int -> ( int -> 'a ) -> 'a list *)
    List.init n (fun y ->  (* inizializza una lista di n elementi dove per ogni elemento c'è una lista di int*)
      (List.init m (fun x -> 0)) (*Crea una lista di m elementi dove la funzione di init per ogni element 
                                   restituisce 0*)
    );;

  (* Inizializza una lista di liste di int con 1 se x = y *)
  let identity n = (*Simile a zeros, cambia come viene calcolato il valore con un if e n viene usato 
                     per tutti e due gli init*)
    List.init n (fun y ->
      (List.init n (fun x -> 
        if(y==x) then 1 else 0)) 
    );;

  (* Inizializza una lista di liste di int valori da 0 a n^2-1 *)
  let init n = (*Simile a indentity, cambia solo come calcolare il valore*)
    List.init n (fun y -> 
      (List.init n (fun x -> y * n + x)) 
    );;

  (* Restituisce una lista di int che rappresenta la n° riga *)
  let get_row n m = 
    let rec get_row acc n m = (* Definizione interna con ricorsione di coda*)
      match m with (* Matching sulla lista di liste, ogni elemento è una lista colonna*)
      | []     -> List.rev acc (* Roverscia il risultato perché è stata create appendendo in testa*)
      | hd::[] -> List.rev ((List.nth hd n)::acc) (* Appende in testa l'ultimo elemento e poi lo rovescia*)
      | hd::tl -> get_row  ((List.nth hd n)::acc) n tl (* Chiamata ricorsiva di coda sul resto della coda, appendo in testa 
                                                        l'ennesimo valore della lista hd *)
    in get_row [] n m;; (* Chiamata in cui l'accumulatore parte vuoto*)

  let transpose m = 
    let rec transpose acc max n m = 
      match n with 
      | _ when n < max  -> transpose ((get_row n m)::acc) max (n+1) m
      | _ when n >= max -> List.rev acc
      | _               -> List.rev acc
    in transpose [] (List.length m) 0 m;; 
  ;;

  (* Questo metodo va definito qui, poi il + verrà ridefinito e + inferirà int list list come input *)
  let dot_prod l1 l2 =
    let rec dot_prod acc l1 l2 =
      match l1, l2 with
      | hd1::[],hd2::[]     -> acc+hd1*hd2
      | hd1::tl1, hd2::tl2  -> dot_prod (acc+hd1*hd2) tl1 tl2
      | _,_                 -> acc
    in dot_prod 0 l1 l2;; 


  let (+) m1 m2 =
    List.map2 (fun r1 r2 -> (* Map2 applica ad ogni elemento delle due liste un func e ne restiuisce una terza figlia dei risultati*) 
      List.map2 (fun e1 e2 -> e1+e2) r1 r2
    ) m1 m2;;

 let ( * ) m1 m2 = 
     List.init (List.length m1) (fun y -> 
    List.init (List.length (List.nth m2 0)) (fun x -> dot_prod (List.nth m1 y) (get_row x m2))
  );;



end;;

let m1 = Matrix.init 4;;
let m2 = Matrix.identity 4;;
(*
Matrix.dot_prod (List.nth m1 0) (Matrix.get_row 0 m2);;
Matrix.dot_prod (List.nth m1 0) (Matrix.get_row 1 m2);;
Matrix.dot_prod (List.nth m1 0) (Matrix.get_row 2 m2);;
Matrix.dot_prod (List.nth m1 0) (Matrix.get_row 3 m2);;

Matrix.dot_prod (List.nth m1 1) (Matrix.get_row 0 m2);;
Matrix.dot_prod (List.nth m1 1) (Matrix.get_row 1 m2);;
Matrix.dot_prod (List.nth m1 1) (Matrix.get_row 2 m2);;
Matrix.dot_prod (List.nth m1 1) (Matrix.get_row 3 m2);;

Matrix.dot_prod (List.nth m1 2) (Matrix.get_row 0 m2);;
Matrix.dot_prod (List.nth m1 2) (Matrix.get_row 1 m2);;
Matrix.dot_prod (List.nth m1 2) (Matrix.get_row 2 m2);;
Matrix.dot_prod (List.nth m1 2) (Matrix.get_row 3 m2);;

Matrix.dot_prod (List.nth m1 3) (Matrix.get_row 2 m2);;
Matrix.dot_prod (List.nth m1 3) (Matrix.get_row 1 m2);;
Matrix.dot_prod (List.nth m1 3) (Matrix.get_row 2 m2);;
Matrix.dot_prod (List.nth m1 3) (Matrix.get_row 3 m2);;
*)
Matrix.( * ) m1 m2;;
