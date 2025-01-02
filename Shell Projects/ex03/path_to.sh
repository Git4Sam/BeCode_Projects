#!/bin/bash
if [ -d "$1" ]; then
  echo "$1 is a directory. Listing contents:"
  ls "$1"
elif [ -f "$1" ]; then
  echo "$1 is a file. Displaying content:"
  cat "$1"
else
  echo "$1 is neither a file nor a directory."
fi

