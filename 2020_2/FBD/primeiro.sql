-- DDL

-- CREAT **
-- ALTER
-- DROP

/*
aqui nós vamos fazer nosso primeiro creare
*/

/*

padorões de nomenclatura
pascal case 
    -tudo é inicial maiúscula.
    -quanto tem nome completo, use-se o segundo nome inicial maiúscula
        -nome 
        -bomeDoCLiente

camelCase
    -nome
    -nomeDoCliente

no SQL qual pradrão?
    -comando base(reservados) - UPPERCASE
    -comandos de estruturas tudo lowe_case

*/

--criar um esquema (banco de dados)

CREATE DATABASE teste_ddl; -- OU
CREATE SCHEMA teste_ddl;

USE teste_ddl;

/*
no relacional temos
    departamentos(id )
*/

CREATE TABLE departamentos
(
    -- nome tipo restrição
    id INT NOT null PRIMARY KEY,
    nome VARCHAR(70) NOT null,
    valor_orcamento DECIMAL(12,2).

);

CREATE TABLE empregados 
(
    id INT auto_increment NOT NULL,
    matricula VARCHAR(50) not null, 
    cpf VARCHAR(14),
    nome VARCHAR(50) not null,
    cargo VARCHAR(30) not null,
    salario decimal(18,2) default 0,
    sigla char(2),
    data_nascimento DATE,
    id_departamento INT not null,

    PRIMARY KEY(id),

    CONSTRAINT esta_alocado
        FOREIGN KAY id_departamento
         REFERENCES depatamento(id)

)

