--Quantidade de usuarios cadastrados (Absoluto e acumulado) ao longo do tempo 

WITH tb_Usuario_dia AS (

SELECT COUNT(DISTINCT IdCliente) AS UsuariosTotais,
        substr(DtCriacao,1,10) AS Dtdia
FROM transacoes

GROUP BY Dtdia

),

tb_PorDia AS (

SELECT *,
        SUM(UsuariosTotais) OVER (ORDER BY Dtdia) AS TotalPerDia
FROM tb_Usuario_dia

)

SELECT *
    
FROM tb_PorDia
