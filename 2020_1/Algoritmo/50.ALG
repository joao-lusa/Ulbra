Algoritmo "50"

var
    nro1, nro2, nro3, resp: real

inicio
    escreva("digite o primeiro numero:")
    leia(nro1)
    escreva("digite o segundo numero:")
    leia(nro2)
    escreva("digite o terçeiro numero:")
    leia(nro3)

    resp<- nro1+nro2+nro3
    
    se(resp>50)entao

    escreva("a soma é maior que 50 sendo igual a:", resp)

    senao

    escreva("a soma é menor que 50 sendo igual a:", resp)
    fimse
fimalgoritmo