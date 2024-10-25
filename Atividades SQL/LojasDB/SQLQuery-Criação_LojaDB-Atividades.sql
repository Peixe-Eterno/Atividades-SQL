

	/* Exerc�cio 1 */

--SELECT
--	Clientes.NomeCliente,
--	Pedidos.ClienteID,
--	Pedidos.DataPedido
	
--FROM Clientes
--INNER JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID


	/* Exerc�cio 2 */

--SELECT
--	Clientes.NomeCliente,
--	Pedidos.PedidoID,
--	Clientes.Cidade
	
--FROM Clientes
--LEFT JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID

	/* Exerc�cio 3 */

--SELECT
--	NomeCliente,
--	Cidade
--FROM Clientes
--UNION
--SELECT
--	Clientes.NomeCliente,
--	Clientes.Cidade
--FROM Pedidos
--INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;


	/* Exerc�cio 4 */


--SELECT
--	Clientes.NomeCliente,
--	COUNT( Pedidos.ClienteID)
--FROM Clientes
--LEFT JOIN  Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID
--GROUP BY
--	Clientes.NomeCliente

--UNION ALL

--SELECT
--	Clientes.NomeCliente,
--	COUNT( Pedidos.ClienteID)	
--FROM Pedidos
--LEFT JOIN  Clientes
--ON Clientes.ClienteID = Pedidos.ClienteID
--GROUP BY
--	Clientes.NomeCliente


	/* Exerc�cio 5 */

--SELECT
--	Clientes.NomeCliente,
--	Produtos.NomeProduto,
--	Quantidade,
--	Pedidos.DataPedido
	
--FROM Detalhespedidos
--LEFT JOIN Pedidos
--ON DetalhesPedidos.PedidoID = Pedidos.PedidoID
--LEFT JOIN Clientes
--ON Pedidos.ClienteID = Clientes.ClienteID
--LEFT JOIN Produtos
--ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
--ORDER BY
--	DataPedido DESC

	/* Exerc�cio 6 */

--SELECT
--	NomeCliente,
--	COUNT(DISTINCT DetalhesPedidos.ProdutoID) 
--FROM Clientes
--LEFT JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID
--LEFT JOIN DetalhesPedidos
--ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--GROUP BY
--	NomeCliente


		/* Exerc�cio 7 */

--SELECT
--	Pedidos.PedidoID,
--	Clientes.ClienteID,
--	Clientes.NomeCliente,
--	AVG(DetalhesPedidos.Quantidade)
--FROM Pedidos
--LEFT JOIN DetalhesPedidos
--ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--INNER JOIN Clientes
--ON Pedidos.ClienteID = Clientes.ClienteID
--GROUP BY
--	Clientes.ClienteID,
--	Pedidos.PedidoID,
--	Clientes.NomeCliente


		/* Exerc�cio 8 */


--SELECT
--	COUNT(Pedidos.PedidoID) AS "Qtd.Pedidos",
--	MONTH(Pedidos.DataPedido) AS M�s,
--	YEAR(Pedidos.DataPedido) AS Ano
--FROM Pedidos
--GROUP BY 
--	YEAR(Pedidos.DataPedido),
--	MONTH(Pedidos.DataPedido)
--ORDER BY
--	MONTH(Pedidos.DataPedido) DESC


	/* Exerc�cio 9 */

--SELECT
--	Categorias.NomeCategoria,
--	SUM(DetalhesPedidos.Quantidade * Produtos.Preco)
--FROM Categorias
--INNER JOIN Produtos
--ON Categorias.CategoriaID = Produtos.CategoriaID
--INNER JOIN DetalhesPedidos
--ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
--GROUP BY
--	Categorias.NomeCategoria


	/* Exerc�cio 10 */

--SELECT
--	Clientes.NomeCliente,
--	MAX(Pedidos.Total)
--FROM Clientes
--LEFT JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID
--GROUP BY 
--	Clientes.NomeCliente