type T = object
  x: uint32
  pad: array[6, uint32]

echo sizeof(T)
echo repr(T())
