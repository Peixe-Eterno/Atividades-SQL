	/* Atividade 5 */
-- FULL OUTER JOIN

SELECT
	StoreKey,
	StoreManager,
	StoreName,
	StoreDescription,
	EmployeeCount,
	SellingAreaSize,
	SalesTerritoryKey,
	SalesTerritoryName,
	SalesTerritoryRegion,
	SalesTerritoryCountry,
	SalesTerritoryGroup
FROM DimStore
FULL JOIN DimSalesTerritory
ON DimStore.GeographyKey = DimSalesTerritory.GeographyKey;


SELECT 
	DimChannel.ChannelKey,
	COUNT(ProductKey) AS "Qtd.Vendas",
	SUM(SalesQuantity) AS "Qtd.ProdutosVendidos",
	AVG(SalesAmount) AS MédiaValorVendido
FROM DimChannel
FULL JOIN FactSales
ON DimChannel.ChannelKey = FactSales.ChannelKey
GROUP BY
	DimChannel.ChannelKey


--SELECT 
--	*
--FROM DimChannel
--FULL JOIN FactSales
--ON DimChannel.ChannelKey = FactSales.ChannelKey

