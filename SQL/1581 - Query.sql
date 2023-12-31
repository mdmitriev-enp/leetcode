SELECT
	visits.customer_id AS customer_id,
	COUNT(visits.customer_id) AS count_no_trans
FROM visits
	LEFT JOIN transactions ON visits.visit_id = transactions.visit_id
WHERE
	transactions.transaction_id IS NULL
GROUP BY
	visits.customer_id;