CREATE DATABASE bd_pizzaria_legal;

USE bd_pizzaria_legal;

## CRIAÇÃO DE TABELAS ##

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo_pizza VARCHAR(50) NOT NULL,
    desricao TEXT NOT NULL
);

CREATE TABLE tb_pizza ( 
	id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL NOT NULL,
    descricao TEXT NOT NULL
);

INSERT INTO tb_pizza (tipo_pizza, descricao)
VALUES 
('Massa', 'Pizza de massa fina e crocante'),
('Vegetariana', 'Pizza com ingredientes apenas de origem vegetal'),
('Doce', 'Pizza com cobertura doce, como chocolate ou frutas'),
('Calzone', 'Pizza fechada em formato de pastel'),
('Gourmet', 'Pizza com ingredientes premium, como trufas ou queijos especiais');