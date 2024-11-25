CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
sabor VARCHAR(255),
quantidade INT,
preco DECIMAL(6,2)
);

ALTER TABLE tb_pizzas ADD categoriaid BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias(tamanho,descricao) 
VALUES ("broto", "vegetariana"),
("grande","tradicional"),
("broto","tradicional"),
("grande","vegana"),
("broto","vegana"),
("grande","vegetariana");

INSERT INTO tb_pizzas(nome,sabor,quantidade,preco) 
VALUES ("frangoCatupiry", "salgada",5,49.00),
("calabresa", "salgada",3,47.50),
("escarola", "salgada",8,43.00),
("portuguesa", "salgada",12,52.00),
("marguerita", "salgada",2,44.00),
("chocolate", "doce",10,60.00),
("paçoca", "doce",1,70.00),
("m&m", "doce",9,60.00);

UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 1;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 2;
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 3;
UPDATE tb_pizzas SET categoriaid = 2 WHERE id = 4;
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 5;
UPDATE tb_pizzas SET categoriaid = 5 WHERE id = 6;
UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 7;
UPDATE tb_pizzas SET categoriaid = 1 WHERE id = 8;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT p.*
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoriaid = c.id
WHERE p.sabor = 'doce';





