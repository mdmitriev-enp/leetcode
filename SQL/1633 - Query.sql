SELECT 
	register.contest_id,
	ROUND((COUNT(register.user_id) :: decimal / (SELECT COUNT(*) FROM users)) * 100, 2) AS percentage
FROM
	users
	JOIN register ON users.user_id = register.user_id 
GROUP BY
	register.contest_id
ORDER BY
	percentage desc,
	contest_id;