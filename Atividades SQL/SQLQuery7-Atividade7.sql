
	/* Atividade 7 */

/* Questão 1 */
--CREATE DATABASE BD_Teste

--USE master;
--GO
--DROP DATABASE BD_Teste
--GO

--CREATE DATABASE Exercicios

/* Questão 2 */
--USE Exercicios;

--CREATE Table dCliente( 
--	ID_Cliente INT PRIMARY KEY,
--	Nome_Cliente VARCHAR(100),
--	Data_de_Nascimento DATETIME
--	);

--CREATE Table dGerente (
--	ID_Gerente INT PRIMARY KEY,
--	Nome_Gerente VARCHAR(100),
--	Data_de_Contratacao DATETIME,
--	Salario FLOAT
--	);

--CREATE Table fContratos(
--	ID_Contrato INT PRIMARY KEY,
--	Data_de_Assinatura DATETIME,
--	ID_Cliente INT,
--	ID_Gerente INT,
--	Valor_do_Contrato FLOAT
--	);


/* Questão 3 */
--INSERT INTO dCliente(
--	ID_Cliente,
--	Nome_Cliente,
--	Data_de_Nascimento
--	)
--VALUES
--	(1,'André Martins','12-02-1969 00:00:00.000'),
--	(2,'Bárbara Campos','07-05-1992 00:00:00.000'),
--	(3,'Carol Freitas','23-04-1985 00:00:00.000'),
--	(4,'Diego Cardoso','11-10-1994 00:00:00.000'),
--	(5,'Eduardo Pereira','09-11-1988 00:00:00.000'),
--	(6,'Fabiana Silva','02-09-1989 00:00:00.000'),
--	(7,'Gustavo Barbosa','27-06-1993 00:00:00.000'),
--	(8,'Helen Viana','11-02-1990 00:00:00.000')

	
--INSERT INTO  dGerente (
--	ID_Gerente,
--	Nome_Gerente,
--	Data_de_Contratacao,
--	Salario 
--	)
--VALUES
--	(1,'Lucas Sampaio','21-03-2015 00:00:00.000',6700),
--	(2,'Mariana Padilha','10-01-2011 00:00:00.000',9900),
--	(3,'Nathália Santos','03-10-2018 00:00:00.000',7200),
--	(4,'Otávio Costa','18-04-2017 00:00:00.000',11000)

--INSERT INTO  fContratos(
--	ID_Contrato,
--	Data_de_Assinatura,
--	ID_Cliente,
--	ID_Gerente,
--	Valor_do_Contrato
--	)
--VALUES
--	(1,'12-01-2019 00:00:00.000',8,1,23000),
--	(2,'10-02-2019 00:00:00.000',3,2,15500),
--	(3,'07-03-2019 00:00:00.000',7,2,6500),
--	(4,'15-03-2019 00:00:00.000',1,3,33000),
--	(5,'21-03-2019 00:00:00.000',5,4,11100),
--	(6,'23-03-2019 00:00:00.000',4,2,5500),
--	(7,'28-03-2019 00:00:00.000',9,3,55000),
--	(8,'04-04-2019 00:00:00.000',2,1,31000),
--	(9,'05-04-2019 00:00:00.000',10,4,3400),
--	(10,'05-04-2019 00:00:00.000',6,2,9200)

/* Questão 4 */
--INSERT INTO dCliente(
--	ID_Cliente,
--	Nome_Cliente,
--	Data_de_Nascimento
--	)
--VALUES
--	(9,'Raimundo La coste ','01-12-1949 00:00:00.000')

--INSERT INTO  dGerente (
--	ID_Gerente,
--	Nome_Gerente,
--	Data_de_Contratacao,
--	Salario 
--	)
--VALUES
--	(5,'Anna Banana ','11-05-2010 00:00:00.000',12000)

--INSERT INTO  fContratos(
--	ID_Contrato,
--	Data_de_Assinatura,
--	ID_Cliente,
--	ID_Gerente,
--	Valor_do_Contrato
--	)
--VALUES
--	(11,'19-05-2019 00:00:00.000',9,5,42000)

/* Questão 5 */
--UPDATE fContratos
--SET
--	Data_de_Assinatura = '17/03/2019 00:00:00.000',
--	ID_Gerente = 2,
--	Valor_do_Contrato = 33500
--WHERE
--	ID_Contrato = 4

--/* Questão 6 */
--DELETE
--FROM fContratos
--WHERE ID_Contrato = 11