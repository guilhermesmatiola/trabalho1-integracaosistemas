--semestre
insert into semestre (id, fase) values (1, 'Primeira');
insert into semestre (id, fase) values (2, 'Segunda');
insert into semestre (id, fase) values (6, 'Sexta');

--disciplinas
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (1, 'Calculo 1', 'BLU6001', 1, 108);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (2, 'Introducao a informatica', 'BLU3101', 1, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (3, 'Calculo 2', 'BLU6004', 2, 108);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (4, 'Metodologia Eng Automação', 'BLU3706', 6, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (5, 'Metodologia Eng Têxtil', 'BLU1026', 6, 72);

--topicos
insert into topicos (id, descricao) values (1, 'Limites');
insert into topicos (id, descricao) values (2, 'Derivadas');
insert into topicos (id, descricao) values (3, 'Integrais');
insert into topicos (id, descricao) values (4, 'Fazer referencias');
insert into topicos (id, descricao) values (5, 'Aprender a usar MoreUFSC');
insert into topicos (id, descricao) values (6, 'Outro software para criar referencia');

--ementa
insert into ementa (fk_disciplina_id,fk_topicos_id) values (1, 1);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (1, 2);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (1, 3);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (3, 2);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (3, 3);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (4, 4);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (4, 5);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (4, 6);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (5, 4);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (5, 5);

--pre_requisito
insert into pre_requisito (fk_disciplina_id, fk_disciplina_id_) values (1,3)

--equivalente
insert into equivalente (fk_disciplina_id,fk_disciplina_id_) values (4, 5);



