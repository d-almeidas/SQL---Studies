--CTE: COMMON TABLE EXPRESSION

WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT IDcliente
    from transacoes
    WHERE substr(Dtcriacao,1,10) = '2025-08-25'
),

tb_cliente_ultimo_dia AS (
    SELECT DISTINCT IDcliente
    from transacoes
    WHERE substr(Dtcriacao,1,10) = '2025-08-29'
),

tb_join AS (
    SELECT t1.Idcliente AS PrimeiroDia,
    t2.Idcliente AS UltimoDia

    FROM tb_cliente_primeiro_dia AS t1

    LEFT JOIN tb_cliente_ultimo_dia AS t2
    ON t1.Idcliente = t2.Idcliente
)

SELECT count(PrimeiroDia) As ClientesPrimeiroDia,
        count(UltimoDia) AS ClientesUltimoDia

FROM tb_join
