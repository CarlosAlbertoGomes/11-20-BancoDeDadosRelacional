/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes
 deste registro dessa escola. 
 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes 
dos estudantes para se trabalhar com o serviço dessa escola.

Insira nesta tabela no mínimo 8 dados (registros).

Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

Ao término atualize um registro desta tabela através de uma query de atualização.

Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/

CREATE DATABASE db_escola; 

USE db_escola; 

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(200),
    data_nascimento date,
    turma int,
    nota decimal(6,2),
    primary key (id)
);

INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Clécia Rodrigues", "1961-12-03", 1, 8.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Acácio Gil", "1959-01-21", 2, 10.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Márcio Araújo", "1982-01-12", 5, 5.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Carlos Albuquerque", "1988-01-25", 10, 8.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Amélia Lins", "1960-06-30", 6, 9.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Natália Bia", "1951-03-22", 3, 5.00);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Adolfo Cura", "2000-07-30", 1, 6.50);
INSERT INTO tb_estudantes (nome, data_nascimento, turma, nota) VALUES ("Bianca Rude", "1959-09-18", 12, 7.00);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;

UPDATE tb_estudantes SET nota = 6.50 WHERE id = 8;
