# without this line, not work
# compile: "lib.c" is ok
# link: "lib.o" is ok (if you compile it externally) 
{. compile: "lib.c" .}

# header: "../lib.h" can be add to avoid explicitly adding prototype
# you can't eliminate cint as the return type
# but as the input type it's ok
proc justret(x): cint {. importc .}

let ret = justret(3)
echo ret

# type myst {. header:"lib.h", importc .}
