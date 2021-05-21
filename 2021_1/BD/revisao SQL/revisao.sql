CREATE DATA revisao

USE revisao

CREATE TABLE cidade(

    id INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR (50) not null,
    uf CHAR(3) not null

);

CREATE TABLE filial(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) not null,
    endereco VARCHAR (70) not null,
    cidade int not null,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (cidade)
            REFERENCES cidade(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

CREATE TABLE empregado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) not null,
    endereco VARCHAR(50) not null,
    ct VARCHAR(15) not null,
    rg int not null
    cpf varchar (14) not null,
    salario decimal(10,2) not null,
    cidade int not null,
    filial int not null,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (cidade)
            REFERENCES cidade(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT.
    CONSTRAINT pertence_a_filial
        FOREIGN KEY (filial)
            REFERENCES filial(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
);

CREATE TABLE produto(

    id INT AUTO_INCREMENT PRIMARY,
    descricao VARCHAR (80) not null,
    proco DECIMAL(10,2) not null,
    nomecategoria VARCHAR (55) not null,
    descriçãocategoria VARCHAR (100) not null,

);

CREATE TABLE vende(

    produto int not null,
    filial int not null,
    CONSTRAINT pertence_a_produto
            FOREIGN KEY (filial)
                REFERENCES filial(id)
                ON UPDATE CASCADE 
                ON DELETE RESTRICT,
    CONSTRAINT pertence_a_filial
            FOREIGN KEY (filial)
                REFERENCES filial(id)
                ON UPDATE CASCADE 
                ON DELETE RESTRICT
  
);

--a)Criar as tabelas vende e filial.
CREATE TABLE filial(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) not null,
    endereco VARCHAR (70) not null,
    cidade int not null,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (cidade)
            REFERENCES cidade(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);
CREATE TABLE produto(

    id INT AUTO_INCREMENT PRIMARY,
    descricao VARCHAR (80) not null,
    proco DECIMAL(10,2) not null,
    nomecategoria VARCHAR (55) not null,
    descriçãocategoria VARCHAR (100) not null,

);
CREATE TABLE vende(

    produto int not null,
    filial int not null,
    CONSTRAINT pertence_a_produto
            FOREIGN KEY (filial)
                REFERENCES filial(id)
                ON UPDATE CASCADE 
                ON DELETE RESTRICT,
    CONSTRAINT pertence_a_filial
            FOREIGN KEY (filial)
                REFERENCES filial(id)
                ON UPDATE CASCADE 
                ON DELETE RESTRICT
  
);


-- b)Listar o valor do produto mais caro.
SELECT max(preco) as mais_caro 


-- c)Obter a média dos preços dos produtos.
SELECT AVG(preco)
AS media_produtos
FROM produto;

-- d)Listar o nome dos produtos vendidos pela filial “f3”.

SELECT produto
FROM vende 
WHERE filial = 3;

-- e)Listar os nomes e números de RG dos funcionários que moram no Rio Grande do Sul e tem salário superior a R$ 500,00.

SELECT  empregado.nome, empregado.rg
FROM cidade, empregado
WHERE cidade.uf='RS' and empregado.salario>500;

--4) 
--Livro(codlivro, titulo, codautor, nfolhas, editora, valor, codcat)
--Categoria (codcat, nome, descrição)
--Autor(codautor, nome, codcid)
--Cliente(codcliente, nome, endereço, codcid)
--Cidade(codcid, nome, UF)
--Venda (Codlivro, codcliente, quantidade, data)

USE revisao;

CREATE TABLE cidade(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) not null,
    uf CHAR(2) not null,

);

CREATE TABLE autor(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) not null,
    codCidade int not null,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (codCidade)
            REFERENCES cidade(id)
            ON UPDATE CASCADE 
            ON DELETE CASCADE

);

CREATE TABLE categoria(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) not null,
    descricao VARCHAR (250) not null

);

CREATE TABLE livro( 

    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (50) not null,
    nfolhas DECIMAL(20,2) not null,
    editora varchar (50) not null,
    valor decimal (10,2) not null,
    codCat INT not null,
    codAutor INT not null,
    CONSTRAINT pertence_a_autor
        FOREIGN KEY (codAutor)
            REFERENCES autor(id)
            ON UPDATE CASCADE 
            ON DELETE CASCADE,
    CONSTRAINT pertence_a_categoria
        FOREIGN KEY (codCat)
            REFERENCES categoria(id)
            ON UPDATE CASCADE 
            ON DELETE CASCADE

);

CREATE TABLE cliente(
    id int AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) not null,
    endereco VARCHAR (80) not null,
    codCidade int not null,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (codCidade)
            REFERENCES cidade(id)
            ON UPDATE CASCADE 
            ON DELETE CASCADE


);

CREATE TABLE venda(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR (50) not null,
    quantidade DECIMAL(100,2) not null,
    data_ DATE not null,
    codCidade int not null,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (codCidade)
            REFERENCES cidade(id)
            ON UPDATE CASCADE 
            ON DELETE CASCADE
);

--1)Mostrar o número total de vendas realizadas.

SELECT id 
FROM venda

--2)Listar os títulos e valores dos livros da editora “Campos”.

SELECT titulo, valor
FROM livro
WHERE editora = 'Campos'

--3)Listar os  títulos e nome dos autores dos livros que custam mais que R$ 300,00.
SELECT titulo, valor, nome
FROM livro, autor
WHERE valor > 300

--4)Listar os nomes dos clientes juntamente com o nome da cidade onde moram e UF.
SELECT nome, cidade
FROM cliente, cidade
WHERE cliente = cidade, uf