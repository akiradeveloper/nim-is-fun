var a = @[1,2,3]
# need to cast (ptr doesn't have $ op)
echo cast[uint](addr(a[0]))
