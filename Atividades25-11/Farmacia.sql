CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
remedio VARCHAR (255) NOT NULL,
autoCuidado VARCHAR (255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
quantidade INT,
dataValidade DATE, 
preco DECIMAL(6,2)
);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(remedio,autoCuidado) 
VALUES ("Antiinflamatorio", "Não"),
("Antitermico", "Não"),
("Não", "Suplemento"),
("Não", "Beleza"),
("Antibiotico", "Não");

INSERT INTO tb_produtos(nome,quantidade,dataValidade,preco) 
VALUES ("Dipirona",5,"2025-12-30",10.50),
("VitaminaCabeloeUnhas",3,"2027-04-18",45.00),
("Paracetamol",7,"2026-08-02",15.00),
("ProtetorSolar",2,"2028-10-28",60.00),
("Azitromicina",9,"2030-06-04",10.50),
("SérumVitaminaC",1,"2026-03-09",80.00),
("Advil",12,"2028-09-22",4.00),
("Cefalexina",3,"2027-08-15",16.00);

UPDATE tb_produtos SET categoriaid = 2 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 8;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT p.*
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoriaid = c.id
WHERE c.autoCuidado = 'beleza';
