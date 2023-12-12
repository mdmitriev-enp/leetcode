SELECT
  queries.query_name,
  ROUND(
    (
      SUM(queries.rating :: numeric / queries.position) / (
        SELECT
          NULLIF (COUNT(query_name), 0)
        FROM
          queries AS q1
        WHERE
          queries.query_name = q1.query_name
      )
    ),
    2
  ) AS quality,
  ROUND(
    (
      SELECT
        COUNT(query_name)
      FROM
        queries AS q2
      WHERE
        queries.query_name = q2.query_name
        AND q2.rating < 3
    ) :: numeric * 100 / (
      SELECT
        NULLIF(COUNT(query_name), 0)
      FROM
        queries AS q1
      WHERE
        queries.query_name = q1.query_name
    ),
    2
  ) AS poor_query_percentage
FROM
  queries AS queries
GROUP BY
  query_name
HAVING
  query_name IS NOT NULL;