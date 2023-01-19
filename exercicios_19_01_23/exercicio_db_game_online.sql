CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT AUTO_INCREMENT,
nome VARCHAR(120),

PRIMARY KEY (id));

INSERT INTO tb_classes(nome) VALUES("Arqueiro");

INSERT INTO tb_classes(nome) VALUES("Guerreiro");

INSERT INTO tb_classes(nome) VALUES("Mago");

INSERT INTO tb_classes(nome) VALUES("Assassino");

INSERT INTO tb_classes(nome) VALUES("Feiticeiro");

CREATE TABLE tb_personagens( 
id bigint AUTO_INCREMENT,
nome VARCHAR(150),
poder_ataque INT,
poder_defesa INT,
agilidade INT,
classes_id INT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Alfie", 1300, 1500, 650);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Glommer", 2500, 3000, 950);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Willow", 2100, 1000, 300);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Betsy", 4000, 3500, 900);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Pantro", 5000, 5000, 1000);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Shitara", 4500, 4300, 950);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Cliff", 3300, 3000, 790);

INSERT INTO tb_personagens(nome, poder_ataque, poder_defesa, agilidade) VALUES("Moon", 2100, 1800, 620);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

UPDATE tb_personagens SET classes_id = 5  WHERE id=1;
UPDATE tb_personagens SET classes_id = 5  WHERE id=2;
UPDATE tb_personagens SET classes_id = 3  WHERE id=3;
UPDATE tb_personagens SET classes_id = 1  WHERE id=4;
UPDATE tb_personagens SET classes_id = 2  WHERE id=5;
UPDATE tb_personagens SET classes_id = 3  WHERE id=6;
UPDATE tb_personagens SET classes_id = 3  WHERE id=7;
UPDATE tb_personagens SET classes_id = 1  WHERE id=8;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000 ORDER BY agilidade DESC;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

UPDATE tb_personagens SET classes_id = 4  WHERE id=4;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;











