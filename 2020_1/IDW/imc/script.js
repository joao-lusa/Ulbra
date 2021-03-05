function calcular(){    
    var peso = parseFloat(document.getElementById('peso').value);

    var altura = parseFloat(document.getElementById('altura').value);

    var result

    var imc
    
    imc= altura*altura
    result=peso/imc

    if(result<18.5){
        document.getElementById('result').innerHTML = 'abaixo do peso ideal: ' + result
    }
    if(result >= 18.5 && result < 25){
        document.getElementById('result').innerHTML = 'no peso ideal: ' + result
    }
    if(result >= 25 && result < 30){
        document.getElementById('result').innerHTML = 'acima do peso ideal: ' + result
    }
    if(result>=30){
        document.getElementById('result').innerHTML = 'obeso: ' + result
    }
}