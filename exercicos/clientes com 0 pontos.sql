--Lista de clientes com 0 pontos

SELECT idCliente,qtdePontos
FROM clientes
WHERE qtdePontos >= 100 AND qtdePontos <=200
