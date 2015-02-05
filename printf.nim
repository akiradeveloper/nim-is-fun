import times
import posix
import logging
let t = Ttimespec(tv_sec:100.Time, tv_nsec:10)
var logger = newConsoleLogger()
handlers.add(logger)
echo expr(t)
debug("akira")
# debug(expr(t))
debug("$1", expr(t))

# logger.info("hige")
# logger.debug("hoge%s", expr(t))
# printf("%s", "a")
#
# debug("hoge")
#
import strutils
echo "$1, $2" % ["hoge", "hige"]
echo "$o, $i" % ["o", "hoge", "i", "hige"]
