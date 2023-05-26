SELECT p.Name AS Playlist_Name, COUNT(T.TrackId) AS Total_Tracks
FROM Playlist AS p
JOIN PlaylistTrack AS pt ON p.PlaylistId = pt.PlaylistId
JOIN Track AS t ON pt.TrackId = t.TrackId