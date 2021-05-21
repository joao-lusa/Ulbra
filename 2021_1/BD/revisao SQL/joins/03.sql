/* Monte um comando para excluir da tabela livros aqueles que possuem o código maior ou igual a
 2, que possuem o preço maior que R$ 50,00 e que já foram lançados.*/
 
 -- VERIFICAR

delete from livros
where livros.id >= 2 and preco > 50 and lancemento != null; <>

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