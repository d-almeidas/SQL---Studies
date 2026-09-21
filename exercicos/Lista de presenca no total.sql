--Do dia 2025/08/25 a 2025/08/29 quantas pessoas assinaram a lista de presenca

SELECT  COUNT(DISTINCT t1.IdCliente) AS ClientesTotais,
        t3.DescNomeProduto

FROM transacoes AS t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.Idproduto = t3.Idproduto

WHERE t3.DescNomeProduto = 'Lista de presença'
AND t1.DtCriacao >= '2025-08-25' 
AND t1.DtCriacao <= '2025-08-30'
