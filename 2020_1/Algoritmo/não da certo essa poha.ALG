Algoritmo "semnome"
//Faça um algoritmo que leia a altura de um número indeterminado de pessoas.
//Calcule e exiba a média das alturas das pessoas. O algoritmo deve ler uma
//altura e perguntar se a pessoa deseja continuar (S-sim ou N-não). Quando a
//resposta for 'N', deve parar a leitura. Utilizar a estrutura de repetição
//faça-enquanto (do while).

Var
   resposta: caracter
   cont: inteiro
   media, n , soma: real


Inicio
      cont<-0
      soma<-0
      repita
      escreva("digite uma altura:")
      leia(n)
      se (n<>0)entao
      soma<-soma+n
      cont<-cont+1
      fimse
      escreva("existe outra altura?(responda apenas com s para sim ou n para não):")
      leia(resposta)
      ate resposta = "n"
      media<- soma/cont
      escreva("a media é:", media)
fimalgoritmo