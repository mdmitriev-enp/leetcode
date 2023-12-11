SELECT
	prices.product_id,
	(
		CASE
		WHEN ROUND(SUM(prices.price * unitssold.units) :: numeric / SUM(unitssold.units) :: numeric, 2) IS NOT NULL
			THEN ROUND(SUM(prices.price * unitssold.units) :: numeric / SUM(unitssold.units) :: numeric, 2)
		ELSE
			0
		END
	) AS average_price
FROM
	prices
	LEFT JOIN
		unitssold
	ON
		prices.product_id = unitssold.product_id AND
		unitssold.purchase_date >= prices.start_date AND
		unitssold.purchase_date <= prices.end_date
GROUP BY
	prices.product_id;
