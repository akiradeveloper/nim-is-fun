type I = generic x
  x.asPtr is pointer
  x.size is int

type B = ref object
  p: pointer
  size: int

var b = B (p:cast[pointer](0), size:10)
proc f(i: I) =
  echo i.size
f(b)
