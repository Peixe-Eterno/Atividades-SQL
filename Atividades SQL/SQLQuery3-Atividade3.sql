	/* Atividade 3 */
/* Questão 1 */
--SELECT
--	SUM(SalesQuantity) AS Qtd_Vendas,
--	SUM(ReturnQuantity) AS Qtd_Devolvidos
--FROM FactSales
--WHERE
--	channelKey = 1

/* Questão 2 */
--SELECT 
--	AVG(YearlyIncome) AS 'Média Salarial'
--FROM DimCustomer
--WHERE
--	Occupation = 'Professional'

/* Questão 3 */
--SELECT 
--	MAX(EmployeeCount) AS Loja_Mais_Funcionários,
--	MIN(EmployeeCount) AS Loja_Menos_Funcionários,
--FROM DimStore

--SELECT TOP(1)
--	EmployeeCount AS Loja_Mais_Funcionários,
--	StoreName
--FROM DimStore
--ORDER BY
--	EmployeeCount DESC

--SELECT TOP(1)
--	EmployeeCount AS Loja_Menos_Funcionários,
--	StoreName
--FROM DimStore
--WHERE EmployeeCount IS NOT NULL
--ORDER BY
--	EmployeeCount ASC

/* Questão 4 */
--SELECT
--	COUNT(Gender) AS Qtd_Funcionários_M
--FROM DimEmployee
--WHERE 
--	Gender = 'M'

--SELECT TOP(1)
--	FirstName,
--	LastName,
--	MiddleName,
--	HireDate,
--	EmailAddress
--FROM DimEmployee
--WHERE 
--	Gender = 'M'
--ORDER BY
--	HireDate ASC


--SELECT
--	COUNT(Gender) AS Qtd_Funcionários_F
--FROM DimEmployee
--WHERE 
--	Gender = 'F'

--SELECT TOP(1)
	--FirstName,
	--LastName,
	--MiddleName,
	--HireDate,
	--EmailAddress
--FROM DimEmployee
--WHERE 
--	Gender = 'F'
--ORDER BY
--	HireDate ASC

/* Questão 5*/
--SELECT 
--	COUNT(DISTINCT ColorName) AS Qtd_Cores,
--	COUNT(DISTINCT BrandName) AS Qtd_Marcas,
--	COUNT(DISTINCT ClassName) as Qtd_Classes
--FROM DimProduct
