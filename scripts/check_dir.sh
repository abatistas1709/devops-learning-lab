#!/bin/bash

diretorio=$1

if [ -d "${diretorio}" ]; then
  echo "Diretório ${diretorio} existe!"
else
  echo "Diretório ${diretorio} não existe!"
fi