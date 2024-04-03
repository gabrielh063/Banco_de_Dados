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
	idcliente INT,
	idshow INT,
	idvendedor INT,
	CONSTRAINT fkClienteShow
	FOREIGN KEY (idcliente)
	REFERENCES cliente(idcliente),
	CONSTRAINT fkShowCliente
	FOREIGN KEY (idshow)
	REFERENCES showzao(idshow),
	CONSTRAINT fkvendedoringresso
	FOREIGN KEY (idvendedor)
	REFERENCES vendedor(idvendedor)
); 

CREATE TABLE showzao(
	idshow INT PRIMARY KEY,
	datashow DATE,
	horario TIME,
	nomeevento VARCHAR(50),
	valoringresson FLOAT 
);

CREATE TABLE artistashow (
	idartista INT,
	idshow INT,
	PRIMARY KEY (idshow, idartista),
	CONSTRAINT fkartistashow
	FOREIGN KEY (idshow)
	REFERENCES showzao(idshow),
	CONSTRAINT fkshowartista
	FOREIGN KEY (idartista)
	REFERENCES artista(idartista)
); 

CREATE TABLE artista (
	idartista INT PRIMARY KEY,
	nome VARCHAR(50),
	generomusical VARCHAR(50)
);
