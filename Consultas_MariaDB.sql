-- Faturamento total
SELECT SUM(pv.Quantidade * pv.Preco) FaturamentoTotal
  FROM ProdutosVenda pv;

-- Ticket médio por venda
SELECT AVG(TotalVenda) TicketMedio
  FROM (  SELECT pv.IdVenda,
                 SUM(pv.Quantidade * pv.Preco) TotalVenda
            FROM ProdutosVenda pv
        GROUP BY pv.IdVenda);

-- Número total de vendas
SELECT COUNT(v.Id) NumeroTotalDeVendas
  FROM Venda v;

-- Faturamento mensal
  SELECT DATE_FORMAT(v.DataVenda, '%Y-%m') Mes,
         SUM(pv.Quantidade * pv.Preco) FaturamentoMensal
    FROM Venda v,
         ProdutosVenda AS pv
   WHERE v.Id = pv.IdVenda
GROUP BY Mes
ORDER BY Mes;

-- Consulta de um produto pela ID
  SELECT p.*
    FROM Produto p
   WHERE p.Id = @Variavel;

-- Produtos mais vendidos (faturamento)
  SELECT p.Descricao,
         p.SKU,
		     p.ThumbnailURL,
         SUM(pv.Quantidade * pv.Preco) FaturamentoPorProduto
    FROM Produto p,
         ProdutosVenda pv
   WHERE p.Id = pv.IdProduto
GROUP BY p.Id,
         p.Descricao,
         p.SKU
ORDER BY FaturamentoPorProduto DESC
   LIMIT 10;

-- Produtos mais vendidos (quantidade)
  SELECT p.Descricao,
         p.SKU,
		     p.ThumbnailURL,
         SUM(pv.Quantidade) QuantidadeVendida
    FROM Produto p,
         ProdutosVenda pv
   WHERE p.Id = pv.IdProduto
GROUP BY p.Id,
         p.Descricao,
         p.SKU
ORDER BY QuantidadeVendida DESC
   LIMIT 10;

-- Produtos mais lucrativos
  SELECT p.Descricao,
         p.SKU,
		     p.ThumbnailURL,
         SUM(pv.Quantidade * (pv.Preco - p.Custo)) LucroTotal,
         (SUM(pv.Quantidade * (pv.Preco - p.Custo)) / SUM(pv.Quantidade * pv.Preco)) * 100 MargemDeLucroPercentual
    FROM Produto p,
         ProdutosVenda pv
   WHERE p.Id = pv.IdProduto
GROUP BY p.Id,
         p.Descricao,
         p.SKU
ORDER BY LucroTotal DESC
   LIMIT 10;

-- Top clientes (por total gasto)
  SELECT c.Nome,
         c.CPF,
         c.CNPJ,
         SUM(pv.Quantidade * pv.Preco) TotalGasto
    FROM Cliente c,
         Venda v,
         ProdutosVenda pv
   WHERE c.Id = v.IdCliente 
     AND v.Id = pv.IdVenda
GROUP BY c.Id,
         c.Nome,
         c.CPF,
         c.CNPJ
ORDER BY TotalGasto DESC
   LIMIT 10;

-- Top clientes (por número de compras)
  SELECT c.Nome,
         c.CPF,
         c.CNPJ,
         COUNT(v.Id) NumeroDeCompras
    FROM Cliente c,
         Venda v
   WHERE c.Id = v.IdCliente
GROUP BY c.Id,
         c.Nome,
         c.CPF,
         c.CNPJ
ORDER BY NumeroDeCompras DESC
   LIMIT 10;

-- Top estados (por faturamento)
  SELECT c.Estado,
         SUM(pv.Quantidade * pv.Preco) FaturamentoPorEstado
    FROM Cliente c,
         Venda v,
         ProdutosVenda pv
   WHERE c.Id = v.IdCliente
     AND v.Id = pv.IdVenda
GROUP BY c.Estado
ORDER BY FaturamentoPorEstado DESC;

-- Clientes inativos
  SELECT c.Nome,
         c.CPF,
         c.CNPJ,
         MAX(v.DataVenda) UltimaCompra,
         DATEDIFF(NOW(), MAX(v.DataVenda)) DiasSemComprar
    FROM Cliente c,
         Venda v
   WHERE c.Id = v.IdCliente
GROUP BY c.Id,
         c.Nome,
         c.CPF,
         c.CNPJ
  HAVING DiasSemComprar > 90
ORDER BY UltimaCompra ASC;