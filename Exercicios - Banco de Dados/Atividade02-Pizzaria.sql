CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT auto_increment,
    tamanho VARCHAR(20),
    gosto VARCHAR(30),
    tipo VARCHAR(30),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
	id BIGINT auto_increment,
	sabor VARCHAR(255),
    descricao VARCHAR(255),
	borda VARCHAR(50),
    massa VARCHAR(20),
	onde VARCHAR(20),
    preco DECIMAL(4.2),
    categorias_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Pequena", "Salgada", "Normal");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Média", "Salgada", "Normal");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Grande", "Salgada", "Normal");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Pequena", "Doce", "Normal");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Média", "Doce", "Normal");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Grande", "Doce", "Normal");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Média", "Salgada", "Vegana");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Grande", "Salgada", "Vegana");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Média", "Doce", "Vegana");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Grande", "Doce", "Vegana");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Média", "Salgada", "Vegetariana");
INSERT INTO tb_categorias(tamanho, gosto, tipo) VALUES("Grande", "Salgada", "Vegetariana");

INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco,onde) VALUES(3, "Calabresa", "Molho de Tomate, Calabresa, Cebola e Orégano", "Cheddar", "Fina", 35.00, "Viagem");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(2, "Portuguesa", "Molho de Tomate, Cebola, Ervilha, Azeitona, Ovos, Queijo, Calabresa e Orégano", "Catupiry", "Grossa", 40.00, "Viagem");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(1, "Marguerita", "Molho de Tomate, Mussarela, Tomates, Manjericão, Orégano e Azeite", "Sem Recheio", "Grossa", 35.00, "No Local");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(4, "Romeu e Julieta", "Goiabada, Mussarela e Canela-da-China", "Chocolate", "Fina", 40.00, "No Local");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(6, "Prestígio", "Mussarela, Chocolate Prestígio, Chocolate ao leite", "Catupiry", "Fina", 45.00, "Viagem");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(5, "Ganache com Rum", "Ganache, Rum e Manjericão", "Sem Recheio", "Grossa", 50.00, "Viagem");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(8, "Suprema", "Molho de Tomate, Alcachofra, Provolone de Castanha NOVAH, Azeitona e Cream Germinou.", "Creme de Mandioca", "Grossa", 55.00, "No Local");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(7, "Oriental", "Molho de Tomate, Mix de Shitake e Shimeji, Gergelim Branco, Cream Germinou e Pimenta Biquinho,", "Catupiry Vegetal", "Grossa", 55.00, "Viagem");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(10, "Choco Cream", "Chocolate Vegano, Castanhas e Cerejas", "Sem Recheio", "Fina", 60.00, "No Local");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(9, "Baunilha", "Baunilha Vegana, Castanhas e Cerejas", "Sem Recheio", "Grossa", 60.00, "Viagem");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(12, "Brócolis com Catupiry", "Brócolis, Mussarela, Catupiry, Orégano, Azeite de Oliva", "Catupiry", "Fina", 45.00, "Viagem");
INSERT INTO tb_pizzas(categorias_id, sabor, descricao, borda, massa, preco, onde) VALUES(11, "Rúcula com Mussarela", "Rúcula, Mussarela, Molho de Tomate, Orégano", "Sem Recheio", "Fina", 40.00, "Viagem");

SELECT * FROM tb_pizzas;
SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT tb_pizzas.id, tamanho, gosto, tipo, sabor, descricao, borda, massa, preco, onde
FROM  tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT tb_pizzas.id, tamanho, gosto, tipo, sabor, descricao, borda, massa, preco, onde
FROM  tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categorias_id
WHERE gosto = "salgada";