proc f(x:int): int =
  x
proc f(x:int): float =
  x.float
proc f(x:float): float =
  x

echo f(0) # ambiguous call
echo f(0.0)
