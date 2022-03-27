-- cursos que tiveram mais matriculas

-- verificando os dados
SELECT * FROM aluno LIMIT 10;
SELECT * FROM curso LIMIT 10;
SELECT * FROM aluno_curso LIMIT 10;

-- verficando o relacionamento
SELECT 
	*
FROM
  	aluno a,
  	aluno_curso ac,
  	curso c
WHERE
  	a.id = ac.aluno_id
AND 
  	c.id = ac.curso_id
ORDER BY 
	c.nome

-- número de alunos que cada curso tem
SELECT 
    c.nome "Curso",
	count(ac.aluno_id) "Número de Alunos"
FROM
  	curso c,
  	aluno_curso ac
WHERE
  	c.id = ac.curso_id
GROUP BY
	c.id
ORDER BY 
	count(ac.aluno_id) DESC, 
	c.nome ASC

-- cursos que mais tem matriculas
SELECT 
    c.nome "Curso",
	count(ac.aluno_id) "Número de Alunos"
FROM
  	curso c,
  	aluno_curso ac
WHERE
  	c.id = ac.curso_id
GROUP BY
	c.nome
HAVING 
	count(ac.aluno_id) = (
		SELECT 
			count(ac.aluno_id)
		FROM
		  	curso c,
		  	aluno_curso ac
		WHERE
		  	c.id = ac.curso_id
		GROUP BY
			c.id
		ORDER BY 
			count(ac.aluno_id) DESC
		LIMIT 
			1
	)
ORDER BY 
	count(ac.aluno_id) DESC, 
	c.nome ASC
