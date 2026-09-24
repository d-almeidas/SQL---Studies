--Saldo de pontos acumulados de cada usuario

WITH tb_cliente_dia AS (

        SELECT IdCliente,
                substr(Dtcriacao,1,10) AS Dtdia,
                SUM(QtdePontos) AS Totalpontos

        FROM transacoes
        GROUP BY Idcliente,Dtdia

)

SELECT *,
        Sum(Totalpontos) OVER (PARTITION BY IdCliente ORDER BY Dtdia) AS SaldoTotal

FROM tb_cliente_dia
