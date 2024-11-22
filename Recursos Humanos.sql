CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos; 

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
CPF CHAR(11) NOT NULL,
cargo varchar(200),
dataregistro DATE,
salario DECIMAL (8,2) NOT NULL
);

INSERT INTO tb_colaboradores(nome,CPF,cargo,dataregistro,salario) 
VALUES ("Alice","18495748329","Analista de Recursos Humanos","2023-08-28",3000.00),
("Mariano","13648968453","Gerente","2020-05-14",8000.00),
("Paula","29584637909","Diretora","2015-01-24",15000.00),
("Fabio","97475869704","Ajudante Geral","2024-11-05",1500.00),
("Rafaela","98573849594","Auxiliar de Escritório","2021-06-12",1600.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET nome = "Daniela" WHERE id = 1;
UPDATE tb_colaboradores SET CPF = "28473849574" WHERE id = 1;
UPDATE tb_colaboradores SET cargo = "Desenvolvedora FullStack" WHERE id = 1;
UPDATE tb_colaboradores SET dataregistro = "2025-02-28" WHERE id = 1;
UPDATE tb_colaboradores SET salario = 7000.00 WHERE id = 1;



