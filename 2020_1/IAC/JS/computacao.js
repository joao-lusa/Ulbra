function calcular(){
    var a = document.getElementById("a").value
    var b = document.getElementById("b").value
    var not_a
    var not_b
    var not_e
    var e
    var not_or
    var or
    var not_xor
    var xor

    if (a==1){
        not_a=("False")
    }else{
        not_a=("True")
    }
    document.getElementById('notA').innerHTML = "Not A= " + not_a;
    if (b==1){
        not_b=("False")
    }else{
        not_b=("True")
    }
    document.getElementById('notB').innerHTML = "Not B= " + not_b;

    if (a==1 && b==1){
        not_e=("False")
        e=("True")
    }
    else{
        not_e=("True")
        e=("False")
    }
    document.getElementById('notE').innerHTML = "Not And= " + not_e;
    document.getElementById('and').innerHTML = "And= " + e;

    if (a==1 || b==1){
        not_or=("False")
        or=("True")
    }else{
        not_ou=("True")
        ou=("False")
    }
    document.getElementById('notOR').innerHTML = "Not Or= " + not_or;
    document.getElementById('or').innerHTML = "Or= " + or;

    if ((a==1 || b==1) && (a !== b)){
        not_xor=("False")
        xor=("True")
    }else{
        not_xor=("True")
        xor=("False")
    }
    document.getElementById('notXOR').innerHTML = "Not Xor= " + not_xor;
    document.getElementById('xor').innerHTML = "Xor= " + xor;
}