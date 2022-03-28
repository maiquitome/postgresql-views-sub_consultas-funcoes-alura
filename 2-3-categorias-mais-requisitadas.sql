-- verificando os dados
SELECT * FROM aluno LIMIT 10;
SELECT * FROM curso LIMIT 10;
SELECT * FROM categoria LIMIT 10;
SELECT * FROM aluno_curso LIMIT 10;

-- verficando o relacionamento
SELECT 
	*
FROM
  aluno a,
  aluno_curso ac,
  curso c,
  categoria ca
WHERE
  a.id = ac.aluno_id
AND 
  c.id = ac.curso_id
AND 
	ca.id = c.categoria_id
ORDER BY 
	c.nome

-- número de alunos que cada categoria tem
SELECT 
  ca.nome "Categoria",
	count(ac.aluno_id) "Número de Alunos"
FROM
  categoria ca,
  curso c,
  aluno_curso ac
WHERE
  c.id = ac.curso_id
AND 
	ca.id = c.categoria_id 
GROUP BY
	ca.id
ORDER BY 
	count(ac.aluno_id) DESC, 
	ca.nome ASC

-- categorias que mais tem matriculas
SELECT 
  ca.nome "Categoria",
	count(ac.aluno_id) "Número de Alunos"
FROM
	categoria ca,
  curso c,
  aluno_curso ac
WHERE
  	c.id = ac.curso_id
AND 
	ca.id = c.categoria_id 
GROUP BY
	ca.id
HAVING 
	count(ac.aluno_id) = (
		SELECT 
			count(ac.aluno_id)
		FROM
      categoria ca,
      curso c,
      aluno_curso ac
		WHERE
		  c.id = ac.curso_id
		AND 
			ca.id = c.categoria_id 
		GROUP BY
			ca.id
		ORDER BY 
			count(ac.aluno_id) DESC
		LIMIT 
			1
	)
ORDER BY 
	count(ac.aluno_id) DESC, 
	ca.nome ASC
	
	
	
	