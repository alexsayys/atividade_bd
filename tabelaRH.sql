## CRIAÇÃO E USO DO BANCO DE DADOS ##

create database bd_rh;

use bd_rh;

## CRIAÇÃO DE TABELAS ##

create table tb_colaborador (
		id bigint primary key auto_increment,
        nome varchar(50) not null,
        cargo varchar(50) not null,
        salario decimal not null,
        email varchar(50) not null
);

## INSERÇÃO DE DADOS ##

insert into tb_colaborador (nome, cargo, salario, email) values
('João Silva', 'Desenvolvedor Java', 5000.00, 'joao.silva@example.com'),
('Ana Souza', 'Desenvolvedora Front-end', 4500.00, 'ana.souza@example.com'),
('Pedro Santos', 'Analista de Sistemas', 6000.00, 'pedro.santos@example.com'),
('Lucas Mendes', 'Gerente de Projetos de TI', 8000.00, 'lucas.mendes@example.com'),
('Mariana Oliveira', 'Especialista em Segurança da Informação', 9000.00, 'mariana.oliveira@example.com'),
('Luciana Souza', 'Analista de Suporte Técnico', 1800.00, 'luciana.souza@example.com'),
('Paulo Rodrigues', 'Desenvolvedor PHP Júnior', 1900.00, 'paulo.rodrigues@example.com'),
('Maria Silva', 'Analista de Qualidade de Software', 2000.00, 'maria.silva@example.com'); 

## RETORNAR COLABORADORES COM SALÁRIO MAIOR QUE 2000 ##

SELECT * FROM tb_colaborador WHERE salario > 2000;

## RETORNA COLABORADORES COM SALÁRIOR MENOR OU IGUAL A 2000 ##

SELECT * FROM tb_colaborador WHERE salario <= 2000;

## ATUALIZA UM DADO ##

UPDATE tb_colaborador SET cargo = 'Desenvolvedor PHP Pleno', salario = 3000.00 where id = 7;


