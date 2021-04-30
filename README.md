# mata_processo
Busca o PID e mata um processo e todos os processos filhos a partir do nome.

# INSTALAÇÃO
  Faça a descompactação do reposiorio e dê permissão de execução para o arquivo `mata_processo.sh`
 
 ```go
 $chmod +x mata_processo.sh
 ```
# EXECUÇÃO
  Para exucutar o script corretamente, use como parametro o nome do processo que deseja matar.
 
 ```go
 $./mata_processo.sh <processo>
 ```
 *não use "<>"

*Tenha cuidado com o nome do processo, pois o mesmo irá ser fechado de forma forçada, portanto se atente para não matar processos vitais para o funcionamento do sistema.
