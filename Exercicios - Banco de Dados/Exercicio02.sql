CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
	tipo VARCHAR(50),
    preco DECIMAL(10,2),
    marca VARCHAR(50),
    cor VARCHAR(50),
    
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Geladeira", 3299.90, "Brastemp", "Preta");
INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Liquidificador", 219.90, "Philco", "Branco");
INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Fogão", 1999.90, "Electrolux", "Vermelho");
INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Aspirador de Pó", 789.90, "Mundial", "Branco");
INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Barbeador Elétrico", 119.90, "Phillips", "Azul");
INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Smart TV", 4599.90, "Samsung", "Preto");
INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Smartphone", 6000.00, "Samsung", "Prateado");
INSERT INTO tb_produtos(tipo, preco, marca, cor) VALUES("Fone Bluetooth", 250.00, "JBL", "Vermelho");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500.00; 
SELECT * FROM tb_produtos WHERE preco < 500.00; 

UPDATE tb_produtos
SET marca = "Motorola", preco = 3199.90, cor = "Branco"
WHERE id = 7;