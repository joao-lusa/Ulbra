Algoritmo "semnome"
e//screva um algoritmo que leia diversos n�meros inteiros, at� que o usu�rio
//digite o valor ZERO. Ao final (quando o usu�rio digitar ZERO), imprimir a
//quantidade de n�meros negativos e a soma de todos os n�meros positivos.


Var
   n_neg,n_pos,soma,ns:inteiro

Inicio
      repita
            escreva("digite o n�mero:")
            leia(ns)
            se(ns<0)entao
            n_neg<-n_neg+1
            senao
            soma<-soma+ns
            fimse
      ate(ns=0)
      escreval("n�meros negativos:",n_neg)
      escreva("Soma dos n�meros positivos:",soma)
      
Fimalgoritmo