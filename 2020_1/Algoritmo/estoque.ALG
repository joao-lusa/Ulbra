Algoritmo "semnome"
//Faça um algoritmo para ler: quantidade atual em estoque, quantidade máxima
//em estoque e quantidade mínima em estoque de um produto. Calcular e escrever
// a quantidade média ((quantidade média = quantidade máxima + quantidade
// mínima)/2). Se a quantidade em estoque for maior ou igual a quantidade média
//escrever a mensagem 'Não efetuar compra', senão escrever a mensagem 'Efetuar
 //compra'.
Var
   atual, maxima, minima:inteiro
   media:real


Inicio
      escreva("qual a quantidade atual do estoque:")
      leia(atual)
      escreva("qual é quantidade maxima do estoque:")
      leia(maxima)
      escreva("qual é a quantidade minima do estoque:")
      leia(minima)
                  media <-(maxima+minima)/2
                  
            se(atual >= media) entao
            
           escreva("não foi possivel efetuar a compra.")
           senao
           escreva("efetuar compra.")
           fimse
Fimalgoritmo