SELECT 
    MAX(num) AS num
FROM
    (SELECT 
        num,
        COUNT(num) AS num_count
    FROM
        MyNumbers
    GROUP BY num
    HAVING num_count = 1) AS single_nums;