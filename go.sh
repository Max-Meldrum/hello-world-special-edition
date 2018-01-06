#!/bin/bash

LANGS=("python" "ruby" "c" "java" "lua" "go" "scala" "asm")

HELLO_WORLD_SIZE=12
declare -a CHOSEN=()

for (( c=1; c<=$HELLO_WORLD_SIZE; c++ ))
do  
    CHOSEN[c]+="${LANGS["$[RANDOM % ${#LANGS[@]}]"]}"
done

echo ${CHOSEN[@]}
#printf '%s\n' "${CHOSEN[@]}"

case "$1" in
    java)
        echo "java"
        ;;
    c)
        echo "c"
        ;;
    python)
        echo "pyth"
        ;;
    go)
        echo "go"
        ;;
esac
