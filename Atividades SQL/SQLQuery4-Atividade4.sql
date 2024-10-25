/* Atividade 4*/

/* Questão 1 */
--SELECT 
--	channelKey,
--	SUM(SalesQuantity) AS Resumo_Vendas
--FROM FactSales
--GROUP BY 
--	channelKey

--SELECT 
--	StoreKey ,
--	SUM(SalesQuantity) AS Qtd_Vendas,
--	SUM(ReturnQuantity) AS Qtd_Devolvidos
--FROM FactSales
--GROUP BY
--	StoreKey

--SELECT
--	channelKey,
--	SUM(SalesQuantity) AS Valor_Vendas
--FROM FactSales
--WHERE
--	DateKey BETWEEN '01/01/2007' AND '30/12/2007'
--GROUP BY
--	channelKey
--ORDER BY
--	Valor_Vendas DESC

/* Questão 2 */
--SELECT 
--	TOP(10)
--	ProductKey,
--	SUM(SalesAmount) AS Venda_Por_Produto
--FROM FactSales
--GROUP BY
--	ProductKey
--HAVING
--	SUM(SalesAmount) >= 5000000
--ORDER BY
--	Venda_Por_Produto DESC

/* Questão 3 */
--SELECT 
--	CustomerKey,
--	SUM(SalesQuantity) AS Venda_Online
--FROM FactOnlineSales
--GROUP BY 
--	CustomerKey
--ORDER BY 
--	Venda_Online DESC

--19037 CustomerKey 

--SELECT 
--	TOP(3)
--	ProductKey,
--	SUM(SalesQuantity) AS Venda_Online
--FROM FactOnlineSales
--WHERE
--	CustomerKey = 19037
--GROUP BY 
--	ProductKey
--ORDER BY 
--	Venda_Online DESC


/* Questão 4 */
--SELECT 
--	Brandname,
--	COUNT(ProductKey) AS Qtd_Produtos_Marca
--FROM DimProduct
--GROUP BY
--	BrandName

--SELECT 
--	ClassName,
--	AVG(UnitPrice) AS Média_Valores
--FROM DimProduct
--GROUP BY
--	ClassName

--SELECT 
--	ColorName,
--	SUM(Weight) AS Peso_Total
--FROM DimProduct
--GROUP BY 
--	ColorName

/* Questão 5 */
--SELECT 
--	StockTypeName,
--	SUM("Weight") AS Peso_Total
--FROM DimProduct
--WHERE
--	BrandName = 'Contoso'
--GROUP BY 
--	StockTypeName
--ORDER BY
--	Peso_Total DESC

/* Questão 6*/
--SELECT 
--	BrandName,
--	COUNT( DISTINCT ColorName) AS N_Cores
--FROM DimProduct
--GROUP BY
--	BrandName

/* Questão 7 */
--SELECT
--	Gender,
--	COUNT(CustomerKey) AS Clintes,
--	AVG(YearlyIncome) AS Média_Salarial
--FROM DimCustomer
--WHERE 
--	Gender IS NOT NULL
--GROUP BY
--	Gender

/* Questão 8 */
--SELECT
--	Education,
--	COUNT(CustomerKey) AS Clintes,
--	AVG(YearlyIncome) AS Média_Salarial
--FROM DimCustomer
--	WHERE 
--	Education IS NOT NULL
--GROUP BY
--	Education

/* Questão 9*/
--SELECT
--	DepartmentName,
--	COUNT(EmployeeKey) AS Qtd_Funcionário
--FROM DimEmployee
--WHERE 
--	EndDate IS NULL
--GROUP BY
--	DepartmentName

/* Questão 10*/
--SELECT
--	Title,
--	SUM(VacationHours) AS Qtd_Funcionário
--FROM DimEmployee
--	WHERE 
--	DepartmentName IN ('Production','Marketing','Engeneering','Finance') AND
--	Gender = 'F' AND HireDate BETWEEN '1999/01/01' AND '2000/12/31' AND
--	EndDate IS NULL
--GROUP BY
--	Title
