WITH tb_sumario_Dia AS (

    SELECT substr(Dtcriacao,1,10) AS Dtdia,
            count(DISTINCT Idtransacao) AS qtdeTransacao

    FROM transacoes

    WHERE Dtcriacao >= '2025-08-25'
    AND Dtcriacao < '2025-08-30'

    GROUP BY Dtdia

)

SELECT *,
        sum(qtdeTransacao) OVER (ORDER BY Dtdia) AS QtdeAcumulada
FROM tb_sumario_Dia
