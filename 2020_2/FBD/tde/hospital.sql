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
Medicamento (codmedicamento, nome, composicao, preco)*/

CREATE DATABASE hospital;

CREATE TABLE cidade(
    codcid INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) not null,
    uf VARCHAR(3) not null
);

CREATE TABLE paciente(
    codpac INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    endereço VARCHAR(80) not null,
    telefone VARCHAR(16) not null,
    codcid INT not null,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (codcid)
            REFERENCES cidade(codcid)
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);

CREATE TABLE medico(
    codmec INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    endereço VARCHAR(80) not null,
    telefone NUMERIC not null,
    cmr VARCHAR(6) not null UNIQUE,
    codcid INT not null UNIQUE,
    CONSTRAINT pertence_a_cidade
        FOREIGN KEY (codcid)
            REFERENCES cidade(codcid) 
            ON DELETE RESTRICT
            ON UPDATE CASCADE
);

CREATE TABLE consulta(
    data_cons DATE not null,
    codconsulta INT AUTO_INCREMENT PRIMARY KEY,
    codpac INT not null
    CONSTRAINT pertence_a_paciente
        FOREIGN KEY (codpac)
            REFERENCES paciente(codpac)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT,
    codmec INT not null
    CONSTRAINT pertence_a_medico
        FOREIGN KEY (codmec)
            REFERENCES medico(codmec)
            ON UPDATE CASCADE 
            ON DELETE RESTRICT
);

CREATE TABLE medicamento(
    codmedicamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) not null,
    composicao VARCHAR(50) not null,
    preco VARCHAR(6) not null
);

CREATE TABLE prescricao(
    possologia VARCHAR(10) not null,
    codconsulta INT not null
    CONSTRAINT pertence_a_consulta
        FOREIGN KEY (codconsulta)
            REFERENCES consulta(codconsulta),
    codmedicamento INT not null
    CONSTRAINT pertence_a_medicamento
        FOREIGN KEY (codmedicamento)
            REFERENCES medicamento(codmedicamento)
);

--02

INSERT INTO consulta (data, hora),
    VALUES('2020-02-12' '14:00:00'),
    VALUES('2020-02-12' '14:00:00'),
    VALUES('2020-02-12' '14:00:00'),
INSERT INTO madico (nome, endereco, telefone, crm, cpf, codcid),
    VALUES('Dr. Ronaldo' 'bairro taquara, pedro coelho 54.', '332321424', 'F054008' 2),
    VALUES('Dr. Arnaldo' 'bairro taquara, pedro coelho 54.', '332321424', 'F054008' 1),
    VALUES('Dra. Diana' 'bairro centro, pedro coelho 54.', '332321424', 'F054008' 3),
INSERT INTO paciente (nome, endereco, telefone, codcid),
    VALUES('Cleber', 'bairro são jose pedro coelho 54.' '996618106' 1)
    VALUES('josé', 'bairro são jose pedro coelho 54.' '996618106' 1)
    VALUES('Maria', 'bairro são jose pedro coelho 54.' '996618106' 1)
INSERT INTO cidade ( nome, uf),
    VALUES('Sombrio', 'SC'),
    VALUES('Itajai', 'SC'),
    VALUES('Laguna', 'SC'),
INSERT INTO medicamento (nome, composicao, preco),
    VALUES('paracetamol', 'Povidona, Macrogol e Lactose Monohidratada', 3.80),
    VALUES('paracetamol', 'Povidona, Macrogol e Lactose Monohidratada', 3.80),
    VALUES('paracetamol', 'Povidona, Macrogol e Lactose Monohidratada', 3.80),
INSERT INTO prescricao (possologia),
    VALUES('2 comprimido de 12 em 12 horas'),
    VALUES('1 comprimido de 8 em 8 horas'),
    VALUES('1 comprimido de 8 em 8 horas'),
--03
UPDATE medicamento
SET preco = preco * 1.20
where id = 1

--04
DELETE FROM cidade
where id = 3

--05
SELECT nome 
FROM cidade 
WHERE uf = 'SC'
 
--06
SELECT nome, preco
FROM medicamento

--09
SELECT nome, telefone
FROM paciente 
WHERE id_cidade = 3 

--14
SELECT *
FROM medicamentos
where preco = (SELECT MAX(preco) FROM medicamentos);

--15
SELECT *
FROM medicamentos
where preco >= (SELECT AVG(preco) FROM medicamentos);