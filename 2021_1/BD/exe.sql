create database exe;

use exe;

SET autocommit=0;

start transaction;

CREATE TABLE pessoa(
	num_pessoa INT not null, 
    nom_email varchar (100) not null
);
start transaction;
insert into pessoa(num_pessoa, nom_email)
values (78360, 'rst.marcondes@smail.com'),
		(78361, 'jcc.meirelles@jmail.com'),
        (78362, 'mjk.amadeus@imail.com');
commit;
        
create table pessoa_fisica(
	num_pessaoa varchar(100) not null,
    num_cpf varchar(12) not null,
    num_documento_identidade varchar(9),
    nom_orgao_emissor_doc_ident varchar(3) not null,
	dat_nascimento date not null,
    idt_ varchar(1) not null,
    cod_estadocivil int not null,
    id_num_pessoa int not null,
    constraint pessoa_fisica_pessoa
		 FOREIGN KEY (id_num_pessoa)
			 REFERENCES pessoa(num_pessoa)

);
start transaction;
insert into pessoa_fisica(num_pessoa, num_cpf, num_documento_identidade, nom_orgao_emissor_doc_ident, dat_nascimento, idt_ ,  cod_estadocivil)
values (),
		(),
        (),
        (),
        ();
commit;      
