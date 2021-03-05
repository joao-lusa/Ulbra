/******************************************************************************

Um loja de animais precisa de um algoritmo para calcular os custos de criação de coelhos.
O custo é calculado com a fórmula CUSTO=(NRO_COELHOS*0.70)/18+10. O algoritmo tem como
entrada o número de coelhos, devendo fornecer, como saída, o custo.
algoritmo custo_coelho
var
nro_coelhos:inteiro
custo: real
inicio
escreva("Qual o numero de coelhos? ")
leia(nro_coelhos)
custo <- (nro_coelhos*0.70)/18+10
escreva("Custo para criar ", nro_coelhos, " coelho(s) = ", custo)
fimalgoritmo

*******************************************************************************/
#include <stdio.h>

int main()
{
 int nro_coelhos;
float custo;

printf("Qual o numero de coelhos? "); //escreva
scanf("%i", &nro_coelhos); //leia %i para inteiro %f para real(float) &obrigatório para leitura
custo = (nro_coelhos*0.70)/18+10;
printf("\nCusto para criar %i coelho(s) = %.2f", nro_coelhos, custo);

return 0;  
}
