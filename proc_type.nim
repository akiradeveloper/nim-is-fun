type T = object
  x: int
proc fun[T:float](t:T) =
  echo repr(t)
  # echo t.x
fun(1)
# fun(T())
