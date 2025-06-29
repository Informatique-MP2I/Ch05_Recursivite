let count2 n =
  let rec aux n acc =
    if n<=1 then
      acc
    else
      aux (n-1) (acc+1) in
  aux n 1

let () =
  let n = Sys.argv.(1) in
  Printf.printf "Counted until %d.\n" (count2 (int_of_string n))
