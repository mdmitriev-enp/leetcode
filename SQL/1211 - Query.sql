SELECT
	queries.query_name,
	ROUND (SUM(queries.rating :: numeric / queries.position) / COUNT (*), 2) AS quality,
	ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100, 2) AS poor_query_percentage
FROM
	queries
GROUP BY
	query_name
HAVING
	query_name IS NOT NULL;