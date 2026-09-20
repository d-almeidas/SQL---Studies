--Produto com mais pontos transicionados

SELECT IdProduto,
        sum(VlProduto) AS PontosTotais,
        sum(QtdeProduto) AS qtdeVendas

FROM transacao_produto

GROUP BY IdProduto
ORDER BY PontosTotais DESC;

SELECT *

FROM produtos

WHERE IdProduto = 11;
