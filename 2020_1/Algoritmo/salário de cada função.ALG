Algoritmo "semnome"
//para reajustar o sal�rio de acordo com a fun��o. Se for t�cnico, aumentar o
//sal�rio 50%, se for gerente, aumentar 30% e se for outro cargo, aumentar 20%.
Var
   salario, resposta: real
   cargo: caractere
Inicio
      escreval("digite seu salario:")
      leia(salario)
      escreval("digite o seu fun��o:")
      escreval("sendo as fun��es, t�cnico, gerente, outros")
      leia(cargo)

      escolha(cargo)
           caso "t�cnico"
                resposta<-salario+0.5*salario
                escreva("seu sal�rio agora � de:", resposta)
           caso "gerente"
                resposta<-salario+0.3*salario
                escreva("seu sl�rio agora � de:", resposta)
           caso "outros"
                resposta<-salario+0.2*salario
                escreva("seu sal�rio agora � de:", resposta)
           outrocaso
                escreva("seu cargo n�o foi encontrado, verifique se foi escrito corretamente")
      fimescolha
           
      


Fimalgoritmo