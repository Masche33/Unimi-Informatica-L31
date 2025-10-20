(*  Celsius and Fahrenheit, there are other six temperature scales: Kelvin, Rankine, Delisle, Newton, Réaumur, and Rømer *)


type temp_unit = Celsius | Fahrenheit | Kelvin | Rankine | Delisle | Newton | Reaumur | Romer;;

type temp = { tu : temp_unit; value : float};;


let convert_in_C t =
  match t.tu with
    Celsius    -> t
  | Fahrenheit -> { value = (t.value -. 32.) *. 5. /. 9.;    tu = Celsius }
  | Kelvin     -> { value = t.value -. 273.15 ;              tu = Celsius }
  | Rankine    -> { value = (t.value -. 491.67) *. 5. /. 9.; tu = Celsius }
  | Delisle    -> { value = 100. -. t.value *. 2. /. 3.;     tu = Celsius }
  | Newton     -> { value = t.value *. 100. /. 33.;          tu = Celsius }
  | Reaumur    -> { value = t.value *. 5. /. 4.;             tu = Celsius }
  | Romer      -> { value = (t.value -. 7.5) *. 40. /. 21.;  tu = Celsius } ;;

let convert_from_C t u =
  match u with
    Celsius    -> t
  | Fahrenheit -> { value = t.value *. 9. /. 5. +. 32.;    tu = u }
  | Kelvin     -> { value = t.value +. 273.15;             tu = u }
  | Rankine    -> { value = t.value *. 9. /. 5. +. 491.67; tu = u }
  | Delisle    -> { value = (100. -. t.value) *. 3. /. 2.; tu = u }
  | Newton     -> { value = t.value *. 33. /. 100.;        tu = u }
  | Reaumur    -> { value = t.value *. 4. /. 5.;           tu = u }
  | Romer      -> { value = t.value *. 21. /. 40. +. 7.5;  tu = u } ;;

let scales = [Celsius; Fahrenheit; Kelvin; Rankine; Delisle; Newton; Reaumur; Romer];;

let from_unk_to_all t =
  let rec from_unk_to_all lst t temps = 
    match lst with
    | []     -> List.rev temps
    | hd::tl -> if (hd == t.tu) then from_unk_to_all tl t (t::temps)
    else  from_unk_to_all tl t ((convert_from_C t hd)::temps)
  in from_unk_to_all scales (convert_in_C t) [];;

let string_temp_unit = function
  | Celsius    -> "C"
  | Fahrenheit -> "F"
  | Kelvin     -> "K"
  | Rankine    -> "R"
  | Delisle    -> "D"
  | Newton     -> "N"
  | Reaumur    -> "Re"
  | Romer      -> "Ro";;

let p_temp ppf temp = 
  Format.fprintf ppf "%3.2f°%s" temp.value (string_temp_unit temp.tu);;

let p_temp_list lst =
  let rec p_temp_list lst =
    match lst with
    | []     -> Format.printf "\n"
    | hd::[] -> Format.printf "%a\n]\n" p_temp hd;
    | hd::tl -> Format.printf "%a\n" p_temp hd; p_temp_list tl
  in Format.printf "[\n"; p_temp_list lst;;


(*
TEST AREA
 *)

Format.printf "%a\n" p_temp { tu = Celsius;    value = 12.0   };;

let test_temp_list = [
  { tu = Celsius;    value = 25.5   };
  { tu = Fahrenheit; value = 77.0   };
  { tu = Kelvin;     value = 298.15 };
  { tu = Rankine;    value = 536.67 };
  { tu = Delisle;    value = 94.5   };
  { tu = Newton;     value = 8.1    };
  { tu = Reaumur;    value = 20.4   };
  { tu = Romer;      value = 21.2   };
];;

p_temp_list test_temp_list;;
