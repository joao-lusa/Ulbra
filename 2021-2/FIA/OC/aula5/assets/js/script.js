$(document).ready(function(){
    $('#home').click(function(){
        home();
    });
    $('#sobre').click(function(){
        sobre();
    });
    $('#contact').click(function(){
        contact();
    });
});
function home(){
    $('article').html(`
    <h1>OOI</h1>
    `
    )
}
function sobre(){
    $('article').html(`
        <h1>Sobre Minha Pagina<h1>
        <p>haaaa</p>
    `
    )
}
function contact(){
    $('article').load('views/contact.html')
}

function loadData(){
    var name = document.getElementById("contact_name").value
    var email = document.getElementById("contact_email").value
    var about = document.getElementById("contact_about").value
    var phone = document.getElementById("contact_phone").value
    var cep = document.getElementById("contact_cep").value

    $('article').load('views/person.html', function(){
        document.getElementById("nameContact").innerHTML = name 
        document.getElementById("emailContact").innerHTML = email
        document.getElementById("aboutContact").innerHTML = about
        document.getElementById("phoneContact").innerHTML = phone
        document.getElementById("cepContact").innerHTML = getLocal(cep)
    })
}

class contact{
    constructor(_name, _email, _about, _phone, _cep){
        this.name = _name;
        this.email = _email;
        this.about = _about;
        this.phone = _phone;
        this.cep = _cep;
    }
}

function detLocal(cep) {
    $.getJSON('http://viacep.com.br/ws/'+cep+'/json', function
    (data) {
        return data.localidade;
    })
}