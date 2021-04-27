#!/bin/bash

#################################################################################################################
#                                                                                                               #
#       ./mata_processo.sh - busca e mata um processo e todos os processos filhos pelo nome.                    #
#       Para correr este scrip, execute ./mata processo_processo <nome do processo>                             #
#       Execute ./mata_processo --help para obter ajuda.                                                        #
#                                                                                                               #
#       Autor: Paulo Amadeu     Data da ultima modificação: 27/04/2021                                          #
#       para entrar em contato: paulo.amadeu18@gmail.com        GitHub: https://github.com/paulo-amadeu97       #
#                                                                                                               #
#################################################################################################################

if [ "$#" -ne 1 ]
then
	echo "Parâmetro inválido!"
	echo "execute $0 --help para obter ajuda."
	exit
elif [ "$1" = "--help" ]
then
	echo "Para executar este escript corra $0 <nome do processo>"
	exit
else

	for busca in $(ps axu | grep "$1" | grep -v "$0" | grep -v "grep" | tr -s ' ' | cut -d' ' -f2)
	do
		$(kill -9 $busca > /dev/null 2>&1)
		echo "O processo "$(ps axu | grep "$1" | grep -v "$0" | grep -v "grep" | tr -s ' ' | cut -d' ' -f11)" foi fechado com sucesso!"
	done
fi
