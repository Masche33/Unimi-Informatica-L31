module type Matrix = 
  sig
    (*Interfaccia della matrice, forza l'implementazione ad avere metodi con queste firme e 
      il type matrix.*)
    type matrix;;
    val  zeroes : int -> int -> matrix;;
    val identity : int -> matrix;;
    val init : int -> matrix;;
    val transpose : matrix -> matrix;;

    val (+) : matrix -> matrix -> matrix;;
    val ( * ) : matrix -> matrix -> matrix;;

  end ;;
