#!/bin/bash

## $1 Lang, $2 pos, $3 next-langs
case "$1" in
    java)
        echo "$2"
        ;;
    c)
        echo "$2"
        ;;
    python)
        python src/python/hello_world.py "$2" "$3"
        ;;
    go)
        echo "$2 $3"
        ;;
esac

