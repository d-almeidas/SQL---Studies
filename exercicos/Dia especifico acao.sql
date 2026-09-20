--Quais clientes assinaram a lista de presenca no dia 2025/08/25

-- SELECT *

-- FROM produtos

-- WHERE DescNomeProduto = 'Lista de presença'

SELECT  t3.IdCliente,
        substr(DtCriacao,1,11) AS Data, 
        DescNomeProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao

WHERE Data >= '2025-08-25' 
AND Data < '2025-08-26'
AND DescNomeProduto = 'Lista de presença'


