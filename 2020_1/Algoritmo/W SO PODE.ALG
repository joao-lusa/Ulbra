algoritmo "w so pode"
//3. Fa�a um programa que leia teclas digitadas do teclado at� que o
//usu�rio pressione a tecla W.

var
   w: caractere
   
Inicio

      repita
            escreva ("Digite alguma tecla: ")
            leia(w)

            se (w <>"W")entao
                 escreval ("Digito errado, tente novamente!")
            senao
                 escreval("Digito correto!!")
      fimse

      ate (w ="W")
      
Fimalgoritmo
