	/* Atividade 1*/

/* Questão 1 */
/* Sem Defasagem */
--SELECT 
--	ProductKey,
--	ProductName
--FROM DimProduct

/* Questão 2 */
/* Queda no número de clientes */
--SELECT
--	CustomerKey AS IDCliente,
--	FirstName AS PrimeiroNome,
--	BirthDate AS Nascimento,
--	EmailAddress AS Email
--FROM DimCustomer 

/* Questão 3 a,c,d */
--SELECT TOP(100) 
--	FirstName AS PrimeiroNome,
--	EmailAddress AS Email, 
--	BirthDate AS DataNascimento
--FROM DimCustomer

/* Questão 3 b */
--SELECT TOP(20) PERCENT 
-- *
--FROM DimCustomer

/* Questão 4 */
--SELECT DISTINCT
--	Manufacturer AS Fornecedores
--FROM DimProduct

/* Questão 5 */
/* 1 produto não foi vendido */
--SELECT DISTINCT 
--	ProductKey	
--FROM DimProduct

--SELECT DISTINCT 
--	ProductKey
--FROM FactSales
--ORDER BY 
--	ProductKey