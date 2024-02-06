##Batch
set nome=Marcos
echo Ola, %nome%
==================Operacao
set a=5
set b=2
set /a "c=%a%+%b%"
echo Resultado: %c%
================== Condicao
set n1=5
set n2=2
if %n1% gtr %n2% (echo O numero 1 é maior que o numero 2) else if %n1% lss %n2% (echo o numero 1 é menor que o numero 2) else (os numeros sao iguais)
==================Cria pasta
dir
mkdir Pasta
dir
==================Cria arquivo
type nul > arquivo.txt
dir
==================Copia arquivo pra Pasta
copy arquivo.txt Pasta
dir
cd Pasta
dir
==================Renomear arquivo
ren arquivo.txt arquivo2.txt
==================Remover Pasta
rmdir /s /q Pasta
dir