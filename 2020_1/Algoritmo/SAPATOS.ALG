Algoritmo "sapatos"
//Uma loja de sapatos precisa fazer uma promo��o para seus clientes. O cliente
// que comprar 2 pares de sapato ter� o desconto de 15% e se comprar 3 pares ou
// mais ganha desconto de 30% Fa�a um algoritmo que leia o valor total da compra
//e o n�mero de pares de sapatos. Se forem 2 ou mais calcule o desconto e
// escreva valor da compra e valor com desconto..
Var
   valor, resultado:real
   quantidade:inteiro

Inicio
      escreva("digite o valor total da compra:")
      leia(valor)
      escreva("digite a quantidade de sapatos")
      leia(quantidade)
escolha(quantidade)
       caso 0
       escreva(voc� tem que escolher os pares)
       caso 1
      resultado<-valor
      escreva("O valor da compra �: ",resultado)
      caso 2
      resultado<-valor*0.85
      escreva("O valor da compra �: ",resultado)
      caso 3
      resultado<-valor*0.7
      escreva("O valor da compra �: ",resultado)
      outrocaso
      resultado<-valor*0.7
      escreva("O valor da compra �: ",resultado)
fimescolha

Fimalgoritmo