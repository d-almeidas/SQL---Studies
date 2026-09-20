--Quantos clientes perderam pontos por lover

SELECT  IdCliente,
        SUM(QtdePontos) AS PontosTOTAIS,
        IdProduto

FROM transacao_produto AS t1

LEFT JOIN transacoes AS t2
ON t1.IdTransacao = t2.IdTransacao

WHERE IdProduto IN ('1','13')

GROUP BY IdCliente
ORDER BY PontosTOTAIS 
