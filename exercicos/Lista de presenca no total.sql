--Do dia 2025/08/25 a 2025/08/29 quantas pessoas assinaram a lista de presenca

SELECT  t1.IdCliente,
        substr(DtCriacao,1,11) AS Data,
        t3.DescNomeProduto

FROM transacoes AS t1

LEFT JOIN transacao_produto as t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.Idproduto = t3.Idproduto

WHERE DescNomeProduto = 'Lista de presença'
AND Data >= '2025-08-25' 
AND Data <= '2025-08-29'
