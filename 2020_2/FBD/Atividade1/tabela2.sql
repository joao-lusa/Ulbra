/*  Atividade n°2:  */

CREATE DATABASE atividade_2;

USE atividade_2;

CREATE TABLE porto
(
    id INT auto_increment PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE navio
(
    id INT  auto_increment PRIMARY KEY,
    nome VARCHAR(25) NOT NULL,
    capacidade DECIMAL(10,2) NOT NULL,
);

CREATE TABLE rota
(
    nome VARCHAR(40) PRIMARY KEY,
    id_navio INT NOT NULL,
    id_porto INT NOT NULL,

    CONSTRAINT possui_navio
        FOREIGN KEY (id_navio)
            REFERENCES navio(id),

    CONSTRAINT possui_porto
        FOREIGN KEY (id_porto)
            REFERENCES porto(id)
);

CREATE TABLE agente
(
    id INT auto_increment PRIMARY KEY,
    nome VARCHAR(25) NOT NULL,
    id_porto INT NOT NULL,

    CONSTRAINT possui_porto
        FOREIGN KEY (id_porto)
            REFERENCES porto(id)
);

CREATE TABLE cargas
(
    numero INT auto_increment PRIMARY KEY,
    peso DECIMAL(10,3) NOT NULL,
    id_navio INT NOT NULL,
    id_porto INT NOT NULL,
    data_max_desembarque DATE NOT NULL,
    id_agente INT NOT NULL,

    CONSTRAINT possui_navio
        FOREIGN KEY (id_navio)
            REFERENCES navio(id),

    CONSTRAINT possui_porto
        FOREIGN KEY (id_porto)
            REFERENCES porto(id),

    CONSTRAINT possui_agente
        FOREIGN KEY (id_agente)
            REFERENCES agente(id)
);

CREATE TABLE carga_perecivel
(
    numero_carga INT NOT NULL,
    data_validade DATE NOT NULL,

    CONSTRAINT referente_carga
        FOREIGN KEY (numero_carga)
            REFERENCES cargas(numero)
);

CREATE TABLE carga_sensivel
(
    numero_carga INT NOT NULL,
    temperatura_maxima INT NOT NULL,

    CONSTRAINT referente_carga
        FOREIGN KEY (numero_carga)
            REFERENCES cargas(numero)
);

