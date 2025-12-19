#!/bin/bash

ps -eo pid,pmem,user,args --sort -pmem | head -n 16 > /home/asilva/repos/personal/curso-devops/processos_$(date +%Y%m%d_%H%M).log
