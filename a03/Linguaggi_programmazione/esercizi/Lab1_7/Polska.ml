module Stack = sig
  type token
  type stack 
  val empty : stack
  val push: token -> stack -> stack 
  val top : stack -> token
  val pop : stack -> token

end

module Polska(S: Stack) = struct
  
end
