CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT auto_increment,
    dano VARCHAR(20),
    vida_base INT,
    funcao_recom VARCHAR(50),
    nome_classes VARCHAR(255),
	PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
	id BIGINT auto_increment,
    ataque VARCHAR(20),
    dano_ataque INT,
    relacao VARCHAR(50),
    defesa INT,
    nome VARCHAR(50),
    funcao VARCHAR(20),
    classes_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(classes_id) REFERENCES tb_classes(id)
);
    
INSERT INTO tb_classes(nome_classes, dano, vida_base, funcao_recom) VALUES("Mago", "Mágico", 10000, "Meio");
INSERT INTO tb_classes(nome_classes, dano, vida_base, funcao_recom) VALUES("Atirador", "Físico", 9200, "Adc");
INSERT INTO tb_classes(nome_classes, dano, vida_base, funcao_recom) VALUES("Guerreiro", "Físico", 13000, "Top/Jungle");
INSERT INTO tb_classes(nome_classes, dano, vida_base, funcao_recom) VALUES("Necromante", "Mágico", 10500, "Sup/Mid" );
INSERT INTO tb_classes(nome_classes, dano, vida_base, funcao_recom) VALUES("Paladino", "Físico/Mágico", 11300, "Jungle");

INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Ranged", 1900, "Cerberus e Baptiste", 1800, "Klaus", "Suporte", 4);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Melee", 1850, "Glaive e Baptiste", 2300,  "Brutus", "Tanque", 3);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id)
	VALUES("Ranged", 2100, "Cerberus e Lorelai", 1200, "Vitory", "Carregador", 2);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Ranged", 2400, "Samuel", 1250, "Magnus", "Carregador", 1);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Melee", 2100, "Brutus e Lorelai", 1700, "Glaive", "Lutador", 5);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Melee", 1600, "Klaus e Vitory", 2100, "Cerberus", "Suporte/Tanque", 4);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Ranged", 2300, "Brutus e Klaus", 1700, "Baptiste", "Lutador/Carregador", 2);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Ranged", 2500, "Vitory e Glaive", 900,  "Lorelai", "Suporte/Carregador", 1);
INSERT INTO tb_personagens(ataque, dano_ataque, relacao, defesa, nome, funcao, classes_id) 
	VALUES("Melee", 2200, "Magnus", 1400, "Samuel", "Jungle/Mid",5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens
WHERE dano_ataque > 2000;

SELECT * FROM tb_personagens
WHERE defesa > 1000
AND defesa < 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE "%c%";

SELECT ataque, dano_ataque, relacao, defesa, nome, funcao, dano, vida_base, funcao_recom, nome_classes
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id;

SELECT ataque, dano_ataque, relacao, defesa, nome, funcao, dano, vida_base, funcao_recom, nome_classes
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classes_id
WHERE classes_id = 5; 
