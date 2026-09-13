--Lista de produtos com nome que comeca com venda DEFAULT

SELECT *
FROM produtos
WHERE DescNomeProduto LIKE 'Venda de %'
