CREATE TABLE Cliente (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    CPF VARCHAR(14),
    CNPJ VARCHAR(18),
    Nome VARCHAR(255) NOT NULL,
    Logradouro VARCHAR(255),
    Numero INT,
    Bairro VARCHAR(100),
    Cidade VARCHAR(100),
    Estado CHAR(2),
    DDD VARCHAR(3),
    Telefone VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Produto (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    SKU VARCHAR(50) NOT NULL,
    Descricao VARCHAR(255),
    Preco DECIMAL(13,2) NOT NULL,
    Unidade VARCHAR(3),
    Custo DECIMAL(13,2),
    ThumbnailURL VARCHAR(255)
);

CREATE TABLE Venda (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdCliente INT NOT NULL,
    DataVenda DATETIME NOT NULL,
    FOREIGN KEY (IdCliente) REFERENCES Cliente(Id)
);

CREATE TABLE ProdutosVenda (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    IdProduto INT NOT NULL,
    IdVenda INT NOT NULL,
    Quantidade DECIMAL(13,2) NOT NULL,
    Preco DECIMAL(13,2) NOT NULL,
    Unidade VARCHAR(3),
    FOREIGN KEY (IdProduto) REFERENCES Produto(Id),
    FOREIGN KEY (IdVenda) REFERENCES Venda(Id)
);
