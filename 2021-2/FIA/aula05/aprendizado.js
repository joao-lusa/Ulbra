var x11 = 0, x12 = 0, y1 =0
var x21 = 1, x22 = 0, y2 =0
var x31 = 0, x32 = 1, y3 =1
var x41 = 1, x42 = 1, y4 =1

var w1 = -1, w2 = -1 

var sum, y, ajustes, ajustesTotais = 0

do {
    ajustes = 0

    sum = soma(x11, x12)
    y = transferencia(sum)
    if(y != y1){
        ajustes(x11,x12, y1, y)
        ajustes ++
        ajustesTotais ++
    }

    sum = soma(x21, x22)
    y = transferencia(sum)
    if (y != y2) {
        ajustes(x12,x22,y2,y)
        ajustes ++
        ajustesTotais ++
    }

    sum = soma(x31, x32)
    y = transferencia(sum)
    if(y != y3) {
        ajustes(x31,x32,y3,y)
        ajustes ++
        ajustesTotais ++
    }

    sum = soma(x41, x42)
    y = transferencia(sum)
    if (y != y4) {
        ajustes(x41,x42,y4,y)
        ajustes ++
        ajustesTotais ++
    }
} while (ajustes != 0)

console.log("Os pesos finais são: wi: "+ w1+"e w2: "+ w2)
console.log("A quantidade de ajustes foi de: "+ ajustesTotais)

function soma(_x1, _x2) {
    return(_x1*w1)+(_x2*w2)
}

function transferencia(_sum) {
    if(_sum < 0){
        return 0
    } else if (_sum >= 0 && _sum <=1) {
        return _sum
    } else {
        return 1
    }
}

function ajustes(_x1, _x2, _yd, _yo){
    w1 = w1 + 1 * (_yd - _yo) * _x1
    w2 = w2 + 1 * (_yd - _yo) * _x2
}
