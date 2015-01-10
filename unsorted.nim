type
  T = array[1..5, char]
var
  t: T = ['a','b','c','d','e']
proc f(x:auto): auto =
  echo "x is int: ", (x is int)
  echo "result is int: ", (result is int)
  result = x * 2
echo f(4)
echo t[1]
echo t.len

let lis = @[(1,2,3),(4,5,6)]
echo lis[0].repr
(lis.map do (x) -> int:
  x[0] + x[1] + x[2]).repr.echo
echo lis.map (proc (x):int = return x[0] * x[1] * x[2])

for a,b,c in items(lis):
  echo a,b,c
for e in lis:
  echo e
for i, e in lis:
  echo "ind:", $i, " value:", $e

let tab1 = {"k1":1, "k2":2}
let tab2 = [("k1",1), ("k2",2)]

# A pseudo-code from "Type equality" section in manual
# But not allowed in Nim. 
# let s:set[int*int]


# OOP
type
  Ob = ref object of RootObj
    x: int
    y: int
# method ...

let o: Ob = Ob(x:0, y:1)
echo o.y

type E = enum
  A = 0
  B = 1
var a = A
inc(a)
echo a

type Fun = proc (a: string)
