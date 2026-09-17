--Qual cliente juntou mais pontos positivos em 2025-05

SELECT idCliente,
        DtCriacao,
        sum(qtdePontos) AS Totaldepontos

FROM TRANSACOES

WHERE DTCRIACAO > '2025-05-1' 
AND DTCRIACAO < '2025-06-01' 
AND QTDEPONTOS > 0

GROUP BY idCliente

ORDER BY sum(QTDEPONTOS) DESC
LIMIT 1
