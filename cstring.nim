var se = @['a', 'b', chr(0), 'c']
let cs = system.cstring(addr se[0])
echo cs
echo cs.len
