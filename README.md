# 🍽️ Projeto Restaurante — Banco de Dados SQL

Projeto desenvolvido durante os estudos de **SQL e Banco de Dados**, com o objetivo de construir e manipular um banco de dados para gerenciamento de informações de um restaurante.

O projeto aborda desde a **criação da estrutura do banco** até consultas SQL, relacionamentos entre tabelas, criação de uma **VIEW** e utilização de **funções**.

## 📌 Objetivo

Praticar conceitos fundamentais de bancos de dados relacionais e SQL, incluindo:

* Criação de banco de dados e tabelas
* Definição de chaves primárias e estrangeiras
* Inserção de registros
* Consultas com `SELECT`
* Filtros com `WHERE`
* Ordenação e agrupamento
* Relacionamentos entre tabelas
* Utilização de `JOIN`
* Subconsultas
* Criação de `VIEW`
* Criação e utilização de funções
* Organização de scripts SQL

## 🗂️ Estrutura do Banco

O banco de dados foi desenvolvido para representar a operação básica de um restaurante, utilizando tabelas relacionadas entre si.

Entre as principais entidades utilizadas estão:

| Tabela          | Descrição                                                   |
| --------------- | ----------------------------------------------------------- |
| `clientes`      | Armazena os dados dos clientes                              |
| `funcionarios`  | Armazena informações dos funcionários                       |
| `pedidos`       | Registra os pedidos realizados                              |
| `produtos`      | Armazena os produtos disponíveis                            |
| `info_produtos` | Contém informações complementares relacionadas aos produtos |

O relacionamento entre essas tabelas permite realizar consultas combinando diferentes informações do restaurante.

## 🔗 Relacionamentos

O banco utiliza relacionamentos entre as entidades para representar situações do mundo real.

Por exemplo, um pedido pode estar relacionado a um cliente, a um funcionário responsável pelo atendimento e aos produtos envolvidos na venda.

Essa estrutura permite utilizar comandos como `INNER JOIN` para reunir informações de diferentes tabelas em uma única consulta.

## 👁️ View `resumo_pedido`

Uma das etapas do projeto foi a criação da **VIEW `resumo_pedido`**.

A view foi desenvolvida para facilitar a consulta das principais informações dos pedidos, reunindo dados de diferentes tabelas e permitindo visualizar o pedido de forma mais organizada.

Entre as informações utilizadas estão dados relacionados a:

* Cliente
* Funcionário
* Produto
* Quantidade
* Preço
* Valor total do pedido

O cálculo do total considera a relação entre **quantidade × preço**.

## ⚙️ Funções

O projeto também trabalha com funções SQL para praticar a criação de rotinas reutilizáveis.

### `BuscaIngredientesProduto`

Função utilizada para buscar informações relacionadas aos ingredientes de determinado produto.

### `mediaPedido`

Função utilizada para trabalhar com a média dos valores dos pedidos.

Essas funções fazem parte da etapa de aprofundamento do projeto em recursos de programação dentro do banco de dados.

## 🧠 Conceitos praticados

Durante o desenvolvimento foram praticados conceitos como:

```sql
CREATE DATABASE
CREATE TABLE
INSERT INTO
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
JOIN
SUBQUERY
VIEW
FUNCTION
```

Também foram trabalhados conceitos de **chaves primárias, chaves estrangeiras, relacionamentos e agregações**.

## 📁 Organização dos arquivos

Os scripts do projeto foram separados para facilitar a compreensão e manutenção do código.

Uma organização possível para o repositório é:

```text
Projeto-Restaurante-SQL/
│
├── 01_criacao_banco.sql
├── 02_inserts.sql
├── 03_consultas.sql
├── 04_view.sql
├── 05_funcoes.sql
└── README.md
```

Cada arquivo representa uma etapa do desenvolvimento do banco.

## 🛠️ Tecnologias utilizadas

* **SQL**
* **MySQL**
* **MySQL Workbench**

## 🚀 Como executar

1. Instale o MySQL e, opcionalmente, o MySQL Workbench.
2. Clone este repositório:

```bash
git clone https://github.com/SEU-USUARIO/Projeto-Restaurante-SQL.git
```

3. Abra os arquivos `.sql` no MySQL Workbench.
4. Execute os scripts na ordem apresentada.
5. Após a criação e alimentação do banco, execute as consultas, views e funções.

## 📚 Finalidade do projeto

Este projeto foi desenvolvido com finalidade **educacional**, como parte dos estudos em **Análise de Dados e SQL**, servindo como prática para desenvolvimento de consultas e manipulação de bancos de dados relacionais.

---

### 👨‍💻 Autor

**Eduardo Silva**

Projeto desenvolvido durante os estudos de **Analista de Dados**.

