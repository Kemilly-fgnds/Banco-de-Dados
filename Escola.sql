CREATE DATABASE db_escola;

USE db_escola; 

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
RA INT,
medianota DECIMAL(3,1) NOT NULL,
frequenciaaulas VARCHAR(100) NOT NULL,
comportamento VARCHAR(100) NOT NULL
);

INSERT INTO tb_estudantes(nome,RA,medianota,frequenciaaulas,comportamento) 
VALUES ("Enzo",609,7.0,"80%","Bom"),
("Maria",580,10.0,"90%","Ótimo"),
("Paulo",650,9.3,"100%","Ruim"),
("Ana",450,8.0,"50%","Bom"),
("José",300,4.5,"90%","Ótimo"),
("Marcio",700,10.0,"100%","Bom"),
("Luciana",490,6.0,"75%","Regular"),
("Aline",759,8.5,"95%","Regular");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE medianota > 7.0;

SELECT * FROM tb_estudantes WHERE medianota < 7.0;

UPDATE tb_estudantes SET nome = "Cassio" WHERE id = 1;
UPDATE tb_estudantes SET RA = 520 WHERE id = 1;
UPDATE tb_estudantes SET medianota = 5.0 WHERE id = 1;
UPDATE tb_estudantes SET frequenciaaulas = "30%" WHERE id = 1;
UPDATE tb_estudantes SET comportamento = "Ótimo" WHERE id = 1;