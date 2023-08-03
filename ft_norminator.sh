#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
  echo "Directory not found: $directory"
  exit 1
fi

for file in "$directory"/*.c "$directory"/*.h "$directory"/Makefile; do
  if [ -f "$file" ]; then
    echo "Updating header for: $file"
    nvim -c ":Stdheader" -c ":wq" "$file"
    printf "File updated and saved: $file\n"
  fi
done

printf "\n\n\nHeader update complete for all .c, .h, and Makefile files in: $directory\n\n\n"

printf "applying norm formatter\n"

python3 -m c_formatter_42 *.c *.h

norminette "$directory"
