let approx_arch n =
  let cos_n = u n in
  let sin_n = sqrt (1.-.cos_n**2.) in
  let tan_n = sin_n /. cos_n in
  let p = 2.**(float_of_int n) in
  (p *. sin_n, p *. tan_n)

