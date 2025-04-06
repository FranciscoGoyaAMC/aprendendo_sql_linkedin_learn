-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT 
    BillingCountry AS País,
    SUM(Total) AS TotalCompras,
    MIN(Total) AS CompraMinima,
    MAX(Total) AS CompraMaxima,
    COUNT(InvoiceId) AS QuantidadeCompras,
    ROUND(AVG(Total), 2) AS TicketMedio
FROM invoices
GROUP BY BillingCountry
ORDER BY TotalCompras DESC;
