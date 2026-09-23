-- Lista de transacao com produtos Resgatar ponei

SELECT *

FROM transacao_produto AS t1

WHERE t1.Idproduto IN (
    SELECT Idproduto

    FROM produtos
    WHERE DescNomeProduto = 'Resgatar Ponei'
)
