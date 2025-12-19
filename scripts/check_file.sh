#!/bin/bash

arquivo=$1

if [ -e "${arquivo}" ]; then
  echo "Arquivo "${arquivo}" existe!"
else
  echo "Arquivo "${arquivo}" NÃO existe!"
fi