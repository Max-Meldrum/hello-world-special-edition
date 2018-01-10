from __future__ import print_function # needs to be first statement in file
import sys
import subprocess

arg_len = len(sys.argv)
if arg_len > 1:
    pos = int(sys.argv[1])
    langs = sys.argv[2]
else:
    sys.exit(1)


if pos == 0:
    print("H", end='')
elif pos == 1:
    print("e", end='')
elif pos == 2:
    print("l", end='')
elif pos == 3:
    print("l", end='')
elif pos == 4:
    print("o", end='')
elif pos == 5:
    print(" ", end='')
elif pos == 6:
    print("W", end='')
elif pos == 7:
    print("o", end='')
elif pos == 8:
    print("r", end='')
elif pos == 9:
    print("l", end='')
elif pos == 10:
    print("d", end='')
elif pos == 11:
    print("!", end='')
elif pos == 12:
    print("\n", end='')

sys.stdout.flush()


if pos >= 0 and pos < 12:
    if pos == 10 or pos == 11:
        target_lang = langs
        subprocess.call(["./controller.sh", str(target_lang), str(pos+1), str(langs)])
    else:
        target_lang, next_langs = langs.split(" ", 1)
        subprocess.call(["./controller.sh", str(target_lang), str(pos+1), str(next_langs)])


