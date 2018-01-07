import sys
import subprocess

arg_len = len(sys.argv)
if arg_len > 1:
    pos = int(sys.argv[1])
    langs = sys.argv[2]
else:
    sys.exit(1)


if pos == 0:
    print "H"
elif pos == 1:
    print "e"
elif pos == 2:
    print "l"
elif pos == 3:
    print "l"
elif pos == 4:
    print "o"
elif pos == 5:
    print " "
elif pos == 6:
    print "W"
elif pos == 7:
    print "o"
elif pos == 8:
    print "r"
elif pos == 9:
    print "l"
elif pos == 10:
    print "d"
elif pos == 11:
    print "!"
elif pos == 12:
    print "\n"

if pos >= 0 and pos < 12:
    target_lang, next_langs = langs.split(" ", 1)
    subprocess.call(["./logic.sh", str(target_lang), str(pos+1), str(next_langs)], shell=True)


