(* polska.ml *)

module Polska (Stack : StackImplementation) = struct
  let demo () =
    let s = Stack.push 42 [] in
    let (x, _) = Stack.pop s in
    Printf.printf "Ho estratto: %d\n" x
end

