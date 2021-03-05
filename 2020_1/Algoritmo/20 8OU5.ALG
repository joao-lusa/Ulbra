Algoritmo "20 8ou5"

var
     num1, num2, resp, mais, menos: inteiro

inicio
    escreva("digite o primeiro numero:")
    leia(num1)
    escreva("gigite o segundo numero:")
    leia(num2)

    resp<-num1+num2

    se(resp>=20)entao

    mais<-resp+8
    escreva("valor da operacao é:", mais)

    senao
    menos<-resp-5
    escreva("valor da operacao é:", menos)
    fimse
fimalgoritmo