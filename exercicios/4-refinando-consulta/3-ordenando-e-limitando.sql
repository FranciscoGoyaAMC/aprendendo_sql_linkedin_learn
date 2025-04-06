-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
SELECT c.FirstName || ' ' || c.LastName AS cliente
FROM customers AS c
LIMIT 10;

-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente
SELECT c.FirstName || ' ' || c.LastName AS cliente,
       c.Country AS pais
FROM customers AS c
ORDER BY c.Country ASC,
         c.FirstName DESC
LIMIT 10;

-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas
SELECT c.FirstName || ' ' || c.LastName AS cliente,
       c.Country AS pais
FROM customers AS c
ORDER BY c.Country ASC,
         c.FirstName DESC
LIMIT 10 OFFSET 3;