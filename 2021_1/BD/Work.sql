create database revisao_aula1;

use revisao_aula1;

CREATE TABLE cidades(

    id INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR (50) not null,
    uf CHAR(3) not null

);

CREATE TABLE filiais(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50) not null,
    endereco VARCHAR (100) not null,
    id_cidade INT not null,
    CONSTRAINT fk_cidade_filial
        FOREIGN KEY (id_cidade)	
            REFERENCES cidades(id)
            ON UPDATE CASCADE ON DELETE RESTRICT
);
CREATE TABLE empregados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) not null,
    endereco VARCHAR(50) not null,
    ct VARCHAR(15) not null,
    rg int not null,
    cpf varchar (14) not null,
    salario decimal(10,2) not null,
    cidade int not null,
    filial int not null,
    CONSTRAINT fk_empregado_cidade
        FOREIGN KEY (cidade)
            REFERENCES cidades(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    CONSTRAINT fk_empregado_filial
        FOREIGN KEY (filial)
            REFERENCES filiais(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
);
CREATE TABLE produtos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR (80) not null,
    proco DECIMAL(10,2) not null,
    nomecategoria VARCHAR (55) not null,
    descricaoCategoria VARCHAR (100) not null
);

CREATE TABLE vendas(
    id_produto int not null,
    id_filial int not null,
    CONSTRAINT fk_vende_filial
            FOREIGN KEY (id_filial)
                REFERENCES filiais(id)
                ON UPDATE CASCADE 
                ON DELETE RESTRICT,
    CONSTRAINT fk_vende_produto
            FOREIGN KEY (id_produto)
                REFERENCES produtos(id)
                ON UPDATE CASCADE 
                ON DELETE RESTRICT
);

