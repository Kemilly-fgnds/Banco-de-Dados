CREATE DATABASE db_ecommerce;

USE db_ecommerce; 

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
quantidade INT,
categoria VARCHAR(255),
peso VARCHAR(100),
preco DECIMAL(8,2) NOT NULL
);

INSERT INTO tb_produtos(nome,quantidade,categoria,peso,preco) 
VALUES ("Televisão",300,"Eletrônicos","12kg",5000.00),
("Celular",500,"Eletrônicos","200g",3000.00),
("Vestido",150,"Vestuário","300g",300.00),
("Cobertor",50,"Casa","4kg",400.00),
("Caderno",90,"Papelaria","300g",50.00),
("Geladeira",30,"Eletrodomésticos","80kg",5000.00),
("Una Senses",15,"Perfumaria","300g",260.00),
("Coleira",70,"Pet","50g",90.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET nome = "Escova Secadora" WHERE id = 1;
UPDATE tb_produtos SET quantidade = 200 WHERE id = 1;
UPDATE tb_produtos SET categoria = "Eletrônicos" WHERE id = 1;
UPDATE tb_produtos SET peso = "600g" WHERE id = 1;
UPDATE tb_produtos SET preco = 200.00 WHERE id = 1;
