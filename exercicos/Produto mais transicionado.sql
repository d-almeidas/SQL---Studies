--Qual foi o produto mais transicionado

SELECT IdProduto,
        COUNT(*)

FROM transacao_produto

GROUP BY IdProduto
ORDER BY COUNT(*) DESC
LIMIT 1;


SELECT *

FROM produtos

WHERE IdProduto = 5;
