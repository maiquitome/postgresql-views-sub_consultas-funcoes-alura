-- relatório de alunos que estão matriculados em mais cursos

-- ordenação pelo número de cursos

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

-- número de cursos que o aluno se matriculou
SELECT 
    a.primeiro_nome "Nome",
    a.ultimo_nome "Sobrenome",
	count(ac.curso_id) "Número de Cursos"
FROM
  	aluno a,
  	aluno_curso ac
WHERE
  	a.id = ac.aluno_id
GROUP BY
	1, 2
ORDER BY 
	count(ac.curso_id) DESC, 
	a.primeiro_nome ASC

-- alunos que estão matriculados em mais cursos
SELECT 
    a.primeiro_nome "Nome",
    a.ultimo_nome "Sobrenome",
	  count(ac.curso_id) "Número de Cursos"
FROM
  	aluno a,
  	aluno_curso ac
WHERE
  	a.id = ac.aluno_id
GROUP BY
	1, 2
HAVING 
	count(ac.curso_id) = (
		SELECT 
			count(ac.curso_id)
		FROM
		  	aluno a,
		  	aluno_curso ac
		WHERE
		  	a.id = ac.aluno_id
		GROUP BY
			a.primeiro_nome,
			a.ultimo_nome 
		ORDER BY 
			count(ac.curso_id) DESC
		LIMIT 1
	)
ORDER BY 
	count(ac.curso_id) DESC, 
	a.primeiro_nome ASC	
	
	
	
	
