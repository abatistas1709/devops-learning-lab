#!/bin/bash

read -p "Informe nome do diretório para ser criado: " diretorio

if [ -d "${diretorio}" ]; then
  echo "Diretório ${diretorio} já existe!"
  exit 1
else
  mkdir "${diretorio}"
  echo "Diretório "${diretorio}" criado com sucesso!"
fi

