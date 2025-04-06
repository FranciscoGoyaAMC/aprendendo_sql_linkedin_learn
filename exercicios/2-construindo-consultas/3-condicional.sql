-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
State as Siglas,
CASE 
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  WHEN State = 'DF' THEN 'Distrito Federal'
  ELSE 'Estado Desconhecido'
END AS Estados
FROM customers
WHERE Country LIKE 'Brazil';
