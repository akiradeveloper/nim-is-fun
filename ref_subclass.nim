# subclass relation between ref types
type S = ref object of RootObj
  x:int
type T = ref object of S

proc f[X:S](self:X) =
  self.x = 100
  echo repr(self)

f(S())
f(T())
