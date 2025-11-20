SELECT*
FROM artists;


SELECT*
FROM album_plays;

SELECT *
FROM albums;




SELECT ar.primary_genre,
 COUNT(DISTINCT a.album_id) AS "Albums Played",
 COUNT(DISTINCT ar.artist_id) AS "Artists Played",
 SUM(al.completed) AS "Total Plays"
FROM album_plays al 
JOIN albums a
ON al.album_id = a.album_id
JOIN artists ar 
ON ar.artist_id = a.artist_id
GROUP BY ar.primary_genre
ORDER BY "Total Plays" DESC;