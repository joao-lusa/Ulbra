Algoritmo "semnome"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
//Fa�a um programa para ler um n�mero inteiro, e enquanto ele for positivo,
//subtrair um (numero = numero � 1), e escrever o valor na tela.
Var
num, resp: real


Inicio
      escreva("digite um numero:")
      leia(num)
      
      se num>0 entao
                    resp<- num-1
                    escreva("valor � de",resp)
      senao
           escreva("ERRO")
      fimse
      
Fimalgoritmo