CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    turma VARCHAR(10),
    nota DECIMAL(3,1),
    materia VARCHAR(20),
    
    PRIMARY KEY(id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("João Vitor", "2ºB", 8.5, "História");
INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("Maria Joaquina", "2ºA", 9.8, "Matemática");
INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("Eduardo Silva", "2ºA", 10.0, "Português");
INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("Juliana Santiago", "2ºC", 6.5, "Português");
INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("Heloisa Moura", "2ºD", 8.9, "Inglês");
INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("Gustavo Gomes", "2ºC", 4.9, "Matemática");
INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("Matheus Oliveira", "2ºA", 3.0, "Fìsica");
INSERT INTO tb_estudantes(nome, turma, nota, materia) VALUES("Nicole Nascimento", "2ºD", 6.5, "Química");

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes
SET nome = "Pedro Santos", turma = "2ºE"
WHERE id = 4;