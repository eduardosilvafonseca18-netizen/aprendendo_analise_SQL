USE restaurante;

SELECT * FROM pedidos WHERE id_funcionario = 4 AND status_pedido = 'pendente';

SELECT * FROM pedidos WHERE status_pedido <> 'concluído';

SELECT * FROM pedidos WHERE id_produto IN (1, 3, 5, 7, 8);

SELECT * FROM clientes WHERE nome LIKE 'c%';

SELECT * FROM info_produtos WHERE ingredientes LIKE '%carne%' OR ingredientes LIKE '%frango%';

SELECT * FROM produtos WHERE preco BETWEEN 20 AND 30;

UPDATE pedidos SET status_pedido = NULL WHERE id_pedido = 6;

SELECT * FROM pedidos WHERE status_pedido IS NULL;

SELECT 
  id_pedido,
  IFNULL(status_pedido, 'Cancelado') AS status_pedido
FROM pedidos;

SELECT 
  nome,
  cargo,
  salario,
  CASE
    WHEN salario > 3000 THEN 'Acima da média'
    ELSE 'Abaixo da média'
  END AS media_salario
FROM funcionarios;





