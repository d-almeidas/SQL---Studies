-- SELECT IDproduto,
--         count(*)
-- FROM transacao_produto
-- GROUP BY IDproduto

SELECT IDcliente ,
        sum(QTdepontos),
        count(IDtransacao)

FROM transacoes

WHERE Dtcriacao >= '2025-07-01'
AND DTcriacao < '2025-08-01'

GROUP BY IDcliente
HAVING sum(QTdepontos) >= 4000

ORDER BY sum(QTdepontos) DESC
