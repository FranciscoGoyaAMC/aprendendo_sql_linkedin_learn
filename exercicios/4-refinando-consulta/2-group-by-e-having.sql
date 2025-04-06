-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT c.FirstName || ' ' || c.LastName AS cliente,
       SUM(i.Total) AS total_gasto
FROM invoices AS i
INNER JOIN customers AS c ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId
ORDER BY total_gasto DESC;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$40
SELECT c.FirstName || ' ' || c.LastName AS cliente,
       SUM(i.Total) AS total_gasto
FROM invoices AS i
INNER JOIN customers AS c ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId
HAVING SUM(i.Total) >= 40
ORDER BY total_gasto DESC;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT c.FirstName || ' ' || c.LastName AS cliente,
       SUM(i.Total) AS total_gasto,
       MAX(i.Total) AS maior_compra
FROM invoices AS i
INNER JOIN customers AS c ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId
HAVING SUM(i.Total) >= 40
ORDER BY total_gasto DESC;
