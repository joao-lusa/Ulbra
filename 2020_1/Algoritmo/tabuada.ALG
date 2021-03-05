Algoritmo "semnome"
//Escreva um algoritmo usando o comando “para” (for) que exiba na tela
// a tabuada completa (de 1x1=1 ate´ 10x10=100). Capriche para que ela saia
//igual a que voce^ usava na escola.
Var
   n,i, cont : inteiro


Inicio
      cont<-1
      escreva("digite o numero que deseja:")
      leia(n)

      para i<-1 ate 10 faca
            cont<-cont+1
           escreval(n," x",cont,"=",n*i)
      fimpara
Fimalgoritmo