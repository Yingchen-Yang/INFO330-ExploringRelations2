-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT customers.FirstName, customers.LastName, invoices.invoiceId, invoices.InvoiceDate, invoices.BillingCountry
FROM customers
JOIN invoices on customers.CustomerId = invoices.CustomerId
WHERE customers.Country = 'Brazil';