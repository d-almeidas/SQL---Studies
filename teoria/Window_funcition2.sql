WITH tb_clientes_dia AS (
    
    SELECT Idcliente,
            substr(Dtcriacao,1,10) AS dtDIA,
            count(DISTINCT IDtransacao)  AS QtdeTransacao

    FROM transacoes

    WHERE DTcriacao >='2025-08-25'
    AND DTcriacao < '2025-08-30'

    GROUP BY Idcliente,dtDIA

),

tb_lag AS (

    SELECT *,
            sum(QtdeTransacao) OVER (PARTITION BY Idcliente ORDER BY dtDIA) AS QtdeAcumulada,
            lag(QtdeTransacao) OVER (PARTITION BY Idcliente ORDER BY dtDIA) AS LagTransacao
    FROM tb_clientes_dia

)

SELECT *,
1.* QtdeTransacao / LagTransacao AS LagPercent

FROM tb_lag
