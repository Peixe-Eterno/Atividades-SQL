
	/* Atividade 8 */

/* Questão 1 */
--DECLARE @Valor1 FLOAT, @Valor2 FLOAT, @Valor3 FLOAT, @Valor4 FLOAT, @Soma FLOAT,@Subtração FLOAT, @Multiplicação FLOAT, @Divisão FLOAT
--SET @Valor1 = 10
--SET @Valor2 = 5
--SET @Valor3 = 34
--SET @Valor4 = 7
----a)
--SET @Soma = @Valor1 + @Valor2
----b)
--SET @Subtração = @Valor3 + @Valor4
----c)
--SET @Multiplicação = @Valor1 * @Valor4
----d)
--SET @Divisão = ROUND(@Valor3 / @Valor4,1)

--SELECT 
--	@Soma,
--	@Subtração,
--	@Multiplicação,
--	@Divisão

/* Questão 2 */
--DECLARE @Produto VARCHAR(40),@Quantidade INT, @Preço FLOAT, @Faturamento FLOAT
--SET @Produto = 'Celular'
--SET @Quantidade = 12
--SET @Preço = 9.99
--SET @Faturamento = @Quantidade * @Preço

--SELECT 
--	@Produto,
--	@Quantidade,
--	@Preço,
--	@Faturamento

/* Questão 3 */
--DECLARE @Nome VARCHAR(40), @Data_Aniversário DATE, @Num_Pets INT
--SET @Nome = 'André'
--SET @Data_Aniversário = '10/02/1998'
--SET @Num_Pets = 2

--SELECT 
--	 'Meu nome é ' + @Nome + ', nasci em ' + FORMAT( CAST(@Data_Aniversário AS DATE), 'dd/MM/yyyy') + ' e tenho ' + CAST(@Num_Pets AS VARCHAR(2)) + ' pets'

/* Questão 4 */
--DECLARE @NOMES_DAS_LOJAS VARCHAR(100)
--SET	@NOMES_DAS_LOJAS = (SELECT StoreName + ' e ' FROM DimStore WHERE CloseDate LIKE '%2008%' for xml path(''))
--SET @nomes_das_lojas = Left(@nomes_das_lojas, DATALENGTH(@nomes_das_lojas) - 1)

--PRINT 'As lojas fechadas no ano de 2008 foram: ' + @nomes_das_lojas 


--/* Questão 5 */
--DECLARE @Subcategory INT
--SET @Subcategory = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName LIKE '%Lamp%')

--SELECT
--	ProductName
--FROM DimProduct
--WHERE
--	ProductSubcategoryKey = @Subcategory