-- Selecionar produtos com o nome 'churn'

SELECT *

FROM produtos

--WHERE DescNomeProduto = 'Churn_10pp'
--OR DescNomeProduto = 'Churn_5pp'
--OR DescNomeProduto = 'Churn_5pp'

--WHERE DescNomeProduto IN ('Churn_5pp','Churn_2pp','Churn_10pp')

WHERE DescNomeProduto LIKE 'Churn%'
