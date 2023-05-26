SELECT BillingCountry, COUNT(total)
FROM Invoice
GROUP BY BillingCountry