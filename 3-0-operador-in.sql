SELECT * FROM curso;
SELECT * FROM categoria;

-- busca todos os cursos que estejam na categoria 1 ou na categoria 2
SELECT * FROM curso WHERE categoria_id = 1 OR categoria_id = 2;

-- mesmo resultado, mas usando IN
SELECT * FROM curso WHERE categoria_id IN (1, 2);