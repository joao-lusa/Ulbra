Algoritmo "semnome"

Var
   n1, n2, media: real
   calcular: caractere

Inicio
      repita
            escreva("escreva uma notas:")
            leia(n1)
            escreva("escreva outra nota:")
            leia(n2)
            media <- (n1+n2)/2
            escreval("m�dia=", media)
            escreva("deseja calcular uma nova m�dia (s/n)?")
            leia(calcular)
      ate(calcular="n")

Fimalgoritmo