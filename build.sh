#!/bin/bash

D=$(dirname $(readlink -f $0))
CC=gcc
cflags=(-Og -g -Wextra -Wall -Wno-unused-parameter)
cflags+=( $(pkg-config --cflags libpulse-simple))
libs=(-lm)
libs+=( $(pkg-config --libs libpulse-simple))

build_cmd="$CC ${cflags[@]} record.c -o record ${libs[@]}"
echo $build_cmd
eval $build_cmd
cat <<EOF>compile_commands.json
[
  {
    "directory": "$D",
    "command": "$build_cmd",
    "file": "record.c"
  }
]
EOF
