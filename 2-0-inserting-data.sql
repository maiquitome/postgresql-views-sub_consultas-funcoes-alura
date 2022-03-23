INSERT INTO  
  aluno (primeiro_nome, ultimo_nome, data_nascimento) 
VALUES 
  ('Vinicius', 'Dias', '1997-10-15'), 
  ('Patrícia', 'Freitas', '1996-10-25'), 
  ('Diogo', 'Oliveira', '1994-08-27'), 
  ('Maria', 'Rosa', '1985-01-01'),
  ('Maiqui', "Tomé", '1993-05-13');
  
INSERT INTO 
  categoria (nome) 
VALUES 
  ('Front-End'), 
  ('Programação'), 
  ('Banco de dados'), 
  ('Data Science');
  
INSERT INTO  
  curso (nome, categoria_id) 
VALUES
  ('HTML',1),
  ('CSS',1),
  ('JS',1),
  ('PHP',2),
  ('Java',2),
  ('C++',2),
  ('PostgreSQL',3),
  ('MySQL',3),
  ('Oracle',3),
  ('SQL Server',3),
  ('SQLite',3),
  ('Pandas',4),
  ('Machine Learning',4),
  ('Power BI',4);
 
-- quando informar valores para todos os campos,
-- não precisa informar o nome dos campos. 
INSERT INTO 
  aluno_curso 
VALUES 
  (1,4), (1,11), (2,1), (2,2), (2,3), (3,4), (3,3), (4,4), (4,6), (4,5);