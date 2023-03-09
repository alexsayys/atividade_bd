CREATE DATABASE bd_generation_game_online;

USE bd_generation_game_online;

## CRIAÇÃO DE TABELAS E CHAVES ESTRANGEIRAS ##

CREATE TABLE tb_classes(
	id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(50) NOT NULL,
    raça VARCHAR(50) NOT NULL
);


CREATE TABLE tb_personagens(
	id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    inteligencia INT NOT NULL,
    carisma INT NOT NULL,
    id_classe BIGINT NOT NULL,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

## INSERÇÃO DE DADOS ##

INSERT INTO tb_classes (classe, raça)
VALUES
('Guerreiro', 'Humano'),
('Mago', 'Elfo'),
('Ladino', 'Anão'),
('Clérigo', 'Meio-Orc'),
('Druida', 'Gnomo');


INSERT INTO tb_personagens (nome, ataque, defesa, inteligencia, carisma, id_classe)
VALUES
  ('Clovis', 1500, 2500, 3000, 4000, 1),
  ('Penn', 2000, 3000, 2500, 3500, 1),
  ('Durblin', 3000, 3500, 2000, 3000, 2),
  ('Irua', 2500, 2000, 3500, 2500, 2),
  ('Mont Paw', 3500, 3000, 2500, 4000, 3),
  ('Sorcerer', 4000, 2500, 3000, 3500, 3),
  ('Mantra', 2500, 4000, 3500, 3000, 4),
  ('Numbia', 3000, 3500, 4000, 2500, 5);
  

## CONSULTAS ##

## Ataque maior que 2000
SELECT * FROM tb_personagens WHERE ataque > 2000; 

## Defesa no intervalo de 1000 a 2000
SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

## Todos os personagens que possuem a letra C no nome
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

## Unindo as tabelas
SELECT * 
FROM tb_classes
INNER JOIN tb_personagens
ON tb_classes.id_classe = tb_personagens.id_classe;

## Mostras todos os personagens de uma classe
SELECT tb_personagens.nome, tb_classes.classe, tb_classes.raça
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.id_classe = 2;



