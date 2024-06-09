SELECT 
    customer_id
FROM
    (SELECT 
        customer_id,
        COUNT(DISTINCT product_key) AS counts
    FROM
        Customer
    GROUP BY customer_id) AS PurchaseCounts
WHERE
    PurchaseCounts.counts IN (SELECT COUNT(*) FROM Product);