import typetraits
var s = newSeq[uint8](100)
echo s.type.name
echo high(s)
var sl = s[0..99]
echo high(sl)
echo len(sl)
echo sl.type.name
echo sl[0].type.name

