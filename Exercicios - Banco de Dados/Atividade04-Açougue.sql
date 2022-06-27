CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    animal VARCHAR(50),
    tipo_carne VARCHAR(100),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
    nome VARCHAR(50),
    preco_kg DECIMAL(10,2),
    qualidade VARCHAR(50),
    utilizado VARCHAR(200),
    categorias_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(animal, tipo_carne) VALUES("Boi", "Vermelha");
INSERT INTO tb_categorias(animal, tipo_carne) VALUES("Frango", "Branca");
INSERT INTO tb_categorias(animal, tipo_carne) VALUES("Peixe", "Branca");
INSERT INTO tb_categorias(animal, tipo_carne) VALUES("Cordeiro", "Vermelha");
INSERT INTO tb_categorias(animal, tipo_carne) VALUES("Porco", "Vermelha");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(2, "Sobrecoxa", 4.78, "Bom", "Churrasco");
INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(3, "Salmão", 74.90, "Excelente", "Sashimi");
INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(5, "Pernil Suíno", 31.91, "Ruim", "Assado");
INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(4, "Paleta de Cordeiro", 68.86, "Excelente", "Assada");
INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(1, "Contra Filé Bovino", 48.98, "Razoável", "Churrasco");
INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(2, "Peito de Frango", 15.49, "Bom", "Empanado");
INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(3, "Tilápia", 36.97, "Excelente", "Frito");
INSERT INTO tb_produtos(categorias_id, nome, preco_kg, qualidade, utilizado) VALUES(1, "Rabada Bovina", 29.00, "Razoável", "Cozido");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco_kg > 50.00;
SELECT * FROM tb_produtos WHERE preco_kg >= 20.00 AND preco_kg <= 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.id, nome, preco_kg, qualidade, utilizado, animal, tipo_carne 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT tb_produtos.id, nome, preco_kg, qualidade, utilizado, animal, tipo_carne 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id
WHERE animal = "Peixe";