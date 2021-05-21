/* Criar Modelagem Orçamentos 
produtos (id, nome, valor, saldo)
Orcamentos ( id, data, status)
Orçamentos_itens(id_prod, id_orc, valor_unit, quantidade, valor_total_item) 
*/
SET SQL_SAFE_UPDATES = 0;

CREATE database orcamentos;

USE orcamentos;

CREATE TABLE produtos 
(
    id INT not null auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null,
    valor DECIMAL(12,2) not null default 0,
    saldo INT not null
);

CREATE TABLE orcamentos (
    id INT not null auto_increment PRIMARY KEY,
    data_orcamento DATE,
    status_orcamento VARCHAR(20) 
);

CREATE TABLE orcamentos_itens (
	id_produto INT not null,
    id_orcamento INT not null,
    valor_unitario DECIMAL(18,2) not null default 0,
    quantidade decimal(18,2) not null,
    valor_total_item decimal(18,2) not null default 0,
    CONSTRAINT podutos_orcamento_itens
        FOREIGN KEY (id_produto)
            REFERENCES produtos(id)
            on update cascade on delete restrict,
    CONSTRAINT orcamento_orcamento_itens
        FOREIGN KEY (id_orcamento)
            REFERENCES orcamentos(id)
            on update cascade on delete restrict
);

/* Os 10 produtos mais vendidos no mês de setembro de 2014 e que ainda tem saldo em estoque. 
Somente os produtos com o valor acima de R$ 500.00.*/
create view consulta_top_setembro
as 
select produtos.nome as produtos
    from produtos inner join orcamentos_itens on produtos.id = orcamentos_itens.id_produto 
	inner join orcamentos on orcamentos.id = orcamentos_itens.id_orcamento
    


/*Criar os scritps para criação do esquema do banco e as tabelas. */
INSERT INTO produtos (nome, valor, saldo)
values('cafe',11.0, 25), ('whey protein', 99.0, 12), ('creatina', 50.0, 4), ('computador', 3500.0, 4),
('Iphone 12 Pro Max', 8500.0, 5), ('Apple Wacht series 5', 2999.0, 9), ('TV 4K LG 55', 4550.0, 4), 
('VAPE VAPORESSO nanolux', 499.0, 7), ('Iphone 11 Pro Max', 6500.0, 1), ('Iphone 12', 7500.0, 15);

INSERT INTO orcamentos (data_orcamento, status_orcamento)
values('2021-04-10', 'APROVADO'), ('2021-04-10', 'PENDENTE'), ('2021-04-13', 'NEGADO'),
('2014-12-13', 'APROVADO'),('2018-04-10', 'APROVADO'), ('2010-10-10', 'APROVADO'), 
('2021-01-13', 'NEGADO'),('2014-10-09', 'APROVADO'),('2019-04-10', 'APROVADO'),('2021-04-10', 'APROVADO');

INSERT INTO orcamentos_itens
values(5, 1, 8500.0, 1, 8500.0), (6, 1, 2999.0, 1, 2999.0), (4, 2, 3500.0, 1, 3500.0), (3, 3, 50.0, 2, 100.0),
(2, 3, 99.0, 1, 99.0),(5, 4, 8500.0, 2, 16000.0), (6, 4, 2999.0, 1, 2999.0), (10, 5, 7500.0, 2, 1400.0), 
(9, 6, 6500.0, 1, 6500.0),(2, 6, 99.0, 2, 180.0);
    
/*Criar UMA view que de condições de:
Lista de orçamentos por produto
*/  
 
 create view Lista_orçamentos_produto
 as
 select produtos.id as id_produto, produtos.nome as nome_produtos, orcamentos.id as lista_orcamentos 
	from produtos inner join orcamentos_itens on produtos.id = orcamentos_itens.id_produto 
	inner join orcamentos on orcamentos.id = orcamentos_itens.id_orcamento
	order by produtos.id asc;
    
/* Valor total de produtos orçados por período */
select sum(valor_unitario) as total
	from produtos inner join orcamentos_itens on produtos.id = orcamentos_itens.id_produto 
	inner join orcamentos on orcamentos.id = orcamentos_itens.id_orcamento
    where orcamentos.data_orcamento > '2021-04-01' and orcamentos.data_orcamento < current_date
	order by produtos.id asc;

/* Produtos que tem “Computador” no nome e que tem quantidade em estoque. */

select produtos.id as id_produto, produtos.nome as nome_produto, produtos.saldo as saldo_estoque
	from produtos
	where produtos.nome like '%computador%' and saldo > 0;


/* Os 10 produtos mais vendidos no mês de setembro de 2014 e que ainda tem saldo em estoque. 
Somente os produtos com o valor acima de R$ 500.00. */
create view consulta_top_setembro
as 
select sum(quantidade), id_produto from orcamentos_itens group by id_produto
order by sum(quantidade) desc;

select * from produto p join
(select sum(quantidade), id_produto from orcamentos_itens group by id_produto
order by sum(quantidade) desc) itensMaisVendidos on (p.id = itensMaisVendidos.id_produto)
/* essa não teve jeito ;-; */


/*Apague todos os produtos que não foram vendidos.*/

/*Faça uma atualização utilizando a view para acrescentar 20% nos produtos que o saldo em estoque é menor ou igual a 5.*/

/*Delete todos os produtos que não foram orçados.*/

/*Explique quando utilizar o GROUP BY, de um exemplo sql.

Explique quando utilizar o HAVING, de um exemplo sql.

Explique quando utilizar o UNION, de um exemplo sql.

Explique quando utilizar o LEFT JOIN, de um exemplo sql/*.

 