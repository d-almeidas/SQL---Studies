--Qtde transacoes acumuladas ao longo do tempo

WITH tb_transacoes AS (

    SELECT substr(DtCriacao,1,10) AS Dtdia,
                count(IdTransacao) AS TransacoesTotais

    FROM transacoes

    GROUP BY Dtdia

)

SELECT *,
        SUM(TransacoesTotais) OVER (ORDER BY Dtdia) AS TotalPerDia
FROM tb_transacoes;
