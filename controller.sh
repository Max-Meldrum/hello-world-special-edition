#!/bin/bash


## Bridge impl
## $1 Lang, $2 pos, $3 next-langs
case "$1" in
    java)
        java -cp src/java/ Executor "$2" "$3"
        ;;
    c)
        ./src/c/executor "$2" "$3"
        ;;
    python)
        python src/python/executor.py "$2" "$3"
        ;;
    ruby)
        ruby src/ruby/executor.rb "$2" "$3"
        ;;
esac

