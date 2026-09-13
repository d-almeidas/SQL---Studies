--Lista de pedidos realizados no fim de semana

SELECT IdTransacao,
        IdCliente,
        DtCriacao,
        strftime('%w', datetime(DtCriacao)) AS diasemana
FROM transacoes

WHERE diasemana IN ('6', '0') 
