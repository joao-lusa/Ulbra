CREATE DATABASE tabela_ap2;

--Atividade 1

CREATE TABLE locadora(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    endereço VARCHAR(30) not null,
    cnpj VARCHAR(18) not null

);

CREATE TABLE cliente(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    endereço VARCHAR(30) not null,
    telefone VARCHAR(13) not null,
    id_locadora INT not null
    CONSTRAINT pertence_a_locadora
        FOREIGN KEY (id_locadora)
            REFERENCES locadora(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);


CREATE TABLE carro(

    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(7) not null,
    valor decimal(7,2) not null,
    marca VARCHAR (30) not null,
    data_devolucao date not null,
    data_aluguel date not null,
    modelo VARCHAR(30) not null,
    ano int not null,
    cod_marca int AUTO_INCREMENT,
    id_locadora int not null
    CONSTRAINT pertence_a_locadora
        FOREIGN KEY (id_locadora)
            REFERENCES locadora(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

CREATE TABLE alugar(

    registro_aluguel INT AUTO_INCREMENT PRIMARY KEY,
    id_carro int not null
    CONSTRAINT pertence_a_carro
        FOREIGN KEY (id_carro)
            REFERENCES carro(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    id_cliente int not null
    CONSTRAINT pertence_a_cliente
        FOREIGN KEY (id_cliente)
            REFERENCES cliente(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

-- Atividade 2

CREATE TABLE pesquisador(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null

);

CREATE TABLE artigo(

    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30) not null,
    pag_inicial VARCHAR(10) not null,
    pag_final VARCHAR(10) not null,
    editora VARCHAR(20) not null

);

CREATE TABLE publica(

    data_publi date not null,
    id_pesquisador int not null
    CONSTRAINT pertence_ao_pesquisador
        FOREIGN KEY (id_pesquisador)
            REFERENCES pesquisador(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    id_artigo int not null
    CONSTRAINT pertence_a_artigo
        FOREIGN KEY (id_artigo)
            REFERENCES artigo(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

-- Atividade 3

CREATE TABLE socio(

    numero INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    tipo_socio VARCHAR(15) not null,
    id_tipo_socio int not null, 
    endereço VARCHAR(30) not null,

);

CREATE TABLE servico(

    codigo INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) not null,
    mes int not null,
    valor decimal(7,2) not null,
    
);

CREATE TABLE utiliza(

    numero_socio int not null
    CONSTRAINT pertence_ao_socio
        FOREIGN KEY (numero_socio)
            REFERENCES socio(numero)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    codigo_servico int not null
    CONSTRAINT pertence_a_servico
        FOREIGN KEY (codigo_servico)
            REFERENCES servico(codigo)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);
