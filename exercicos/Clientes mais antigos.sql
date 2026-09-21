--Clientes mais antigos tem tem mais frequencia de transacao = nao


SELECT t1.Idcliente,
        CAST(julianday('now') - julianday(substr(t1.DTcriacao,1,19)) AS INT) AS TempoCliente,
        count(t2.IdTransacao) AS ContagemDeTransacoes

FROM clientes AS t1

LEFT JOIN transacoes AS t2
ON t1.Idcliente = t2.Idcliente

GROUP BY t1.idcliente,TempoCliente
