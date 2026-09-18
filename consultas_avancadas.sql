USE restaurante;

CREATE OR REPLACE VIEW resumo_pedido AS
SELECT
    pedidos.id_pedido,
    pedidos.quantidade,
    pedidos.data_pedido,
    clientes.nome AS nome_cliente,
    clientes.email,
    funcionarios.nome AS nome_funcionario,
    produtos.nome AS nome_produto,
    produtos.preco
FROM pedidos
JOIN clientes
    ON pedidos.id_cliente = clientes.id_cliente
JOIN funcionarios
    ON pedidos.id_funcionario = funcionarios.id_funcionario
JOIN produtos
    ON pedidos.id_produto = produtos.id_produto;

SELECT
    id_pedido,
    nome_cliente,
    quantidade * preco AS total
FROM resumo_pedido;

CREATE OR REPLACE VIEW resumo_pedido AS
SELECT
    pedidos.id_pedido,
    pedidos.quantidade,
    pedidos.data_pedido,
    clientes.nome AS nome_cliente,
    clientes.email,
    funcionarios.nome AS nome_funcionario,
    produtos.nome AS nome_produto,
    produtos.preco,
    pedidos.quantidade * produtos.preco AS total
FROM pedidos
JOIN clientes
    ON pedidos.id_cliente = clientes.id_cliente
JOIN funcionarios
    ON pedidos.id_funcionario = funcionarios.id_funcionario
JOIN produtos
    ON pedidos.id_produto = produtos.id_produto;

SELECT
    id_pedido,
    nome_cliente,
    total
FROM resumo_pedido;

EXPLAIN
SELECT
    id_pedido,
    nome_cliente,
    total
FROM resumo_pedido;

DROP FUNCTION IF EXISTS BuscaIngredientesProduto;

CREATE FUNCTION BuscaIngredientesProduto(p_id_produto INT)
RETURNS TEXT
READS SQL DATA
RETURN (
    SELECT ingredientes
    FROM info_produtos
    WHERE id_produto = p_id_produto
    LIMIT 1
);

SELECT BuscaIngredientesProduto(10);

DROP FUNCTION IF EXISTS mediaPedido;

CREATE FUNCTION mediaPedido(p_id_pedido INT)
RETURNS VARCHAR(255)
READS SQL DATA
RETURN (
    SELECT
        CASE
            WHEN total > (SELECT AVG(total) FROM resumo_pedido)
                THEN 'O total do pedido está acima da média.'
            WHEN total < (SELECT AVG(total) FROM resumo_pedido)
                THEN 'O total do pedido está abaixo da média.'
            ELSE 'O total do pedido é igual à média.'
        END
    FROM resumo_pedido
    WHERE id_pedido = p_id_pedido
    LIMIT 1
);

SELECT mediaPedido(5);
SELECT mediaPedido(6);
