import posix
let s = newSeq[TIOVec](10)
for i, v in s:
  echo cast[ByteAddress](v.iov_base)
  echo v.iov_len
