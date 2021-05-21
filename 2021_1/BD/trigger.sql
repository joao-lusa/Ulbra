create schema Triggers_tde;


create table departamentos
(
	id int not null auto_increment primary key,
    nome varchar(50) not null,
    total_salario decimal(18,2) default 0
);
create table funcionarios
(
	id int not null auto_increment primary key, 
    nome varchar(100) not null, 
    valor_salario decimal(18,2),
    id_departamento int not null,
    constraint departamentos_funcionarios_fk
		foreign key (id_departamento)
			references departamentos(id)
				on delete restrict
                on update cascade
);


insert into departamentos (nome) 
	values ('Desenvolvimento'),('suporte'),('RH'),('Marketing');
select * from depatamentos;

insert into funcionarios (nome, valor_salario, id_departamento)
	values ('João da silva', 5000, 2);
insert into funcionarios (nome, valor_salario, id_departamento)
	values ('Alice Bitercourt', 5600, 2);

update departamentos set total_salario = total_salario + 5000 where id = 2;    
update departamentos set total_salario = total_salario + 5600 where id = 2;
	select * from funcionarios;

DELIMITER $$ 
create trigger atualiza_salario_departamento 
	after insert on funcionarios 
		for each row
begin	

	update departamentos set total_salario = total_salario + NEW.valor_salario
    where id = NEW.id_departamento;

end $$

insert into funcionarios (nome, valor_salario, id_departamento)
	values ('Joana Santos', 3500, 3),
			('Sonia Azevedo', 5400, 2);
	select * from departamentos;
    
DELIMITER $$
	CREATE TRIGGER atualiza_salario_departamento_atualiza
		after update on funcionarios 
			for each row
begin
		update departamentos set total_salario = total_salario + (NEW.valor_salario - old.valor_salario) 
        where id = old.id_departamento;
end $$
	select * from funcionarios;
    select * from departamentos;
    update funcionarios set valor_salario = 6600 where id = 2;
    
    alter table fundionarios add column demitido bool 
    
    
    
    