SELECT*
FROM album_plays;

SELECT
CASE 
WHEN completed = 1 THEN 'Completed'
WHEN completed = 0 THEN 'Incomplete'
END AS PlayStatus,
COUNT(*) AS Total_plays,
ROUND(
COUNT(*)* 100 / (SELECT COUNT(*) FROM album_plays),2)
AS Percentage
FROM album_plays
GROUP BY PlayStatus;
    
    SELECT COUNT(*) FROM album_plays WHERE completed = TRUE;  --  105333
    SELECT COUNT(*) FROM album_plays;     -- 133728