/*Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 

Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.

Insira nesta tabela no mínimo 8 dados (registros).

Faça um SELECT que retorne todes os produtos com o valor maior do que 500.

Faça um SELECT que retorne todes os produtos com o valor menor do que 500.

Ao término atualize um registro desta tabela através de uma query de atualização.

Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(150),
    genero varchar(10),
    categoria varchar(100),
    preco decimal(7,2),
    primary key (id)
);

INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("blusa de frio", "feminino", "blusa", 80.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("calça jeans", "masculino", "calça", 510.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("calça moleton", "masculino", "moleton", 130.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("camisa polo", "masculino", "polo", 70.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("vestido curto", "feminino", "vestido", 550.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("biquini estampado", "feminino", "biquini", 30.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("camiseta básica", "unisex", "camiseta", 80.00);
INSERT INTO tb_produtos (nome, genero, categoria, preco) VALUES ("bota de couro", "masculino", "calçado", 250.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 350.00 WHERE id = 5;