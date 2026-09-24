--Como foi a curva de CHURN ao total

WITH tb_clientes_d1 AS (
        
    SELECT DISTINCT Idcliente
    
    FROM transacoes
    WHERE DTcriacao >= '2025-08-25'
    AND DTcriacao < '2025-08-26'    

),

tb_join AS (

    SELECT 
            substr(t2.Dtcriacao,1,10) AS DTdia,
            count(DISTINCT t1.IDCLIENTE) AS QtdeClientes,
            1.*count(DISTINCT t1.IDcliente) / (select count(*) from tb_clientes_d1) AS pctRetencao,
            1- 1.*count(DISTINCT t1.IDcliente) / (select count(*) from tb_clientes_d1) AS pctChurn

    FROM tb_clientes_d1 AS t1

    LEFT JOIN transacoes AS t2
    ON t1.IDcliente = t2.IDcliente

    WHERE t2.Dtcriacao >= '2025-08-25'
    AND t2.Dtcriacao < '2025-08-30'

    GROUP BY DTdia
)

SELECT *
FROM tb_join
