var s = "akira"
echo len(s)
echo s
echo cast[char](s)
echo cast[ByteAddress](s)
echo cast[ByteAddress](addr(s))
echo s[0]
echo cast[ByteAddress](s[0])
echo cast[ByteAddress](addr(s[0]))
echo cast[ByteAddress](addr(s[1]))

var ss = "akira"
ss.safeAdd(chr(0))
echo ss
echo len(ss)
