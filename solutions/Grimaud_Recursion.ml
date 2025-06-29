(*
   in      : n integer
   precond : n > 0
   out     : sum of squares until n
*)
let rec sum n =
  if n=1 then
    1
  else
    n*n + sum (n-1)

(*
   in      : n integer
   precond : n > 0
   out     : sum of squares until n
*)
let sum2 n =
  let rec aux n acc =
    if n=0 then
      acc
    else
      aux (n-1) (n*n+acc)
 in aux n 0

(*
   in      : n integer
   precond : n >= 0
   out     : approximation of the golden ratio
*)
let rec approx_phi3 n =
  if n = 0 then
    1.
  else
    1. +. 1. /. (approx_phi3 (n-1))

(*
   in      : a and b integers
   precond : a >= b
   out     : gcd
*)
let rec gcd a b =
  if b=0 then
    a
  else
    gcd b (a mod b)


(*
   in      : x positif float
           : n integer
   precond : n>0 and x>0
   out     : approximation of sqrt{x}
*)
let rec sqrt_newton x n =
  if n=0 then
    1.
  else
    ((sqrt_newton x (n-1)) +. x/. (sqrt_newton x (n-1)))/. 2. 
    
(*
   in      : x positif float
           : n integer
   precond : n>0 and x>0
   out     : approximation of sqrt{x}
*)
let sqrt_newton2 x n =
  if x<=0. || n<0 then
    failwith "sqrt_newton2. Wrong parameters, need x>0 and n>=0."
  else
    let rec aux x n =
      if n=0 then
        1.
      else
        ((aux x (n-1)) +. x /. (aux x (n-1)))/. 2. in
    aux x n

(*
   in      : n
   precond : n>=0
   out     : fact n 
*)
let fact n =
  if n<0 then
    failwith "fact. Wrong parameters, need n>=0."
  else
    let rec aux n acc =
      if n=0 then
        1
      else
        aux (n-1) acc*n in
    aux n 1


(* Fonction de tests *)
let () =
  Printf.printf "Recursion.\n";
  let n = 4 in
  Printf.printf "somme des carrés pour n=%d  est %d.\n" n (sum n);
  let n = 25 in
  Printf.printf "nombre d'or pour n=%d  est %f.\n" n (approx_phi3 n);
  let a = 21 and b = 15 in
  Printf.printf "gcd de %d et %d est %d.\n" a b (gcd a b);
  let x=2. and n=5 in
  Printf.printf "racine carré de x=%f pour n=%d est %f.\n" x n (sqrt_newton x n);
  let x=2. and n=5 in
  Printf.printf "racine carré de x=%f pour n=%d est %f.\n" x n (sqrt_newton2 x n);
  let n=5 in
  Printf.printf "factoriel de n=%d est %d.\n" n (fact n)
