CREATE DATABASE atividade_semestral;

USE atividade_semestral;

-- TABELAS

CREATE TABLE veiculos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(8) not null,
    modelo VARCHAR(30)  not null

);

CREATE TABLE funcionarios(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (40) not null,
    documento VARCHAR(14) not null,
    telefone VARCHAR(11) not null
    
);

CREATE TABLE vendedores(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (40) not null,
    documento VARCHAR(14) not null,
    telefone VARCHAR(11) not null,
    veiculo int not null,
    CONSTRAINT pertence_a_veiculo
        FOREIGN KEY (veiculo)
            REFERENCES veiculos(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
    
);

CREATE TABLE clientes(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (40) not null,
    endereco VARCHAR(70) not null,
    documento VARCHAR(18) not null,
    telefone VARCHAR(11) not null,
    vendedor int not null,
    CONSTRAINT identifica_vendedor
        FOREIGN KEY (vendedor)
            REFERENCES vendedores(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
    
);

CREATE TABLE cobrancas(

    id INT AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE not null,
    data_vencimento DATE not null,
    tipo_cobranca VARCHAR(15) not null,
    cliente int not null,
    CONSTRAINT identifica_cliente
        FOREIGN KEY (cliente)
            REFERENCES clientes(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

CREATE TABLE pedidos(

    id INT AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE not null,
    valor DECIMAL(10,2) not null,
    cliente int not null,
    vendedor int not null,
    CONSTRAINT pertence_a_vendedor
        FOREIGN KEY (vendedor)
            REFERENCES vendedores(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    CONSTRAINT pertence_a_cliente
        FOREIGN KEY (cliente)
            REFERENCES clientes(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
    
);

CREATE TABLE separacao(

    id_separacao INT AUTO_INCREMENT PRIMARY KEY,
    pedido int not null,
    funcionario int not null,
    CONSTRAINT identifica_pedido
        FOREIGN KEY (pedido)
            REFERENCES pedidos(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    CONSTRAINT identifica_funcionario
        FOREIGN KEY (funcionario)
            REFERENCES funcionarios(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

CREATE TABLE entrega(

    id INT AUTO_INCREMENT PRIMARY KEY,
    data_entrega DATE not null,
    regiao VARCHAR(25),
    separacao int not null,
    veiculo int not null,
    funcionario int not null,
    CONSTRAINT identifica_separador
        FOREIGN KEY (separacao)
            REFERENCES separacao(id_separacao)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    CONSTRAINT indetifica_veiculo
        FOREIGN KEY (veiculo)
            REFERENCES veiculos(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    CONSTRAINT pertence_a_funcionario
        FOREIGN KEY (funcionario)
            REFERENCES funcionarios(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

CREATE TABLE distribuidores(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) not null,
    cnpj VARCHAR(18) not null,
    endereco VARCHAR(70) not null

);

CREATE TABLE contas_a_pagar(

    id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2) not null,
    numero_documento VARCHAR(30) not null,
    tipo_cobranca VARCHAR(20) not null,
    fornecedor int not null,
    CONSTRAINT identifica_fornecedor
        FOREIGN KEY (fornecedor)
            REFERENCES distribuidores(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

CREATE TABLE produtos(

    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    valor DECIMAL(10,2) not null,
    fornecedor int not null,
    CONSTRAINT fornecido_por
        FOREIGN KEY (fornecedor)
            REFERENCES distribuidores(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT

);

CREATE TABLE pedidos_produtos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido int not null,
    id_produto int not null,
    quantidade int not null,
    valor DECIMAL(10,2) not null,
    CONSTRAINT identifica_o_pedido
        FOREIGN KEY (id_pedido)
            REFERENCES pedidos(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    CONSTRAINT identifica_o_produto
        FOREIGN KEY (id_produto)
            REFERENCES produtos(id)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
);

-- Incluir dois campos em duas tabelas

ALTER TABLE clientes 
        ADD cidade VARCHAR(30) not null;
ALTER TABLE clientes 
        ADD CEP VARCHAR(9) not null;

ALTER TABLE distribuidores 
        ADD cidade VARCHAR(30) not null;
ALTER TABLE distribuidores
        ADD UF VARCHAR(2) not null;
       
-- Alterar o nome de dois campos

ALTER TABLE produtos
   CHANGE nome produto VARCHAR(30);

ALTER TABLE vendedores
    CHANGE documento CPF VARCHAR(14);

-- Alterar tipo de dado de dois campos

ALTER TABLE vendedores
    CHANGE telefone telefone int;

ALTER TABLE clientes
    CHANGE telefone telefone int;

--Alterar o relacionamento de duas tabelas. Explicar o porquê.

    ALTER TABLE contas_a_pagar DROP INDEX identifica_fornecedor;

    ALTER TABLE contas_a_pagar
        ADD CONSTRAINT identifica_fornecedor
        FOREIGN KEY (fornecedor)
            REFERENCES distribuidores(id)
            ON UPDATE CASCADE 
            ON DELETE SET NULL

/*Ao desligar o ligamento com este fornecedor, será mantido os dados pertencentes a ele mas com um valor null, devido a não necessidade de controle após o rompimento das relações*/

    ALTER TABLE cobrancas DROP INDEX identifica_cliente;

    ALTER TABLE cobrancas
    ADD CONSTRAINT define_cliente
            FOREIGN KEY (cliente)
                REFERENCES clientes(id)
                    ON UPDATE CASCADE 
                    ON DELETE SET NULL;

/*O mesmo acontece com o cliente. Depois de se desligar à empresa, todas as antigas cobranças e pedidos serão mantidos para melhor controle*/

--Popular todas as tabelas considerando as relações.
INSERT INTO veiculos 
    values (01,'PHP-2020','peugeot 206');
INSERT INTO veiculos
    values (02,'SQL-2020','Uno Mille');
INSERT INTO veiculos
    values (03,'FDB-2020','Gol');
INSERT INTO veiculos
    values (04,'ADS-2020','Atego 1719');
INSERT INTO veiculos
    values (05,'JAV-2020','Renault Master');
INSERT INTO veiculos
    values (06,'CSS-2020','Kombi');

INSERT INTO funcionarios
    values (01,'Alan','113.313.132-32','999445623');
INSERT INTO funcionarios
    values (02,'Jeferson','312.313.212-34','99234123');
INSERT INTO funcionarios
    values (03,'João','234.234.212-52','999324154');

INSERT INTO vendedores
    values (01,'Carlos','113.313.132-32','999445623',01);
INSERT INTO vendedores
    values (02,'cleber','312.313.212-34','99234123',02);
INSERT INTO vendedores
    values (03,'sergio','234.234.212-52','999324154',03);

INSERT INTO clientes
    values (01,'joão Gabriel','Rua Beijamin Constante','231.231.312-32','93214214',2,'Tres Cachoeiras','95580-000');
INSERT INTO clientes
    values (02,'Pedro','Rua Pedro Coelho','523.421.321-23','999332136',3,'Torres','95560-000');
INSERT INTO clientes
    values (03,'Paulo','Av. beira mar','643.654.352-43','934533234',1,'Torres','95560-000');

INSERT INTO cobrancas
    values ( 01,'2020/11/11', '2021/01/04', 'boleto',2);
INSERT INTO cobrancas
    values ( 02,'2020/11/11', '2021/01/04', 'boleto',3);
INSERT INTO cobrancas
    values ( 03,'2020/11/11', '2021/01/04', 'boleto',1);

INSERT INTO pedidos
    values (01,'2020/11/11',242.98,1,3);
INSERT INTO pedidos
    values (02,'2020/11/11',60.9,2,1);
INSERT INTO pedidos
    values (03,'2020/11/11',327.96,3,2);

INSERT INTO separacao
    values (01,1,2);
INSERT INTO separacao
    values (02,2,3);
INSERT INTO separacao
    values (03,3,1);

INSERT INTO entrega
    values (01,'2020/11/14','Arroio do Sal',1,04,2);
INSERT INTO entrega
    values (02,'2020/11/12','Torres',2,05,3);
INSERT INTO entrega
    values (03,'2020/11/15','Torres',3,06,1);

INSERT INTO distribuidores
    values (01,'Expresso do tio','44.088.479/0001-35','Rua Pedro Coelho','Sombrio','SC');
INSERT INTO distribuidores
    values (02,'Expresso são Miguel','44.088.479/0001-35','Rua Pedro Coelho','Torres','RS');
INSERT INTO distribuidores
    values (03,'Distribuir bem','44.088.479/0001-35','Rua Pedro Coelho','Osorio','RS');

INSERT INTO contas_a_pagar
    values (01,502.20,'02423','boleto',2);
INSERT INTO contas_a_pagar
    values (02,345.55,'02424','boleto',3);
INSERT INTO contas_a_pagar
    values (03,420.67,'02432','boleto',1);

INSERT INTO produtos
    values (01,'Detergente Limpol Neutro 500ml',1.99,3);
INSERT INTO produtos
    values (02,'Farelo de trigo 30kg',48.50,2);
INSERT INTO produtos
    values (03,'Milho lt oderich 200g',2.19,1);
INSERT INTO produtos
    values (04,'Racao Bionic 7kg',19.90,1);
INSERT INTO produtos
    values (05,'Far Orquidea 1kg',2.79,2);
INSERT INTO produtos
    values (06,'Vela Suprema c/8',3.59,2);

INSERT INTO pedidos_produtos
    values(01,01,04,10,199.9);
INSERT INTO pedidos_produtos
    values(02,01,06,12,43.08);
INSERT INTO pedidos_produtos
    values(03,02,03,6,13.14);
INSERT INTO pedidos_produtos
    values(04,02,01,24,60.90);
INSERT INTO pedidos_produtos
    values(05,03,01,6,11.94);
INSERT INTO pedidos_produtos
    values(06,03,03,8,17.52);
INSERT INTO pedidos_produtos
    values(07,03,04,15,327.96);

-- Fazer 5 updates

UPDATE vendedores
SET nome = 'Renato'
WHERE id = 2;

UPDATE vendedores
SET nome = 'Eduardo'
WHERE id = 3;

UPDATE distribuidores
SET nome = 'Distribuidor Osorio'
WHERE id = 3;

UPDATE produtos
SET valor = valor*0.95
WHERE id=1;

UPDATE clientes
SET nome = 'Ciro'
WHERE id=3;

--5 Deletes

DELETE FROM cobrancas
WHERE id=1;


DELETE FROM contas_a_pagar
WHERE id=3;


DELETE FROM entrega
WHERE id=3;


DELETE FROM produtos
WHERE id=2;


DELETE FROM produtos
WHERE id=5;

-- Criar 10 consultas

--Produto com maior valor

SELECT produto
FROM produtos
where valor = (SELECT MAX(valor) FROM produtos);

-- Listar distribuidores do RS e seus produtos

SELECT   produtos.produto, produtos.valor
FROM     distribuidores, produtos
WHERE    produtos.fornecedor = distribuidores.id and distribuidores.uf="RS";

-- Listar Produtos e seus valores

SELECT   produto, valor
FROM     produtos

-- Listar vendedores e seus veiculos

SELECT   veiculos.modelo as veiculo_modelo, vendedores.nome as vendedor_nome
FROM     veiculos, vendedores
WHERE    veiculos.id = vendedores.veiculo;

-- Listar Produtos com valor menor que 10,00

SELECT   produto, valor
FROM     produtos
WHERE    valor < 10;

-- Listar Pedidos com valor maior que 150,00

SELECT   id
FROM     pedidos
WHERE    valor > 150;

-- Consultar serviços do funcionário 2

SELECT entrega.id as id_entrega, entrega.regiao as local_entrega, separacao.id_separacao, separacao.pedido 
FROM entrega, separacao
WHERE entrega.funcionario=2 and separacao.funcionario= 2;
 
-- Calcular o valor total das contas a pagar

SELECT SUM(valor)
AS total_contas
FROM contas_a_pagar;

-- Média dos valores das mercadorias

SELECT AVG(valor)
AS media_dos_produtos
FROM produtos;

-- Listar entregas no Bairro São José

SELECT id
FROM entrega
WHERE regiao = 'Torres'