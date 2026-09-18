USE restaurante;

SELECT COUNT(*) AS quantidade_pedidos FROM pedidos;

SELECT COUNT(DISTINCT id_cliente) AS clientes_unicos FROM pedidos;

SELECT AVG(preco) AS media_preco FROM produtos;

SELECT MIN(preco) AS menor_preco, MAX(preco) AS maior_preco FROM produtos;

SELECT nome, preco FROM produtos ORDER BY preco DESC LIMIT 5;

SELECT categoria, AVG(preco) AS media_categoria FROM produtos GROUP BY categoria;

SELECT fornecedor, COUNT(*) AS quantidade_produtos FROM info_produtos GROUP BY fornecedor;

SELECT fornecedor, COUNT(*) AS quantidade_produtos FROM info_produtos GROUP BY fornecedor HAVING COUNT(*) > 1;

SELECT id_cliente, COUNT(*) AS total_pedidos FROM pedidos GROUP BY id_cliente HAVING COUNT(*) = 1;


