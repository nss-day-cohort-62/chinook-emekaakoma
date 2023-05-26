SELECT y.Media_Type
FROM(
  SELECT MAX(x.total_sales), x.media_type
    FROM (
        SELECT
            SUM(i.total) AS total_sales,
            m.Name AS Media_type
            FROM invoice AS i 
            JOIN InvoiceLine AS l 
              ON l.InvoiceId = i.InvoiceId
            JOIN track AS t
              ON t.TrackId = l.TrackId
            JOIN mediatype as m
                ON m.mediaTypeId = t.mediatypeId
        ) AS x
    ) AS y