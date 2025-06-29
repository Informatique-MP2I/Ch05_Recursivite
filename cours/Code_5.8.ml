let u n =
  let acc = ref 0.0 in
  for i=n-1 downto 1 do
    acc := sqrt((!acc +. 1.) /. 2.)
  done;
  !acc 


