--1
select disciplina.id, disciplina.nome, disciplina.codigo from disciplina order by disciplina.codigo asc;

--2
select disciplina.id, disciplina.nome, disciplina.codigo from disciplina order by disciplina.nome asc;

--3
select disciplina.nome, disciplina.codigo 
from disciplina 
join ementa on disciplina.id = ementa.fk_disciplina_id 
join topicos on topicos.id = ementa.fk_topicos_id 
where topicos.descricao like '%Derivadas%';

--4
select distinct(topicos.descricao), count(*) as quantidade
from topicos 
join ementa on topicos.id = ementa.fk_topicos_id
group by topicos.descricao, ementa.fk_topicos_id
having count(*)>1;

--5
select distinct (disciplina.nome) from disciplina
join (

 select pre_requisito.fk_Disciplina_id_ as Disciplina,
 Pre_requisito.fk_Disciplina_id as Pre_requisito,
 Disciplina.Nome as Nome_Pre_requisito
 from Disciplina, Pre_requisito
 where Pre_requisito.fk_Disciplina_id_=(select disciplina.id from disciplina where disciplina.codigo = 'BLU6004')
	
) as r1
on r1.pre_requisito = disciplina.id ;

--6
select descricao from (

select  (r1.descricao), count(*) from 

(
select topicos.descricao from topicos
join ementa on topicos.id = ementa.fk_topicos_id
join disciplina on ementa.fk_disciplina_id = disciplina.id
where disciplina.codigo = 'BLU3706'
) as r1,

(
select topicos.descricao from topicos
join ementa on topicos.id = ementa.fk_topicos_id
join disciplina on ementa.fk_disciplina_id = disciplina.id
where disciplina.nome = (SELECT disciplina.nome FROM disciplina WHERE id=
						 (SELECT fk_disciplina_id_ 
						  FROM equivalente 
						  WHERE fk_disciplina_id = 
						  (SELECT id FROM disciplina WHERE disciplina.codigo = 'BLU3706' LIMIT 1)))
) as r2

where r2.descricao != r1.descricao group by r1.descricao having count(*)>1

) as r3;



--7
select disciplina.codigo, disciplina.nome, (avg (disciplina.carga_horaria)/count(ementa.fk_topicos_id)) as horas_por_topico 
from ementa 
join topicos on ementa.fk_topicos_id=topicos.id 
join disciplina on disciplina.id=ementa.fk_disciplina_id
group by disciplina.id
order by horas_por_topico desc, nome;

--8

--9

select r1.nome_da_disciplina, r1.nome_do_curso_o_qual_e_obrigatoria, r2.nome_do_curso_onde_e_optativa from
(
select disciplina.nome as nome_da_disciplina, disciplina.codigo, curso.nome as nome_do_curso_o_qual_e_obrigatoria, obrigatoria_optativa.obrigatoria as obrigatoria from disciplina
join obrigatoria_optativa on disciplina.id = obrigatoria_optativa.fk_disciplina_id
join curso on obrigatoria_optativa.fk_curso_id = curso.id
where obrigatoria = true
) as r1,
(
select disciplina.nome as nome_da_disciplina, disciplina.codigo, curso.nome as nome_do_curso_onde_e_optativa, obrigatoria_optativa.obrigatoria as optativa from disciplina
join obrigatoria_optativa on disciplina.id = obrigatoria_optativa.fk_disciplina_id
join curso on obrigatoria_optativa.fk_curso_id = curso.id
where obrigatoria = false
) as r2
where 
r1.obrigatoria <> r2.optativa 
and
r1.nome_da_disciplina = r2.nome_da_disciplina;

--10

select r1.nome_da_disciplina,r1.nome_do_curso_o_qual_e_optativa, r2.nome_do_curso_onde_e_obrigatoria from
(
select disciplina.nome as nome_da_disciplina, disciplina.codigo, curso.nome as nome_do_curso_o_qual_e_optativa, obrigatoria_optativa.obrigatoria as obrigatoria from disciplina
join obrigatoria_optativa on disciplina.id = obrigatoria_optativa.fk_disciplina_id
join curso on obrigatoria_optativa.fk_curso_id = curso.id
where obrigatoria = false
) as r1,
(
select disciplina.nome as nome_da_disciplina, disciplina.codigo, curso.nome as nome_do_curso_onde_e_obrigatoria, obrigatoria_optativa.obrigatoria as optativa from disciplina
join obrigatoria_optativa on disciplina.id = obrigatoria_optativa.fk_disciplina_id
join curso on obrigatoria_optativa.fk_curso_id = curso.id
where obrigatoria = true
) as r2
where 
r1.obrigatoria <> r2.optativa 
and
r1.nome_da_disciplina = r2.nome_da_disciplina;