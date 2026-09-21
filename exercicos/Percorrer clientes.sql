-- Dos clientes que comecaram sql no primeiro dia quantos chegaram ao 5 Dia

SELECT count(DISTINCT IDcliente)

FROM transacoes AS t1
WHERE t1.Idcliente IN (

    SELECT DISTINCT IdCliente
    FROM transacoes 
    WHERE SUBSTR(Dtcriacao,1,10) = '2025-08-25'
)
AND substr(Dtcriacao,1,10) = '2025-08-29'
