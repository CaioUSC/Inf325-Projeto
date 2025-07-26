// Cria Clientes
CREATE (c1:Cliente {id: 1}),
       (c2:Cliente {id: 2}),
       (c3:Cliente {id: 3}),
       (c4:Cliente {id: 4}),
       (c5:Cliente {id: 5}),
       (c6:Cliente {id: 6}),
       (c7:Cliente {id: 7}),
       (c8:Cliente {id: 8}),
       (c9:Cliente {id: 9}),
       (c10:Cliente {id: 10})
WITH *

// Cria Produtos
CREATE (p1:Produto {id: 1, sku: 'SKU001'}),
       (p2:Produto {id: 2, sku: 'SKU002'}),
       (p3:Produto {id: 3, sku: 'SKU003'}),
       (p4:Produto {id: 4, sku: 'SKU004'}),
       (p5:Produto {id: 5, sku: 'SKU005'}),
       (p6:Produto {id: 6, sku: 'SKU006'}),
       (p7:Produto {id: 7, sku: 'SKU007'}),
       (p8:Produto {id: 8, sku: 'SKU008'}),
       (p9:Produto {id: 9, sku: 'SKU009'}),
       (p10:Produto {id: 10, sku: 'SKU010'})
WITH *

// Cria Vendas e relaciona com Clientes
CREATE (c1)-[:REALIZOU]->(v1:Venda {id: 1, dataVenda: '2025-07-01 10:00:00'}),
       (c2)-[:REALIZOU]->(v2:Venda {id: 2, dataVenda: '2025-07-02 12:30:00'}),
       (c3)-[:REALIZOU]->(v3:Venda {id: 3, dataVenda: '2025-07-03 15:45:00'}),
       (c4)-[:REALIZOU]->(v4:Venda {id: 4, dataVenda: '2025-07-04 09:20:00'}),
       (c5)-[:REALIZOU]->(v5:Venda {id: 5, dataVenda: '2025-07-05 14:10:00'}),
       (c6)-[:REALIZOU]->(v6:Venda {id: 6, dataVenda: '2025-07-06 11:05:00'}),
       (c7)-[:REALIZOU]->(v7:Venda {id: 7, dataVenda: '2025-07-07 13:50:00'}),
       (c8)-[:REALIZOU]->(v8:Venda {id: 8, dataVenda: '2025-07-08 17:30:00'}),
       (c9)-[:REALIZOU]->(v9:Venda {id: 9, dataVenda: '2025-07-09 16:00:00'}),
       (c10)-[:REALIZOU]->(v10:Venda {id: 10, dataVenda: '2025-07-10 18:40:00'})
WITH *

// Popula vendas com os produtos
CREATE (v1)-[:CONTEM {quantidade: 2}]->(p1),
       (v1)-[:CONTEM {quantidade: 1}]->(p2),
       (v2)-[:CONTEM {quantidade: 3}]->(p3),
       (v3)-[:CONTEM {quantidade: 1}]->(p4),
       (v3)-[:CONTEM {quantidade: 1}]->(p5),
       (v4)-[:CONTEM {quantidade: 2}]->(p6),
       (v5)-[:CONTEM {quantidade: 5}]->(p7),
       (v5)-[:CONTEM {quantidade: 1}]->(p2),
       (v6)-[:CONTEM {quantidade: 1}]->(p8),
       (v7)-[:CONTEM {quantidade: 2}]->(p9),
       (v8)-[:CONTEM {quantidade: 1}]->(p10),
       (v8)-[:CONTEM {quantidade: 1}]->(p2),
       (v9)-[:CONTEM {quantidade: 1}]->(p1),
       (v10)-[:CONTEM {quantidade: 2}]->(p3)