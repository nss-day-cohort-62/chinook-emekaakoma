SELECT InvoiceLineId, t.Name AS Track_Name, a.Name AS Artist
FROM InvoiceLine AS i 
JOIN Track AS t ON i.TrackId = t.TrackId
JOIN Album AS al ON al.albumId = t.albumId
JOIN Artist AS a on a.ArtistId = al.ArtistId