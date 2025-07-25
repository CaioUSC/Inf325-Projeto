INSERT INTO Cliente (CPF, CNPJ, Nome, Logradouro, Numero, Bairro, Cidade, Estado, DDD, Telefone, Email) VALUES
('123.456.789-00', NULL, 'João Silva', 'Rua das Flores', 123, 'Centro', 'São Paulo', 'SP', '11', '91234-5678', 'joao@email.com'),
(NULL, '12.345.678/0001-99', 'Empresa XYZ', 'Av. Paulista', 1000, 'Bela Vista', 'São Paulo', 'SP', '11', '92345-6789', 'contato@xyz.com.br'),
('987.654.321-00', NULL, 'Maria Oliveira', 'Rua das Acácias', 45, 'Jardim', 'Campinas', 'SP', '19', '93456-7890', 'maria@email.com'),
('555.666.777-88', NULL, 'Carlos Andrade', 'Rua das Laranjeiras', 78, 'Centro', 'Rio de Janeiro', 'RJ', '21', '99876-5432', 'carlos@email.com'),
(NULL, '98.765.432/0001-22', 'Tech Soluções', 'Av. Rio Branco', 200, 'Centro', 'Rio de Janeiro', 'RJ', '21', '98765-4321', 'contato@tech.com'),
('222.333.444-55', NULL, 'Ana Lima', 'Rua do Sol', 12, 'Boa Viagem', 'Recife', 'PE', '81', '91234-0001', 'ana@email.com'),
('444.555.666-77', NULL, 'Paulo Souza', 'Av. das Américas', 321, 'Barra', 'Salvador', 'BA', '71', '92345-6788', 'paulo@email.com'),
(NULL, '11.222.333/0001-44', 'Agro Vale', 'Rua do Campo', 85, 'Interior', 'Uberlândia', 'MG', '34', '93456-7891', 'vendas@agrovale.com'),
('111.222.333-44', NULL, 'Beatriz Costa', 'Rua Nova', 99, 'Centro', 'Curitiba', 'PR', '41', '94567-1234', 'bea@email.com'),
('777.888.999-00', NULL, 'Ricardo Martins', 'Alameda Verde', 33, 'Alphaville', 'Barueri', 'SP', '11', '95678-4321', 'ricardo@email.com');


INSERT INTO Produto (SKU, Descricao, Preco, Unidade, Custo, ThumbnailURL) VALUES
('SKU001', 'Camiseta Azul', 49.90, 'un', 25.00, 'http://img.com/a.png'),
('SKU002', 'Camiseta Vermelha', 54.90, 'un', 28.00, 'http://img.com/b.png'),
('SKU003', 'Camiseta Verde', 52.50, 'un', 27.00, 'http://img.com/c.png'),
('SKU004', 'Calça Jeans Masculina', 89.90, 'un', 45.00, 'http://img.com/d.png'),
('SKU005', 'Calça Jeans Feminina', 95.00, 'un', 50.00, 'http://img.com/e.png'),
('SKU006', 'Tênis Esportivo', 120.00, 'un', 70.00, 'http://img.com/f.png'),
('SKU007', 'Meia Branca', 15.00, 'par', 5.00, 'http://img.com/g.png'),
('SKU008', 'Jaqueta Preta', 199.99, 'un', 110.00, 'http://img.com/h.png'),
('SKU009', 'Boné Azul', 29.90, 'un', 10.00, 'http://img.com/i.png'),
('SKU010', 'Cinto Couro', 35.00, 'un', 18.00, 'http://img.com/j.png');


INSERT INTO Venda (IdCliente, DataVenda) VALUES
(1, '2025-07-01 10:00:00'),
(2, '2025-07-02 12:30:00'),
(3, '2025-07-03 15:45:00'),
(4, '2025-07-04 09:20:00'),
(5, '2025-07-05 14:10:00'),
(6, '2025-07-06 11:05:00'),
(7, '2025-07-07 13:50:00'),
(8, '2025-07-08 17:30:00'),
(9, '2025-07-09 16:00:00'),
(10, '2025-07-10 18:40:00');


-- João Silva comprou 2 camisetas azuis e 1 vermelha
INSERT INTO ProdutosVenda (IdProduto, IdVenda, Quantidade, Preco, Unidade) VALUES
(1, 1, 2, 49.90, 'un'),   -- Produto ID 1 (Camiseta Azul), na Venda ID 1, 2 unidades a R$49,90
(2, 1, 1, 54.90, 'un'),   -- Produto ID 2 (Camiseta Vermelha), na Venda ID 1, 1 unidade a R$54,90
-- Empresa XYZ comprou 3 camisetas verdes
(3, 2, 3, 52.50, 'un'),   -- Produto ID 3 (Camiseta Verde), na Venda ID 2, 3 unidades a R$52,50
-- Maria Oliveira comprou calça jeans masculina e feminina
(4, 3, 1, 89.90, 'un'),   -- Produto ID 4 (Calça Jeans Masculina), na Venda ID 3, 1 unidade
(5, 3, 1, 95.00, 'un'),   -- Produto ID 5 (Calça Jeans Feminina), na Venda ID 3, 1 unidade
-- Carlos Andrade comprou 2 tênis esportivos
(6, 4, 2, 120.00, 'un'),  -- Produto ID 6 (Tênis Esportivo), na Venda ID 4, 2 unidades
-- Tech Soluções comprou 5 pares de meias
(7, 5, 5, 15.00, 'par'),  -- Produto ID 7 (Meia Branca), na Venda ID 5, 5 pares
-- Ana Lima comprou uma jaqueta preta
(8, 6, 1, 199.99, 'un'),  -- Produto ID 8 (Jaqueta Preta), na Venda ID 6, 1 unidade
-- Paulo Souza comprou 2 bonés
(9, 7, 2, 29.90, 'un'),   -- Produto ID 9 (Boné Azul), na Venda ID 7, 2 unidades
-- Agro Vale comprou 1 cinto de couro
(10, 8, 1, 35.00, 'un'),  -- Produto ID 10 (Cinto Couro), na Venda ID 8, 1 unidade
-- Beatriz Costa comprou 1 camiseta azul
(1, 9, 1, 49.90, 'un'),   -- Produto ID 1 (Camiseta Azul), na Venda ID 9, 1 unidade
-- Ricardo Martins comprou 2 camisetas verdes
(3, 10, 2, 52.50, 'un');  -- Produto ID 3 (Camiseta Verde), na Venda ID 10, 2 unidades