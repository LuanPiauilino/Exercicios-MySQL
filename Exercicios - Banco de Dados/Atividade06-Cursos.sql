CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
	nivel VARCHAR(20),
    area VARCHAR(50),
    especializacao VARCHAR(100),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_cursos(
	id BIGINT auto_increment,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    duracao_hora INT,
    empresa VARCHAR(100),
    categorias_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);
    
INSERT INTO tb_categorias(nivel, area, especializacao) VALUES("Iniciante", "Tecnologia", "Java");
INSERT INTO tb_categorias(nivel, area, especializacao) VALUES("Avançado", "Administração", "Logística");
INSERT INTO tb_categorias(nivel, area, especializacao) VALUES("Intermediário", "Educação Física", "Personal Trainer");
INSERT INTO tb_categorias(nivel, area, especializacao) VALUES("Avançado", "Fisioterapia", "Quiropraxia");
INSERT INTO tb_categorias(nivel, area, especializacao) VALUES("Intermediário", "Educação", "Redação");

SELECT * FROM tb_categorias;

INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(1, "Introdução ao Java", 120.00, 8, "Alura");
INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(2, "Conceitos Avançados de Logísticas", 2000.00, 36, "Senac");
INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(3, "Anatomia do Corpo nos Principais Exercicios Aeróbico", 1500.00, 360,  "Senai");
INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(4, "Curso de Quiropraxia Completo", 3500.00, 600, "Fisionet");
INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(5, "Como Melhorar sua Redação?", 250.00, 10, "Descomplica");
INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(5, "Ortografia nas Redações", 100.00, 6, "AlfaCon");
INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(1, "Introdução ao Eclipse", 120.00, 8, "Rocketseat");
INSERT INTO tb_cursos(categorias_id, nome, preco, duracao_hora, empresa) VALUES(2, "Lógistica do Zero ao Avançado", 4000.00, 720, "Udemy");

SELECT * FROM tb_cursos;
SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco >=600.00 AND preco <= 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT tb_cursos.id, nome, preco, duracao_hora, empresa, nivel, area, especializacao
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categorias_id;

SELECT tb_cursos.id, nome, preco, duracao_hora, empresa, nivel, area, especializacao
FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.id = tb_cursos.categorias_id
WHERE categorias_id = 5;

