
CREATE database livraria2;

USE livraria2;

CREATE TABLE autores (
    id_matricula INT not null auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null,
    cpf VARCHAR(11) not null,
    endereco VARCHAR(100) not null,
    data_nascimento DATE not null,
    nacionalidade VARCHAR(50) not null
);

INSERT INTO autores(nome, cpf, endereco, data_nascimento, nacionalidade)
values ('Cazuza', '03954313031', 'Rua Onde O Vento Faz Curva', '1958-04-04', 'Brasileira'), 
       ('Gustavo Cerati', '02079112091', 'Travessa da Punhalada', '1959-08-11', 'Argentina'),
       ('Chris Cornell', '05095215052', 'Beco do Laçasso', '1964-07-20', 'Americana'), 
       ('Dave Gahan', '07045617056', 'Rua da Pegada Lateral', '1952-05-09', 'Inglesa');

CREATE TABLE assuntos (
    id CHAR not null PRIMARY KEY,
    descricao VARCHAR(100) not null
);

INSERT INTO assuntos
values ('B', 'BANCO DE DADOS'), 
	   ('P', 'PROGRAMAÇÃO'), 
	   ('R', 'REDES'), 
	   ('S', 'SISTEMAS OPERACIONAIS');

CREATE TABLE editoras (
    id INT not null auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null
);

INSERT INTO editoras(nome)
values ('Mirandela Editora'), 
	   ('Editora Via-Norte'), 
       ('Editora Ilhas Tijucas'), 
	   ('Maria José Editora');

CREATE TABLE livros (
    id INT not null auto_increment PRIMARY KEY,
    titulo VARCHAR(50),
    preco DECIMAL(16,2) not null default 0,
    lancamento DATE,
    id_editora INT not null,
    id_assunto CHAR not null,
    CONSTRAINT livros_pertence_editoras
        FOREIGN KEY (id_editora)
            REFERENCES editoras(id)
            on update cascade on delete restrict,
    CONSTRAINT livros_pertence_assuntos
        FOREIGN KEY (id_assunto)
            REFERENCES assuntos(id)
            on update cascade on delete restrict
);

INSERT INTO livros(id,titulo, preco, lancamento, id_editora, id_assunto)
values (1,'Banco de Dados para Web', 31.2, '1999-01-10', 1, 'B'), 
	   (2,'Programando em Linguagem C', 30.0, '1997-10-01', 1, 'P'),
       (3,'Programando em Linguagem C++', 111.50, '1998-11-01', 3, 'P'),
       (5,'Redes de Computadores', 42.0, '1996-09-01', 2, 'R');

INSERT INTO livros(id,titulo, preco, id_editora, id_assunto)
values (4,'Banco de Dados na Bioinformática', 48.0, 2, 'B');

CREATE TABLE autores_livros (
    id_matriculaAutores INT not null,
    id_livro  INT not null,
    CONSTRAINT autores_livros_pertence_autores
        FOREIGN KEY (id_matriculaAutores)
            REFERENCES autores(id_matricula)
            on update cascade on delete restrict,
    CONSTRAINT autores_livros_pertence_livros
        FOREIGN KEY (id_livro)
            REFERENCES livros(id)
            on update cascade on delete restrict
);
INSERT INTO autores_livros
values (1,1),
	   (2,2),
       (3,3),
       (4,4),
       (4,5);

SET SQL_SAFE_UPDATES = 0;

/* Monte um comando para excluir da tabela livros aqueles que possuem o código maior ou igual a
 2, que possuem o preço maior que R$ 50,00 e que já foram lançados.*/
 
delete from livros
where livros.id >= 2 and preco > 50 and lancemento is not null;

/* Escreva o comando que seleciona as colunas NOME, CPF e ENDERECO, da tabela AUTOR, para aqueles 
que possuem a palavra ‘joão’ no nome.*/

select nome, cpf, endereco
from autores
where autores.nome like '%joão%';

/* Excluir o livro cujo título é ‘BANCO DE DADOS DISTRIBUÍDO’ ou ‘BANCOS DE DADOS DISTRIBUÍDOS’. 
Somente essas duas opções devem ser consideradas.*/

delete from livros
where livros.titulo = 'banco de dados distribuido'or livros.titulo ='banco de dados distribuidos';

/* Selecione o nome e o CPF de todos os autores que nasceram após 01 de janeiro de 1990.*/

select nome, cpf
from autores
where autores.data_nascimento > '1990-01-01';

/* Selecione a matrícula e o nome dos autores que possuem RIO DE JANEIRO no seu endereço.*/

select id_matricula, nome
from autores
where autores.endereco like '%rio de janeiro%'; 

/* Atualize para zero o preço de todos os livros onde a data de lançamento for nula ou onde 
seu preço atual for inferior a R$ 55,00.*/

UPDATE livros
SET preco = 0
WHERE livros.preco < 50 or lancamento is null; 

/* Exclua todos os livros onde o assunto for diferente de ‘S’, ‘P’, ou ‘B’.*/

delete from livros
where livros.id_assunto not in ('S','P','B');

/* Escreva o comando para contar quantos são os autores cadastrados na tabela AUTORES.*/

SELECT COUNT(id_matricula)
AS total_autores_cadastrados
FROM autores;

/* Escreva o comando que apresenta qual o número médio de autores de cada livro. Você deve 
utilizar, novamente, a tabela AUTOR_LIVRO.*/ 

SELECT id_livro, (id_matriculaAutores) AS media_autores
FROM autores_livros
group by id_livro;

/* Apresente o comando SQL para gerar uma listagem dos códigos dos livros que possuem a 
menos dois autores.*/

insert into autores_livros
value (2,1),(4,1);

select id_livro, count(autores_livros.id_matriculaAutores)
from autores_livros
group by id_livro
having count(autores_livros.id_matriculaAutores) <2;

/* Escreva o comando para apresentar o preço médio dos livros por código de 
editora. Considere somente aqueles que custam mais de R$ 45,00.*/

select id_editora, avg(preco) as medias
from livros
where preco > 45
group by id_editora;

/* Apresente o preço máximo, o preço mínimo e o preço médio dos livros cujos 
assuntos são ‘S’ ou ‘P’ ou ‘B’, para cada código de editora.*/

select id_editora, max(preco)as maximo, min(preco)as minimo, avg(preco) as media 
from livros
where id_assunto in('s','p','b')
group by id_editora;

/* Altere o comando do exercício anterior para só considerar os livros que já 
foram lançados (data de lançamento inferior a data atual) e cujo o preço máximo 
é inferior a R$ 100,00. */

select id_editora, max(preco)as maximo, min(preco)as minimo, avg(preco) as media 
from livros
where id_assunto in('s','p','b') and lancamento <= current_date()
group by id_editora
having max(preco)<100;
						          -- JOINS --

/* Estão sendo estudados aumentos nos preços dos livros. Escreva o comando SQL que 
retorna uma listagem contendo o titulo dos livros, e mais três colunas: uma contendo
os preços dos livros acrescidos de 10% (deve ser chamada de ‘Opção_1’), a segunda 
contendo os preços acrescidos de 15% (deve ser chamada de ‘Opção_2’) e a terceira 
contendo os preços dos livros acrescidos de 20% (deve ser chamada de ‘Opção_3’). 
Somente devem ser considerados livros que já tenham sido lançados. */

select livros.titulo, livros.preco, (preco*1.10) as opção_1, (preco*1.20) as opção_2, 
	   (preco*1.30) as opção_3
from livros
where livros.lancamento is not null and livros.lancamento < current_date;

/* Escreva o comando SQL que apresenta uma listagem contendo o código da editora, o 
nome da editora, a sigla do assunto e o titulo dos livros que já foram lançados. Os 
dados devem estar em ordem decrescente de preço, e ascendente de código da editora e 
de título do livro. */

select (editoras.id) as id_editora, (editoras.nome) as nome_editora, (assuntos.id) as sigla, 
	   (livros.titulo) as titulo_livro
from editoras inner join livros on editoras.id = livros.id_editora 
	 inner join assuntos on assuntos.id = livros.id_assunto 
where livros.lancamento is not null and livros.lancamento < current_date
ORDER BY livros.preco desc, editoras.id asc;     

/* Escreva o comando que apresente uma listagem dos nomes dos autores e do seu ano e mês de
nascimento, para os autores brasileiros e que tem livros ainda não lançados. A listagem deve estar
ordenada em ordem crescente de nome. */

select (autores.nome) as nome_autores, autores.data_nascimento
from autores inner join autores_livros on autores.id_matricula = autores_livros.id_matriculaAutores 
	 inner join livros on livros.id = autores_livros.id_livro
where nacionalidade = 'Brasileira' and livros.lancamento is not null 
and livros.lancamento < current_date
order by autores.nome asc;

/* Escreva o comando que retorna o nome dos autores e o título dos livros de sua autoria. 
A listagem deve estar ordenada pelo nome do autor, mostrar somente os livros já lançados. */

select autores.nome, livros.titulo
from autores inner join autores_livros on autores.id_matricula = autores_livros.id_matriculaAutores 
	 inner join livros on livros.id = autores_livros.id_livro
where livros.lancamento is not null and livros.lancamento < current_date
order by autores.nome asc;

/* Monte a consulta SQL que retorna as editoras que publicaram livros escritos pela autora 
 'Ana da silva' */
 
select (editoras.nome) as nome_editora
from autores inner join autores_livros on autores.id_matricula = autores_livros.id_matriculaAutores 
	 inner join livros on livros.id = autores_livros.id_livro inner join editoras on editoras.id = livros.id_editora
where editoras.nome = 'Ana da silva';

/* FUS (faça um SQL) que apresente o título do livro e o nome da editora que o publica para todos os
livros que custam menos que 50 reais.*/

select livros.titulo, editoras.nome
from livros inner join editoras on editoras.id = livros.id_editora
where preco < 50

/* FUS que apresente o CPF, nome do autor e o preço máximo dos livros de sua autoria. Apresente
somente as informações para os autores cujo preço máximo for superior a 50*/

select autores.cpf, (autores.nome) as nome_autores, max(livros.preco)
from autores inner join autores_livros on autores.id_matricula = autores_livros.id_matriculaAutores 
	 inner join livros on livros.id = autores_livros.id_livro
where livros.preco > 50;


select * from editoras;
select * from assuntos;
select * from livros;
select * from autores;
select * from autores_livros;