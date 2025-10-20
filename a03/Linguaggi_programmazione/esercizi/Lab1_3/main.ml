module Matrix = (Matrix.Matrix: MatrixADT.Matrix);;
Printf.printf "Matrix\n";;


let z1 = Matrix.zeroes 3 3;;
let z2 = Matrix.zeroes 2 5;;
let z3 = Matrix.zeroes 5 2;;

let i1 = Matrix.identity 3;;
let i2 = Matrix.identity 4;;
let i3 = Matrix.identity 5;;

let t1 = Matrix.transpose i1;; 
let t2 = Matrix.transpose i2;; 
let t3 = Matrix.transpose i3;; 

let s1 = Matrix.(+) z1 z1;;
let s2 = Matrix.(+) z2 z2;;
let s3 = Matrix.(+) z3 z3;;

let p1 = Matrix.( * ) z1 z1;;
let p2 = Matrix.( * ) z2 z2;;
let p3 = Matrix.( * ) z3 z3;;
