#!/bin/bash

diretorio=$1

if [ ! -d "${diretorio}" ]; then
  echo "Diretorio ${diretorio} não existe!"
  exit 1
fi

tar -zcvf "${diretorio}".tar.gz "${diretorio}"