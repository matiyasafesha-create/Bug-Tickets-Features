SELECT * FROM mangomusic.users;

SELECT u.subscription_type ,
COUNT(DISTINCT u.user_id) AS "All Users",
SUM(a.completed) AS "Total Plays",
ROUND(SUM(a.completed) / COUNT(DISTINCT u.user_id),2) AS "Average Plays Per User"
FROM users u 
JOIN album_plays a 
ON u.user_id = a.user_id
GROUP BY subscription_type;



SELECT COUNT(completed) as AllCOMOLETED 
FROM album_plays;
-- '133728'


SELECT*
FROM users;


SELECT u.subscription_type, a.user_id
FROM users u INNER JOIN album_plays a 
ON u.user_id = a.user_id
GROUP BY subscription_type, a.user_id;



