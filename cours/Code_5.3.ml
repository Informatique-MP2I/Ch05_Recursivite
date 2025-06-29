let ()=
  let n = 7 in
  let interval = approx_arch n in
  Printf.printf "For n=%d, Pi belongs to the interval [%f, %f].\n" n (fst interval) (snd interval)

