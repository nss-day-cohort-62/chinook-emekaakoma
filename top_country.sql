SELECT MAX(x.total_spent), x.BillingCountry
FROM (SELECT BillingCountry, CustomerID, SUM(total) AS Total_Spent
FROM Invoice
GROUP BY BillingCountry) AS x
