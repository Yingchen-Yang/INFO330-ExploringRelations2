-- What was the most purchased track of 2013?
SELECT tracks.Name, COUNT(*) AS total_purchase
FROM tracks
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId                                                                                                                                             
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
WHERE strftime('%Y', invoices.InvoiceDate) like '2013%'
GROUP BY tracks.TrackId
ORDER BY total_purchase DESC;