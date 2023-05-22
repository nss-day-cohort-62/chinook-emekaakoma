SELECT e.FirstName || ' '|| e.LastName AS EmployeeFullName, i.Total AS InvoiceTotal, c.FirstName || ' '|| c.LastName AS CustomerFullName, c.Country
FROM Employee AS e
JOIN Customer AS C ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON i.CustomerId = c.CustomerId
