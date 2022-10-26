--semestre
insert into semestre (id, fase) values (1, 'Primeira');
insert into semestre (id, fase) values (2, 'Segunda');

--disciplinas
insert into disciplina (id,nome,codigo,fk_semestre_id) values (1, 'Calculo 1', 'BLU6001', 1);
insert into disciplina (id,nome,codigo,fk_semestre_id) values (2, 'Introducao a informatica', 'BLU3101', 1);