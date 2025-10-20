# 📊 Banco de Dados "Viagens"

Este repositório contém o **banco de dados da aplicação de viagens** criado no **phpMyAdmin**, com tabelas organizadas e padronizadas para facilitar consultas, importação e manutenção.

---

🟢 Estrutura do Banco

O banco possui **3 tabelas principais**:

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

- Tabelas padronizadas com **5 registros cada** para fácil manutenção.  
- Reservas possuem status para indicar **pendente, confirmada ou cancelada.  
- Arquivo SQL exportado do phpMyAdmin: `viagens.sql`.  
- Pode ser importado em qualquer phpMyAdmin ou MySQL local/online.  

---

✨ Este README serve como guia visual e explicativo do banco de dados, mostrando estrutura, exemplos e relacionamentos de forma clara e organizada.

