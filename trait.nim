type I = generic x
  # x.asPtr is pointer
  x.size is int

type B = object
  p: pointer
  size: int
var b = B (p:cast[pointer](0), size:10)
type C = object
  size: int
var c = C (size: 11)

proc g(i: I) =
  echo i.size
g(b)
proc h(a: openArray[I]) =
  discard
h(@[b, c])

type
  M = generic x
    # x is SomeOrdinal
    x * x is x.type

proc f(a:M): M = a * a

let x = 5
echo f(x)
