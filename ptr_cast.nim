proc getP(s: var seq[uint8]): pointer =
  let p = addr(s[0])
  p

proc getV(s: var seq[uint8]): uint64 =
  let p = addr(s[0])
  cast[ptr uint64](p)[]

proc getT[T](s: var seq[uint8]): T =
  let p = addr(s[0])
  cast[ptr T](p)[]
var mySeq = newSeq[uint8](100)
echo repr(mySeq.getP) # ok
echo mySeq.getV # ok
# ptr_cast.nim(17, 21) Info: instantiation from here
# ptr_cast.nim(11, 2) Error: expression cannot be casted to ptr T
# let v: uint64 = mySeq.getT # not ok
let v = getT[uint64](mySeq)
echo v
