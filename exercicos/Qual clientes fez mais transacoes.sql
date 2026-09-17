--Qual cliente fez mais transacoes no ano de 2024

SELECT IdCliente,
        count(IdTransacao) AS TotalDeTransacoes

FROM TRANSACOES

WHERE DTCRIACAO > '2024-01-01'
AND DTCRIACAO < '2025-01-01'

GROUP BY IDCLIENTE
ORDER BY TotalDeTransacoes DESC

LIMIT 1l
