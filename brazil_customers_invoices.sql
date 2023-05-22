SELECT Firstname || ' ' || Lastname as FullName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
WHERE Country = 'Brazil';
