Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
//Faça um programa para ler um número inteiro, e enquanto ele for positivo,
//subtrair um (numero = numero – 1), e escrever o valor na tela.
Var
num, resp: real


Inicio
      escreva("digite um numero:")
      leia(num)
      
      se num>0 entao
                    resp<- num-1
                    escreva("valor é de",resp)
      senao
           escreva("ERRO")
      fimse
      
Fimalgoritmo