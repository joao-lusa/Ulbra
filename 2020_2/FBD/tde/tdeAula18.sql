/*Médico (codmed, nome, endereço, telefone, crm, cpf, codcid)
	Codcid referencia cidade(codcid)
Paciente (codpac, nome, endereço, telefone,codcid)
	Codcid referencia cidade(codcid)
Cidade(codcid, nome, UF)
Consulta(codconsulta, codmed, codpac, data, hora)
	Codmed referencia Medico (codmed)
	Codpac referencia Paciente (codpac)
Prescrição (codconsulta, codmedicamento, posologia)
	Codconsulta referencia Consulta (codconsulta)
	Codmedicamento referencia medicamento (codmedicamento)
Medicamento (codmedicamento, nome, composicao, preco) */

CREATE DATABASE agenda_medica;

USE agenda_medica;

CREATE TABLE cidades
(
    id_cidade INT not null PRIMARY KEY,
    uf VARCHAR(2) not null,
    nome VARCHAR(25) not null
);
CREATE TABLE medicos
(
    id_medico INT not null PRIMARY KEY,
    nome VARCHAR(25) not null,
    endereco VARCHAR(100) not null,
    telefone NUMERIC not null,
    crm NUMERIC not null UNIQUE,
    cpf NUMERIC not null UNIQUE,
    id_cidade INT not null,
    CONSTRAINT medico_tem_cidade
        FOREIGN KEY (id_cidade)
            REFERENCES cidades(id_cidade)
            on update cascade on delete restrict
);
CREATE TABLE pacientes
(
    id_paciente INT not null PRIMARY KEY,
    nome VARCHAR(25) not null,
    endereco VARCHAR(100) not null,
    telefone NUMERIC not null,
    id_cidade INT not null,
    CONSTRAINT paciente_tem_cidade
        FOREIGN KEY (id_cidade)
            REFERENCES cidades(id_cidade)
            on update cascade on delete restrict
);
CREATE TABLE consultas
(
    id_consulta INT not null PRIMARY KEY auto_increment,
    data_consulta DATE not null,
    hora_consulta VARCHAR(5) not null,
    id_medico INT not null,
    id_paciente INT not null,
    CONSTRAINT consulta_tem_medico
        FOREIGN KEY (id_medico)
            REFERENCES medicos(id_medico)
            on update cascade on delete restrict,
    CONSTRAINT consulta_tem_paciente
        FOREIGN KEY (id_paciente)
            REFERENCES pacientes(id_paciente)
            on update cascade on delete restrict
);
CREATE TABLE medicamentos
(
    id_medicamento INT not null PRIMARY KEY,
    valor DECIMAL(12,5) not null,
    nome VARCHAR(25) not null,
    composicao VARCHAR(100) not null
);
CREATE TABLE precricaoes
(
    posologia VARCHAR(200) not null,
    id_consulta INT not null,
    id_medicamento INT not null,
    CONSTRAINT precricao_tem_consulta
        FOREIGN KEY (id_consulta)
            REFERENCES consultas(id_consulta)
            on update cascade on delete restrict,
    CONSTRAINT precricao_tem_medicamento
        FOREIGN KEY (id_medicamento)
            REFERENCES medicamentos(id_medicamento)
            on update cascade on delete restrict
);

INSERT INTO cidades
values (01,'RS','Porto Alegre');
INSERT INTO cidades
values (02,'RS','Torres');
INSERT INTO cidades
values (03,'SC','Criciuma');

INSERT INTO medicos
values (01,'João','Av Castelo Branco',98765432,10,02329001005,1);
INSERT INTO medicos
values (02,'Benedito','Rua Beijamin Constante',98765432,20,02329001006,2);
INSERT INTO medicos
values (03,'Ronaldo','Av Beira Mar',98765432,30,02329001007,3);

INSERT INTO pacientes
values (01,'Paulo','São Marcos',98765432,1);
INSERT INTO pacientes
values (02,'fernando','Rua João Cardoso Rolim',98765432,2);
INSERT INTO pacientes
values (03,'Joares','Rua California',98765432,3);

INSERT INTO consultas(data_consulta, hora_consulta, id_medico, id_paciente)
values ('2020-10-10','10:00',1,1);
INSERT INTO consultas(data_consulta, hora_consulta, id_medico, id_paciente)
values ('2020-10-10','11:00',2,2);
INSERT INTO consultas(data_consulta, hora_consulta, id_medico, id_paciente)
values ('2020-10-10','14:00',3,3);

INSERT INTO medicamentos
values (01,10.5,'Benegripe','sem detalhes');
INSERT INTO medicamentos
values (02,10.5,'Doril','sem detalhes');
INSERT INTO medicamentos
values (03,10.5,'Paracetamol','sem detalhes');

INSERT INTO precricaoes
values ('sem informaçoes',01,01);
INSERT INTO precricaoes
values ('sem informaçoes',02,02);
INSERT INTO precricaoes
values ('sem informaçoes',03,03);

/*Atualizar o preço do medicamento de código 1 em 20%.*/

UPDATE medicamentos
SET valor = valor+(20/100*valor)
WHERE id_medicamento=1;

/*Excluir a cidade cujo código é 3.(obs:não vai funcionar por causa do "on delete restrict")*/

DELETE FROM cidades
WHERE id_cidade = 3

/*Listar os nomes das cidades do estado RS. */

SELECT   nome
FROM     cidades
WHERE    uf = 'RS';

/*Listar todos os nomes de medicamentos e preço.*/

SELECT   nome as nome_medicamentos,
	 valor AS valor_medicamentos
FROM     medicamentos

/*Listar o nome e telefone de todos os pacientes que moram na cidade de nome ‘Torres’.*/

SELECT pacientes.nome,telefone
FROM pacientes,cidades
WHERE cidades.nome = 'Torres' and 
    cidades.id_cidade = pacientes.id_cidade;

/*Mostrar a média de preços dos medicamentos.*/

SELECT AVG(valor)
AS media
FROM medicamentos;

/*Mostrar o número total de consultas cadastradas.*/

SELECT COUNT(id_consulta)
AS total_consultas
FROM consultas;

/*Listar o nome do medicamento mais caro.*/

SELECT nome
FROM medicamentos
where valor = (SELECT MAX(valor) FROM medicamentos);

/*Listar os nomes dos medicamentos que tem preço acima da média.*/ 

SELECT nome
FROM medicamentos
where valor > (SELECT AVG(valor) FROM medicamentos);

/* Listar o nome e telefone dos médicos da cidade de ‘Torres’.*/

SELECT medicos.nome, telefone
FROM medicos, cidades
WHERE cidades.nome = 'torres' AND
    cidades.id_cidade = medicos.id_cidade;

/*Listar todas os nomes dos medicamentos, juntamente com a posologia, prescritos na consulta de código 1*/

SELECT medicamentos.nome, posologia
FROM medicamentos, precricaoes, consultas
WHERE consultas.id_consulta = 1 AND
	precricaoes.id_consulta = consultas.id_consulta AND
	precricaoes.id_medicamento = medicamentos.id_medicamento;

/*Listar os nomes dos pacientes que tem consulta marcada.*/

SELECT pacientes.nome
FROM pacientes, consultas
WHERE pacientes.id_paciente = consultas.id_paciente 

/* Listar todos os nomes e telefones dos pacientes das consultas marcadas para o dia ’10/10/2020’.*/

SELECT pacientes.nome, pacientes.telefone
FROM pacientes, consultas
WHERE data_consulta = '2020-10-10' AND
	consultas.id_paciente = pacientes.id_paciente;

/* Listar todas as consulta com nome do médico, nome do paciente, data e hora.*/

SELECT medicos.nome, pacientes.nome, data_consulta , hora_consulta
FROM medicos, pacientes, consultas
WHERE pacientes.id_paciente = consultas.id_paciente AND
 	medicos.id_medico = consultas.id_medico;