-- categoria e numero_cursos 
SELECT 
	ca.nome AS "categoria",
	count(cu.id) AS numero_cursos
FROM
	categoria ca
JOIN
	curso cu ON cu.categoria_id = ca.id 
GROUP BY
	"categoria";


-- usando subquery
SELECT 
	categoria,
	numero_cursos
FROM
	(
		-- categoria e numero_cursos
		SELECT 
			ca.nome AS "categoria",
			count(cu.id) AS numero_cursos
		FROM
			categoria ca
		JOIN
			curso cu ON cu.categoria_id = ca.id 
		GROUP BY
			"categoria"
	) AS categoria_cursos
WHERE 
	numero_cursos > 3;

	
-- nesse caso, poderiamos ter usado o having
SELECT 
	ca.nome AS "categoria",
	count(cu.id) AS "numero_cursos"
FROM
	categoria ca
JOIN
	curso cu ON cu.categoria_id = ca.id 
GROUP BY
	"categoria"
HAVING 
	count(cu.id) > 3;