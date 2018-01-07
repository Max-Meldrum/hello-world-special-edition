#!/bin/bash

# C/C++
sudo apt-get -qq -y install gcc

# Java
sudo apt-get -qq -y install default-jdk 

# Ruby
#sudo apt-get -qq -y install ruby

# Lua
#sudo apt-get -qq -y install lua

# Scala
#sudo apt-get -qq -y install scala

# Go
#sudo apt-get -qq -y install golang-go

# Haskell
#sudo apt-get -qq -y install haskell-stack

# Caml
#sudo apt-get -qq -y install ocaml

# TODO
# R
# PHP
# Rust

command -v gcc >/dev/null 2>&1 || { echo >&2 "gcc is required, aborting."; exit 1; }
command -v javac >/dev/null 2>&1 || { echo >&2 "javac is required, aborting."; exit 1; }
command -v scalac >/dev/null 2>&1 || { echo >&2 "scalac is required, aborting."; exit 1; }
#command -v lua >/dev/null 2>&1 || { echo >&2 "lua is required, aborting."; exit 1; }
command -v python >/dev/null 2>&1 || { echo >&2 "python is required, aborting."; exit 1; }
command -v ruby >/dev/null 2>&1 || { echo >&2 "ruby is required, aborting."; exit 1; }
command -v go >/dev/null 2>&1 || { echo >&2 "go is required, aborting."; exit 1; }
#command -v ocaml >/dev/null 2>&1 || { echo >&2 "ocaml is required, aborting."; exit 1; }



# Compiling if needed
javac -d src/java/ src/java/HelloWorld.java
# gcc...

#LANGS=("python" "ruby" "c" "java" "lua" "go" "scala" "asm")
LANGS=("python" "java")

HELLO_WORLD_SIZE=12
declare -a CHOSEN=()

for (( c=0; c<$HELLO_WORLD_SIZE; c++ ))
do  
    CHOSEN[c]+="${LANGS["$[RANDOM % ${#LANGS[@]}]"]}"
done

FIRST=${CHOSEN[0]}
ALL=${CHOSEN[@]}
# Well this can be improved..
LIST=$(echo $ALL| awk '{$1="";print $0}' | awk '{$1=$1};1')

echo "Running Hello World with:" $ALL
# target-lang, pos, next-target-langs
./logic.sh "$FIRST" 0 "$LIST"
