(*Uso le varianti per definire il tipo scala esaustivamente senza altre possibilità*)

type scale = Celsius | Fahrenheit | Kelvin | Rankine | Delisle | Newton | Reaumer | Romer;;
type temperature = {value : float; t_unit : scale};;
let scales = [Celsius; Fahrenheit; Kelvin; Rankine; Delisle; Newton; Reaumer; Romer];;


let any2c temp = 
  match temp.t_unit with
  | Celsius    -> temp (*Senza questo il pattern matching non sarebbe esaustivo*)
  | Fahrenheit -> { value = (temp.value -. 32.) *. 5. /. 9. ; t_unit = Celsius}
  | Kelvin     -> { value = (temp.value -. 273.15); t_unit = Celsius}
  | Rankine    -> { value = (temp.value -.491.67)*. 5. /. 9. ; t_unit = Celsius} 
  | Delisle    -> { value = 100. -. (temp.value *. 2. /. 3.) ; t_unit = Celsius}
  | Newton     -> { value = temp.value *. 100. /. 33. ; t_unit = Celsius}
  | Reaumer    -> { value = temp.value *. 5. /. 4. ; t_unit = Celsius}
  | Romer      -> { value = (temp.value -. 7.5) *. 40. /. 21. ; t_unit = Celsius};;

let c2any temp new_type =
  match new_type with
  | Celsius    -> temp (*Senza questo il pattern matching non sarebbe esaustivo*)
  | Fahrenheit -> { value = (temp.value *. 9. /. 5.) +. 32.; t_unit = Fahrenheit}
  | Kelvin     -> { value = temp.value +. 273.15 ; t_unit = Kelvin}
  | Rankine    -> { value = (temp.value +. 273.15) *. 9. /. 5. ; t_unit = Rankine} 
  | Delisle    -> { value = (100. -. temp.value) *. 3. /. 2. ; t_unit = Delisle}
  | Newton     -> { value = temp.value /. 100. *. 33. ; t_unit = Newton}
  | Reaumer    -> { value = temp.value /. 5. *. 4. ; t_unit = Reaumer}
  | Romer      -> { value = (temp.value /. 40. *. 21.) +. 7.5 ; t_unit = Romer};;

let convert temp = 
  let rec convert acc scales =
    match scales with
    | []     -> List.rev acc
    | hd::[] -> List.rev ((c2any temp hd)::acc)
    | hd::tl -> convert ((c2any temp hd)::acc) tl 
  in convert [] scales;;
