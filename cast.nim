let a:int = -100
echo a.uint16
echo cast[uint16](a)
echo a.uint

let b:int16 = 1000
# echo b.int8
echo cast[int8](b)

# let c = b.int8
# echo c

let d:uint8 = 255
# not allowed
# echo d.int8
echo cast[int8](d)
