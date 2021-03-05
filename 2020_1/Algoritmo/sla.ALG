Algoritmo "semnome"
e//screva um algoritmo que leia diversos números inteiros, até que o usuário
//digite o valor ZERO. Ao final (quando o usuário digitar ZERO), imprimir a
//quantidade de números negativos e a soma de todos os números positivos.


Var
   n_neg,n_pos,soma,ns:inteiro

Inicio
      repita
            escreva("digite o número:")
            leia(ns)
            se(ns<0)entao
            n_neg<-n_neg+1
            senao
            soma<-soma+ns
            fimse
      ate(ns=0)
      escreval("números negativos:",n_neg)
      escreva("Soma dos números positivos:",soma)
      
Fimalgoritmo