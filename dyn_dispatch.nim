# A Good sample for dynamic/static dispatch

type
  # Araq said newbie should always use ref object instead of object
  # Araq said { .inheritable. } is obsolete. Just inherit RootObj makes it inheritable.
  T1 = ref object of RootObj
  T2 = ref object of T1
  T3 = ref object of T1

# We need this method f(T1)
# If we alter "method" to "proc" then static dispatch takes place,
# which results in echoing "I am T1" (just because the type is T1)
method f(x:T1) =
  echo "I am T1"
method f(x:T2) =
  echo "I am T2"
method f(x:T3) =
  echo "I am T3"
type S1 = ref object
  t: T1
let s: S1 = S1(
  t: T2()
  )
method f(s:S1) =
  f(s.t)
f(s)
