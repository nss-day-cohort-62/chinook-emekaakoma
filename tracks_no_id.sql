SELECT t.Name, a.Title, g.Name
FROM Track as t
JOIN Album AS a ON t.AlbumId = a.AlbumId
JOIN MediaType AS m ON t.MediaTypeId = m.MediaTypeId
JOIN Genre AS g ON t.GenreId = g.GenreId