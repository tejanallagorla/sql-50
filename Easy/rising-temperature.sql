SELECT 
    next.id AS Id
FROM
    Weather next
        LEFT JOIN
    Weather prev ON DATEDIFF(next.recordDate, prev.recordDate) = 1
WHERE
    next.temperature > prev.temperature;