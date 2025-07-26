# 📦 Sistema de Análise e Recomendação de Produtos

Este projeto tem como objetivo estruturar e integrar diferentes bancos de dados para registrar o histórico de pedidos, analisar padrões de compra para futuras recomendações e armazenar produtos mais vendidos em cache para otimizar a busca de categorias mais consultadas.

## 🛠️ Tecnologias Utilizadas

- **MariaDB** – Armazenamento relacional de clientes, produtos e vendas.
- **Redis** – Armazenamento em cache dos produtos mais vendidos utilizando JSON.
- **Neo4j** – Banco de grafos para representar conexões entre clientes e produtos.

---

## 📁 Estrutura dos Arquivos

### 📂 MariaDB

- `Create_tables_MariaDB.sql`  
  Contém os comandos SQL para criar as tabelas:
  - `Cliente`
  - `Produto`
  - `Venda`
  - `ProdutosVenda`

- `Insert_MariaDB.sql`  
  Popula as tabelas com dados de clientes, produtos, vendas e itens de venda.

- `Consultas_MariaDB.sql`  
  Inclui consultas analíticas como:
  - Faturamento total e mensal
  - Produtos mais vendidos e mais lucrativos
  - Clientes e estados com maior volume de compras
  - Identificação de clientes inativos
  - Informações analiticas de um produto desejado

---

### 📂 Redis

- `Comandos.redis`  
  Armazena comandos para:
  - Inserção de produtos mais vendidos em formato JSON
  - Busca dos produtos mais vendidos

> **Exemplo de estrutura armazenada:**
> ```json
> {
>   "IdProduto": 1,
>   "Descricao": "Camiseta Azul",
>   "Preco": 49.90,
>   "ImageUrl": "http://img.com/a.png"
> }
> ```

---

### 📂 Neo4j

- `insert_neo4j.cypher`  
  Comandos para criar nós (`Cliente`, `Produto`) e relacionamentos (`COMPROU`), permitindo análises como:
  - Quais produtos são frequentemente comprados juntos
  - Perfis de clientes por padrão de compra

- `consulta_neo4j.cypher`  
  Exemplos de consultas para:
  - Busca os produtos que aparecem junto com esse produto em outras vendas, ordenando pela quantidade de vendas que eles compartilham

---

## 🎯 Objetivos do Projeto

1. Criar a estrutura relacional para registro detalhado de vendas.
2. Construir consultas SQL e Cypher para extração de insights e identificação de padrões.
3. Armazenar produtos mais vendidos no Redis para acesso rápido e escalável.
4. Estabelecer base para futura recomendação de produtos com base em histórico de compras.

---

## 📌 Possibilidades Futuras

- Integração com modelos de machine learning para recomendação personalizada.
- Visualização de grafos no Neo4j para análise de comunidades de consumo.
- Uso de Redis Streams ou Pub/Sub para registrar eventos em tempo real.
