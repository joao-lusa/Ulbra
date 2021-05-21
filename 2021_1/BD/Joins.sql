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
 
 -- VERIFICAR

delete from livros
where livros.id >= 2 and preco > 50 and lancemento != null; 

/* Escreva o comando que seleciona as colunas NOME, CPF e ENDERECO, da tabela AUTOR, para aqueles 
que possuem a palavra ‘joão’ no nome.*/

select nome, cpf, endereco
from autores
where autores.nome = 'joão';

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
where autores.endereco = ' rio de janeiro'; 

/* Atualize para zero o preço de todos os livros onde a data de lançamento for nula ou onde 
seu preço atual for inferior a R$ 55,00.*/

UPDATE livros
SET preco = 0
WHERE livros.preco < 50 or lancamento = null; 

/* Exclua todos os livros onde o assunto for diferente de ‘S’, ‘P’, ou ‘B’.*/

-- VERIFICAR

delete from livros
where assuntos.id != 'S' or id !='P' or id !='B'and assuntos.id=livros.id_assunto;
select * from livros

delete from livros
where livros.id 1

/* Escreva o comando para contar quantos são os autores cadastrados na tabela AUTORES.*/

SELECT COUNT(id_matricula)
AS total_autores_cadastrados
FROM autores;

/* Escreva o comando que apresenta qual o número médio de autores de cada livro. Você deve 
utilizar, novamente, a tabela AUTOR_LIVRO.*/ 

SELECT AVG(id_matriculaAutores) AS media_autores
FROM autores_livros;

/* Apresente o comando SQL para gerar uma listagem dos códigos dos livros que possuem a 
menos dois autores.*/

--  VERIFICAR

insert into autores_livros
value (2,1),(4,1);

select livros.id, sum(autores_livros.id_matriculaAutores)
from livros inner join autores_livros on livros.id=autores_livros.id_livro
 inner join autores on autores.id_matricula= autores_livros.id_matriculaAutores
where id

select * from livros;
select * from autores;
select * from autores_livros;

/* Escreva o comando para apresentar o preço médio dos livros por código de 
editora. Considere somente aqueles que custam mais de R$ 45,00.*/

/* Apresente o preço máximo, o preço mínimo e o preço médio dos livros cujos 
assuntos são ‘S’ ou ‘P’ ou ‘B’, para cada código de editora.*/

/* Altere o comando do exercício anterior para só considerar os livros que já 
foram lançados (data de lançamento inferior a data atual) e cujo o preço máximo 
é inferior a R$ 100,00. */

						          -- JOINS --

/* Estão sendo estudados aumentos nos preços dos livros. Escreva o comando SQL que 
retorna uma listagem contendo o titulo dos livros, e mais três colunas: uma contendo
os preços dos livros acrescidos de 10% (deve ser chamada de ‘Opção_1’), a segunda 
contendo os preços acrescidos de 15% (deve ser chamada de ‘Opção_2’) e a terceira 
contendo os preços dos livros acrescidos de 20% (deve ser chamada de ‘Opção_3’). 
Somente devem ser considerados livros que já tenham sido lançados. */




