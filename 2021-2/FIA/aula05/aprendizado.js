//grupo de exemplos 
var x11=0, x12=0, y1=0;  //{0,0}=0 -> exemplos 1
var x21=1, x22=1, y2=1;    // {1,1}=1 -> exemplos 2
var x31 = 1, x32= 1

//pesos iniciais
var w1 =-1, w2=-1;

//auxiliares
var sum, y, ajustes, ajustesTotais = 0, repeticoes = 0; 

do{
    ajustes = 0;
    //exemplos 1
    sum = soma(x11, x12);
    y = transferencia(sum);
    if(y != y1){
       ajuste(x11, x12, y1, y);
       ajustes++;
       ajustesTotais ++;
    }
    //exemplos 2 
    sum = soma(x21, x22);
    y = transferencia(sum);
    if (y != y2) {
        ajuste(x21, x22, y2, y);
        ajustes++;
        ajustesTotais ++;
    }
    repeticoes ++;
}while(ajuste != 0);

console.log("os pesos finais são: " + w1 + "e" + w2);
console.log("ajustes totais " + ajustesTotais)
console.log("repetições: " + repeticoes);

function soma(_x1, _x2) {
    return(_x1*w1)+(_x2*w2);
}

function transferencia(_sum) {
    if (_sum <= 0) {
        return 0;
    }else{
        return 1;
    }
}

function ajuste(_x1, _x2, _yd, _yo) {
    w1 = w1 + 1 * (_yd-_yo) * _x1;
    w2 = w2 + 1 * (_yd-_yo)*_x2;
}