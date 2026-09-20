--Qual a categoria de produtos mais vendidos?

SELECT 
        t2.DescCategoriaProduto,
    COUNT(DISTINCT t1.idTransacaoProduto) AS VENDAS

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.Idproduto=t2.Idproduto

GROUP BY DescCategoriaProduto
ORDER BY VENDAS DESC




