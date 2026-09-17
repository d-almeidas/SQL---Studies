SELECT 
        sum(QtdePontos),

        sum(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
        END) As QtdePontosPositivos,

        sum(CASE
            WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdePontos   

FROM transacoes

WHERE Dtcriacao >= '2025-07-01' AND Dtcriacao < '2025-08-01'
