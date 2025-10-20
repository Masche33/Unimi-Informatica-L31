module Taylor = (Taylor.Taylor: TaylorADT.Taylor);;


let test exp value number =
  if exp = value then
    Printf.printf "\027[32mTEST %d: PASSED\027[0m \n" number
  else
    Printf.printf "\027[31mTEST %d: FAILED\027[0m \n" number
;;

let execute_tests tests test_type = 
  let rec execute_tests counter = function
    | hd::tl -> test (fst hd) (snd hd) counter; execute_tests (counter+1) tl
    | []     -> ()
  in Printf.printf "%s:\n\n" test_type; execute_tests 1 tests; Printf.printf "\n---------------\n";;


let test_pal = [
  ((Taylor.sin 1. 20.) -. (sin 1.) < (1./.(10.**5.)), true);          
  ((Taylor.sin 2. 20.) -. (sin 2.) < (1./.(10.**5.)), true);          
  ((Taylor.sin 3. 20.) -. (sin 3.) < (1./.(10.**5.)), true);          
  ((Taylor.sin 7. 10.) -. (sin 7.) < (1./.(10.**10.)), true);          
  ((Taylor.sin 8. 10.) -. (sin 8.) < (1./.(10.**10.)), true);          
  ((Taylor.cos 9. 10.) -. (cos 9.) < (1./.(10.**10.)), true);          
  ((Taylor.cos 10. 10.) -. (cos 10.) < (1./.(10.**10.)), true);
  ((Taylor.cos 11. 10.) -. (cos 11.) < (1./.(10.**10.)), true);         
  ((Taylor.cos 12. 10.) -. (cos 12.) < (1./.(10.**10.)), true);         
  ((Taylor.cos 13. 10.) -. (cos 13.) < (1./.(10.**10.)), true)          
];;

execute_tests test_pal "SIN TEST";;
