CREATE DATABASE showzao;

USE showzao;

CREATE TABLE cliente(
	idcliente INT PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE vendedor(
	idvendedor INT PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE ingresso(
	numero INT PRIMARY KEY,
	CONSTRAINT fkClienteShow
	FOREIGN KEY idcliente
	REFERENCES cliente(idcliente),
	CONSTRAINT fkShowCliente
	FOREIGN KEY idshow
	REFERENCES showzao(idshow)
); 

CREATE TABLE showzao(
	idshow INT PRIMARY KEY,
	datashow DATA,
	horario TIME,
	nomeevento VARCHAR(50),
	valoringresson VARCHAR(50)
);

CREATE TABLE artistashow (
	idartistashow INT PRIMARY KEY,
	CONSTRAINT fkartistashow,
	FOREIGN KEY idshow
	REFERENCES showzao(idshow)
); 

CREATE TABLE artista (
	idartista INT PRIMARY KEY,
	nome VARCHAR(50),
	generomusical VARCHAR(50)
);