# great example of option patten in nimrod

type None = object

let none = None()

proc f(x: int|None): string =
  when x is None:
    result = "none!"
  else:
    result = "int!"

echo f(10)
echo f(none)
