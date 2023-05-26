SELECT e.FirstName || ' ' || e.LastName AS Full_Name, COUNT(c.CustomerId) AS Total_Customer
FROM Employee AS e
JOIN Customer AS c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId