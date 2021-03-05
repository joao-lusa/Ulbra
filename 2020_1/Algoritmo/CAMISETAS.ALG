Algoritmo "camisetas"
//Para a entrada de uma festa, existe a seguinte promoção de acordo com a cor
//da camiseta da pessoa:
//*Camiseta rosa: ingresso R$20,00
//*Camiseta azul: ingresso R$ 30,00
//*Camiseta preta: Mulheres: R$ 10,00 – homens: R$15,00
//*Camiseta laranja: R$ 25,00
//*Demais cores: Maiores de 30 anos: R$45,00 – Menores ou com 30 anos: R$40,00
//Usando a múltipla escolha, faça um algoritmo que leia a cor da camiseta, e dê
//o valor do ingresso a ser pago pela pessoa. Caso seja necessário, leia a
//idade e o sexo.
Var

camisa, sexo, idade: inteiro


Inicio

      escreval("Informe a cor de sua camiseta:")
      escreval("1 -rosa")
      escreval("2 - azul")
      escreval("3 - Preta")
      escreval("4 - Laranja")
      escreval("5 - Outra cor")
      escreva("-")
      leia(camisa)

   escolha(camisa)
      caso 1
           escreva("Valor do ingresso é de R$20,00")

      caso 2
           escreva("Valor do ingresso é de R$ 30,00")

      caso 3
           escreval("Qual seu sexo?(1 para Masculino, 2 para Feminino)")
           leia(sexo)
      se(sexo = 1) entao
              escreva("O ingresso custa R$ 15,00")
      senao
              escreva("O ingresso custa R$ 10,00")
      fimse
              
      caso 4
              escreva("o ingresso custa R$ 25,00")
      caso 5
           escreva("escreva sua idade:")
           leia(idade)
      se(idade<=30) entao
                    escreva("o ingresso custa R$ 40,00")
      senao
           escreva("o ingresso custa R$45,00")
      fimse
      
      outrocaso
      escreva("esse ingresso não existe")

   fimescolha



Fimalgoritmo