

🔴 Durante meus estudos e práticas, aprofundei meus conhecimentos em bancos de dados relacionais (SQL, My SQL) e não relacionais (NoSQL), entendendo suas diferenças, estruturas e comandos essenciais.

1️⃣ Bancos de Dados Relacionais (SQL)

Os bancos relacionais armazenam dados em tabelas estruturadas, com colunas e linhas, garantindo integridade e consistência. Trabalhei com:

✅ DDL (Data Definition Language – definição de estrutura):

✅ CREATE TABLE – criar tabelas.

✅ ALTER TABLE – alterar estrutura da tabela (adicionar/remover colunas, alterar tipo de dados)

✅ DROP TABLE – excluir tabelas.

✅ Definição de chaves primárias (PRIMARY KEY) e chaves estrangeiras (FOREIGN KEY)

✅ Criação de índices (CREATE INDEX) para otimização de consultas.

✅ DML (Data Manipulation Language – manipulação de dados):

✅ INSERT INTO – inserir registros.

✅ UPDATE – atualizar dados existentes.

✅ DELETE – remover registros.

✅SELECT – consultas, com filtros (WHERE), ordenação (ORDER BY), limites (LIMIT) e agregações (GROUP BY, HAVING).

✅ Relacionamentos e joins:

✅ INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN para combinar dados entre tabelas.

✅ Garantia de integridade referencial e consistência de dados.

✅ ORM (Object-Relational Mapping) ORM (Object-Relational Mapping).

✅Mapear objetos de programação para tabelas do banco, facilitando operações sem escrever SQL diretamente.

 ✅ E Hibernate (Java).🚀





# 📊 Banco de Dados "Viagens"

Este repositório contém o banco de dados da aplicação de viagens criado no "phpMyAdmin", com tabelas organizadas e padronizadas para facilitar consultas, importação e manutenção.

---

🟢 Estrutura do Banco

O banco possui 3 tabelas principais:

### 1️⃣ Tabela `usuarios`
Armazena informações sobre os usuários que podem fazer reservas.


Exemplo de usuários:

- João  
- Maria  
- Roberto César  
- Roberto Yanes  
- Ana Paula  



### 2️⃣ Tabela `destinos`
Armazena os destinos disponíveis para reserva.

Exemplo de destinos:

- Rio de Janeiro  
- São Paulo  
- Buenos Aires  
- Paris  
- Tóquio  



### 3️⃣ Tabela `reservas`
Relaciona **usuários** e **destinos**, com data e status da reserva.


Exemplo de reservas padronizadas:

| ID | Usuario       | Destino        | Data       | Status     |
|----|---------------|----------------|-----------|------------|
| 1  | João          | Rio de Janeiro | 25/10/25  | confirmada |
| 2  | Maria         | São Paulo      | 26/10/25  | pendente   |
| 3  | Roberto César | Buenos Aires   | 27/10/25  | confirmada |
| 4  | Roberto Yanes | Paris          | 28/10/25  | pendente   |
| 5  | Ana Paula     | Tóquio         | 29/10/25  | cancelada  |



 🔹 Fluxo Visual


Cada tabela está organizada para manter **consistência entre IDs**, evitando registros órfãos ou duplicados.



📌 Observações

- Tabelas padronizadas com  5 registros cada para fácil manutenção.  
- Reservas possuem status para indicar **pendente, confirmada ou cancelada.  
- Arquivo SQL exportado do phpMyAdmin: `viagens.sql`.  
- Pode ser importado em qualquer phpMyAdmin ou MySQL local/online.  

---

✨ Este README serve como guia visual e explicativo do banco de dados, mostrando estrutura, exemplos e relacionamentos de forma clara e organizada.

