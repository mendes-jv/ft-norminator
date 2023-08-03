#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Uso: $0 <directory>"
  exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
  echo "Diretório não encontrado: $directory"
  exit 1
fi

for file in "$directory"/*.c "$directory"/*.h "$directory"/Makefile; do
  if [ -f "$file" ]; then
    echo "Atualizando header para: $file"
    nvim -c ":Stdheader" -c ":wq" "$file"
    printf "Arquivo atualizado e salvo: $file\n"
  fi
done

printf "\n\n\nAtualização de arquivos .c, .h, e Makefile no diretório $directory\n\n\n"

printf "Aplicando norminator versão 2001\n"

python3 -m c_formatter_42 *.c *.h

norminette "$directory"
