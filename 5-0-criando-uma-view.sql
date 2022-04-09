CREATE OR REPLACE VIEW vw_cursos_por_categoria AS 
	SELECT 
		categoria.nome categoria,
		count(curso.id) numero_cursos
	FROM
		categoria,
		curso
	WHERE 
		curso.categoria_id = categoria.id
	GROUP BY 
		categoria;
		
SELECT * FROM vw_cursos_por_categoria;

SELECT categoria FROM vw_cursos_por_categoria WHERE numero_cursos > 3; -- PERFORMANCE LENTAAAA - dois selects aplicados

SELECT
  categoria.id,
  vw_cursos_por_categoria.*
FROM vw_cursos_por_categoria
JOIN categoria ON categoria.nome = vw_cursos_por_categoria.categoria;