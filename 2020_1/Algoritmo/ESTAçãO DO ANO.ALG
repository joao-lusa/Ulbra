Algoritmo "estação do ano"

Var
   mes: caractere


Inicio
      escreva("escreva o mês do ano: ")
      leia (mes)
      escolha mes
        caso "abril" , "maio" , "junho"
             escreva("A estação é outono.")
        caso "julho" , "agosto" , "setembro"
             escreva("A estação é inverno.")
        caso "outubro" , "novembro" , "dezembro"
             escreva("A estação é primavera.")
        caso "janeiro" , "fevereiro" , "março"
             escreva("A estação é verão")
        outrocaso
                 escreva("Mês não encontrado.")
fimescolha

fimalgoritmo