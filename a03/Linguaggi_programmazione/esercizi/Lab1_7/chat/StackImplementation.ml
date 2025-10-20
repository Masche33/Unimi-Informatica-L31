(* stackImplementation.ml *)

module IntStack = struct
  let push x s = x :: s
  let pop = function
    | x :: xs -> (x, xs)
    | [] -> failwith "Empty stack"
end

