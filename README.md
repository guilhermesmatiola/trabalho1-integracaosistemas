# trabalho1-integracaosistemas
Enunciado

*Modelar e implementar um banco de dados relacional que permita armazenar os dados das disciplinas de um curso. Os dados que devem ser armazenados são:
    -Código da disciplina, permitindo usar letras e números (ex.: BLU3024);
    -Fase da disciplina, indicando o semestre de formação em que prevê-se que a disciplina será cursada; 
    -Nome da disciplina, com, no máximo, 80 caracteres;
    -Ementa, que consiste em um conjunto de tópicos.  A descrição de cada tópico deve ter, no máximo, 80 caracteres;
    -Carga horária, representada através de um número inteiro que indica a quantidade de horas/aula da disciplina;
    -Pré-requsitos, sendo que uma disciplina pode ter nenhum pré-requisito, bem como pode ter um ou mais de um pré-requisitos;
    -Disciplinas equivalentes, sendo que uma disciplina pode não ter equivalentes, bem como pode ter um ou mais equivalentes;
    -Curso em que a disciplina é oferecida, sendo que uma disciplina pode ser oferecida em um ou mais cursos e, em cada curso, a disciplina pode ser obrigatória ou optativa.
*Arquivo texto com as seguintes consultas SQL:

    FEITA 1 Listar as disciplinas em ordem de código;

    FEITA  2 Listar as disciplinas em ordem alfabética;

    FEITA  3 Listar o código e o nome das disciplinas que incluem um determinado tópico em sua ementa. O tópico deve ser informado na consulta SQL.  Ex.: No curso de Engenharia de Controle e Automação descrito aqui, o tópico "Sistemas SCADA" faz parte das ementas das disciplinas BLU3403 e BLU3024. A consulta deve considerar parte do assunto. No exemplo anterior, uma pesquisa pelo tópico "SCADA" retornaria as  disciplinas BLU3403 e BLU3024.

    FEITA  4 Listar os nomes dos tópicos (itens da ementa) que são tratados em mais de uma disciplina.

    FEITA 5 Listar código e o nome das disciplinas que são pré-requisito para uma determinada disciplina, cujo código deve ser informado na consulta SQL.

    FEITA 6 Listar os tópicos presentes na ementa de uma disciplina, cujo código deve ser informado na consulta SQL, e que não estão presentes nas ementas das disciplinas equivalentes.
     
    FEITA  7 Listar o código e o nome de todas as disciplinas, bem como a estimativa de quantidade de horas dedicada a cada tópico previsto na ementa. Essa estimativa é obtida dividindo-se a quantidade de horas da disciplina pela quantidade de tópicos previstos na ementa. O resultado deve ser apresentado em ordem decrescente de horas/tópico e em ordem alfabética de disciplina (isto é, disciplinas com o mesmo valor hora/tópico devem aparecer em ordem alfabética). 
    
    *8 Um mesmo tópico pod e fazer parte da ementa de várias disciplinas. Deseja-se evitar, no entanto, que um mesmo tópico seja estudado em mais de uma discplina de um mesmo curso. Elaborar uma consulta que os cursos em que essa regra não é observada.

    FEITA 9 Listar todas as disciplinas que são obrigatórias em algum curso e, ao mesmo tempo, optativas em outro;

    FEITA 10 Listar todas as disciplinas que são optativas em um curso e, ao mesmo tempo, obrigatórias em outros.
