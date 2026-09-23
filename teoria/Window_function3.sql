WITH cliente_Dia  AS (

    SELECT  
            DISTINCT
            IDcliente,
            substr(Dtcriacao,1,10) AS DTdia

    FROM transacoes

    WHERE substr(Dtcriacao,1,4) = '2025'
    ORDER BY IDcliente,Dtdia

),

tb_lag AS (

    SELECT *,
        LAG(DTdia) OVER (PARTITION BY IdCliente ORDER BY DTdia) AS LAgdia
    FROM cliente_Dia

),

tb_diffDT AS (

    SELECT *,
        julianday(DTdia) - julianday(LAgdia) AS diffDAtas
    FROM tb_lag

),

Avg_Cliente AS (

    SELECT Idcliente,
        avg(diffDAtas) AS MediaRetorno
    FROM tb_diffDT
    GROUP BY Idcliente

)

SELECT *
FROM Avg_Cliente;

-- SELECT avg(MediaRetorno)
-- FROM Avg_Cliente;
