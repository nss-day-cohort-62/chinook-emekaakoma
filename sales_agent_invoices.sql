SELECT e.FirstName || ''|| e.LastName AS FullName, i.InvoiceId
FROM Employee AS e
JOIN Customer AS C ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON i.CustomerId = c.CustomerId
