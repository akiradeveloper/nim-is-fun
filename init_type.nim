type TMy = object
  x: int
proc InitTMy(t: typedesc[TMy]) =
  var my: ref TMy = new TMy
  echo my.x
  proc initTMy(self: var ref TMy) =
    self.x = 100
  initTMy(my)
  echo my.x

InitTMy(TMy)
