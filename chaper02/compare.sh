#!/bin/sh
test 3 -eq 3 && echo Y || echo N
test 3 -ne 3 && echo Y || echo N
[ 6 -gt 4 ] && echo Y || echo N
[ 6 -ge 4 ] && echo Y || echo N
[ 6 -lt 4 ] && echo Y || echo N
[ 6 -le 3 ] && echo Y || echo N
[ $UID -eq 0 ] && echo Y || echo N
