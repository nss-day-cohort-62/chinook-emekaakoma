SELECT i.InvoiceId, COUNT(l.InvoiceLineId) AS Line_Item
FROM Invoice AS i
JOIN InvoiceLine AS l ON i.InvoiceId = l.InvoiceId
GROUP BY i.InvoiceId