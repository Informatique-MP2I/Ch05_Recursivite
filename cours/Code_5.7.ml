let u n =
  let rec aux n acc =
    if n=1 then
      acc
    else
      aux (n-1) (sqrt ((acc +. 1.) /. 2.)) in
  aux n 0.0 
