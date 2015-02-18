# great example of option patten in nimrod

# import typetraits
# type None = object
# let none = None()

# type None = enum none
#
# proc f(x: int|None): string =
#   when x is None:
#     result = "none!"
#   else:
#     result = "int!"
#
# echo f(10)
# echo f(none)

type None = typedesc[void]
proc g(x: int|None): string =
  when x is int:
    result = "int!!"
  else:
    result = "void!!"
echo g(10)
echo g(void)

let n = 0
#let x = if n == 0: 10 else: void
let x = if false: 10 else: void

# type Option[T] = T|None
# proc g[T](x: Option[T]): string =
#   when x in int:
#     result = "int!!"
#   else:
#     result = "none!!"
# echo g(10)
