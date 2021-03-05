function olhar(){
    var des = document.getElementById('desconto').value;

    var n = document.getElementById('n').value;

    var passagem;

    var pousada;

    var total;

    var pico;

    var inf; 

    switch (n){
        case 'p1':
            pico ='El Salvador'
            pousada = 450
            if(des >= 5){
                inf = 'Desconto no valor da passagem: 7%'
                passagem = 985.8
            }
            else{
                inf = 'É necessário pelo menos 5 pessoas para obter um desconto de 7% no valor da passagem'
                passagem = 1060
            }
            total = passagem + pousada
        break;

        case 'p2':
            pico = 'Pipeline, Oahu (Havaí)'
            pousada = 660
            if(des >= 5){
                inf = 'Desconto no valor da passagem: 7%'
                passagem = 3327.54
            }
            else{
                inf = 'É necessário pelo menos 5 pessoas para obter um desconto de 7% no valor da passagem'
                passagem = 3578
            }
            total = passagem + pousada
        break;

        case 'p3':
            pico = 'Jeffrey’s Bay (África do Sul)'
            pousada = 550
            if(des >= 5){
                inf = 'Desconto no valor da passagem: 7%'
                passagem = 2511
            }
            else{
                inf = 'É necessário pelo menos 5 pessoas para obter um desconto de 7% no valor da passagem'
                passagem = 2700
            }
            total = passagem + pousada
        break;

        case 'p4':
            pico = 'Nazaré (Portugal)'
            passagem = 1090
            pousada = 423
            if(des >= 5){
                inf = 'Desconto no valor da passagem: 7%'
                passagem =1013
            }
            else{
                inf = 'É necessário pelo menos 5 pessoas para obter um desconto de 7% no valor da passagem'
                passagem = 1090
            }
            total = passagem + pousada
        break;

        default:
            break;

    }

    document.getElementById('passagem').innerHTML = passagem;

    document.getElementById('pousada').innerHTML = pousada;

    document.getElementById('total').innerHTML = total;

    document.getElementById('pico').innerHTML = pico;

    document.getElementById('inf').innerHTML = inf;
}