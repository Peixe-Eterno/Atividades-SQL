	/* Atividade 1*/

/* Quest�o 1 */
/* Sem Defasagem */
--SELECT 
--	ProductKey,
--	ProductName
--FROM DimProduct

/* Quest�o 2 */
/* Queda no n�mero de clientes */
--SELECT
--	CustomerKey AS IDCliente,
--	FirstName AS PrimeiroNome,
--	BirthDate AS Nascimento,
--	EmailAddress AS Email
--FROM DimCustomer 

/* Quest�o 3 a,c,d */
--SELECT TOP(100) 
--	FirstName AS PrimeiroNome,
--	EmailAddress AS Email, 
--	BirthDate AS DataNascimento
--FROM DimCustomer

/* Quest�o 3 b */
--SELECT TOP(20) PERCENT 
-- *
--FROM DimCustomer

/* Quest�o 4 */
--SELECT DISTINCT
--	Manufacturer AS Fornecedores
--FROM DimProduct

/* Quest�o 5 */
/* 1 produto n�o foi vendido */
--SELECT DISTINCT 
--	ProductKey	
--FROM DimProduct

--SELECT DISTINCT 
--	ProductKey
--FROM FactSales
--ORDER BY 
--	ProductKey