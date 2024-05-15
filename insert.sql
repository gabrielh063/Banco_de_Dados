create database colaboradores

use colaboradores

create table funcionarios(
	id int primary key auto_increment,
	nome varchar(50),
	idade int,
	genero char(1),
	cargo varchar(50),
	salario float
)

INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Ze',33,'M','Faxineiro',1500);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Maria',28,'F','Cozinheira',1700);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Pedro',30,'M','Secretário',1450);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Bill',25,'M','Sorveteiro',3000);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Ada',60,'F','Espiã',30000);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('João',30,'M','Vendedor',10000);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Tiago',40,'M','Vendedor',8000);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Jair',50,'M','Caminhoneiro',8000);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Zefa',80,'F','Aposentada',1500);
INSERT INTO funcionarios
(nome, idade, genero, cargo, salario)
VALUES('Teo',15,'M','Estagiário',800);

-- 1 
select nome, cargo, idade from funcionarios where idade >=18 or idade <=40
-- 2
select nome, cargo, salario from funcionarios where cargo = "vendedor" order by salario DESC 
-- 3
select nome,idade,salario from funcionarios where cargo = "caminhoneiro" or cargo = "cozinheira" or cargo = "sorveteiro" or cargo = "secretario" or cargo = "estagiario" >= 1000
-- 4
select nome,idade,cargo from funcionarios where cargo like "%eiro%" or cargo like "%eira"
-- 5
select nome,genero,cargo,salario from funcionarios where genero = "m" and salario >= 5000
-- 6
select nome, idade,genero, cargo,salario from funcionarios where idade >=18 and idade <=30 or salario >=1000 and salario <=5000

select * from funcionarios


