create database dois;

USE dois;

CREATE TABLE autores (
    id_matricula INT auto_increment PRIMARY KEY,
    nome VARCHAR(50) not null,
    cpf VARCHAR(11) not null,
    endereco VARCHAR(100) not null,
    data_nascimento DATE not null,
    nacionalidade VARCHAR(50) not null
);

CREATE TABLE editoras(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) not null
);

CREATE TABLE assuntos(
    id VARCHAR(2) AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(55) not null
);

CREATE TABLE livros(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo varchar(80) not null,
    proco DECIMAL(10,2) not null,
    dataL DATE not null,
    assunto varchar(10) not null,
    editora INT not null,

    CONSTRAINT pertence_a_livros
        FOREIGN KEY (assunto)
            REFERENCES assuntos(id)
            ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pertence_a_editoras
        FOREIGN KEY (editora)
            REFERENCES editoras(id)
            ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE autores_livros (
    id_matriculaAutores INT not null,
    id_livro  INT not null,
    CONSTRAINT autores_livros_pertence_autores
        FOREIGN KEY (id_matriculaAutores)
            REFERENCES autores(id_matricula)
            on update cascade on delete restrict,
    CONSTRAINT autores_livros_pertence_livros
        FOREIGN KEY (id_livro)
            REFERENCES livros(id)
            on update cascade on delete restrict
);

INSERT INTO autores(nome, cpf, endereco, data_nascimento, nacionalidade)
values ('Cazuza', '03954313031', 'Rua Onde O Vento Faz Curva', '1958-04-04', 'Brasileira'), 
       ('Gustavo Cerati', '02079112091', 'Travessa da Punhalada', '1959-08-11', 'Argentina'),
       ('Chris Cornell', '05095215052', 'Beco do Laçasso', '1964-07-20', 'Americana'), 
       ('Dave Gahan', '07045617056', 'Rua da Pegada Lateral', '1952-05-09', 'Inglesa');

INSERT INTO editoras(nome)
values ('Mirandela Editora'), 
	   ('Editora Via-Norte'), 
       ('Editora Ilhas Tijucas'), 
	   ('Maria José Editora');

INSERT INTO livros(titulo, preco, dataL, editora, assunto)
values ('Banco de Dados para Web', 31.2, '1999-01-10', 1, 'B'), 
	   ('Programando em Linguagem C', 30.0, '1997-10-01', 1, 'P'),
       ('Programando em Linguagem C++', 111.50, '1998-11-01', 3, 'P'),
       ('Redes de Computadores', 42.0, '1996-09-01', 2, 'R');

INSERT INTO autores_livros
values (1,1),
	   (2,2),
       (3,3),
       (4,4),
       (4,5);

