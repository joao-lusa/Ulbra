create database um;

USE um;

CREATE TABLE assuntos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(40) not null
);

CREATE TABLE editoras(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) not null
);

CREATE TABLE autores(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) not null,
    cpf VARCHAR(11) not null,
    endereco VARCHAR(50) not null,
    dataNac DATE not null,
    nacionalidade VARCHAR(30) not null
);

CREATE TABLE livros(
    id INT AUTO_INCREMENT PRIMARY KEY,
    assunto int not null,
    editora int not null,
    titulo VARCHAR(80) not null,
    preco DECIMAL (10,2) not null,
    lacamento DATE not null,
    CONSTRAINT pertence_a_assunto
        FOREIGN KEY (assunto)
            REFERENCES assuntos(id)
            ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pertence_a_editora
        FOREIGN KEY (editora)
            REFERENCES editoras(id)
            ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE autoresLivros(
    autor int not null,
    livro int not null,
    CONSTRAINT pertence_a_autores
        FOREIGN KEY (autor)
            REFERENCES autores(id)
            ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pertence_a_livros
        FOREIGN KEY (livro)
            REFERENCES livros(id)
            ON UPDATE CASCADE ON DELETE CASCADE
);