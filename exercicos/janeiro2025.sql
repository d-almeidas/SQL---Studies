--Dentre os clientes de janeiro de 2025 quantos assistiram o curso de sql

WITH tb_clientes_janeiro AS (
    SELECT DISTINCT Idcliente
    FROM transacoes
    WHERE Dtcriacao >= '2025-01-01'
    AND Dtcriacao < '2025-02-01'

),

tb_clientes_curso AS (

    SELECT DISTINCT IDcliente

    FROM transacoes AS t1
    WHERE Dtcriacao >= '2025-08-25'
    AND Dtcriacao < '2025-08-30'

)

SELECT COUNT(t1.Idcliente) AS ClienteJaneiro,
        COUNT(t2.Idcliente) AS ClienteCurso

FROM tb_clientes_janeiro AS t1

LEFT JOIN tb_clientes_curso AS t2
ON t1.Idcliente = t2.Idcliente
