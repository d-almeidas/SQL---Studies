SELECT 
        round(avg(qtdePontos), 2) AS MediaCarteira,
        min(qtdePontos) AS MinDaCarteira,
        max(qtdePontos) AS MaxDaCarteira,
        sum(FlTwitch),
        sum(FlEmail)
        
FROM Clientes
