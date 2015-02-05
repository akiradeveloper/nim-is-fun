type T = ref object
proc exec(t: T, x: int, y: string): char =
  y[x]
  
template defWrapper(typ: typedesc) =
  type `Wrap typ` {. inject .} = ref object
    t: `typ`
  proc `exec`(self: `Wrap typ`, x: int, y: string): char =
    self.t.exec(x, y)

defWrapper(T)

if isMainModule:
  let t = T()
  echo t.exec(0, "akira") # 'a'
  echo t.exec(1, "akira") # 'k'

  let w = WrapT (t: T())
  echo w.exec(0, "akira") # 'a'
  echo w.exec(1, "akira") # 'k'
