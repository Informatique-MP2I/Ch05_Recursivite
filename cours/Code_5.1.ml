let rec u n =
  if n=1 then
    0.0
  else
    sqrt ((u (n-1) +. 1.)/.2.)

