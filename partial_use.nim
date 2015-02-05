import posix

type Stat = ref posix.TStat
proc f(s: Stat) =
  discard

var v = Stat(st_ino:3)
f(v)
