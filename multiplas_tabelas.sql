USE restaurante;

SELECT produtos.id_produto, produtos.nome, produtos.descricao, info_produtos.ingredientes
FROM produtos
JOIN info_produtos ON produtos.id_produto = info_produtos.id_produto;

SELECT pedidos.id_pedido, pedidos.quantidade, pedidos.data_pedido, clientes.nome, clientes.email
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente;

SELECT pedidos.id_pedido, pedidos.quantidade, pedidos.data_pedido, clientes.nome AS cliente, clientes.email, funcionarios.nome AS funcionario
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN funcionarios ON pedidos.id_funcionario = funcionarios.id_funcionario;

SELECT pedidos.id_pedido, pedidos.quantidade, pedidos.data_pedido, clientes.nome AS cliente, clientes.email,
       funcionarios.nome AS funcionario, produtos.nome AS produto, produtos.preco
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN funcionarios ON pedidos.id_funcionario = funcionarios.id_funcionario
JOIN produtos ON pedidos.id_produto = produtos.id_produto;

SELECT clientes.nome, pedidos.id_pedido
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
WHERE pedidos.status_pedido = 'Pendente'
ORDER BY pedidos.id_pedido DESC;

SELECT nome, email
FROM clientes
WHERE id_cliente NOT IN (SELECT id_cliente FROM pedidos);

SELECT 
    clientes.nome AS nome_cliente,
    COUNT(pedidos.id_pedido) AS total_pedidos
FROM 
    clientes
LEFT JOIN 
    pedidos ON clientes.id_cliente = pedidos.id_cliente
GROUP BY 
    clientes.id_cliente, clientes.nome;

 SELECT 
    pedidos.id_pedido AS id_pedido,
    SUM(pedidos.quantidade * produtos.preco) AS preco_total
FROM 
    pedidos
JOIN 
    produtos ON pedidos.id_produto = produtos.id_produto
GROUP BY 
    pedidos.id_pedido;


