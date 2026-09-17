-- SELECT * 
-- FROM clientes
-- ORDER BY qtdepontos DESC;

SELECT *
FROM clientes 
WHERE flTwitch = 1
ORDER BY DtCriacao ,qtdePontos 
