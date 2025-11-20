SELECT u.country,
COUNT(DISTINCT u.user_id) AS "All Users",
SUM(a.completed) AS "Total Plays",
ROUND(SUM(a.completed) / COUNT(DISTINCT u.user_id),2) AS "Average Plays Per User"
FROM users u JOIN album_plays a 
ON u.user_id = a.user_id
GROUP BY country
ORDER BY u.country DESC
LIMIT 15;


SELECT*
FROM users;

SELECT *
FROM album_plays;

