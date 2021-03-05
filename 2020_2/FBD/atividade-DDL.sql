/*
aluno(id, nome)
departamento (id, nome)
curso(id, nome, id_depto)
  id_depto referencia departamento (id)
professor(id, nome)
disciplina(id, nome, id_prof)
   id_prof referencia professor(id)
matricula(id_disciplina, id_aluno, data_matr)
    id_disciplina referencia disciplina(id) 
   id_aluno referencia aluno(id);
*/
CREATE DATABASE escola;

USE escola;

CREATE TABLE alunos
(
    id INT auto_increment NOT NULL,
    nome VARCHAR(80) not null, 
);

CREATE TABLE departamentos
(
    id INT auto_increment NOT NULL,
    nome VARCHAR(80) not null
);

CREATE TABLE cursos
(
    id INT auto_increment PRIMARY KEY
    nome VARCHAR(50) not null,
    id_departamento int null,
    CONSTRAINT pertence_ao_depto
        FOREIGN KEY id_departamento
            REFERENCES departamentos(id)

);

CREATE TABLE professores
(
    id INT auto_increment NOT NULL,
    nome VARCHAR(80) not null
);

CREATE TABLE disciplinas
(
    id INT auto_increment PRIMARY KEY
    nome VARCHAR (50) not null,
    id_professor int null,
    CONSTRAINT eh_data_por_professor
        FOREIGN KEY (id_professor)
            REFERENCES professores(id)
);

CREATE TABLE matricula
(
    id_professor int not null,
    id_disciplina int not null,
    data_matricula DATE,
    CONSTRAINT matricula tem professor
        FOREIGN KEY (id_professor)
            REFERENCES professores(id)
    CONSTRAINT matricula_tem_disciplina
        FOREIGN KEY (id_disciplina)
            REFERENCES disciplinas(id)
);