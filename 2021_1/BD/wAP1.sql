/*Faça um SQL para exibir os filmes cadastrados e suas respectivas categorias.*/
SELECT f.titulo, c.nome as categoria
FROM filmes f INNER JOIN categorias c ON (f.categorias_id = c.id);

/*Faça um SQL para exibir quantos filmes há para cada categoria.*/
SELECT COUNT(f.id), c.nome
FROM filmes f JOIN categorias c ON (f.categorias_id = c.id)
GROUP BY categorias_id;

/*Faça um SQL para exibir o nome de todos os clientes e se houver locação, mostrar quais os filmes que eles (cada um) tem locado.*/
 select
    c.prenome as cliente,
    filmes.titulo as titulo
from clientes c
left join locacoes
    on locacoes.clientes_id = c.id
inner join filmes_por_locacoes
    on filmes_loc.locacoes_id = locacoes.id
inner join filmes
    on filmes.id = filmes_loc.filmes_id;

/*Faça um SQL para saber qual titulo do filme que tem o maior número de locações.*/
select filmes.titulo as filme, count(*) as locacoes
from filmes
inner join filmes_por_locacoes
    on filmes_por_locacoes.filmes_id = filmes.id
group by filmes_por_locacoes.filmes_id
order by locacoes desc
limit 1;