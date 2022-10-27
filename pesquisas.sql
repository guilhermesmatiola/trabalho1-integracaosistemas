--1
--select disciplina.id, disciplina.nome, disciplina.codigo from disciplina order by id asc;

--2
--select disciplina.id, disciplina.nome, disciplina.codigo from disciplina order by disciplina.nome asc;

--3
-- select disciplina.nome, disciplina.codigo 
-- from disciplina 
-- join ementa on disciplina.id = ementa.fk_disciplina_id 
-- join topicos on topicos.id = ementa.fk_topicos_id 
-- where topicos.descricao like '%Derivadas%';

--4
-- select distinct(topicos.descricao), count(*) as quantidade
-- from topicos 
-- join ementa on topicos.id = ementa.fk_topicos_id
-- group by topicos.descricao, ementa.fk_topicos_id
-- having count(*)>1

--5

--6

--7
-- select disciplina.codigo, disciplina.nome, (avg (disciplina.carga_horaria)/count(ementa.fk_topicos_id)) as horas_por_topico 
-- from ementa 
-- join topicos on ementa.fk_topicos_id=topicos.id 
-- join disciplina on disciplina.id=ementa.fk_disciplina_id
-- group by disciplina.id
-- order by horas_por_topico desc, nome;

--8

--9

--10