type TMy = object of RootObj
  x: int
type TMy2 = object of TMy
proc InitTMy(t: typedesc[TMy]) =
  var my: ref t = new t
  echo my.x
  proc initTMy(self: var ref t) =
    self.x = 100
  initTMy(my)
  echo my.x

InitTMy(TMy)
InitTMy(TMy2)
