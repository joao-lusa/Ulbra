 --1 A)
SELECT codbar, cont(codbar) as quantos_tem
FROM produtos
group by codbar 
having quantos_tem > 1

--1 B) 
select alunos.nome as nome_aluno, count(tarefas.id_aluno) as tarefas_postadas
	from  alunos inner join tarefas on alunos.id = tarefas.id_aluno
	group by alunos.id
    order by tarefas_postadas desc
	limit 5;

--1 C) 
select disciplinas.nome as nome_disciplina, count(t.id) as quantidade_tarefas
    from disciplinas inner join tarefas t on disciplinas.id = t.id_disciplina
    where t.data_tarefa >= '2021-01-01' and data_tarefa <= '2021-06-30' 
    group by disciplinas.nome
    having count(t.id) > 5
    order by quantidade_tarefas desc