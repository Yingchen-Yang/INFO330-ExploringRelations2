-- Which sales agent made the most in sales in 2010?
SELECT employees.FirstName, employees.LastName, 
       SUM(invoices.Total) AS total_sales
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE strftime ('%Y', invoices.InvoiceDate) like '2010%'
GROUP BY employees.EmployeeId
ORDER BY total_sales DESC
LIMIT 1;