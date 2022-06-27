CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    categoria VARCHAR(50),
    setor VARCHAR(50),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    marca VARCHAR(50),
    utilidade VARCHAR(100),
    categorias_id BIGINT, 
    
    PRIMARY KEY(id),
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categoria, setor) VALUES("Tintas", "A1");
INSERT INTO tb_categorias(categoria, setor) VALUES("Decoração", "A2");
INSERT INTO tb_categorias(categoria, setor) VALUES("Ferramentas", "A3");
INSERT INTO tb_categorias(categoria, setor) VALUES("Paisagem", "A4");
INSERT INTO tb_categorias(categoria, setor) VALUES("Material de Construção", "Área Externa");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(1, "Tinta - Ciano", 120.00, "Suvunil", "Colorir Parede");
INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(2, "Abajur Pequeno", 89.98, "Casa Decor", "Iluminação de Pequenos Espaços");
INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(3, "Chave Phillips", 17.90, "Tramontina", "Difusão de Parafusos");
INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(4, "Samambaia", 199.90, "Uemora Plantas", "Decoração de Interiores e Jardins");
INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(5, "Cimento", 23.90, "Votoran", "Assentamento de Blocos");
INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(5, "Gesso", 17.00, "NP Gesso", "Fazer Toldos e Divisórias");
INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(1, "Tinta - Salmão", 120.00, "Coral", "Colorir Parede");
INSERT INTO tb_produtos(categorias_id, nome, preco, marca, utilidade) VALUES(3, "Mesa de Jantar", 350.00, "6F Decorações", "Realizar Alimentos e Decoração de Interior");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco >= 70.00 AND preco <=150.00;
SELECT * FROM tb_produtos WHERE preco >= 70.00 AND preco <=150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT tb_produtos.id, nome, preco, marca, utilidade, categoria, setor 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id;

SELECT tb_produtos.id, nome, preco, marca, utilidade, categoria, setor 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categorias_id
WHERE  categorias_id = 2;

