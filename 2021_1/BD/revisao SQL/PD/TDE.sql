SET SQL_SAFE_UPDATES = 0;

CREATE database livraria_procedure;

USE livraria_procedure;

CREATE TABLE autores (
    id_matricula INT not null auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null,
    cpf VARCHAR(11) not null,
    endereco VARCHAR(100) not null,
    data_nascimento DATE not null,
    nacionalidade VARCHAR(50) not null
);
create table assuntos(
	id char(5) not null primary key, 
    descricao varchar(150)
);
create table editoras(
	id int not null auto_increment primary key,
    nome varchar(40) not null
);
create table livros(
	id int not null auto_increment primary key,
    titulo varchar (80)not null,
    preco decimal(18,2) default 0,
    lancamento date null,
    id_assunto char(1) not null,
    id_editora int not null,
	CONSTRAINT livros_assuntos
        FOREIGN KEY (id_assunto)
            REFERENCES assuntos(id)
            on update cascade on delete restrict,
	constraint livros_editoras
		foreign key (id_editora)
			references editoras(id)
			on update cascade on delete restrict
);
create table autores_livros(
	id_matricula int not null,
    id_livro int not null,
	CONSTRAINT autores_livros_pertence_autores
        FOREIGN KEY (id_matricula)
            REFERENCES autores(id_matricula)
            on update cascade on delete restrict,
    CONSTRAINT autores_livros_pertence_livros
        FOREIGN KEY (id_livro)
            REFERENCES livros(id)
            on update cascade on delete restrict
);

-- 1_B)  Popular as tabelas com dados para que consiga ver os resultados das stored procedures. (SP)

insert into editoras(nome)
values  ('GC editora'),
		('editora zona norte'),
        ('editora barra tijucas'),
        ('jose campos editora');

INSERT INTO assuntos
values ('BD', 'BANCO DE DADOS'), 
	   ('PHP', 'PROGRAMAÇÃO'), 
	   ('JS', 'REDES'), 
	   ('SO', 'SISTEMAS OPERACIONAIS');

INSERT INTO livros(titulo, preco, lancamento, id_editora, id_assunto)
values ('Banco de Dados para Web', 31.2, '1999-01-10', 1, 'B'), 
	   ('Programando em Linguagem Java', 30.0, '1997-10-01', 1, 'P'),
       ('Programando em Linguagem C++', 111.50, '1998-11-01', 3, 'P'),
       ('Banco de Dados na Bioinformática', 48.0, null, 2, 'B'),
       ('Redes de Computadores', 42.0, '1996-09-01', 2, 'R');
       
INSERT INTO autores(nome, cpf, endereco, data_nascimento, nacionalidade)
values ('Jao lucas', '03954313031', 'Rua Onde do sombrio', '1958-04-04', 'Brasileira'), 
       ('NOG', '02079112091', 'Sao paulos', '1959-08-11', 'Brasil'),
       ('Predella', '05095215052', 'Beco do Laçasso', '1964-07-20', 'Americana'), 
       ('Filipe Ret', '07045617056', 'Rua da Pegada Lateral', '1952-05-09', 'Inglesa');
       
INSERT INTO autores_livros
values (1,1),
	   (2,2),
       (3,3),
       (4,4),
       (4,5);

-- 1_A)  Faça a stored procedure acima, no mysql e explique as mudanças.

delimiter $$
create procedure categorias_assuntos(id_assunto1 char(1), id_assunto2 char(1))
BEGIN -- comandos executaveis obrigatórios 
	declare total_livros1 int; 
	declare total_livros2 int; 
	declare diferenca int ;
	declare mensagem_1 Char(100);
	declare mensagem_2 Char(100);
	declare mensagem_3 CHAR(100);
    SET total_livros1 = (SELECT Count(id) FROM livros WHERE id_assunto = id_assunto1);
	SET total_livros2 = (SELECT Count(id) FROM livros WHERE id_assunto = id_assunto2);
    if(total_livros1 > total_livros2) then
		set diferenca = total_livros1 - total_livros2;
        -- set mensagem_1 = 'O Número de livros ' + CAST(diferenca AS CHAR(2)) + ' da primeira CATEGORIA é maior';
        set mensagem_1 = concat('A primeira categoria chamada de ', id_assunto1, ' tem ',  diferenca,  ' livros a mais que a categoria ',  id_assunto2);
        select mensagem_1 as status;
	elseif(total_livros1 < total_livros2) then
		set mensagem_2 = 'O número de livros da segunda CATEGORIA é maior';
        select mensagem_2 as status;
    else
		set mensagem_3 = 'O número de livros das categorias são iguais';
		select mensagem_3 as status;
	END IF;
end $$
delimiter ;

drop procedure categorias_assuntos;

-- 1_C) Mostre os comandos que você utilizou para executar as SPs.
-- 1_D) Explique o que a SP deve fazer e mostre o resultado da mesma.

call categorias_assuntos ('B','S'); -- quantidade de livros que a primeira categoria tem a mais que a segunda 
call categorias_assuntos ('S','B'); -- segunda categotia é maior
call categorias_assuntos ('B','P'); -- o numero de livros sao iguais

/* 1-E) Explique o que faz o comando CAST, dentro do primeiro IF.
Cast convert um conteudo para um determinado tipo um variável inteira e preciso concatenar esse conteúdo com uma string. 
ele converter esse inteiro para string com o cast	*/

/* 1-F) Cite duas vantagens para o uso de Stored Procedures. Qual seria uma desvantagem?
vantagens menos trafego entre o back end e o sgbd por que o processamento acabe sendo feito
do lado do servidor e nao mais do lado do back end , Pode ser compartilhado entre várias 
aplicações utilizando a mesma base de dados;*/

 /* 2) Escreva uma SP que receba, como parâmetro, o CPF de um autor e retorne a quantidade de 
 livros escrito pelo mesmo. */

delimiter $$
create procedure quant_cpf(cpf_autor varchar(11))
BEGIN
	select autores.nome, count(livros.id) as livros_escritos
    from autores inner join autores_livros on autores.id_matricula = autores_livros.id_matricula
		 inner join livros on livros.id = autores_livros.id_livro
	where autores.cpf = cpf_autor
    group by autores.nome;
end $$
delimiter ;

drop procedure quant_cpf;

call quant_cpf ('07045617056');
call quant_cpf ('02079112091');

/* 3) Crie uma SP que receba, como um parâmetro, a data de publicação de um livro 
e seu código. O procedimento deve atualizar a tabela de livros, especificando a 
data de lançamento para o livro em questão. */

delimiter $$
create procedure atualizar_lancamento(id_livro_p int, atualizar_data_p date)
BEGIN
	update livros
    set livros.lancamento = atualizar_data_p
	where livros.id = id_livro_p;
    
    select livros.titulo, livros.lancamento as data_atualizada
    from livros
    where livros.id = id_livro_p;
end $$
delimiter ;

drop procedure atualizar_lancamento;

call atualizar_lancamento(1,'2019-01-01');

/* 4) Em algumas situações, SPs são utilizados para a manutenção da segurança do banco de dados. 
Nestes casos, realizamos inclusões, alterações e exclusões de dados, através de SPs. Crie SPs 
que recebem os parâmetros adequados e realizam as seguintes operações:

a) Inserir uma linha na tabela de livros */

delimiter $$
create procedure add_livros(add_titulo varchar(80), add_preco decimal(18.2), add_lancamento date, add_id_assunto char(1), add_id_editora int)
BEGIN
	insert into livros(titulo, preco, lancamento, id_assunto, id_editora)
		value(add_titulo, add_preco, add_lancamento, add_id_assunto, add_id_editora);
        
    select id, titulo, preco, lancamento, id_editora, id_assunto, 'DADO adicionado' as status
        from	livros
		order by id desc
		limit 1;
end $$

drop procedure add_livros;

call add_livros ('Programando BD', 89.7, '2021-01-10','B',1);

/* b) Excluir uma linha da tabela de livros */

delimiter $$
create procedure excluir_livros(id_livro_p int)
BEGIN
	delete from livros
	where livros.id = id_livro_p;
    select 'DADO deletado' as status;
    end $$
delimiter ;

drop procedure excluir_livros;

call excluir_livros(7);

/* c) Atualizar valores na tabela de livros*/

delimiter $$
create procedure atualizar_livros(id_livro_p int, atu_titulo varchar(80), atu_preco decimal(18.2), atu_lancamento date, atu_id_assunto char(1), atu_id_editora int)
BEGIN
	update livros
    set titulo = atu_titulo
	where livros.id = id_livro_p;
    update livros
    set preco = atu_preco
	where livros.id = id_livro_p;
    update livros
    set lancamento = atu_lancamento 
	where livros.id = id_livro_p;
    update livros
    set id_assunto = atu_id_assunto
	where livros.id = id_livro_p;
    update livros
    set id_editora = atu_id_editora
	where livros.id = id_livro_p;
    
	select id, titulo, preco, lancamento, id_editora, id_assunto, 'DADO atualizado' as status
        from	livros
		where livros.id = id_livro_p;
end $$
delimiter ;

drop procedure atualizar_livros;

call  atualizar_livros(6,'Aprendendo SGBD', 120.5, '2021-02-24','B',3);

/* 5) Crie uma SP que aumente ou diminua o valor dos preços dos livros de uma editora específica. 
O aumento pode ser em percentual ou em valor. */

delimiter $$
create procedure atualizar_preco(operador int, id_editora_p int, preco_p int)
BEGIN
	IF(operador = 1) THEN
		update livros
        set livros.preco = preco+(preco_p/100*preco) 
		where livros.id_editora = id_editora_p;
	select livros.titulo, livros.preco as preco_atualizado
    from livros
    where livros.id_editora = id_editora_p;
    
    ELSEIF(operador = 0) THEN
		update livros
        set livros.preco = preco-(preco_p/100*preco) 
		where livros.id_editora = id_editora_p;
	select livros.titulo, livros.preco as preco_atualizado
    from livros
    where livros.id_editora = id_editora_p;
	ELSE
		select 'use: 0 para diminuir, 1 para aumentar' as status;
	END IF;
    end $$
delimiter ;

drop procedure atualizar_preco;

call atualizar_preco(1,1,10); -- diminui 10%
call atualizar_preco(1,1,10); -- aumento de 10%

select* from livros;
select * from  assuntos; 
select * from editoras;
select* from autores_livros;
select* from autores;