CREATe TABLE disciplina (
	id INTEGER PRIMARY KEY,
	nome VARCHAR,
	codigo VARCHAR, 
	fk_semestre_id INTEGER
);

CREATe TABLE semestre (
	id INTEGER PRIMARY KEY,
	fase VARCHAR
);

CREATe TABLE topicos (
 	id INTEGER PRIMARY KEY,
	descricao VARCHAR
);

CREATe TABLE curso (
	id INTEGER PRIMARY KEY,
	nome VARCHAR
);

CREATe TABLE pre_requisito (
	fk_disciplina_id INTEGER,
	fk_disciplina_id_ INTEGER
);

CREATe TABLE equivalente (
	fk_disciplina_id INTEGER,
	fk_disciplina_id_ INTEGER
);

CREATe TABLE ementa (
	fk_disciplina_id INTEGER, 
	fk_topicos_id INTEGER
);

CREATe TABLE pertence ( 
	fk_disciplina_id INTEGER,
 	fk_curso_id INTEGER
 );

ALTEr TABLE disciplina ADD CONSTRAINT FK_disciplina_2
FOREIGN KEY (fk_semestre_id)
REFERENCES semestre (id)
ON DELETE RESTRICT;

ALTEr TABLE pre_requisito ADD CONSTRAINT FK_pre_requisito_1
FOREIGN KEY (fk_disciplina_id)
REFERENCES disciplina (id)
ON DELETE CASCADE;

ALTEr TABLE pre_requisito ADD CONSTRAINT FK_pre_requisito_2
FOREIGN KEY (fk_disciplina_id_)
REFERENCES disciplina (id)
ON DELETE CASCADE;

ALTEr TABLE equivalente ADD CONSTRAINT FK_equivalente_1
FOREIGN KEY (fk_disciplina_id)
REFERENCES disciplina (id)
ON DELETE CASCADE;

ALTEr TABLE equivalente ADD CONSTRAINT FK_equivalente_2
FOREIGN KEY (fk_disciplina_id_)
REFERENCES disciplina (id)
ON DELETE CASCADE;

ALTEr TABLE ementa ADD CONSTRAINT FK_ementa_1
FOREIGN KEY (Fk_disciplina_id)
REFERENCES disciplina (id)
ON DELETE RESTRICT;

ALTEr TABLE ementa ADD CONSTRAINT FK_ementa_2
FOREIGN KEY (fk_topicos_id)
REFERENCES topicos (id)
ON DELETE RESTRICT;

ALTEr TABLE pertence ADD CONSTRAINT FK_pertence_
FOREIGN KEY (fk_disciplina_id)
REFERENCES disciplina (id)
ON DELETE RESTRICT;

ALTEr TABLE pertence ADD CONSTRAINT FK_pertence_2
FOREIGN KEY (fk_curso_id)
REFERENCES curso (id)
ON DELETE RESTRICT;

ALTER TABLE disciplina ADD carga_horaria varchar(10);