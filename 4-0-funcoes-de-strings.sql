SELECT (a.primeiro_nome || ' ' || a.ultimo_nome) AS "Nome Completo" FROM aluno a;

SELECT 'Maiqui' || ' ' || NULL; -- retorna NULL

SELECT concat('Maiqui', ' ', NULL); -- retorna 'Maiqui '

SELECT concat('Maiqui', NULL, 'Tomé'); -- retorna 'MaiquiTomé'

SELECT trim(upper(concat('Maiqui', ' ', 'Tomé')) || ' '); -- retorna 'MAIQUI TOMÉ'

-- todas as funções:
-- https://www.postgresql.org/docs/9.1/functions-string.html