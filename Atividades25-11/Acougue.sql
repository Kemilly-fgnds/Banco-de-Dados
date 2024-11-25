CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipodeCorte VARCHAR (255) NOT NULL,
tipodeCarne VARCHAR (255) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
peso VARCHAR(255),
dataValidade DATE, 
preco DECIMAL(6,2)
);

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(tipodeCorte,tipodeCarne) 
VALUES ("CarneDeChurrasco", "Bovina"),
("File", "Suino"),
("CarneDePanela", "Bovina"),
("CarneMoída", "Bovina"),
("File", "Ave");

INSERT INTO tb_produtos(nome,peso,dataValidade,preco) 
VALUES ("ContraFile","2kg", "2024-12-02",60.00),
("PeitoDeFrango","5kg", "2024-12-02",35.00),
("Patinho","1kg", "2024-12-02",48.00),
("Bisteca","10kg", "2024-12-02",40.00),
("CoxaoMole","7kg", "2024-12-02",52.00),
("Pernil","4kg", "2024-12-02",38.00),
("CoxaoDuro","8kg", "2024-12-02",47.00),
("Maminha","6kg", "2024-12-02",50.00);

UPDATE tb_produtos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 8;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

SELECT p.*
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoriaid = c.id
WHERE c.tipodeCarne = 'Bovina';

