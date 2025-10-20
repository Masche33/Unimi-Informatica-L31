module FileSystem = (Freq.FileSystem: FreqADT.FileSystem);;
module Frequency  = (Freq.Frequency : FreqADT.Frequency);; 

Printf.printf "MAIN: TEST\n";;

let d = FileSystem.load_file "Dante.txt";;

let rec p_divine = function
  | []     -> Printf.printf "\n"
  | hd::tl -> Printf.printf "%s\n" hd; p_divine tl;;

let d_str = FileSystem.accumulate_list d;;
let d_token = FileSystem.tokenize_lines d_str;;

Printf.printf "LOADING FINISHED\n";;

let words = Frequency.add_words d_token (Frequency.empty());;

Frequency.print_fields (Frequency.sort_fields words);;
