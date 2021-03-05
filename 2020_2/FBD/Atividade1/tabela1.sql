/*
ALUNO(cpf PK char, nome char, endereco, char)                                                       

DEPARTAMENTO( codigo_departamento PK numeric, nome, char)

CURSO(codigo_curso PK numeric, nome char,codigo_departamento FK numeric)

MATRICULA(cpf_aluno FK char,codigo_curso FK numeric, data_matricula date)

PROFESSOR(matricula_professor PK, nome, data_contratação, codigo_departamento FK)

DISCPLINA(codigo_disciplina PK numeric, qtde_creditos, matricula_professor FK numeric)

COMPOE(codigo_curso FK numeric, codigo_disciplina FK numeric)

PRE-REQUISITOS(pre_requisitos, codigo_disciplina FK numeric)

CURSO(cpf_aluno FK, codigo_disciplina FK)
*/
CREATE DATABASE atividade1

USE atividade1 

CREATE TABLE aluno
(
    cpf INT auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null,
    endereco VARCHAR(50) not null
);

CREATE TABLE departamento
(
    codigo_departamento int auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null
);

CREATE TABLE CURSO
(
    codigo_curso int auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null,

    CONSTRAINT pertence_ao_departamento
        FOREIGN KEY codigo_departamento
            REFERENCES departamento(codigo_departamento)

);

CREATE TABLE matricula
(
    CONSTRAINT pertence_ao_aluno
        FOREIGN KEY cpf
            REFERENCES aluno(cpf),
    
    CONSTRAINT pertence_ao_curso
        FOREIGN KEY codigo_curso
            REFERENCES curso(codigo_curso),
    
    data_matricula VARCHAR(10)
);

CREATE TABLE professor 
(
    matricula_professor int auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null,
    data_contratação VARCHAR(10) not null,

   CONSTRAINT pertence_ao_departamento
        FOREIGN KEY codigo_departamento
            REFERENCES departamento(codigo_departamento)
);

CREATE TABLE disciplina 
(
    codido_diciplina int auto_increment PRIMARY KEY,
    qtde_creditos VARCHAR(5) not null,

    CONSTRAINT pertence_ao_professor
        FOREIGN KEY matricula_professor
            REFERENCES professor(matricula_professor)
);

CREATE TABLE compoe
(
    CONSTRAINT pertence_ao_curso
        FOREIGN KEY codigo_curso
            REFERENCES curso(codigo_curso),
    
    CONSTRAINT pertence_ao_diciplina
        FOREIGN KEY codigo_disciplina
            REFERENCES disciplina(codigo_disciplina)
);

CREATE TABLE pre_requisitos
(
    pre_requisitos VARCHAR(50)

    CONSTRAINT pertence_ao_diciplina
        FOREIGN KEY codigo_disciplina
            REFERENCES disciplina(codigo_disciplina)
);

CREATE TABLE curso
(
    CONSTRAINT pertence_ao_aluno
        FOREIGN KEY cpf
            REFERENCES aluno(cpf),
    
    CONSTRAINT pertence_ao_diciplina
        FOREIGN KEY codigo_disciplina
            REFERENCES disciplina(codigo_disciplina)
);

