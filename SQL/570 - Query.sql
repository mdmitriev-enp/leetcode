SELECT
	employee.name
FROM
	employee
WHERE employee.id IN (
		SELECT
			managerid
		FROM
			employee
		GROUP BY
			managerid
		HAVING
			COUNT(managerid) >= 5
	)