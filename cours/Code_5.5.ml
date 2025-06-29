let rec count n =
  if n<=1 then
    1
  else
    count (n-1) + 1
let () =
  let n = Sys.argv.(1) in
  Printf.printf "Counted until %d. \n" (count (int_of_string n))
