Algoritmo "semnome"
//Fa�a um algoritmo para ler: quantidade atual em estoque, quantidade m�xima
//em estoque e quantidade m�nima em estoque de um produto. Calcular e escrever
// a quantidade m�dia ((quantidade m�dia = quantidade m�xima + quantidade
// m�nima)/2). Se a quantidade em estoque for maior ou igual a quantidade m�dia
//escrever a mensagem 'N�o efetuar compra', sen�o escrever a mensagem 'Efetuar
 //compra'.
Var
   atual, maxima, minima:inteiro
   media:real


Inicio
      escreva("qual a quantidade atual do estoque:")
      leia(atual)
      escreva("qual � quantidade maxima do estoque:")
      leia(maxima)
      escreva("qual � a quantidade minima do estoque:")
      leia(minima)
                  media <-(maxima+minima)/2
                  
            se(atual >= media) entao
            
           escreva("n�o foi possivel efetuar a compra.")
           senao
           escreva("efetuar compra.")
           fimse
Fimalgoritmo