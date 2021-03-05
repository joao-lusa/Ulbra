Algoritmo "semnome"


Var
   placa,tip,total_v,soma,carro,moto,caminhao:inteiro
   valor:real
   acabo:caractere


Inicio
      soma<-0
      repita
            repita
                  escreva("Placa do veiculo:")
                  leia(placa)
                  escreva("tipo de veiculo:")
                  leia(tip)
            ate((tip=1)ou(tip=2)ou(tip=3))
            escolha(tip)
                        caso 1
                             carro<-carro+ 1
                             valor<-valor+ 12.80
                        caso 2
                             moto<- moto+ 1
                             valor<- valor+ 8.20
                        caso 3
                             caminhao<-caminhao+ 1
                             valor<- valor+ 22.20
            fimescolha
            escreva("deseja continuar(s-sim ou n-não):")
            leia(acabo)
      ate((acabo="n")ou(acabo="N"))
      
      total_v<-carro+moto+caminhao
      escreval("1.Número total de veículos que passaram pelo pedágio:",total_v)
      escreval("2.Valor total arrecadado: ", valor)
      se((carro>moto)e(carro>caminhao))entao
          escreval("3.Tipo de veículo que mais passou no pedágio: Carro")
      fimse
      se((moto>carro)e(moto>caminhao))entao
          escreval("3.Tipo de veículo que mais passou no pedágio: Moto")
      fimse
      se((caminhao>carro)e(caminhao>moto))entao
           escreval("3.Tipo de veículo que mais passou no pedágio: Caminhão")
      fimse
      
Fimalgoritmo