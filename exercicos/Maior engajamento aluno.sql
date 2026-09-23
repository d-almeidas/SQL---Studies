-- Qual o dia com maior engajamento de aluno que iniciou o curso no 1 dia

WITH alunos_dia01 AS (

    SELECT DISTINCT IDcliente

    FROM transacoes 
    WHERE substr(Dtcriacao,1,10) = '2025-08-25'

),

tb_dia_cliente AS (

    SELECT t1.Idcliente,
            substr(Dtcriacao,1,10) AS Dtdia,
            count(*) AS QtdeDeInteracoes

    FROM alunos_dia01 AS t1

    LEFT JOIN transacoes AS t2
    ON t1.IDcliente = t2.Idcliente
    AND Dtcriacao >= '2025-08-25'
    AND Dtcriacao < '2025-08-30'

    GROUP BY t1.Idcliente,Dtdia

),

rn_tb AS (

    SELECT *,
        row_number() OVER (PARTITION BY Idcliente ORDER BY QtdeDeInteracoes DESC) AS rn
    FROM tb_dia_cliente

)

SELECT *
FROM rn_tb
WHERE rn = 1
