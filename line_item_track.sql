SELECT InvoiceLineId, t.Name AS Track_Name
FROM InvoiceLine AS i 
JOIN Track AS t ON i.TrackId = t.TrackId