type T = object
proc f(): auto =
  (1, T())
let (a, b) = f()
echo a
echo b
