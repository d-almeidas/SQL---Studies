--Quem iniciou o curso no 1 dia assistiu em media quantas aulas?

WITH tb_primeiro_dia AS (
    
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(Dtcriacao,1,10) = '2025-08-25'

),

tb_dias_curso AS (
    
    SELECT DISTINCT
            IDCLIENTE,
            substr(Dtcriacao,1,10) AS Diapresente

    FROM transacoes
    WHERE Dtcriacao >= '2025-08-25'
    AND Dtcriacao < '2025-08-30'

    ORDER BY IDCLIENTE, Diapresente

),

tb_clientes_dias AS (

    SELECT t1.IDCLIENTE,
            count(DISTINCT t2.Diapresente) AS QTDeDias

    FROM tb_primeiro_dia AS t1

    LEFT JOIN tb_dias_curso AS t2
    ON t1.IDCLIENTE = T2.IDCLIENTE

    GROUP BY t1.IDCLIENTE

)

SELECT avg(QTDeDias) AS MediaAulas,
        max(QTDeDias) AS MaxDeDias,
        min(QTDeDias) AS MinDeDias
        
FROM tb_clientes_dias 
