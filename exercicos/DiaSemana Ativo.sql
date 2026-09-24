--Qual o dia da semana mais ativo de cada usuario 

WITH tb_transacoes_Dia AS (

SELECT IdCliente,
        strftime('%w', substr(DtCriacao,1,10)) AS Diasemana,
        COUNT(IdTransacao) AS TransacoesPerDia

FROM transacoes

GROUP BY IdCliente,Diasemana

),

tb_rn AS (

SELECT *,
        row_number() OVER (PARTITION BY IdCliente ORDER BY TransacoesPerDia DESC) AS rn
FROM tb_transacoes_Dia

)

SELECT IdCliente,Diasemana,TransacoesPerDia
FROM tb_rn
WHERE rn = 1
