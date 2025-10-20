module type StackImplementation = sig
  val push : 'a -> 'a list -> 'a list
  val pop  : 'a list -> 'a * 'a list
end
