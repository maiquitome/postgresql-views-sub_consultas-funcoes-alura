SELECT * FROM curso;
SELECT * FROM categoria;

SELECT id FROM categoria WHERE nome NOT LIKE '% %';

SELECT * FROM curso WHERE categoria_id IN (1, 2);

-- todos os cursos que estão dentro de uma categoria que __não__ possuem espaço em branco
SELECT * FROM curso WHERE categoria_id IN (
  SELECT id FROM categoria WHERE nome NOT LIKE '% %'
);