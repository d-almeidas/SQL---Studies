--Qual o valor medio dos pontos positivos por dia

SELECT sum(QtdePontos) AS PontosTotais,
        count(DISTINCT substr(DtCriacao,1,10)) AS DataDiasUnicos,

        sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS AvgPontosporDia

FROM transacoes

WHERE qtdepontos > 0
