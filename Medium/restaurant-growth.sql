SELECT 
    a.visited_on,
    SUM(b.amount) / COUNT(DISTINCT a.customer_id) AS amount,
    ROUND(SUM(b.amount) / COUNT(DISTINCT a.customer_id) / 7, 2) AS average_amount
FROM
    Customer a
        JOIN
    Customer b ON b.visited_on <= a.visited_on AND b.visited_on >= DATE_ADD(a.visited_on, INTERVAL - 6 DAY)
GROUP BY a.visited_on
HAVING COUNT(DISTINCT b.visited_on) = 7
ORDER BY a.visited_on;