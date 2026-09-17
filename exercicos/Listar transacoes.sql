SELECT IdTransacao,
        IdCliente,
        QtdePontos,
        CASE
            WHEN QtdePontos <= 10 THEN 'BAIXO '
        END AS PontosBaixo,

        CASE
            WHEN QtdePontos < 500 THEN 'MEDIO'
        END AS PontosMedio,

        CASE
            WHEN QtdePontos >= 500 THEN 'ALTO'
        END AS PontosAlto

FROM transacoes

