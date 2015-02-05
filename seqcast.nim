var s = newSeq[char](1000)
echo len(s)

# case 1
# len(c) -> 0
var p: pointer = addr(s[0])

# case 2
# out of memory
# var p: pointer = addr(s)

var c = cast[ptr seq[char]](p)[]
echo len(c)
