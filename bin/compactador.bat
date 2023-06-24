@echo off
echo Compactando arquivos
tar -cf batnotas.zip *.xml 2> erros.txt

REM a linha abaixo é um exemplo de desvio condicional em arquivos .bat
IF %ERRORLEVEL% NEQ 0 (echo "erro de processamento")
REM IF é a palavra-chave usada para indicar o desvio
REM %ERRORLEVEL% é uma variável de sistema que armazena um valor diferente de 0 em caso de erro num comando anterior
REM NEQ é um operador relacional que indica diferença seria =! em js por exemplo
REM 0 é o valor ao qual a variável %ERRORLEVEL% está sendo comparado, concluindo a operação lógica
REM o comando contido no parentese é o bloco de código a ser executado caso a operação lógica anterior seja verdadeira

echo Processo concluído