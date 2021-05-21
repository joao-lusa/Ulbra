SET SQL_SAFE_UPDATES = 0;

CREATE database pessoa;

USE pessoa;

CREATE TABLE pessoa (
	id int not null auto_increment primary key,
    sexo VARCHAR(50) not null,
    data_nascimento DATE not null
);

