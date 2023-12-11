SELECT
	id,
	movie,
	description,
	rating
FROM
	cinema
WHERE
	description NOT LIKE 'boring' AND
	mod(id, 2) <> 0
ORDER BY
	rating desc;