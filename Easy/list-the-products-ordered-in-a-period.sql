SELECT 
    product_name,
    SUM(unit) AS unit
FROM
    Products p
        JOIN
    Orders o ON p.product_id = o.product_id
WHERE
    order_date >= '2020-02-01' AND order_date < '2020-03-01'
GROUP BY product_name
HAVING unit >= 100;