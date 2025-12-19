#!/bin/bash

read -p "Informe diretório com arquivos para renomeação: " diretorio
read -p "Adicionar (p)refixo ou (s)ufixo? " modo
read -p "Informe string que deve ser adicionado: " string

if [ ! -d "${diretorio}" ]; then
  echo "Diretório ${diretorio} NÃO encontrado!"
  exit 1
fi

case "${modo}" in
  "p")
    for arquivo in "${diretorio}"/*; do
      mv "${arquivo}" "${diretorio}"/"${string}"_"${arquivo##*/}" \
        && echo "Arquivo ${arquivo} renomeado para "${diretorio}"/"${string}"_"${arquivo##*/}"." \
        || echo "Erro na renomeação do arquivo ${arquivo}."
    done
    ;;
  "s")
    for arquivo in "${diretorio}"/*; do
      mv "${arquivo}" "${diretorio}"/"${arquivo##*/}"_"${string}" \
        && echo "Arquivo ${arquivo} renomeado para "${diretorio}"/"${arquivo##*/}"_"${string}"." \
        || echo "Erro na renomeação do arquivo ${arquivo}."
    done
    ;;
  *)
    echo "Modo de operação inválido! Opções válidas: 'p' ou 's'"
    ;;
esac
