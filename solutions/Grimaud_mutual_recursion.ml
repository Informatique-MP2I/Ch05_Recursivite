let rec p n =
  if n = 0 then
    3
  else
    2* q (n-1)
and q n =
  if n = 0 then
    4
  else
    7* p (n-1) +6

let () =
  let n = 2 in 
  let (pn, qn)= (p n, q n) in
  Printf.printf "for n=%d, p=%d and q=%d\n" n pn qn
