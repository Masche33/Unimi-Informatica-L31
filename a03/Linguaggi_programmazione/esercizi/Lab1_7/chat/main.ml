(* main.ml *)

(* Usiamo il functor Polska applicandolo alla nostra implementazione di Stack *)
module M = Polska.Polska(StackImplementation.IntStack)

let () =
  M.demo ()

