SELECT idCliente,
        qtdePontos,
        CASE 
            WHEN qtdePontos <= 500 THEN 'Baixo'
            WHEN qtdePontos <= 1000 THEN 'Intermediario'
            WHEN qtdePontos <= 5000 THEN 'Alto'
            WHEN qtdePontos <=10000 THEN 'Gigante'
            ELSE 'Super'
        END AS Categoria,

        CASE 
            WHEN qtdePontos <= 1000 THEN 1
            ELSE 0
        END AS 'FlBAIXO',

        CASE
            WHEN qtdePontos > 1000 THEN 1
            ELSE 0
        END AS 'FlAlto'

            
FROM Clientes

WHERE FlAlto = 1  
ORDER BY qtdePontos DESC
