function calcular(){
    var num1 = parseFloat (document.getElementById('n1').value);

    var oper = document.getElementById('sinal').value;

    var num2 =  parseFloat (document.getElementById('n2').value);

    var result
   
   switch (oper) {
      case '+': result =(num1) + (num2)

      break;
  
      case '-': result = (num1) - (num2);
       
      break;
      
      case '*': result = (num1) * (num2);
        
      break;
      
      case '/': result = (num1) / (num2);
      
      break
     
      default:
          break;
   }
   document.getElementById('res1').innerHTML = 'resultado:' + result 
}

function calcule(){
    var valor = document.getElementById('valor').value
    var kwh = document.getElementById('kwh').value
    var res

    res = kwh * valor
    if(kwh >= 100 && kwh<200){
        res= res * 1.25
    }
    if(kwh >= 200){
        res= res * 1.5
    }

    document.getElementById('res2').innerHTML = 'valor a ser pago:' + res
}

function verificar() {
    var numero = document.getElementById('numero').value
    numero = numero.split(',')
    var maior = 0 
    var i
    for(i=0; i < numero.length; i++){
        numero[i] = parseFloat(numero[i])
        if(maior < numero[i])
            maior = numero[i]
    }  
    document.getElementById('ver').innerHTML = 'esse é o maior valor:' + maior
}

function polar() {
    var idade = document.getElementById('idade').value
    idade = idade.split(',')
    var menor = 0
    var maio = 0
    var i
    for(i = 0; i < idade.length; i++){
        idade[i]= parseFloat(idade[i])
        if (idade[i] >=18){
            maio=maio+1
        }else{
            menor=menor+1
        }
    }    
    document.getElementById("verifica1").innerHTML = 'O total de maiores de idades:' +maio
    document.getElementById("verifica2").innerHTML = 'O total de menores de idades:' +menor
}