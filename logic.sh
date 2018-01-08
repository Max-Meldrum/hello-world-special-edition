#!/bin/bash


## $1 Lang, $2 pos, $3 next-langs
case "$1" in
    java)
        java -cp src/java/ HelloWorld "$2" "$3"
        ;;
    c)
        ./src/c/hello_world $2 "$3"
        ;;
    python)
        python src/python/hello_world.py "$2" "$3"
        ;;
    go)
        echo "$2 $3"
        ;;
esac

