#!/bin/bash

read -p "Informe diretório onde estão as imagens: " diretorio

if [ ! -d "${diretorio}" ]; then
  echo "Diretório ${diretorio} NÃO existe!"
  exit 1
else
  diretorio_atual=$(pwd)
  cd "${diretorio}"
  for imagem in *.jpg; do
    convert "${imagem}" "${imagem%.jpg}".png && echo "Imagem convertida: ${imagem%.jpg}.png" || echo "Falha na conversão: $imagem"
  done
  cd "${diretorio_atual}"
fi

echo "Conversão concluída!"
