SELECT COUNT(InvoiceId) AS Total_Invoice, BillingCountry
FROM Invoice 
GROUP BY BillingCountry