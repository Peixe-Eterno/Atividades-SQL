
	/* INNER JOIN */

-- Exibindo o nome dos clientes e as datas dos pedidos que eles fizeram

--SELECT Clientes.NomeCliente, Pedidos.DataPedido
--FROM Clientes
--INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

	/*LEFT JOIN */

-- Exibindo o nome dos clientes e as datas dos pedidos (se houver), incluindo clientes que ainda n�o fizeram pedidos

--SELECT Clientes.NomeCliente, Pedidos.DataPedido
--FROM Clientes
--LEFT JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;

	/* M�ltiplos JOINs */

-- Exibindo o nome dos clientes, as datas dos pedidos, os produtos comprados e suas categorias

--SELECT Clientes.NomeCliente, Pedidos.DataPedido, Produtos.NomeProduto, Categorias.NomeCategoria
--FROM Pedidos
--INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID
--INNER JOIN Produtos ON Produtos.ProdutoID = Pedidos.PedidoID
--INNER JOIN Categorias ON Produtos.CategoriaID = Categorias.CategoriaID;

	/* UNION */

-- Imagine que voc� tem duas listas de clientes: uma tabela ClientesBrasil e outra ClientesEUA. Se houver clientes repetidos nas duas tabelas, o UNION vai mostrar o nome deles apenas uma vez.
-- Se "Maria" estiver em ambas as tabelas, o resultado mostrar� "Maria" apenas uma vez.

--SELECT NomeCliente FROM ClientesBrasil
--UNION
--SELECT NomeCliente FROM ClientesEUA;

-- Exemplo de `UNION`
-- Queremos listar todos os clientes da tabela `Clientes` e tamb�m exibir os clientes que aparecem na tabela de `Pedidos` (mesmo que eles estejam em ambas as tabelas, queremos exibir cada cliente uma vez apenas).

-- Selecionando o nome dos clientes que est�o na tabela Clientes

--SELECT NomeCliente FROM Clientes
--UNION
---- Selecionando o nome dos clientes que fizeram pedidos (ligados pelo ClienteID)
--SELECT Clientes.NomeCliente
--FROM Pedidos
--INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;



	/* UNION ALL */

-- O UNION ALL tamb�m combina os resultados de duas ou mais consultas, mas ele n�o remove as duplicatas. Ele exibe todas as linhas de todas as consultas, mesmo que sejam repetidas.
-- Usando as mesmas tabelas de clientes, com o UNION ALL, se houver clientes repetidos nas duas tabelas, o nome deles ser� exibido quantas vezes aparecer nas tabelas.

--SELECT NomeCliente FROM ClientesBrasil
--UNION ALL
--SELECT NomeCliente FROM ClientesEUA;

-- Exemplo de `UNION ALL`
-- Agora vamos ver o comportamento do `UNION ALL`. Ele **n�o remove os duplicados**, ou seja, ele mostrar� todas as ocorr�ncias, mesmo que os nomes se repitam.


-- Selecionando o nome dos clientes que est�o na tabela Clientes

--SELECT NomeCliente FROM Clientes
--UNION ALL
---- Selecionando o nome dos clientes que fizeram pedidos
--SELECT Clientes.NomeCliente
--FROM Pedidos
--INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;



	-- Exerc�cios Pr�ticos
-- Exerc�cio 1: Contando pedidos por cliente


--SELECT
--	Clientes.NomeCliente,
--	COUNT(Pedidos.PedidoID) AS TotalPedidos
--FROM Clientes
--LEFT JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID
--GROUP BY
--	Clientes.NomeCliente;

-- Exerc�cio 2: Soma de quantidades de produtos comprados por cliente


--SELECT
--	Clientes.NomeCliente,
--	SUM(DetalhesPedidos.Quantidade) AS TotalItens
--FROM Clientes
--INNER JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID
--INNER JOIN DetalhesPedidos
--ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--GROUP BY Clientes.NomeCliente;


-- Exerc�cio 3: Valor total gasto por cliente


--SELECT 
--	Clientes.NomeCliente,
--	SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS TotalGasto
--FROM Clientes
--INNER JOIN Pedidos
--ON Clientes.ClienteID = Pedidos.ClienteID
--INNER JOIN DetalhesPedidos
--ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--INNER JOIN Produtos 
--ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
--GROUP BY Clientes.NomeCliente;


-- Exerc�cio 4: Produtos mais vendidos

--SELECT
--	Produtos.NomeProduto,
--	SUM(DetalhesPedidos.Quantidade) AS QuantidadeVendida
--FROM Produtos
--INNER JOIN DetalhesPedidos
--ON Produtos.ProdutoID = DetalhesPedidos.ProdutoID
--GROUP BY Produtos.NomeProduto
--ORDER BY QuantidadeVendida DESC;


-- Exerc�cio 5: Faturamento por data de pedido


--SELECT 
--	Pedidos.DataPedido, 
--	SUM(DetalhesPedidos.Quantidade * Produtos.Preco) AS Faturamento
--FROM Pedidos
--INNER JOIN DetalhesPedidos 
--ON Pedidos.PedidoID = DetalhesPedidos.PedidoID
--INNER JOIN Produtos 
--ON DetalhesPedidos.ProdutoID = Produtos.ProdutoID
--GROUP BY Pedidos.DataPedido
--ORDER BY Pedidos.DataPedido DESC;





