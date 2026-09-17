--Quantos clientes tem email cadastrado

SELECT count(*),
        flEmail

FROM Clientes
WHERE flEmail = 1
