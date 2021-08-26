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

    $('article').load('views/person.html', function(){
        document.getElementById("nameContact").innerHTML = name 
        document.getElementById("emailContact").innerHTML = email
        document.getElementById("aboutContact").innerHTML = about
        document.getElementById("phoneContact").innerHTML = phone
    })
}