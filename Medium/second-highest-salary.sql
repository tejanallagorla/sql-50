SELECT 
    CASE
        WHEN COUNT(salary) < 1 THEN NULL
        ELSE salary
    END AS SecondHighestSalary
FROM
    (SELECT DISTINCT
        salary
    FROM
        Employee
    ORDER BY salary DESC
    LIMIT 1, 1) AS SecondSalary;