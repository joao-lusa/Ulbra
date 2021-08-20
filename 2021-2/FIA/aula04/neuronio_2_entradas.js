//entradas 
var x0, x1;
x0 = 1;
x1= -1

//pesos
var w0, w1;
w0 = -1;
w1 = 1;

//função da transferencia(LR, FR, FS)
var funcao;
funcao = 'FS'

//geral
var y;

//estrutura principal
if (funcao == 'LR') {
    y = limiteRapido(soma(x0, x1, x0, x1));
}else if (funcao == 'FR') {
    y = funcaoRampa(soma(x0, x1, x0, x1));

}else if (funcao == 'FS') {
    y = funcaoSigmoid(soma(x0, x1, x0, x1));
}

console.log("Saida é: "+y+", Função utilizada é: "+funcao);

function soma(_x0, _x1, _w0, _w1) {
    var soma;
    soma = (_x0*_w0)+(_x1*_w1);
    return soma;
}

function limiteRapido(_soma) {
    if (_soma <= 0) {
        return -1;
    }else{
        return 1;
    }
}
function funcaoRampa(_soma) {
    if (_soma<0) {
        return 0;   
    }else if (0 <= _soma && _soma <= 1) {
        return _soma;
    }else{
        return 1;
    }
}
function funcaoSigmoid(_soma) {
    if (_soma>=0) {
        return 1 - 1/(1+_soma);
    }else{
        return -1 + 1/(1-_soma);
    }
}