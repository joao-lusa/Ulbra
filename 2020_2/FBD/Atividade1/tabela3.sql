CREATE DATABASE tabela_tde;


CREATE TABLE cliente(

    codigo int AUTO_INCREMENT PRIMARY KEY,
    telefone int not null,
    endereco char not null,
    cpf VARCHAR(14),
    nome char,
    cgc VARCHAR(18),
    razao_social char,

);

CREATE TABLE pedido_de_servico(

    numero int AUTO_INCREMENT PRIMARY KEY,
    data_abertura date not null,
    data_realizacao date not null,
    endereco char not null,
    codigo_cliente int not null,

    CONSTRAINT pertence_ao_cliente
        FOREIGN KEY (codigo_cliente)
            REFERENCES cliente(codigo)

);

CREATE TABLE tipo_servico(

    codigo int AUTO_INCREMENT PRIMARY KEY,
    duracao VARCHAR(5) not null,
    valor char not null,
    descricao VARCHAR(20) not null,
    matricula int not null,

    CONSTRAINT pertence_ao_empregado
        FOREIGN KEY (matricula)
            REFERENCES empregado(matricula)

);

CREATE TABLE empregado(

    matricula int AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    codigo int not null,

    CONSTRAINT pertence_ao_servico
        FOREIGN KEY (codigo)
            REFERENCES tipo_servico(codigo)

);

CREATE TABLE habilitacao(

    codigo int not null, 
    metricula int not null,
    
    CONSTRAINT pertence_ao_servico
        FOREIGN KEY (codigo)
            REFERENCES tipo_servico(codigo),

    CONSTRAINT pertence_ao_empregado
        FOREIGN KEY (matricula)
            REFERENCES empregado(matricula)

);

CREATE TABLE item_pedido(

    codigo_item int AUTO_INCREMENT PRIMARY KEY,
    metragem numeric not null,
    codigo_servico int not null,
    matricula int not null,
    numero int not null,

    CONSTRAINT pertence_ao_servico
        FOREIGN KEY (codigo_servico)
            REFERENCES tipo_servico(codigo),

    CONSTRAINT pertence_ao_empregado
        FOREIGN KEY (matricula)
            REFERENCES empregado(matricula),

    CONSTRAINT pertence_ao_pedido
        FOREIGN KEY (numero)
            REFERENCES pedido_de_servico(numero)

);

CREATE TABLE alocacao(

    id int AUTO_INCREMENT PRIMARY KEY,
    codigo_item int not null,
    matricula int not null,

    CONSTRAINT pertence_ao_item
        FOREIGN KEY (codigo_item)
            REFERENCES item_pedido(codigo_item),

    CONSTRAINT pertence_ao_empregado
        FOREIGN KEY (matricula)
            REFERENCES empregado(matricula)

);