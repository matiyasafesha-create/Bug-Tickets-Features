SELECT 
DATE_FORMAT(signup_date, '%Y-%m') AS "Signup_month",
COUNT(*) AS 'Total Signups',
SUM(CASE WHEN subscription_type = 'free' THEN 1 ELSE 0 END) AS 'Free Signups' ,
SUM(CASE WHEN subscription_type = 'premium' THEN 1 ELSE 0 END) AS 'Premuim Signups'
FROM users 
WHERE signup_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY Signup_month
ORDER BY Signup_month;

select*
FROM users;
