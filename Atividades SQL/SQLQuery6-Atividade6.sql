	/*Atividade 6 */

/* Quest�o 1 */
--SELECT
--	ProductKey,
--	ProductName,
--	DimProductSubcategory.ProductSubcategoryKey,
--	ProductSubcategoryName
--FROM  DimProduct
--INNER JOIN DimProductSubcategory
--ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

/* Quest�o 2 */
--SELECT
--	ProductSubcategoryKey,
--	ProductCategoryLabel,
--	ProductSubcategoryName,
--	ProductSubcategoryDescription,
--	DimProductSubcategory.ProductCategoryKey,
--	ProductCategoryLabel,
--	ProductCategoryName,
--	ProductCategoryDescription
--FROM DimProductSubcategory
--LEFT JOIN DimProductCategory
--ON DimProductSubcategory.ProductCategoryKey =  DimProductCategory.ProductCategoryKey

/* Quest�o 3 */
--SELECT
--	StoreKey,
--	StoreName,
--	EmployeeCount,
--	ContinentName,
--	RegionCountryName
--FROM DimStore
--LEFT JOIN DimGeography
--ON DimStore.GeographyKey = DimGeography.GeographyKey;

/* Quest�o 4 */
--SELECT
--	ProductKey,
--	ProductName,
--	ProductDescription,
--	ProductSubcategoryName,
--	ProductCategoryName
--FROM DimProduct
--LEFT JOIN DimProductSubcategory
--ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
--LEFT JOIN DimProductCategory
--ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

/* Quest�o 5 */
--SELECT
--	TOP(100)
--	DimAccount.AccountKey,
--	AccountName,
--	StrategyPlanKey,
--	DateKey,
--	Amount
--FROM FactStrategyPlan
--INNER JOIN DimAccount
--ON FactStrategyPlan.AccountKey = DimAccount.AccountKey

/* Quest�o 6 */
--SELECT
--	StrategyPlanKey,
--	DateKey,
--	ScenarioName,
--	Amount
--FROM FactStrategyPlan
--INNER JOIN DimScenario
--ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey

/* Quest�o 7 */
--SELECT
--	ProductSubcategoryName,
--	COUNT(DimProduct.ProductSubcategoryKey) AS "Qtd.Produtos"
--FROM DimProductSubcategory
--LEFT JOIN DimProduct
--ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
--WHERE 
--		DimProduct.ProductSubcategoryKey IS NULL
--GROUP BY
--	ProductSubcategoryName

/* Quest�o 8 */
--SELECT
--	BrandName,
--	ChannelName
--FROM FactSales
--INNER JOIN DimChannel
--ON FactSales.channelKey = DimChannel.ChannelKey
--LEFT JOIN DimProduct
--ON FactSales.ProductKey = DimProduct.ProductKey

/* Quest�o 9 */
--SELECT
--	OnlineSalesKey,
--	DateKey,
--	PromotionName,
--	SalesAmount
--FROM FactOnlineSales
--INNER JOIN DimPromotion
--ON  FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
--WHERE
--	(PromotionName <> 'No Discount')

/* Quest�o 10 */
--SELECT
--	SalesKey,
--	ChannelName,
--	StoreName,
--	ProductName,
--	SalesAmount
--FROM FactSales
--INNER JOIN DimChannel
--ON FactSales.channelKey = DimChannel.ChannelKey
--INNER JOIN DimProduct
--ON FactSales.ProductKey = DimProduct.ProductKey
--INNER JOIN DimStore
--ON FactSales.StoreKey = DimStore.StoreKey
--ORDER BY
--	SalesAmount DESC