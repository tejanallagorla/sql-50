SELECT 
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(COUNT(IF(rating < 3, rating, NULL)) / COUNT(*) * 100, 2) AS poor_query_percentage
FROM
    Queries
WHERE
    query_name IS NOT NULL
GROUP BY query_name;