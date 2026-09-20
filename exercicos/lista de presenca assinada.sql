--QUAOL MES TEVE MAIS LISTA DE PRESENCA ASSINADA

SELECT  substr( t1.DtCriacao,1,7) AS AnoMes,
        COUNT(DISTINCT t1.IDtransacao) AS QtdeTransacaoMES,
        t3.DescNomeProduto

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.Idproduto = t3.Idproduto

WHERE t3.IdProduto = 11

GROUP BY AnoMes
ORDER BY QtdeTransacaoMES DESC

