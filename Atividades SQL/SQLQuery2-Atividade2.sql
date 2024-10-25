	/* Atividade 2 */

/* Questão 1 */
--SELECT TOP(100) 
--	*
--FROM FactSales
--ORDER BY
--	SalesAmount DESC

/* Questão 2 */
-- SELECT TOP(10) 
--	ProductName,
--	Manufacturer,
--	StyleName,
--	Size,
--	"Weight",
--	UnitCost,
--	UnitPrice
--FROM DimProduct
--ORDER BY 
--	UnitCost DESC, "Weight" DESC, Size ASC

-- SELECT TOP(10) 
--	ProductName,
--	Manufacturer,
--	StyleName, Size,
--	"Weight",
--	UnitCost,
--	UnitPrice
--FROM DimProduct
--ORDER BY 
--	UnitCost DESC, "Weight" DESC, AvailableForSaleDate ASC

/* Questão 3 */
--SELECT 
--	ProductName AS Produto, 
--	"Weight" AS Peso(Libra)
--FROM DimProduct
--WHERE
--	"Weight" >= 220
--ORDER BY
--	"Weight" DESC

/* Questão 4 */
--SELECT
--	StoreName AS Loja,
--	OpenDate AS Abertura,
--	EmployeeCount AS NúmeroFuncinários
--FROM DimStore
--WHERE
--	"Status"= 'On' AND StoreType = 'Store'

/* Questão 5 */
-- SELECT
--	*
--FROM DimProduct
--WHERE
--	AvailableForSaleDate = '15-03-2009' AND ProductName LIKE '%Home_Theater%' AND BrandName = 'Litware'

/* Questão 6 */
--SELECT
--	*
--FROM DimStore
--WHERE
--	"Status"= 'Off' AND	CloseDate IS NOT NULL

/* Questão 7 */
--SELECT
--	*
--FROM DimStore
--WHERE 
--	"Status"= 'On' AND StoreType = 'Store' AND EmployeeCount BETWEEN 1 AND 20
--WHERE
--	"Status"= 'On' AND StoreType = 'Store' AND EmployeeCount BETWEEN 21 AND 50
--WHERE
--	"Status"= 'On' AND StoreType = 'Store' AND EmployeeCount > 50
--ORDER BY
--	EmployeeCount

/* Questão 8 */
--SELECT 
--	ProductKey,
--	ProductName,
--	UnitCost
--FROM DimProduct
--WHERE
--	ProductDescription LIKE '%LCD%'

/* Questão 9 */
--SELECT
--	*
--FROM dimProduct
--WHERE
--	ColorName IN ('Green','Orange','Pink', 'Black','Silver') AND BrandName IN ('Contoso','Litware','FabriKam')

/* Questão 10 */
--SELECT
--	*
--FROM dimProduct
--WHERE 
--	ColorName IN ('Silver') AND BrandName IN ('Contoso') AND UnitPrice BETWEEN 10 AND 30
--ORDER 
--	BY UnitPrice DESC