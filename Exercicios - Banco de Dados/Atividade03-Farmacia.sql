CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    precisa_receita VARCHAR(20),
    funcao VARCHAR(50),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    jeito_usar VARCHAR(50),
    uso_infantil VARCHAR(5),
    categorias_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(precisa_receita, funcao) VALUES("Não", "Polivitamínico");
INSERT INTO tb_categorias(precisa_receita, funcao) VALUES("Não", "Anti-Inflamatório");
INSERT INTO tb_categorias(precisa_receita, funcao) VALUES("Sim", "Anabolizantes");
INSERT INTO tb_categorias(precisa_receita, funcao) VALUES("Não", "Utensílios de Higiene");
INSERT INTO tb_categorias(precisa_receita, funcao) VALUES("Sim", "Contraceptivos");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(1, "NutriKids", 71.50, "Uso Oral", "Sim");
INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(2, "Paracetamol", 11.99, "Uso Oral", "Sim");
INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(3, "Durateston", 118.99, "Uso Intravenoso", "Não");
INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(4, "Cotonete", 4.49, "Uso Higienico", "Sim");
INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(5, "Subcutâneo", 2500.00, "Uso Intravenoso", "Não");
INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(5, "Mirena", 800.00, "Uso Intrauterino", "Não");
INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(2, "Dipirona", 2.99, "Uso Oral", "Sim");
INSERT INTO tb_produtos(categorias_id, nome, preco, jeito_usar, uso_infantil) VALUES(3, "Deposteron", 58.26, "Uso Intravenoso", "Não");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco >= 5.00 AND preco <= 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT tb_produtos.id, nome, preco, jeito_usar, uso_infantil, precisa_receita, funcao 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT tb_produtos.id, nome, preco, jeito_usar, uso_infantil, precisa_receita, funcao 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id
WHERE categorias_id = 3;