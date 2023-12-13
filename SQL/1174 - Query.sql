SELECT
	ROUND(AVG(immediate) * 100, 2) AS immediate_percentage
FROM
	(
		SELECT
			delivery_id,
			customer_id,
			order_date,
			customer_pref_delivery_date,
			row_number() OVER (PARTITION BY customer_id ORDER BY order_date) AS number_order,
			CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END AS immediate
		FROM
			delivery
	)
WHERE
	number_order = 1;