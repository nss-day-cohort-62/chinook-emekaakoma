SELECT e.FirstName || ' ' || e.LastName AS Full_Name, COUNT(i.total) AS Total_sales
FROM Employee AS e
JOIN Customer AS c ON c.SupportRepId = e.EmployeeId
JOIN Invoice AS i ON i.CustomerId = c.CustomerId
GROUP BY Full_Name