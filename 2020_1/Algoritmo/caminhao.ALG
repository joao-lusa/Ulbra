Algoritmo "semnome"
//Em uma rodovia existe um posto de pesagem de ve�culos de carga. O limite de
//peso admitido � de 28675,00kg. Fa�a um algoritmo ou programa na linguagem C,
// que leia o peso do caminh�o e verifique se ele est� acima do limite. Se
// estiver, o sistema deve escrever a mensagem "Carga acima do limite permitido
//ve�culo sofrer� penalidade de multa!".
//Seu sistema deve ler um n�mero indeterminado de pesos de ve�culos de carga
//at� que o peso zero seja digitado.
//Informar o maior e menor peso de ve�culo que transitava na rodovia.

Var
p, maior_p, menor_p:real

Inicio
      maior_p<-0
      menor_p<-99999999999999
      escreval("para encerrar digite 0")
      repita
            escreva("digite peso do caminh�o:")
            leia(p)
            se (p>28675)entao
               escreval("Carga acima do limite permitido, ve�culo sofrer� penalidade de multa!")
            fimse
            se(maior_p< p)entao
                    maior_p<-p
            fimse
            se((p<>0)e(p< menor_p))entao
                    menor_p<-p
            fimse
      ate(p=0)
      escreval("Maior peso transitado pela rodovia:", maior_p)
      escreval("Menor peso transitado pela rodovia:", menor_p)



Fimalgoritmo