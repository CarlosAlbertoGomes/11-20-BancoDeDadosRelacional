/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com 
as informações dos colaboradores desta empresa. 

Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

Insira nesta tabela no mínimo 5 dados (registros).

Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.

Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.

Ao término atualize um registro desta tabela através de uma query de atualização.

Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/

create database exercicio1;

use exercicio1;

create table rh(
id bigint not null auto_increment,
nome varchar(130),
salario decimal(6,2) not null,
cargo varchar (60) not null,
setor varchar (40),
primary key (id)
);

select * from rh;

insert into rh (nome, salario, cargo, setor)
values ("Carlos", 9000.00, "boss", "financeiro");

insert into rh (nome, salario, cargo, setor)
values ("João", 2000.00, "analista", "T.I.");

insert into rh (nome, salario, cargo, setor)
values ("Maria", 900.00, "faxineira", "loja física");

insert into rh (nome, salario, cargo, setor)
values ("Regina", 4000.00, "diretora", "produtos");

insert into rh (nome, salario, cargo, setor)
values ("Cassio", 5000.00, "analista", "T.I.");

select * from rh where salario > 2000;

select * from rh where salario < 2000;

update rh set nome = "Carlos Alberto Gomes" where id = 2; #precisa por "id = <valor>" onde estiver update por segurança);

