--semestre
insert into semestre (id, fase) values (1, 'Primeira');
insert into semestre (id, fase) values (2, 'Segunda');
insert into semestre (id, fase) values (3, 'Terceira');
insert into semestre (id, fase) values (6, 'Sexta');

--disciplinas
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (1, 'Calculo 1', 'BLU6001', 1, 108);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (2, 'Introducao a informatica', 'BLU3101', 1, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (3, 'Calculo 2', 'BLU6004', 2, 108);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (4, 'Metodologia Eng Automação', 'BLU3706', 6, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (5, 'Metodologia Eng Têxtil', 'BLU1026', 6, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (6, 'Geometria Analitica', 'BLU6905', 1, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (7, 'Calculo 3', 'BLU6008', 3, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (8, 'Algoritmos', 'BLU3101', 2, 72);
insert into disciplina (id,nome,codigo,fk_semestre_id, carga_horaria) values (9, 'Tecnologias texteis', 'BLU4202', 6, 108);
insert into disciplina (id,nome,codigo,fk_semestre_id,carga_horaria) values (10, 'Apis responsivas','BLU9999',6,108);

--topicos
insert into topicos (id, descricao) values (1, 'Limites');
insert into topicos (id, descricao) values (2, 'Derivadas');
insert into topicos (id, descricao) values (3, 'Integrais');
insert into topicos (id, descricao) values (4, 'Fazer referencias');
insert into topicos (id, descricao) values (5, 'Aprender a usar MoreUFSC');
insert into topicos (id, descricao) values (6, 'Outro software para criar referencia');
insert into topicos (id, descricao) values (7, 'Matrizes');
insert into topicos (id, descricao) values (8, 'Node.js');

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
insert into ementa (fk_disciplina_id,fk_topicos_id) values (7, 3);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (6, 7);
insert into ementa (fk_disciplina_id,fk_topicos_id) values (10, 8);

--pre_requisito
insert into pre_requisito (fk_disciplina_id, fk_disciplina_id_) values (1,3);
insert into pre_requisito (fk_disciplina_id, fk_disciplina_id_) values (6,3);

--equivalente
insert into equivalente (fk_disciplina_id,fk_disciplina_id_) values (4, 5);

--curso
insert into curso (id, nome) values (1, 'Eng de Controle e Automação');
insert into curso (id, nome) values (2, 'Eng Textil');
insert into curso (id, nome) values (3, 'Eng Software');

--obrigatoria_optativa
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (1,1,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (1,2,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (2,1,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (2,2,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (3,1,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (3,2,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (4,1,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (5,2,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (6,1,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (6,2,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (7,1,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (7,2,FALSE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (8,1,TRUE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (8,2,FALSE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (9,1,FALSE);
insert into obrigatoria_optativa (fk_disciplina_id, fk_curso_id, obrigatoria) values (9,2,TRUE);

insert into pertence (fk_disciplina_id, fk_curso_id) values (1,1);
insert into pertence (fk_disciplina_id, fk_curso_id) values (1,2);
insert into pertence (fk_disciplina_id, fk_curso_id) values (2,1);
insert into pertence (fk_disciplina_id, fk_curso_id) values (2,2);
insert into pertence (fk_disciplina_id, fk_curso_id) values (3,1);
insert into pertence (fk_disciplina_id, fk_curso_id) values (3,2);
insert into pertence (fk_disciplina_id, fk_curso_id) values (4,1);
insert into pertence (fk_disciplina_id, fk_curso_id) values (5,2);
insert into pertence (fk_disciplina_id, fk_curso_id) values (6,1);
insert into pertence (fk_disciplina_id, fk_curso_id) values (6,2);
insert into pertence (fk_disciplina_id, fk_curso_id) values (7,1);
insert into pertence (fk_disciplina_id, fk_curso_id) values (8,1);
insert into pertence (fk_disciplina_id, fk_curso_id) values (8,3);
insert into pertence (fk_disciplina_id, fk_curso_id) values (10,3);
