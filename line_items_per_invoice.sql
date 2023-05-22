SELECT InvoiceId, COUNT(*) AS LineItem
FROM InvoiceLine
GROUP BY InvoiceId