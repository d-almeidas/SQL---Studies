--Qual dia da semana que tem mais pedidos em 2025

SELECT 
        strftime('%w',DtCriacao) AS DiaSEMANA,
        count(IDtransacao) AS qtdeTransacao

FROM transacoes

WHERE DtCriacao >= '2025-01-01' 
AND DtCriacao < '2026-01-01'

GROUP BY Diasemana
ORDER BY qtdeTransacao DESC
