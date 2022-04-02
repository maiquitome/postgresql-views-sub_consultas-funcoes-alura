SELECT NOW(); -- 2022-04-02 20:06:00.456 -0300

SELECT NOW()::DATE; -- 2022-04-02

SELECT
	primeiro_nome, -- Maiqui
	NOW()::DATE - data_nascimento "Dias", -- 10551
	(NOW()::DATE - data_nascimento) / 365 "Anos", -- 28
	AGE(data_nascimento) "Idade Detalhada", -- 28 years 10 mons 20 days
	EXTRACT(YEAR FROM AGE(data_nascimento)) "Anos usando extract e age" -- 28
FROM
	aluno;
	
-- documentação:
-- https://www.postgresql.org/docs/9.1/functions-datetime.html