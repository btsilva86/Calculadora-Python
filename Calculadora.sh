#!/bin/bash

echo "Calculadora Simples"
echo "===================="
echo "Escolha a operação:"
echo "1 - Adição"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read -p "Digite a opção (1-4): " operacao

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

case $operacao in
    1) resultado=$((num1 + num2))
       echo "Resultado: $num1 + $num2 = $resultado"
       ;;
    2) resultado=$((num1 - num2))
       echo "Resultado: $num1 - $num2 = $resultado"
       ;;
    3) resultado=$((num1 * num2))
       echo "Resultado: $num1 * $num2 = $resultado"
       ;;
    4) 
       if [ "$num2" -eq 0 ]; then
           echo "Erro: divisão por zero não é permitida."
       else
           resultado=$((num1 / num2))
           echo "Resultado: $num1 / $num2 = $resultado"
       fi
       ;;
    *) echo "Opção inválida."
       ;;
esac
