Algoritmo "esta��o do ano"

Var
   mes: caractere


Inicio
      escreva("escreva o m�s do ano: ")
      leia (mes)
      escolha mes
        caso "abril" , "maio" , "junho"
             escreva("A esta��o � outono.")
        caso "julho" , "agosto" , "setembro"
             escreva("A esta��o � inverno.")
        caso "outubro" , "novembro" , "dezembro"
             escreva("A esta��o � primavera.")
        caso "janeiro" , "fevereiro" , "mar�o"
             escreva("A esta��o � ver�o")
        outrocaso
                 escreva("M�s n�o encontrado.")
fimescolha

fimalgoritmo