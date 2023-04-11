-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT invoice_items.*, tracks.Name AS track_name, artists.Name AS artists_name
FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
JOIN albums ON tracks.AlbumId = albums.AlbumId
JOIN artists ON albums.ArtistId = artists.ArtistId;