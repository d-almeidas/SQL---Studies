--Lista de clientes com 100 a 200 pontos

SELECT Idcliente,qtdePontos
FROM clientes
WHERE qtdePontos in (100,200)
