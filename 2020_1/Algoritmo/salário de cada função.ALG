Algoritmo "semnome"
//para reajustar o salário de acordo com a função. Se for técnico, aumentar o
//salário 50%, se for gerente, aumentar 30% e se for outro cargo, aumentar 20%.
Var
   salario, resposta: real
   cargo: caractere
Inicio
      escreval("digite seu salario:")
      leia(salario)
      escreval("digite o seu função:")
      escreval("sendo as funções, técnico, gerente, outros")
      leia(cargo)

      escolha(cargo)
           caso "técnico"
                resposta<-salario+0.5*salario
                escreva("seu salário agora é de:", resposta)
           caso "gerente"
                resposta<-salario+0.3*salario
                escreva("seu slário agora é de:", resposta)
           caso "outros"
                resposta<-salario+0.2*salario
                escreva("seu salário agora é de:", resposta)
           outrocaso
                escreva("seu cargo não foi encontrado, verifique se foi escrito corretamente")
      fimescolha
           
      


Fimalgoritmo