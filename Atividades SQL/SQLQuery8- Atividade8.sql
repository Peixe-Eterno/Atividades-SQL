
	/* Atividade 8 */

/* Quest�o 1 */
--DECLARE @Valor1 FLOAT, @Valor2 FLOAT, @Valor3 FLOAT, @Valor4 FLOAT, @Soma FLOAT,@Subtra��o FLOAT, @Multiplica��o FLOAT, @Divis�o FLOAT
--SET @Valor1 = 10
--SET @Valor2 = 5
--SET @Valor3 = 34
--SET @Valor4 = 7
----a)
--SET @Soma = @Valor1 + @Valor2
----b)
--SET @Subtra��o = @Valor3 + @Valor4
----c)
--SET @Multiplica��o = @Valor1 * @Valor4
----d)
--SET @Divis�o = ROUND(@Valor3 / @Valor4,1)

--SELECT 
--	@Soma,
--	@Subtra��o,
--	@Multiplica��o,
--	@Divis�o

/* Quest�o 2 */
--DECLARE @Produto VARCHAR(40),@Quantidade INT, @Pre�o FLOAT, @Faturamento FLOAT
--SET @Produto = 'Celular'
--SET @Quantidade = 12
--SET @Pre�o = 9.99
--SET @Faturamento = @Quantidade * @Pre�o

--SELECT 
--	@Produto,
--	@Quantidade,
--	@Pre�o,
--	@Faturamento

/* Quest�o 3 */
--DECLARE @Nome VARCHAR(40), @Data_Anivers�rio DATE, @Num_Pets INT
--SET @Nome = 'Andr�'
--SET @Data_Anivers�rio = '10/02/1998'
--SET @Num_Pets = 2

--SELECT 
--	 'Meu nome � ' + @Nome + ', nasci em ' + FORMAT( CAST(@Data_Anivers�rio AS DATE), 'dd/MM/yyyy') + ' e tenho ' + CAST(@Num_Pets AS VARCHAR(2)) + ' pets'

/* Quest�o 4 */
--DECLARE @NOMES_DAS_LOJAS VARCHAR(100)
--SET	@NOMES_DAS_LOJAS = (SELECT StoreName + ' e ' FROM DimStore WHERE CloseDate LIKE '%2008%' for xml path(''))
--SET @nomes_das_lojas = Left(@nomes_das_lojas, DATALENGTH(@nomes_das_lojas) - 1)

--PRINT 'As lojas fechadas no ano de 2008 foram: ' + @nomes_das_lojas 


--/* Quest�o 5 */
--DECLARE @Subcategory INT
--SET @Subcategory = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName LIKE '%Lamp%')

--SELECT
--	ProductName
--FROM DimProduct
--WHERE
--	ProductSubcategoryKey = @Subcategory