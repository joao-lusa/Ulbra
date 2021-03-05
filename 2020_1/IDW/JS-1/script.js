//exercicio 1, part 1                                        Leia um valor e imprima os resultados: “É maior que 10” ou “Não é maior que 10” ou ainda “É igual a 10”

/*var numero = prompt('digite um numero: ');

numero = parseFloat(numero);

if(numero > 10){
    alert( numero + ' é maior do que 10');
}else if    ( numero < 10){
    alert( numero + ' é menor que 10')
}else{  
    alert( numero + ' é igual 10');
}

//fim
//part 2 do exercicio 1                                                             Some dois valores lidos e imprima o resultado
                                                     

var somaA = prompt('digite um numero: ');

var somaB = prompt('digite o segundo numero: ');

var final = parseInt(somaA) + parseInt(somaB)
alert('valor da soma: ' +  final);

//fim
//part 3 do exercicio 1                                           Leia 2 valores e a operação a ser realizada (+, -, * ou /) e imprima o resultado (use um switch)

var valor1= prompt('digite um numero: ');

var operacao= prompt('operação a ser realizada: ');

var valor2= prompt('digite segundo numero: ');

switch (operacao) {
    case '+': operacao = parseInt(valor1) + parseInt(valor2);
        alert('valor da soma: ' +  operacao);  
    break;

    case '-': operacao = parseInt(valor1) - parseInt(valor2);
        alert('valor da subtração: ' +  operacao) 
    break;
    
    case '*': operacao = parseInt(valor1) * parseInt(valor2);
        alert('valor da multiplicação: ' +  operacao)
    break;
    
    case '/': operacao =  parseInt(valor1) / parseInt(valor2);
        alert('valor da divisão: ' +  operacao)
    break

    default:
        break;
}

//fim
//part 4 exercicio 1                        Leia um nome e um valor n e imprima o nome n vezes usando o laço for

var nome= prompt('escreva seu nome: ');

var n= prompt('quantas vezes deve repitir: ');

for (let i = 1; i <= + n;  i++) {
   alert(nome);
    
}*/

//fim
//part 5 exercicio                                    Leia um nome, endereço e e-mail, armazene em um array, depois imprima na tela

var nome= prompt('escreva seu nome: ');

var email= prompt('escreva seu e-mail: ');

var armazem= []

alert(nome);
alert(email);
