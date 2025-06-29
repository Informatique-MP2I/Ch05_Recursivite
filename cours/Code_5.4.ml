let approx_arch n =
  if n<=1 then
    failwith "Wrong parameter, need n>=2"
  else
    let rec u n =
      if n=1 then
        0.0
      else
        sqrt ((u (n-1) +. 1.)/.2.) in
    let cos_n = u n in
    let sin_n = sqrt (1.-.cos_n**2.) in
    let tan_n = sin_n /. cos_n in
    let p = 2.**(float_of_int n) in
    (p *. sin_n, p *. tan_n)
    
