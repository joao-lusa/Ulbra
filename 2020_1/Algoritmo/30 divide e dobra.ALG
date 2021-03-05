Algoritmo "Selecao encadeada"
var
   nro1, dob_nro, met_nro: real

inicio
    escreva("digite um numero:")
    leia(nro1)

    met_nro<- (nro1/2)
    dob_nro<-(nro1*2)

   se(nro1>30)entao
   
   escreva("exibindo", met_nro)

   senao
   escreva("exibindo:", dob_nro)
   fimse

fimalgoritmo