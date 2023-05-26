SELECT y.Track_Name
FROM(
  SELECT MAX(x.total_sales), x.track_name
    FROM (
        SELECT
            SUM(i.total) AS total_sales,
            t.Name AS track_name
            FROM invoice AS i 
            JOIN InvoiceLine AS l 
              ON l.InvoiceId = i.InvoiceId
            JOIN track AS t
              ON t.TrackId = l.TrackId
            WHERE i.InvoiceDate LIKE '2013%'
        ) AS x
    ) AS y