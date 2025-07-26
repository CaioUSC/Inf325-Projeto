// Dado um produto (Nesse caso id = 2) busca os produtos que aparecem junto com
// esse produto em outras vendas, ordena pela quantidade de vendas que eles
// compartilham, quantidade do primeiro produto, quantidade do segundo produto e
// pega os 3 primeiros

MATCH (p: Produto {id:2})<-[c: CONTEM]-(v: Venda)-[c2: CONTEM]->(p2: Produto)
WITH *, COUNT{(p)<--(:Venda)-->(p2)} AS cnt_rels, c.quantidade AS p1_quantidade, c2.quantidade AS p2_quantidade
    ORDER BY cnt_rels DESC,
             p1_quantidade DESC,
             p2_quantidade DESC
    LIMIT 3

return p2

// ------------------------------------------------------------------------------------

