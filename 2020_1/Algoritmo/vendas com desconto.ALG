Algoritmo "vendas com desconto"
//Faça um programa que receba o valor da venda, escolha a condição de pagamento
//no menu e mostre o total da venda final conforme condições a seguir:
//1 - Venda a Vista - desconto de 10%
//2 - Venda a Prazo 30 dias - desconto de 5%
//3 - Venda a Prazo 60 dias - mesmo preço
//4 - Venda a Prazo 90 dias - acréscimo de 5%
//5 - Venda com cartão de débito - desconto de 8%
//6 - Venda com cartão de crédito - desconto de 7%
var
   valor, resposta: real
   pagamento: inteiro

Inicio
      escreval("valor da compra:")
      leia(valor)

      escreval("digite o número correspondente a forma de pagamento:")
      escreval("1 - Venda a Vista - desconto de 10%")
      escreval("2 - Venda a Prazo 30 dias - desconto de 5%")
      escreval("3 - Venda a Prazo 60 dias - mesmo preço")
      escreval("4 - Venda a Prazo 90 dias - acréscimo de 5%")
      escreval("5 - Venda com cartão de débito - desconto de 8%")
      escreval("6 - Venda com cartão de crédito - desconto de 7%")
      escreva("->")
      leia(pagamento)

      escolha(pagamento)
          caso 1
              resposta<-valor-0.10*valor
              escreval("o valor é de:", resposta)
          caso 2
               resposta<-valor-0.05*valor
               escreval("o valor é de:", resposta)
          caso 3
               escreval("o valor é de:", valor)
          caso 4
               resposta<-valor+0.05*valor
               escreval("o valor é de:", resposta)
          caso 5
               resposta<-valor-0.08*valor
               escreval("o valor é de:", resposta)
          caso 6
               resposta<-valor-0.07*valor
               escreval("o valor é de:", resposta)
          outrocaso
                 escreva("forma de pagamento não encontrada")

     fimescolha
Fimalgoritmo