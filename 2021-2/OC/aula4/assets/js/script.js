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